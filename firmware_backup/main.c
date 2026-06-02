/*
 * MicroBlaze HDMI TX colorbar bring-up for hdmi_tx_bd / microblaze_0.
 *
 * Minimal, interrupt-driven HDMI TX colorbar, adapted from the AUBoard HDMI
 * Pass-Thru reference (TxOnly example) to THIS platform:
 *   - SDT base-address APIs (no DEVICE_ID macros).
 *   - axi_intc inputs: HDMI_TX_SS=0, IIC=1, VID_PHY=2.
 *   - GT TX uses MGTREFCLK0 (C_TX_REFCLK_SEL=0), fed by the 8T49N241 @ 0x7C.
 *
 * Flow (all the real work happens in interrupt callbacks):
 *   HPD connect -> TxConnectCallback enables TX refclk buffer + flags colorbar
 *   main loop   -> EnableColorBar: SetStream(1080p60) + SetHdmiTxParam +
 *                  reprogram 8T49N241 to the mode's TMDS clock
 *   GT reconfig -> VphyHdmiTxInit/Ready callbacks (GT TX comes up)
 *   stream up   -> TxStreamUpCallback: configure TPG colorbar + start TX
 *
 * Simplifications vs. reference: no EDID gating (we push 1080p60 on HPD; a
 * 1080p60-capable sink will display it), no HDCP/audio, no TPG-reset GPIO
 * (this design resets the TPG via proc_sys_reset, not a dedicated GPIO).
 *
 * stdout is the MDM JTAG-UART -> view in the Vitis "JTAG UART" terminal.
 */
#include <stdio.h>
#include "xparameters.h"
#include "xil_printf.h"
#include "xstatus.h"
#include "xil_exception.h"
#include "sleep.h"
#include "xintc.h"
#include "xgpio.h"
#include "xiic_l.h"
#include "xvphy.h"
#include "xv_hdmitxss.h"
#include "xv_tpg.h"
#include "xvidc.h"
#include "idt_8t49n24x.h"

#define IIC_BASE        XPAR_XIIC_0_BASEADDR
#define RST_GPIO_BASE   XPAR_XGPIO_0_BASEADDR
#define RST_GPIO_CH     1
#define IDT_ADDR        0x7C

#define INTC_BASE       XPAR_XINTC_0_BASEADDR
#define HDMITX_BASE     XPAR_XV_HDMITXSS_0_BASEADDR
#define VPHY_BASE       XPAR_XVPHY_0_BASEADDR
#define TPG_BASE        XPAR_V_TPG_0_BASEADDR

#define INTR_HDMITX     XPAR_FABRIC_XV_HDMITXSS_0_INTR   /* = 0 */
#define INTR_VPHY       XPAR_FABRIC_XVPHY_0_INTR         /* = 2 */

static XIntc       Intc;
static XVphy       Vphy;
static XV_HdmiTxSs HdmiTxSs;
static XV_tpg      Tpg;
static XGpio       RstGpio;
static u8          RstGpioReady = FALSE;

static volatile u8 TxRestartColorbar = FALSE;
static volatile u8 TxBusy            = TRUE;
static volatile u8 TxStreamUpPending = FALSE;  /* re-enable TMDS clkout in main loop */
static XTpg_PatternId Pattern = XTPG_BKGND_COLOR_BARS;

/* diagnostics: did the VPHY/HDMI interrupt callbacks ever fire? */
static volatile u32 g_txinit = 0, g_txready = 0, g_streamup = 0, g_streamdown = 0;

/* ---- clock chip reset: clean low->high pulse so its PLL restarts ---- */
static void idt_release_reset(void)
{
    if (XGpio_Initialize(&RstGpio, RST_GPIO_BASE) == XST_SUCCESS) {
        RstGpioReady = TRUE;
        XGpio_SetDataDirection(&RstGpio, RST_GPIO_CH, 0x0);
        XGpio_SetDataDirection(&RstGpio, 2, 0x1);
        XGpio_DiscreteWrite(&RstGpio, RST_GPIO_CH, 0x0);   /* assert  */
        usleep(20000);
        XGpio_DiscreteWrite(&RstGpio, RST_GPIO_CH, 0x1);   /* release */
        usleep(100000);
    } else {
        xil_printf("WARN: clock reset GPIO init failed\r\n");
    }
}

