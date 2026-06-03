/*
 * MicroBlaze HDMI RX->TX PASSTHROUGH bring-up for hdmi_tx_bd / microblaze_0.
 *
 * Branch `passthrough`. Builds against a platform/ exported from the RX-enabled
 * BD (has v_hdmi_rx_ss_0). The previous colorbar firmware lives on the
 * colorbars branch / git history.
 *
 * Pure passthrough: RX VIDEO_OUT -> axis_register_slice -> TX VIDEO_IN.
 * The TPG is NOT in the datapath (no colorbar fallback; TX goes dark when the
 * source disconnects).
 *
 * Flow (interrupt-driven, mirrors the AUBoard Pass-Thru reference):
 *   RX cable HPD      -> RxConnectCallback enables RX refclk buffer
 *   RX GT refclk      -> VphyHdmiRxInitCallback (RefClockChangeInit)
 *   RX MMCM           -> RxStreamInitCallback (calc + start RX MMCM)
 *   RX stream up      -> RxStreamUpCallback: copy RX stream to TX, set TX
 *                        refclk = RX refclk, SetHdmiTxParam, flag StartTxAfterRx
 *   main loop         -> StartTxAfterRx (when TX sink ready): TX StreamStart,
 *                        enable RX clk forwarding, program 8T49N241 LOCKED to
 *                        lock TX clock to the recovered RX clock
 *
 * GT: RX refclk = MGTREFCLK1 (recovered clock, C_RX_REFCLK_SEL=1);
 *     TX refclk = MGTREFCLK0 (8T49N241, C_TX_REFCLK_SEL=0).
 * INTC inputs: HDMI_TX_SS=0, IIC=1, VID_PHY=2, HDMI_RX_SS=3.
 * stdout is the MDM JTAG-UART (Vitis "JTAG UART" terminal).
 */
#include <stdio.h>
#include <string.h>
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
#include "xv_hdmirxss.h"
#include "xvidc.h"
#include "idt_8t49n24x.h"

/* ------------------------------------------------------------------ bases */
#define IIC_BASE        XPAR_XIIC_0_BASEADDR
#define RST_GPIO_BASE   XPAR_XGPIO_0_BASEADDR
#define RST_GPIO_CH     1
#define IDT_ADDR        0x7C

#define INTC_BASE       XPAR_XINTC_0_BASEADDR
#define HDMITX_BASE     XPAR_XV_HDMITXSS_0_BASEADDR
#define HDMIRX_BASE     XPAR_XV_HDMIRXSS_0_BASEADDR
#define VPHY_BASE       XPAR_XVPHY_0_BASEADDR

/* INTC input lines (concat order) — confirm against xparameters.h after export */
#define INTR_HDMITX     XPAR_FABRIC_XV_HDMITXSS_0_INTR   /* = 0 */
#define INTR_VPHY       XPAR_FABRIC_XVPHY_0_INTR         /* = 2 */
#define INTR_HDMIRX     XPAR_FABRIC_XV_HDMIRXSS_0_INTR   /* = 3 */

/* ---------------------------------------------------------------- objects */
static XIntc       Intc;
static XVphy       Vphy;
static XV_HdmiTxSs HdmiTxSs;
static XV_HdmiRxSs HdmiRxSs;
static XGpio       RstGpio;
static u8          RstGpioReady = FALSE;

/* state */
static volatile u8 TxCableConnect    = FALSE;  /* TX sink (monitor) HPD present */
static volatile u8 StartTxAfterRxFlag = FALSE;
static volatile u8 IsPassThrough     = FALSE;
static volatile u8 EdidCloned        = FALSE;  /* TX sink EDID copied to RX yet */

/* diagnostics */
static volatile u32 g_rxconn=0, g_rxinit=0, g_rxup=0, g_rxdown=0;
static volatile u32 g_txup=0, g_txdown=0, g_txconn=0;
static volatile u32 g_txinit=0, g_txready=0;

/* EDID advertised to the source. Copy the 256-byte Edid[] table from the
 * reference (xhdmi_example.c / xhdmi_edid.c) — a 1080p60-capable block. */
extern const u8 Edid[256];

static void FatalLoop(const char *msg)
{
    while (1) { xil_printf("FATAL: %s\r\n", msg); usleep(1000000); }
}

