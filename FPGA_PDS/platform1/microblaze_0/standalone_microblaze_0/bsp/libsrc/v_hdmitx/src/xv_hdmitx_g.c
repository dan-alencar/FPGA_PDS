#include "xv_hdmitx.h"

XV_HdmiTx_Config XV_HdmiTx_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,v-hdmi-tx-3.0", /* compatible */
		0x44a00000, /* reg */
		0x5f5e100 /* xlnx,axi-lite-freq-hz */
	},
	 {
		 NULL
	}
};