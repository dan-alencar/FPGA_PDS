#include "xv_hdmirxss.h"

XV_HdmiRxSs_Config XV_HdmiRxSs_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,v-hdmi-rx-ss-3.2", /* compatible */
		0x44a40000, /* reg */
		0x44a4ffff, /* xlnx,highaddr */
		0x2, /* xlnx,input-pixels-per-clock */
		0x8, /* xlnx,max-bits-per-component */
		0x0, /* hdcptimer-present */
		0x0, /* hdcptimer-connected */
		0x0, /* hdcp14-present */
		0x0, /* hdcp14-connected */
		0x0, /* hdcp22-present */
		0x0, /* hdcp22-connected */
		0x1, /* hdmirx-present */
		0x0, /* hdmirx-connected */
		{0x2003,  0xffff,  0xffff,  0xffff,  0xffff}, /* interrupts */
		0x41200001 /* interrupt-parent */
	},
	 {
		 NULL
	}
};