/* ---- clock chip reset: clean low->high pulse so its PLL restarts ---- */
static void idt_release_reset(void)
{
    if (XGpio_Initialize(&RstGpio, RST_GPIO_BASE) == XST_SUCCESS) {
        RstGpioReady = TRUE;
        XGpio_SetDataDirection(&RstGpio, RST_GPIO_CH, 0x0);
        XGpio_SetDataDirection(&RstGpio, 2, 0x1);
        XGpio_DiscreteWrite(&RstGpio, RST_GPIO_CH, 0x0);
        usleep(20000);
        XGpio_DiscreteWrite(&RstGpio, RST_GPIO_CH, 0x1);
        usleep(100000);
    } else {
        xil_printf("WARN: clock reset GPIO init failed\r\n");
    }
}

/* Defined further down; needed by TxStreamUpCallback (runs after GT TX lock). */
static void ConfigureTxInfoframes(void);
static void ReleaseHdmiTxResets(void);

/* ========================================================================
 *  TX (sink-facing) callbacks
 * ===================================================================== */
static void TxConnectCallback(void *ref)
{
    XV_HdmiTxSs *p = (XV_HdmiTxSs *)ref;
    g_txconn++;
    if (p->IsStreamConnected == FALSE) {
        xil_printf("TX: sink disconnected\r\n");
        TxCableConnect = FALSE;
        EdidCloned = FALSE;
        XVphy_IBufDsEnable(&Vphy, 0, XVPHY_DIR_TX, FALSE);
    } else {
        xil_printf("TX: sink connected (HPD)\r\n");
        TxCableConnect = TRUE;
        XVphy_IBufDsEnable(&Vphy, 0, XVPHY_DIR_TX, TRUE);
    }
}

static void TxStreamUpCallback(void *ref)   { (void)ref; g_txup++;
    xil_printf("TX: stream UP -> GT TX locked\r\n");
    /* GT TX is up now and tx_video_clk is LIVE -> do the TX-SS output config
     * HERE, not in StartTxAfterRx. The AXIS->video bridge / VTC only program
     * correctly with the TX video clock running; configuring them before GT
     * lock left the bridge unlocked (brdg=0) even with lnk/vid=1. Mirrors the
     * reference TxStreamUpCallback (xhdmi_example.c). See [[hdmi-rx-passthrough-bd]]. */
    XV_HdmiTxSS_SetHdmiMode(&HdmiTxSs);
    XV_HdmiTxSs_AudioMute(&HdmiTxSs, TRUE);
    ConfigureTxInfoframes();
    XV_HdmiTxSS_MaskDisable(&HdmiTxSs);     /* unblank */
    ReleaseHdmiTxResets();
}
static void TxStreamDownCallback(void *ref) { (void)ref; g_txdown++; }

static void VphyHdmiTxInitCallback(void *ref)  { (void)ref; g_txinit++;
    XV_HdmiTxSs_RefClockChangeInit(&HdmiTxSs); }
static void VphyHdmiTxReadyCallback(void *ref) { (void)ref; g_txready++; }

/* ========================================================================
 *  RX (source-facing) callbacks
 * ===================================================================== */
static void RxConnectCallback(void *ref)
{
    XV_HdmiRxSs *p = (XV_HdmiRxSs *)ref;
    g_rxconn++;
    if (p->IsStreamConnected == FALSE) {
        xil_printf("RX: source disconnected\r\n");
        Vphy.HdmiRxTmdsClockRatio = 0;
        IsPassThrough = FALSE;
        EdidCloned = FALSE;
        /* Mirror reference SetHdmiRxHpd(FALSE): drop HPD + stop the RX SS. */
        XVphy_MmcmPowerDown(&Vphy, 0, XVPHY_DIR_RX, FALSE);
        XVphy_Clkout1OBufTdsEnable(&Vphy, XVPHY_DIR_RX, FALSE);
        XVphy_IBufDsEnable(&Vphy, 0, XVPHY_DIR_RX, FALSE);
        XV_HdmiRxSs_Stop(p);
    } else {
        xil_printf("RX: source connected -> assert HPD\r\n");
        /* Mirror reference SetHdmiRxHpd(TRUE): START the RX SS (this asserts
         * HPD to the source so it begins sending TMDS) + enable RX refclk
         * buffer. Without Start, the source sees no HPD and sends nothing
         * (rxRefHz stays 0, RX never comes up). */
        XV_HdmiRxSs_Start(p);
        XVphy_IBufDsEnable(&Vphy, 0, XVPHY_DIR_RX, TRUE);
    }
}