/* ---- TPG colorbar config for the current TX stream ---- */
static void ConfigTpgColorbar(void)
{
    XVidC_VideoStream *s = XV_HdmiTxSs_GetVideoStream(&HdmiTxSs);

    XV_tpg_DisableAutoRestart(&Tpg);
    XV_tpg_Set_height(&Tpg, s->Timing.VActive);
    XV_tpg_Set_width(&Tpg,  s->Timing.HActive);
    XV_tpg_Set_colorFormat(&Tpg, s->ColorFormatId);
    XV_tpg_Set_bckgndId(&Tpg, Pattern);
    XV_tpg_Set_ovrlayId(&Tpg, 0);
    XV_tpg_Set_enableInput(&Tpg, FALSE);   /* not pass-through */
    XV_tpg_EnableAutoRestart(&Tpg);
    XV_tpg_Start(&Tpg);
}

/* ---- HDMI TX SS callbacks ---- */
static void TxConnectCallback(void *ref)
{
    XV_HdmiTxSs *p = (XV_HdmiTxSs *)ref;
    if (p->IsStreamConnected == FALSE) {
        xil_printf("TX: cable disconnected\r\n");
        TxRestartColorbar = FALSE;
        TxBusy = TRUE;
        XVphy_IBufDsEnable(&Vphy, 0, XVPHY_DIR_TX, FALSE);
    } else {
        xil_printf("TX: cable connected (HPD)\r\n");
        XVphy_IBufDsEnable(&Vphy, 0, XVPHY_DIR_TX, TRUE);
        TxRestartColorbar = TRUE;
        TxBusy = FALSE;
    }
}

static void TxStreamUpCallback(void *ref)
{
    XV_HdmiTxSs *p = (XV_HdmiTxSs *)ref;
    g_streamup++;
    xil_printf("TX: stream UP -> GT TX locked, starting colorbar\r\n");
    XV_HdmiTxSS_SetHdmiMode(p);
    XV_HdmiTxSs_AudioMute(p, TRUE);
    ConfigTpgColorbar();
    XV_HdmiTxSs_StreamStart(p);
    /* Re-enable the TX TMDS clock output in the main loop (NOT here): the
     * reference moved this out of the ISR callback to avoid a race condition
     * (changelog 2.18). Without it the GT locks but no TMDS clock reaches the
     * HDMI connector -> stream "up" but blank screen. */
    TxStreamUpPending = TRUE;
    TxBusy = FALSE;
}

static void TxStreamDownCallback(void *ref)
{
    (void)ref;
    g_streamdown++;
}

/* ---- VPHY callbacks ---- */
static void VphyHdmiTxInitCallback(void *ref)
{
    (void)ref;
    g_txinit++;
    XV_HdmiTxSs_RefClockChangeInit(&HdmiTxSs);
}
static void VphyHdmiTxReadyCallback(void *ref) { (void)ref; g_txready++; }

/* ---- start colorbar at a given mode (reprograms the clock chip) ----
 *
 * Aligned with the AUBoard HDMI Pass-Thru reference EnableColorBar()
 * (Passthrough_Microblaze_2/src/xhdmi_example.c): the GT TX reference clock is
 * the *mode's TMDS clock* (148.5 MHz for 1080p60), NOT a fixed 297 MHz. The
 * VPHY IP's "297" is just the max refclk; XVphy_SetHdmiTxParam recomputes the
 * QPLL at runtime from HdmiTxRefClkHz. The 8T49N241 is programmed (free-run)
 * to that same TMDS clock. Order matches the reference: disable TX TMDS clkout
 * -> SetStream -> HdmiTxRefClkHz=TmdsClock -> SetHdmiTxParam -> disable RX
 * clkout -> program clock chip LAST. */
