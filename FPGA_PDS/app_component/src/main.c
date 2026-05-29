/*
* MicroBlaze bring-up test for hdmi_tx_bd / microblaze_0.
*
* stdout is routed by the BSP to the MDM JTAG-UART (0x41400000),
* so this output appears in the Vitis "JTAG UART" terminal,
* NOT on a physical /dev/ttyUSB COM port.
*/
#include <stdio.h>
#include "xparameters.h"
#include "xil_printf.h"

int main(void)
{
    unsigned int count = 0;

    /* If you see this line, the clk_wiz locked and the MicroBlaze
    * is genuinely out of reset. */
    xil_printf("\r\n=== microblaze_0 alive: out of reset, 100 MHz clock locked ===\r\n");

    while (1) {
        xil_printf("MB alive #%u\r\n", count++);

        /* Crude busy-wait delay (no timer/IP dependency) for a visible cadence. */
        for (volatile int i = 0; i < 5000000; i++) {
            ;
        }
    }

    return 0;
}