static void RxBrdgOverflowCallback(void *ref) { (void)ref; }

/* GT RX reference clock changed */
static void VphyHdmiRxInitCallback(void *ref)
{
    (void)ref; g_rxinit++;
    XV_HdmiRxSs_RefClockChangeInit(&HdmiRxSs);
    Vphy.HdmiRxTmdsClockRatio = HdmiRxSs.TMDSClockRatio;
}
static void VphyHdmiRxReadyCallback(void *ref) { (void)ref; }

/* RX stream parameters known -> set up RX MMCM */
static void RxStreamInitCallback(void *ref)
{
    XV_HdmiRxSs *p = (XV_HdmiRxSs *)ref;
    XVidC_VideoStream *s = XV_HdmiRxSs_GetVideoStream(p);
    XVidC_ColorDepth bpc = (s->ColorFormatId == XVIDC_CSF_YCRCB_422)
                           ? XVIDC_BPC_8 : s->ColorDepth;

    if (XVphy_HdmiCfgCalcMmcmParam(&Vphy, 0, XVPHY_CHANNEL_ID_CH1,
                                   XVPHY_DIR_RX, s->PixPerClk, bpc)
        == XST_FAILURE)
        return;

    XVphy_MmcmStart(&Vphy, 0, XVPHY_DIR_RX);
    usleep(10000);
}

/* RX stream up -> copy parameters to TX, lock TX refclk to RX */
static void RxStreamUpCallback(void *ref)
{
    XV_HdmiRxSs *p = (XV_HdmiRxSs *)ref;
    g_rxup++;
    xil_printf("RX: stream UP\r\n");

    XVidC_VideoStream *rx = XV_HdmiRxSs_GetVideoStream(p);
    XVidC_VideoStream *tx = XV_HdmiTxSs_GetVideoStream(&HdmiTxSs);

    /* Copy RX video parameters straight into TX */
    *tx = *rx;
    XV_HdmiTxSs_SetVideoIDCode(&HdmiTxSs, XV_HdmiRxSs_GetVideoIDCode(p));
    XV_HdmiTxSs_SetVideoStreamType(&HdmiTxSs, XV_HdmiRxSs_GetVideoStreamType(p));

    /* TX refclk = RX refclk (x4 + scrambling for >3.4 Gb/s, i.e. 4k60) */
    u64 LineRate =
        Vphy.Quads[0].Plls[XVPHY_CH2IDX(XVPHY_CHANNEL_ID_CMN0)].LineRateHz;
    if ((LineRate / 1000000) > 3400) {
        Vphy.HdmiTxRefClkHz = Vphy.HdmiRxRefClkHz * 4;
        XV_HdmiTxSs_SetTmdsClockRatio(&HdmiTxSs, 1);
        XV_HdmiTxSs_SetVideoStreamScramblingFlag(&HdmiTxSs, TRUE);
    } else {
        Vphy.HdmiTxRefClkHz = Vphy.HdmiRxRefClkHz;
        XV_HdmiTxSs_SetTmdsClockRatio(&HdmiTxSs, 0);
        XV_HdmiTxSs_SetVideoStreamScramblingFlag(&HdmiTxSs, FALSE);
    }

    if (XVphy_SetHdmiTxParam(&Vphy, 0, XVPHY_CHANNEL_ID_CHA,
                             tx->PixPerClk, tx->ColorDepth,
                             tx->ColorFormatId) == XST_FAILURE)
        return;

    IsPassThrough = TRUE;
    if (TxCableConnect) {
        /* Mute RX output until the downstream TX is started */
        XV_HdmiRxSs_VRST(p, TRUE);
        StartTxAfterRxFlag = TRUE;
    }
}

static void RxStreamDownCallback(void *ref) { (void)ref; g_rxdown++;
    xil_printf("RX: stream DOWN\r\n"); }

/* Build a minimal AVI InfoFrame from the current TX stream so the sink knows
 * the color space + VIC. Without this many sinks blank or mis-display. */