static void EnableColorBar(XVidC_VideoMode mode)
{
    u32 TmdsClock;

    TxBusy = TRUE;

    /* Disable TX TMDS clock while we reconfigure. */
    XVphy_Clkout1OBufTdsEnable(&Vphy, XVPHY_DIR_TX, FALSE);

    TmdsClock = XV_HdmiTxSs_SetStream(&HdmiTxSs, mode,
                                      XVIDC_CSF_RGB, XVIDC_BPC_8, NULL);

    XVidC_VideoStream *s = XV_HdmiTxSs_GetVideoStream(&HdmiTxSs);

    /* Set GT TX reference clock = the mode's TMDS clock (reference behavior). */
    Vphy.HdmiTxRefClkHz = TmdsClock;

    if (XVphy_SetHdmiTxParam(&Vphy, 0, XVPHY_CHANNEL_ID_CHA,
                             s->PixPerClk, s->ColorDepth,
                             s->ColorFormatId) == XST_FAILURE) {
        xil_printf("TX: SetHdmiTxParam failed for this mode\r\n");
        TxBusy = FALSE;
        return;
    }

    /* Disable RX clock forwarding (reference does this; harmless TX-only). */
    XVphy_Clkout1OBufTdsEnable(&Vphy, XVPHY_DIR_RX, FALSE);

    /* Program the 8T49N241 in free-running mode to the TMDS clock (reference:
     * I2cClk(0, HdmiTxRefClkHz)). FIn must be the 40 MHz crystal. */
    xil_printf("TX: programming 8T49N241 free-run -> %lu Hz (TMDS/GT ref)\r\n",
               (unsigned long)TmdsClock);
    int idtrc = IDT_8T49N24x_SetClock(IIC_BASE, IDT_ADDR,
                                      IDT_8T49N24X_XTAL_FREQ,
                                      (int)TmdsClock, TRUE);
    if (idtrc != XST_SUCCESS)
        xil_printf("TX: WARN 8T49N241 SetClock failed (rc=%d)\r\n", idtrc);

    /* Force the VPHY clock detector to re-detect the TX refclk so the GT TX
     * state machine leaves IDLE and starts the QPLL/GT-reset/READY sequence.
     * REQUIRED here because our IDT Init loads the free-run synth config, so the
     * chip already outputs ~TmdsClock at boot; SetClock above reprograms it to
     * the SAME frequency, so the clock detector sees NO frequency change and
     * never fires the event that kicks the state machine (symptom: txinit=1
     * once, then "TX state: idle", ready=0 forever). The reference avoids this
     * because its Init uses jitter-attenuator mode (no output until here), so
     * its clock program is a real nothing->TmdsClock change. */
    usleep(50000);   /* let the reprogrammed clock settle first */
    XVphy_ClkDetFreqReset(&Vphy, 0, XVPHY_DIR_TX);

    /* One-shot: let the PLL settle, dump the chip regs, and report the GT
     * refclk the VPHY clock-detector now sees (separates "clock not reaching
     * the GT" from "GT not locking"). */
    static int dumped = 0;
    if (!dumped) {
        dumped = 1;
        usleep(200000);
        xil_printf("--- 8T49N241 register dump ---\r\n");
        IDT_8T49N24x_RegisterDump(IIC_BASE, IDT_ADDR);
        xil_printf("--- end dump ---\r\n");
        xil_printf("TX: post-program txRefHz=%lu (expect ~%lu)\r\n",
                   (unsigned long)XVphy_ClkDetGetRefClkFreqHz(&Vphy,
                                                              XVPHY_DIR_TX),
                   (unsigned long)TmdsClock);
    }
}

static int SetupInterrupts(void)
{
    int Status = XIntc_Initialize(&Intc, INTC_BASE);
    if (Status != XST_SUCCESS) { xil_printf("intc init failed\r\n"); return XST_FAILURE; }

    XIntc_Connect(&Intc, INTR_HDMITX,
                  (XInterruptHandler)XV_HdmiTxSS_HdmiTxIntrHandler, &HdmiTxSs);
    XIntc_Connect(&Intc, INTR_VPHY,
                  (XInterruptHandler)XVphy_InterruptHandler, &Vphy);

    XIntc_Start(&Intc, XIN_REAL_MODE);
    XIntc_Enable(&Intc, INTR_HDMITX);
    XIntc_Enable(&Intc, INTR_VPHY);

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XIntc_InterruptHandler, &Intc);
    return XST_SUCCESS;
}

