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

static volatile u8 TxRestartColorbar = FALSE;
static volatile u8 TxBusy            = TRUE;
static XTpg_PatternId Pattern = XTPG_BKGND_COLOR_BARS;

/* diagnostics: did the VPHY/HDMI interrupt callbacks ever fire? */
static volatile u32 g_txinit = 0, g_txready = 0, g_streamup = 0, g_streamdown = 0;

/* ---- clock chip reset: clean low->high pulse so its PLL restarts ---- */
static void idt_release_reset(void)
{
    if (XGpio_Initialize(&RstGpio, RST_GPIO_BASE) == XST_SUCCESS) {
        XGpio_SetDataDirection(&RstGpio, RST_GPIO_CH, 0x0);
        XGpio_DiscreteWrite(&RstGpio, RST_GPIO_CH, 0x0);   /* assert  */
        usleep(20000);
        XGpio_DiscreteWrite(&RstGpio, RST_GPIO_CH, 0x1);   /* release */
        usleep(100000);
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

/* ---- start colorbar at a given mode (reprograms the clock chip) ---- */
static void EnableColorBar(XVidC_VideoMode mode)
{
    u32 TmdsClock;

    TxBusy = TRUE;
    XVphy_Clkout1OBufTdsEnable(&Vphy, XVPHY_DIR_TX, FALSE);

    TmdsClock = XV_HdmiTxSs_SetStream(&HdmiTxSs, mode,
                                      XVIDC_CSF_RGB, XVIDC_BPC_8, NULL);

    XVidC_VideoStream *s = XV_HdmiTxSs_GetVideoStream(&HdmiTxSs);
    Vphy.HdmiTxRefClkHz = TmdsClock;

    if (XVphy_SetHdmiTxParam(&Vphy, 0, XVPHY_CHANNEL_ID_CHA,
                             s->PixPerClk, s->ColorDepth,
                             s->ColorFormatId) == XST_FAILURE) {
        xil_printf("TX: SetHdmiTxParam failed for this mode\r\n");
        TxBusy = FALSE;
        return;
    }

    /* Reprogram the 8T49N241 to the video mode's TMDS clock (free-run).
     * FIn must be the 40 MHz crystal for the divider math. */
    xil_printf("TX: programming 8T49N241 to %lu Hz (TMDS clk)\r\n",
               (unsigned long)TmdsClock);
    IDT_8T49N24x_SetClock(IIC_BASE, IDT_ADDR,
                          IDT_8T49N24X_XTAL_FREQ, (int)TmdsClock, TRUE);

    /* One-shot: give the PLL time to lock, then dump the chip's registers so
     * we can see whether it's actually configured/locked and outputting. */
    static int dumped = 0;
    if (!dumped) {
        dumped = 1;
        usleep(200000);
        xil_printf("--- 8T49N241 register dump ---\r\n");
        IDT_8T49N24x_RegisterDump(IIC_BASE, IDT_ADDR);
        xil_printf("--- end dump ---\r\n");
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

        /* Heartbeat + live state so the terminal is never silent.
         * txRefHz = VPHY clock-detector reading; txinit/ready = VPHY ISR
         * callbacks fired; up = HDMI stream-up. All-zero callbacks => the
         * VPHY interrupt isn't being delivered. */
        u32 txRefHz = XVphy_ClkDetGetRefClkFreqHz(&Vphy, XVPHY_DIR_TX);
        xil_printf("hb #%u: conn=%d busy=%d txRefHz=%lu | txinit=%lu ready=%lu up=%lu down=%lu\r\n",
                   hb++, (int)HdmiTxSs.IsStreamConnected, (int)TxBusy,
                   (unsigned long)txRefHz, (unsigned long)g_txinit,
                   (unsigned long)g_txready, (unsigned long)g_streamup,
                   (unsigned long)g_streamdown);
        for (volatile int i = 0; i < 8000000; i++) { ; }
    }
    return 0;
}
