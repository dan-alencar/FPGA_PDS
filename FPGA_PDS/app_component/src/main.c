/*
 * MicroBlaze bring-up for hdmi_tx_bd / microblaze_0.
 *
 * Stage 2 (final): reach + configure the 8T49N241 clock generator, using the
 * sequence proven by the AUBoard HDMI Pass-Thru reference design:
 *
 *   1. The clock chip sits BEHIND an I2C mux at 0x74 (PCA/TCA switch). It is
 *      NOT visible until the mux is told to open its channel. Default-channel
 *      traffic only sees the EEPROM at 0x50 (which is why earlier scans only
 *      ever found 0x50).
 *   2. On this board the clock chip answers at 0x7C (the reference's active
 *      I2C_CLK_ADDR; 0x6C is commented out). Note 0x7C is ABOVE the 0x77 our
 *      earlier scan stopped at -- a second reason we never saw it.
 *   3. The reference drives NO reset to the chip; the board releases it.
 *
 * We still own HDMI_8T49N241_RST_N via AXI_GPIO_0, so we simply hold it
 * released (active-low => drive high).
 *
 * stdout is the MDM JTAG-UART -> view in the Vitis "JTAG UART" terminal.
 */
#include <stdio.h>
#include "xparameters.h"
#include "xil_printf.h"
#include "xstatus.h"
#include "sleep.h"
#include "xgpio.h"
#include "xiic_l.h"
#include "idt_8t49n24x.h"

#define IIC_BASE            XPAR_XIIC_0_BASEADDR    /* AXI_IIC_0 -> iic_clkgen */
#define RST_GPIO_BASE       XPAR_XGPIO_0_BASEADDR   /* AXI_GPIO_0 -> RST_N     */
#define RST_GPIO_CH         1

#define I2C_MUX_ADDR        0x74    /* I2C switch (reference: I2C_MUX_ADDR)    */
#define I2C_MUX_CH_CLK      0x80    /* channel byte that exposes the clock gen
                                       (reference I2cMux() MicroBlaze path)    */
#define IDT_ADDR            0x7C    /* clock chip (reference I2C_CLK_ADDR)     */
#define IDT_ADDR_ALT        0x6C    /* legacy default, kept as fallback        */

#define GT_REFCLK_HZ        297000000   /* clk_ref_p 3.367 ns => ~297 MHz */

static XGpio rst_gpio;

/* Hold the clock chip out of reset (active low -> drive high). */
static void idt_release_reset(void)
{
    if (XGpio_Initialize(&rst_gpio, RST_GPIO_BASE) != XST_SUCCESS) {
        xil_printf("WARN: XGpio init failed; reset line not driven.\r\n");
        return;
    }
    XGpio_SetDataDirection(&rst_gpio, RST_GPIO_CH, 0x0);   /* output */
    XGpio_DiscreteWrite(&rst_gpio, RST_GPIO_CH, 0x1);      /* released */
    usleep(50000);
}

static void iic_reset(void)
{
    XIic_WriteReg(IIC_BASE, XIIC_RESETR_OFFSET, XIIC_RESET_MASK);
    usleep(2000);
}

/* Open the mux channel that exposes the clock generator. */
static int mux_select(u8 channel_byte)
{
    iic_reset();
    int n = XIic_Send(IIC_BASE, I2C_MUX_ADDR, &channel_byte, 1, XIIC_STOP);
    xil_printf("I2C mux 0x%02x <= 0x%02x : %s\r\n", I2C_MUX_ADDR, channel_byte,
               (n == 1) ? "ACK" : "no ACK");
    return (n == 1);
}

/* Try Init at the given address; prints the device ID. Returns success. */
static int idt_try(u8 addr)
{
    xil_printf("8T49N241: Init at 0x%02x ...\r\n", addr);
    return (IDT_8T49N24x_Init(IIC_BASE, addr) == XST_SUCCESS);
}

/* Fallback: sweep every mux channel and full-range scan behind each, so we
 * can see exactly where the chip is if the assumed values are wrong. */
static void mux_discovery_scan(void)
{
    xil_printf("--- mux discovery: sweeping channels, scanning 0x08-0x7F ---\r\n");
    for (int ch = 0; ch < 8; ch++) {
        u8 chbyte = (u8)(1u << ch);
        iic_reset();
        if (XIic_Send(IIC_BASE, I2C_MUX_ADDR, &chbyte, 1, XIIC_STOP) != 1)
            continue;
        for (u8 a = 0x08; a <= 0x7F; a++) {
            u8 z = 0x00;
            iic_reset();
            if (XIic_Send(IIC_BASE, a, &z, 1, XIIC_STOP) == 1)
                xil_printf("  ch 0x%02x : write-ACK at 0x%02x\r\n", chbyte, a);
        }
    }
    xil_printf("--- end discovery ---\r\n");
}

int main(void)
{
    unsigned int count = 0;
    int ok = 0;
    u8 used_addr = 0;

    xil_printf("\r\n=== microblaze_0 alive: out of reset, 100 MHz clock locked ===\r\n");

    idt_release_reset();

    /* Proven path: open mux channel, then talk to the clock chip at 0x7C. */
    mux_select(I2C_MUX_CH_CLK);

    if (idt_try(IDT_ADDR)) {
        ok = 1; used_addr = IDT_ADDR;
    } else if (idt_try(IDT_ADDR_ALT)) {
        ok = 1; used_addr = IDT_ADDR_ALT;
    }

    if (!ok) {
        xil_printf("8T49N241: not found at 0x7C/0x6C on mux channel 0x%02x.\r\n",
                   I2C_MUX_CH_CLK);
        mux_discovery_scan();   /* tell us the real channel/address */
    } else {
        xil_printf("8T49N241: Init OK at 0x%02x. Setting free-run %d Hz ...\r\n",
                   used_addr, GT_REFCLK_HZ);
        int rc = IDT_8T49N24x_SetClock(IIC_BASE, used_addr,
                                       0 /*FIn*/, GT_REFCLK_HZ /*FOut*/,
                                       TRUE /*FreeRun*/);
        if (rc == XST_SUCCESS)
            xil_printf("8T49N241: clock configured. GT refclk should be live.\r\n");
        else
            xil_printf("8T49N241: SetClock failed (rc=%d).\r\n", rc);
    }

    while (1) {
        xil_printf("MB alive #%u\r\n", count++);
        for (volatile int i = 0; i < 5000000; i++) {
            ;
        }
    }

    return 0;
}
