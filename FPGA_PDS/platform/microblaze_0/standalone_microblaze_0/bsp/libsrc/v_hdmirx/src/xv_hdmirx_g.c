#include "xv_hdmirx.h"

XV_HdmiRx_Config XV_HdmiRx_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,v-hdmi-rx-3.0", /* compatible */
		0x0, /* reg */
		0x5f5e100 /* xlnx,axi-lite-freq-hz */
	},
	 {
		 NULL
	}
};