static void ConfigureTxInfoframes(void)
{
    XVidC_VideoStream *s = XV_HdmiTxSs_GetVideoStream(&HdmiTxSs);
    XHdmiC_AVI_InfoFrame *avi = XV_HdmiTxSs_GetAviInfoframe(&HdmiTxSs);
    XHdmiC_VSIF *vsif = XV_HdmiTxSs_GetVSIF(&HdmiTxSs);

    memset(avi, 0, sizeof(*avi));
    memset(vsif, 0, sizeof(*vsif));
    avi->Version = 2;
    avi->ColorSpace = XV_HdmiC_XVidC_To_IfColorformat(s->ColorFormatId);
    avi->VIC = HdmiTxSs.HdmiTxPtr->Stream.Vic;
}

static void ReleaseHdmiTxResets(void)
{
    XV_HdmiTxSs_SYSRST(&HdmiTxSs, FALSE);
    XV_HdmiTxSs_VRST(&HdmiTxSs, FALSE);
    XV_HdmiTxSs_TXCore_LRST(&HdmiTxSs, FALSE);
    XV_HdmiTxSs_TXCore_VRST(&HdmiTxSs, FALSE);
}

/* Copy the TX sink (monitor) EDID into the RX so the source only offers modes
 * the real monitor supports, then toggle RX HPD so the source re-reads it.
 * Without this the source picks a mode from our generic EDID that the monitor
 * may not display (e.g. the 185.6 MHz / ~1080p75 we saw -> "verifying signal"). */
static void CloneTxEdidToRx(void)
{
    u8 buf[256];
    if (XV_HdmiTxSs_ReadEdid(&HdmiTxSs, buf) == XST_SUCCESS) {
        XV_HdmiRxSs_LoadEdid(&HdmiRxSs, buf, sizeof(buf));
        XV_HdmiRxSs_ToggleHpd(&HdmiRxSs);
        xil_printf("PT: cloned TX sink EDID -> RX + toggled HPD\r\n");
    } else {
        xil_printf("PT: WARN could not read TX sink EDID (keeping default)\r\n");
    }
}

/* ---- Start the TX side after RX is up (called from main loop) ---- */
static void StartTxAfterRx(void)
{
    StartTxAfterRxFlag = FALSE;
    XVidC_VideoStream *tx = XV_HdmiTxSs_GetVideoStream(&HdmiTxSs);

    /* Disable TX TMDS clock while reconfiguring */
    XVphy_Clkout1OBufTdsEnable(&Vphy, XVPHY_DIR_TX, FALSE);

    /* (Re)configure the GT TX QPLL/MMCM for the current stream. Re-running this
     * on retry resets the QPLL -- together with the 8T49N241 reprogram below it
     * gives the QPLL a genuine lock edge (fixes the false-READY: txup=1 but
     * qpll0=0). See [[hdmi-tx-colorbar-bringup-fix]]. */
    XVphy_SetHdmiTxParam(&Vphy, 0, XVPHY_CHANNEL_ID_CHA,
                         tx->PixPerClk, tx->ColorDepth, tx->ColorFormatId);

    /* NOTE: the TX-SS output config (SetHdmiMode / AVI InfoFrame / MaskDisable /
     * resets) is NOT done here anymore -- it must run AFTER the GT TX is up so
     * the AXIS->video bridge locks. It now lives in TxStreamUpCallback (mirrors
     * the reference). StreamStart below kicks the GT TX bring-up that fires it. */
    XV_HdmiTxSs_StreamStart(&HdmiTxSs);

    /* Forward the recovered RX clock */
    XVphy_Clkout1OBufTdsEnable(&Vphy, XVPHY_DIR_RX, TRUE);

    /* Program the 8T49N241 in LOCKED (jitter-attenuator) mode: lock its output
     * (= TX GT refclk) to the recovered RX clock. This is EXACTLY what the
     * AUBoard passthrough reference does (xhdmi_example.c: in passthrough
     * I2cClk(RxRefClkHz, TxRefClkHz) -> SetClock(..., FALSE)).
     *
     * Free-run mode was WRONG here: on this board the 8T49N241 output also feeds
     * the RX GT refclk, so free-running it (and worse, the throwaway-297 LOL
     * hack) decoupled it from RX -> RX kept dropping (rxRefHz->0, endless
     * RX stream UP/DOWN, txup climbing). Locked mode keeps the 8T tracking the
     * RX input, so RX stays up; the free-run(boot)->locked transition is itself
     * a genuine clock event that gives the TX QPLL0 its lock edge, AND it
     * genlocks TX to RX (fixes the frame-slip / "verifying signal" risk).
     * See [[hdmi-rx-passthrough-bd]] / [[hdmi-tx-colorbar-bringup-fix]]. */
    xil_printf("PT: locked 8T49N241 RXin=%lu -> TXout=%lu Hz\r\n",
               (unsigned long)Vphy.HdmiRxRefClkHz,
               (unsigned long)Vphy.HdmiTxRefClkHz);
    if (IDT_8T49N24x_SetClock(IIC_BASE, IDT_ADDR,
                              (int)Vphy.HdmiRxRefClkHz,
                              (int)Vphy.HdmiTxRefClkHz, FALSE) != XST_SUCCESS)
        xil_printf("PT: WARN 8T49N241 locked SetClock failed\r\n");

    /* Kick the VPHY TX clock detector to re-detect the refclk so the GT TX
     * state machine leaves IDLE after the 8T relocks to the new input. */
    usleep(50000);   /* let the locked clock settle first */
    XVphy_ClkDetFreqReset(&Vphy, 0, XVPHY_DIR_TX);

    /* Release RX video reset so passthrough data flows */
    XV_HdmiRxSs_VRST(&HdmiRxSs, FALSE);

    /* Enable TX TMDS clock output */
    XVphy_Clkout1OBufTdsEnable(&Vphy, XVPHY_DIR_TX, TRUE);
}

