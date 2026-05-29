#include "xvphy.h"

XVphy_Config XVphy_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,vid-phy-controller-2.2", /* compatible */
		0x44a30000, /* reg */
		0x5, /* xlnx,transceiver-type */
		0x3, /* xlnx,tx-no-of-channels */
		0x3, /* xlnx,rx-no-of-channels */
		0x1, /* xlnx,tx-protocol */
		0x3, /* xlnx,rx-protocol */
		0x0, /* xlnx,tx-refclk-sel */
		0x1, /* xlnx,rx-refclk-sel */
		0x6, /* xlnx,tx-pll-selection */
		0x0, /* xlnx,rx-pll-selection */
		0x0, /* xlnx,nidru */
		0x0, /* xlnx,nidru-refclk-sel */
		0x4, /* xlnx,input-pixels-per-clock */
		0x1, /* xlnx,tx-buffer-bypass */
		0x1, /* xlnx,hdmi-fast-switch */
		0x4, /* xlnx,transceiver-width */
		0x0, /* xlnx,err-irq-en */
		0x5f5e100, /* xlnx,axi-aclk-freq-mhz */
		0x5f5e100, /* xlnx,drpclk-freq */
		0x0, /* xlnx,use-gt-ch4-hdmi */
		0x0, /* xlnx,tx-dp-protocol */
		0x0, /* xlnx,rx-dp-protocol */
		0x0, /* xlnx,tx-clk-primitive */
		0x0, /* xlnx,rx-clk-primitive */
		0xffff, /* interrupts */
		0xffff /* interrupt-parent */
	},
	 {
		 NULL
	}
};