int main(void)
{
    unsigned hb = 0;

    /* Print a few times up front so a late-attached JTAG-UART terminal still
     * catches signs of life (this firmware is otherwise event-driven). */
    for (int i = 0; i < 3; i++) {
        xil_printf("\r\n=== HDMI TX colorbar bring-up (boot) ===\r\n");
        usleep(300000);
    }

    /* 1) Clock chip out of reset + load base config. */
    xil_printf("step1: releasing 8T49N241 reset...\r\n");
    idt_release_reset();
    usleep(200000);
    xil_printf("step1: IDT init...\r\n");
    if (IDT_8T49N24x_Init(IIC_BASE, IDT_ADDR) != XST_SUCCESS)
        xil_printf("WARN: 8T49N241 Init failed at 0x7C\r\n");

    /* DIAGNOSTIC (set IDT_Q3_SCOPE_PROBE 0 for normal GT bring-up): prove the
     * 8T49N241 PLL is actually generating a clock, at a frequency a 10 MHz scope
     * can see. We reprogram the chip to a 1 MHz free-run output and expose it on
     * the UNCONNECTED Q3/nQ3 (U56 pins 26/25) as LVCMOS (rail-to-rail, needs no
     * termination, drives nothing on the GT path), then loop here WITHOUT
     * bringing up the GT, so nothing reprograms the chip back to 297 MHz.
     * Scope U56 pin 26 (Q3) or 25 (nQ3) vs GND (TP77) -> expect a 1 MHz square.
     *   - 1 MHz present  => PLL + output stage work; the Q2 LVDS termination is
     *                       the only issue -> the 100 ohm board mod is justified.
     *   - nothing        => chip is not generating a clock (APLL/crystal) -> do
     *                       NOT solder; we chase the PLL instead. */
#ifndef IDT_Q3_SCOPE_PROBE
#define IDT_Q3_SCOPE_PROBE 0   /* 1 = scope-only diagnostic; 0 = real GT bring-up */
#endif
#if IDT_Q3_SCOPE_PROBE
    {
        /* Keep the Init free-run config (Q2/Q3 = 148.5 MHz, VCO known-good) and
         * just divide Q3 down by FACTOR so a 10 MHz scope can see it:
         *   Q3 = 148.5 MHz / FACTOR. FACTOR=1485 -> exactly 100 kHz.
         * Reprogramming the whole PLL to a very low Fout (e.g. 1 MHz) instead
         * stresses the divider math and gave a wrong ~35 kHz; this does not. */
        const u32 FACTOR = 1485;        /* 148.5 MHz / 1485 = 100 kHz */
        u32 nq3 = 0;
        IDT_8T49N24x_EnableQ3ScopeProbe(IIC_BASE, IDT_ADDR);   /* Q3 -> LVCMOS */
        int rc = IDT_8T49N24x_SetQ3DivideDown(IIC_BASE, IDT_ADDR, FACTOR, &nq3);
        xil_printf("PROBE: Q3 divided down by %lu (N_Q3=%lu, rc=%d) -> "
                   "expect %lu Hz\r\n", (unsigned long)FACTOR,
                   (unsigned long)nq3, rc, 148500000UL / FACTOR);
        usleep(200000);
        xil_printf("--- 8T49N241 register dump ---\r\n");
        IDT_8T49N24x_RegisterDump(IIC_BASE, IDT_ADDR);
        xil_printf("--- end dump ---\r\n");
        unsigned p = 0;
        while (1) {
            xil_printf("PROBE #%u: scope U56 pin 26 (Q3) or 25 (nQ3) vs GND "
                       "-> expect ~100 kHz LVCMOS square\r\n", p++);
            usleep(1000000);
        }
    }
#endif

    /* 2) Interrupt controller. */
    xil_printf("step2: interrupts...\r\n");
    if (SetupInterrupts() != XST_SUCCESS) return XST_FAILURE;

    /* 3) HDMI TX subsystem. */
    xil_printf("step3: HDMI TX SS...\r\n");
    XV_HdmiTxSs_Config *txcfg = XV_HdmiTxSs_LookupConfig(HDMITX_BASE);
    if (!txcfg || XV_HdmiTxSs_CfgInitialize(&HdmiTxSs, txcfg, txcfg->BaseAddress)
                  != XST_SUCCESS) {
        xil_printf("HDMI TX SS init failed\r\n"); return XST_FAILURE;
    }
    XV_HdmiTxSs_SetCallback(&HdmiTxSs, XV_HDMITXSS_HANDLER_CONNECT,
                            (void *)TxConnectCallback, &HdmiTxSs);
    XV_HdmiTxSs_SetCallback(&HdmiTxSs, XV_HDMITXSS_HANDLER_STREAM_UP,
                            (void *)TxStreamUpCallback, &HdmiTxSs);
    XV_HdmiTxSs_SetCallback(&HdmiTxSs, XV_HDMITXSS_HANDLER_STREAM_DOWN,
                            (void *)TxStreamDownCallback, &HdmiTxSs);

    /* 4) Video PHY. */
    xil_printf("step4: VPHY...\r\n");
    XVphy_Config *vcfg = XVphy_LookupConfig(VPHY_BASE);
    if (!vcfg || XVphy_Hdmi_CfgInitialize(&Vphy, 0, vcfg) != XST_SUCCESS) {
        xil_printf("VPHY init failed\r\n"); return XST_FAILURE;
    }
    XVphy_SetHdmiCallback(&Vphy, XVPHY_HDMI_HANDLER_TXINIT,
                          (void *)VphyHdmiTxInitCallback, &Vphy);
    XVphy_SetHdmiCallback(&Vphy, XVPHY_HDMI_HANDLER_TXREADY,
                          (void *)VphyHdmiTxReadyCallback, &Vphy);

    /* 5) TPG. */
    xil_printf("step5: TPG...\r\n");
    XV_tpg_Config *tcfg = XV_tpg_LookupConfig(TPG_BASE);
    if (!tcfg || XV_tpg_CfgInitialize(&Tpg, tcfg, tcfg->BaseAddress)
                 != XST_SUCCESS) {
        xil_printf("TPG init failed\r\n"); return XST_FAILURE;
    }

    /* 6) Go. */
    Xil_ExceptionEnable();
    XV_HdmiTxSs_SetStream(&HdmiTxSs, XVIDC_VM_1920x1080_60_P,
                          XVIDC_CSF_RGB, XVIDC_BPC_8, NULL);
    xil_printf("Init done. Connect an HDMI monitor (waiting for HPD)...\r\n");

    while (1) {
        if (TxRestartColorbar) {
            TxRestartColorbar = FALSE;
            EnableColorBar(XVIDC_VM_1920x1080_60_P);
        }

        /* After the stream comes up, re-enable the TX TMDS clock output so the
         * TMDS clock actually reaches the HDMI connector (reference does this
         * in its main loop on IsStreamUp). EnableColorBar disabled it during
         * reconfig; without re-enabling, the GT locks but the screen is blank. */
        if (TxStreamUpPending) {
            TxStreamUpPending = FALSE;
            XVphy_Clkout1OBufTdsEnable(&Vphy, XVPHY_DIR_TX, TRUE);
            xil_printf("TX: TMDS clock output enabled (colorbar should show)\r\n");
        }

        /* Heartbeat + live state so the terminal is never silent.
         * txRefHz = VPHY clock-detector reading; txinit/ready = VPHY ISR
         * callbacks fired; up = HDMI stream-up. All-zero callbacks => the
         * VPHY interrupt isn't being delivered. */
        u32 txRefHz = XVphy_ClkDetGetRefClkFreqHz(&Vphy, XVPHY_DIR_TX);
        u32 idtLol = RstGpioReady ? XGpio_DiscreteRead(&RstGpio, 2) & 0x1 : 0xff;
        xil_printf("hb #%u: conn=%d busy=%d txRefHz=%lu lol=%lu | txinit=%lu ready=%lu up=%lu down=%lu\r\n",
                   hb++, (int)HdmiTxSs.IsStreamConnected, (int)TxBusy,
                   (unsigned long)txRefHz, (unsigned long)idtLol, (unsigned long)g_txinit,
                   (unsigned long)g_txready, (unsigned long)g_streamup,
                   (unsigned long)g_streamdown);

        /* Every few beats, dump full VPHY/GT state (PLL lock, clk detector,
         * line rate) once the cable is connected. This is the definitive
         * "why won't the GT lock" diagnostic. */
        if (HdmiTxSs.IsStreamConnected && (hb % 4 == 0)) {
            xil_printf("---- XVphy_HdmiDebugInfo ----\r\n");
            XVphy_HdmiDebugInfo(&Vphy, 0, XVPHY_CHANNEL_ID_CHA);
            xil_printf("-----------------------------\r\n");
        }
        for (volatile int i = 0; i < 8000000; i++) { ; }
    }
    return 0;
}