/* ===================================================================== */
static int SetupInterrupts(void)
{
    if (XIntc_Initialize(&Intc, INTC_BASE) != XST_SUCCESS) {
        xil_printf("intc init failed\r\n"); return XST_FAILURE;
    }
    XIntc_Connect(&Intc, INTR_HDMITX,
                  (XInterruptHandler)XV_HdmiTxSS_HdmiTxIntrHandler, &HdmiTxSs);
    XIntc_Connect(&Intc, INTR_VPHY,
                  (XInterruptHandler)XVphy_InterruptHandler, &Vphy);
    XIntc_Connect(&Intc, INTR_HDMIRX,
                  (XInterruptHandler)XV_HdmiRxSS_HdmiRxIntrHandler, &HdmiRxSs);

    XIntc_Start(&Intc, XIN_REAL_MODE);
    XIntc_Enable(&Intc, INTR_HDMITX);
    XIntc_Enable(&Intc, INTR_VPHY);
    XIntc_Enable(&Intc, INTR_HDMIRX);

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XIntc_InterruptHandler,
                                 &Intc);
    return XST_SUCCESS;
}

/* Lock state of whichever PLL the given direction actually uses (CPLL vs
 * QPLL0/1). In passthrough RX shares the GT quad, so TX is NOT necessarily on
 * QPLL0 -- a hard-coded CMN0 check is wrong. Resolve the real PLL first. */
static u32 PllLockedFor(XVphy_DirectionType dir)
{
    XVphy_PllType t = XVphy_GetPllType(&Vphy, 0, dir, XVPHY_CHANNEL_ID_CH1);
    XVphy_ChannelId cid;
    if (t == XVPHY_PLL_TYPE_CPLL)
        cid = XVPHY_CHANNEL_ID_CHA;
    else if (t == XVPHY_PLL_TYPE_QPLL1 || t == XVPHY_PLL_TYPE_PLL1)
        cid = XVPHY_CHANNEL_ID_CMN1;
    else
        cid = XVPHY_CHANNEL_ID_CMN0;
    return (XVphy_IsPllLocked(&Vphy, 0, cid) == XST_SUCCESS);
}

static u32 TxPioIn(void)
{
    return XV_HdmiTx_ReadReg(HdmiTxSs.HdmiTxPtr->Config.BaseAddress,
                             XV_HDMITX_PIO_IN_OFFSET);
}

