#include "xil_printf.h"
#include "xparameters.h"

int main(void)
{
    volatile int i = 0;

    while (1) {
        xil_printf("MB alive\r\n");
        for (i = 0; i < 10000000; i++);
    }
}
