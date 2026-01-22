#include "xv_hdmitxss.h"

XV_HdmiTxSs_Config XV_HdmiTxSs_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,v-hdmi-tx-ss-3.2", /* compatible */
		0x44a00000, /* reg */
		0x44a1ffff, /* xlnx,highaddr */
		0x4, /* xlnx,input-pixels-per-clock */
		0x8, /* xlnx,max-bits-per-component */
		0x1, /* xlnx,include-low-reso-vid */
		0x1, /* xlnx,include-yuv420-sup */
		0x5f5e100, /* xlnx,axi-lite-freq-hz */
		0x0, /* hdcptimer-present */
		0x0, /* hdcptimer-connected */
		0x0, /* hdcp14-present */
		0x0, /* hdcp14-connected */
		0x0, /* hdcp22-present */
		0x0, /* hdcp22-connected */
		0x1, /* hdmitx-present */
		0x44a00000, /* hdmitx-connected */
		0x1, /* vtc-present */
		0x44a10000, /* vtc-connected */
		{0x2000,  0xffff,  0xffff,  0xffff,  0xffff}, /* interrupts */
		0x41200001 /* interrupt-parent */
	},
	 {
		 NULL
	}
};