int main(void)
{
    unsigned hb = 0;
    unsigned falseReady = 0;   /* consecutive false-READY beats (qpll0=0) */

    for (int i = 0; i < 3; i++) {
        xil_printf("\r\n=== HDMI RX->TX passthrough bring-up (boot) ===\r\n");
        usleep(300000);
    }

    /* 1) Clock chip out of reset + base config (free-run baseline). */
    xil_printf("step1: 8T49N241 reset + init...\r\n");
    idt_release_reset();
    usleep(200000);
    if (IDT_8T49N24x_Init(IIC_BASE, IDT_ADDR) != XST_SUCCESS)
        xil_printf("WARN: 8T49N241 Init failed at 0x7C\r\n");

    /* 2) Interrupt controller. */
    xil_printf("step2: interrupts...\r\n");
    if (SetupInterrupts() != XST_SUCCESS) FatalLoop("interrupt setup failed");

    /* 3) HDMI TX subsystem. */
    xil_printf("step3: HDMI TX SS...\r\n");
    XV_HdmiTxSs_Config *txcfg = XV_HdmiTxSs_LookupConfig(HDMITX_BASE);
    if (!txcfg || XV_HdmiTxSs_CfgInitialize(&HdmiTxSs, txcfg, txcfg->BaseAddress)
                  != XST_SUCCESS)
        FatalLoop("HDMI TX SS init failed");
    XV_HdmiTxSs_SetCallback(&HdmiTxSs, XV_HDMITXSS_HANDLER_CONNECT,
                            (void *)TxConnectCallback, &HdmiTxSs);
    XV_HdmiTxSs_SetCallback(&HdmiTxSs, XV_HDMITXSS_HANDLER_STREAM_UP,
                            (void *)TxStreamUpCallback, &HdmiTxSs);
    XV_HdmiTxSs_SetCallback(&HdmiTxSs, XV_HDMITXSS_HANDLER_STREAM_DOWN,
                            (void *)TxStreamDownCallback, &HdmiTxSs);

    /* 4) Video PHY (TX + RX callbacks). */
    xil_printf("step4: VPHY...\r\n");
    XVphy_Config *vcfg = XVphy_LookupConfig(VPHY_BASE);
    if (!vcfg || XVphy_Hdmi_CfgInitialize(&Vphy, 0, vcfg) != XST_SUCCESS)
        FatalLoop("VPHY init failed");
    XVphy_SetHdmiCallback(&Vphy, XVPHY_HDMI_HANDLER_TXINIT,
                          (void *)VphyHdmiTxInitCallback, &Vphy);
    XVphy_SetHdmiCallback(&Vphy, XVPHY_HDMI_HANDLER_TXREADY,
                          (void *)VphyHdmiTxReadyCallback, &Vphy);
    XVphy_SetHdmiCallback(&Vphy, XVPHY_HDMI_HANDLER_RXINIT,
                          (void *)VphyHdmiRxInitCallback, &Vphy);
    XVphy_SetHdmiCallback(&Vphy, XVPHY_HDMI_HANDLER_RXREADY,
                          (void *)VphyHdmiRxReadyCallback, &Vphy);

    /* 5) HDMI RX subsystem + EDID. */
    xil_printf("step5: HDMI RX SS...\r\n");
    XV_HdmiRxSs_SetEdidParam(&HdmiRxSs, (u8 *)&Edid, sizeof(Edid));
    XV_HdmiRxSs_Config *rxcfg = XV_HdmiRxSs_LookupConfig(HDMIRX_BASE);
    if (!rxcfg || XV_HdmiRxSs_CfgInitialize(&HdmiRxSs, rxcfg, rxcfg->BaseAddress)
                  != XST_SUCCESS)
        FatalLoop("HDMI RX SS init failed");
    XV_HdmiRxSs_SetCallback(&HdmiRxSs, XV_HDMIRXSS_HANDLER_CONNECT,
                            (void *)RxConnectCallback, &HdmiRxSs);
    XV_HdmiRxSs_SetCallback(&HdmiRxSs, XV_HDMIRXSS_HANDLER_BRDGOVERFLOW,
                            (void *)RxBrdgOverflowCallback, &HdmiRxSs);
    XV_HdmiRxSs_SetCallback(&HdmiRxSs, XV_HDMIRXSS_HANDLER_STREAM_INIT,
                            (void *)RxStreamInitCallback, &HdmiRxSs);
    XV_HdmiRxSs_SetCallback(&HdmiRxSs, XV_HDMIRXSS_HANDLER_STREAM_UP,
                            (void *)RxStreamUpCallback, &HdmiRxSs);
    XV_HdmiRxSs_SetCallback(&HdmiRxSs, XV_HDMIRXSS_HANDLER_STREAM_DOWN,
                            (void *)RxStreamDownCallback, &HdmiRxSs);

    /* 6) Go. */
    Xil_ExceptionEnable();
    xil_printf("Init done. Connect HDMI source (RX) and sink (TX)...\r\n");

    while (1) {
        /* Once both cables are present, clone the monitor's EDID to the RX so
         * the source picks a monitor-native mode. ToggleHpd inside re-runs the
         * RX bring-up at the new mode. Do it before/independent of TX start. */
        if (TxCableConnect && HdmiRxSs.IsStreamConnected && !EdidCloned) {
            EdidCloned = TRUE;
            CloneTxEdidToRx();
        }

        /* Start TX once RX is up AND the TX sink is present. */
        if (StartTxAfterRxFlag && TxCableConnect)
            StartTxAfterRx();

        u32 rxRefHz = XVphy_ClkDetGetRefClkFreqHz(&Vphy, XVPHY_DIR_RX);
        u32 txRefHz = XVphy_ClkDetGetRefClkFreqHz(&Vphy, XVPHY_DIR_TX);
        u32 txPll  = (u32)XVphy_GetPllType(&Vphy, 0, XVPHY_DIR_TX, XVPHY_CHANNEL_ID_CH1);
        u32 rxPll  = (u32)XVphy_GetPllType(&Vphy, 0, XVPHY_DIR_RX, XVPHY_CHANNEL_ID_CH1);
        u32 txLock = PllLockedFor(XVPHY_DIR_TX);
        u32 rxLock = PllLockedFor(XVPHY_DIR_RX);
        u32 pio = TxPioIn();
        u8  lnkRdy = (pio & XV_HDMITX_PIO_IN_LNK_RDY_MASK) != 0;
        u8  vidRdy = (pio & XV_HDMITX_PIO_IN_VID_RDY_MASK) != 0;
        u8  brdgLk = (pio & XV_HDMITX_PIO_IN_BRDG_LOCKED_MASK) != 0;

        xil_printf("hb #%u: rxConn=%d txConn=%d pt=%d | "
                   "rxRefHz=%lu txRefHz=%lu | rxup=%lu txup=%lu | "
                   "txPll=%lu txLock=%lu rxPll=%lu rxLock=%lu | "
                   "lnk=%u vid=%u brdg=%u\r\n",
                   hb++, (int)HdmiRxSs.IsStreamConnected, (int)TxCableConnect,
                   (int)IsPassThrough,
                   (unsigned long)rxRefHz, (unsigned long)txRefHz,
                   (unsigned long)g_rxup, (unsigned long)g_txup,
                   (unsigned long)txPll, (unsigned long)txLock,
                   (unsigned long)rxPll, (unsigned long)rxLock,
                   (unsigned)lnkRdy, (unsigned)vidRdy, (unsigned)brdgLk);

        /* Periodic full GT/PLL dump while passthrough is active. */
        if (IsPassThrough && (hb % 4 == 0)) {
            xil_printf("---- XVphy_HdmiDebugInfo ----\r\n");
            XVphy_HdmiDebugInfo(&Vphy, 0, XVPHY_CHANNEL_ID_CHA);
            xil_printf("-----------------------------\r\n");
        }

        /* Recovery gated on the ground-truth TX link-ready PIO bit (NOT a
         * hard-coded QPLL0 check). Only re-bring-up when the link is genuinely
         * down while connected -- and infrequently, so we don't tear down a
         * link that is actually coming up. */
        if (IsPassThrough && TxCableConnect && !lnkRdy) {
            if (++falseReady >= 4) {
                falseReady = 0;
                xil_printf("PT: TX link down (lnk=0) -> re-bring-up TX\r\n");
                StartTxAfterRxFlag = TRUE;
            }
        } else {
            falseReady = 0;
        }

        for (volatile int i = 0; i < 8000000; i++) { ; }
    }
    return 0;
}
