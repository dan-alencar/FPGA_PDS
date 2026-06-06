set moduleName tpgBackground
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 18
set C_modelName {tpgBackground}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ srcYUV int 48 regular {fifo 0 volatile }  }
	{ height_val int 16 regular {ap_stable 0} }
	{ width_val int 16 regular {ap_stable 0} }
	{ passthruStartX_val int 16 regular {ap_stable 0} }
	{ passthruStartY_val int 16 regular {ap_stable 0} }
	{ passthruEndX_val int 16 regular {ap_stable 0} }
	{ passthruEndY_val int 16 regular {ap_stable 0} }
	{ enableInput_val int 8 regular {ap_stable 0} }
	{ patternId_val int 8 regular {ap_stable 0} }
	{ ZplateHorContStart_val int 16 regular {ap_stable 0} }
	{ ZplateHorContDelta_val int 16 regular {ap_stable 0} }
	{ ZplateVerContStart_val int 16 regular {ap_stable 0} }
	{ ZplateVerContDelta_val int 16 regular {ap_stable 0} }
	{ dpDynamicRange_val int 8 regular {ap_stable 0} }
	{ dpYUVCoef_val int 8 regular {ap_stable 0} }
	{ motionSpeed_val int 8 regular {ap_stable 0} }
	{ colorFormat_val int 8 regular {ap_stable 0} }
	{ bckgndYUV int 48 regular {fifo 1 volatile }  }
	{ s int 32 regular {pointer 0} {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "srcYUV", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "height_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "width_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "passthruStartX_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "passthruStartY_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "passthruEndX_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "passthruEndY_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "enableInput_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "patternId_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ZplateHorContStart_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ZplateHorContDelta_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ZplateVerContStart_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ZplateVerContDelta_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "dpDynamicRange_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dpYUVCoef_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "motionSpeed_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "colorFormat_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bckgndYUV", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ srcYUV_dout sc_in sc_lv 48 signal 0 } 
	{ srcYUV_empty_n sc_in sc_logic 1 signal 0 } 
	{ srcYUV_read sc_out sc_logic 1 signal 0 } 
	{ srcYUV_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ srcYUV_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ height_val sc_in sc_lv 16 signal 1 } 
	{ width_val sc_in sc_lv 16 signal 2 } 
	{ passthruStartX_val sc_in sc_lv 16 signal 3 } 
	{ passthruStartY_val sc_in sc_lv 16 signal 4 } 
	{ passthruEndX_val sc_in sc_lv 16 signal 5 } 
	{ passthruEndY_val sc_in sc_lv 16 signal 6 } 
	{ enableInput_val sc_in sc_lv 8 signal 7 } 
	{ patternId_val sc_in sc_lv 8 signal 8 } 
	{ ZplateHorContStart_val sc_in sc_lv 16 signal 9 } 
	{ ZplateHorContDelta_val sc_in sc_lv 16 signal 10 } 
	{ ZplateVerContStart_val sc_in sc_lv 16 signal 11 } 
	{ ZplateVerContDelta_val sc_in sc_lv 16 signal 12 } 
	{ dpDynamicRange_val sc_in sc_lv 8 signal 13 } 
	{ dpYUVCoef_val sc_in sc_lv 8 signal 14 } 
	{ motionSpeed_val sc_in sc_lv 8 signal 15 } 
	{ colorFormat_val sc_in sc_lv 8 signal 16 } 
	{ bckgndYUV_din sc_out sc_lv 48 signal 17 } 
	{ bckgndYUV_full_n sc_in sc_logic 1 signal 17 } 
	{ bckgndYUV_write sc_out sc_logic 1 signal 17 } 
	{ bckgndYUV_num_data_valid sc_in sc_lv 5 signal 17 } 
	{ bckgndYUV_fifo_cap sc_in sc_lv 5 signal 17 } 
	{ s sc_in sc_lv 32 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "srcYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "srcYUV", "role": "dout" }} , 
 	{ "name": "srcYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcYUV", "role": "empty_n" }} , 
 	{ "name": "srcYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcYUV", "role": "read" }} , 
 	{ "name": "srcYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "srcYUV", "role": "num_data_valid" }} , 
 	{ "name": "srcYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "srcYUV", "role": "fifo_cap" }} , 
 	{ "name": "height_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "height_val", "role": "default" }} , 
 	{ "name": "width_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "width_val", "role": "default" }} , 
 	{ "name": "passthruStartX_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "passthruStartX_val", "role": "default" }} , 
 	{ "name": "passthruStartY_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "passthruStartY_val", "role": "default" }} , 
 	{ "name": "passthruEndX_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "passthruEndX_val", "role": "default" }} , 
 	{ "name": "passthruEndY_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "passthruEndY_val", "role": "default" }} , 
 	{ "name": "enableInput_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "enableInput_val", "role": "default" }} , 
 	{ "name": "patternId_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "patternId_val", "role": "default" }} , 
 	{ "name": "ZplateHorContStart_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ZplateHorContStart_val", "role": "default" }} , 
 	{ "name": "ZplateHorContDelta_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ZplateHorContDelta_val", "role": "default" }} , 
 	{ "name": "ZplateVerContStart_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ZplateVerContStart_val", "role": "default" }} , 
 	{ "name": "ZplateVerContDelta_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ZplateVerContDelta_val", "role": "default" }} , 
 	{ "name": "dpDynamicRange_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dpDynamicRange_val", "role": "default" }} , 
 	{ "name": "dpYUVCoef_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dpYUVCoef_val", "role": "default" }} , 
 	{ "name": "motionSpeed_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "motionSpeed_val", "role": "default" }} , 
 	{ "name": "colorFormat_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "colorFormat_val", "role": "default" }} , 
 	{ "name": "bckgndYUV_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "din" }} , 
 	{ "name": "bckgndYUV_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "full_n" }} , 
 	{ "name": "bckgndYUV_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "write" }} , 
 	{ "name": "bckgndYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "num_data_valid" }} , 
 	{ "name": "bckgndYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "fifo_cap" }} , 
 	{ "name": "s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	tpgBackground {
		srcYUV {Type I LastRead 18 FirstWrite -1}
		height_val {Type I LastRead 1 FirstWrite -1}
		width_val {Type I LastRead 1 FirstWrite -1}
		passthruStartX_val {Type I LastRead 1 FirstWrite -1}
		passthruStartY_val {Type I LastRead 1 FirstWrite -1}
		passthruEndX_val {Type I LastRead 1 FirstWrite -1}
		passthruEndY_val {Type I LastRead 1 FirstWrite -1}
		enableInput_val {Type I LastRead 1 FirstWrite -1}
		patternId_val {Type I LastRead 1 FirstWrite -1}
		ZplateHorContStart_val {Type I LastRead 1 FirstWrite -1}
		ZplateHorContDelta_val {Type I LastRead 1 FirstWrite -1}
		ZplateVerContStart_val {Type I LastRead 1 FirstWrite -1}
		ZplateVerContDelta_val {Type I LastRead 1 FirstWrite -1}
		dpDynamicRange_val {Type I LastRead 1 FirstWrite -1}
		dpYUVCoef_val {Type I LastRead 1 FirstWrite -1}
		motionSpeed_val {Type I LastRead 1 FirstWrite -1}
		colorFormat_val {Type I LastRead 0 FirstWrite -1}
		bckgndYUV {Type O LastRead -1 FirstWrite 19}
		rampStart {Type IO LastRead -1 FirstWrite -1}
		s {Type I LastRead 1 FirstWrite -1}
		redYuv {Type I LastRead -1 FirstWrite -1}
		grnYuv {Type I LastRead -1 FirstWrite -1}
		bluYuv {Type I LastRead -1 FirstWrite -1}
		blkYuv {Type I LastRead -1 FirstWrite -1}
		whiYuv {Type I LastRead -1 FirstWrite -1}
		whiYuv_1 {Type I LastRead -1 FirstWrite -1}
		blkYuv_1 {Type I LastRead -1 FirstWrite -1}
		rampVal_1 {Type IO LastRead -1 FirstWrite -1}
		rampVal {Type IO LastRead -1 FirstWrite -1}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel {Type IO LastRead -1 FirstWrite -1}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8 {Type IO LastRead -1 FirstWrite -1}
		zonePlateVAddr {Type IO LastRead -1 FirstWrite -1}
		vBarSel {Type IO LastRead -1 FirstWrite -1}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 {Type IO LastRead -1 FirstWrite -1}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 {Type IO LastRead -1 FirstWrite -1}
		hdata {Type IO LastRead -1 FirstWrite -1}
		vBarSel_2 {Type IO LastRead -1 FirstWrite -1}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 {Type IO LastRead -1 FirstWrite -1}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 {Type IO LastRead -1 FirstWrite -1}
		rampVal_2 {Type IO LastRead -1 FirstWrite -1}
		vBarSel_1 {Type IO LastRead -1 FirstWrite -1}
		tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3 {Type IO LastRead -1 FirstWrite -1}
		tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2 {Type IO LastRead -1 FirstWrite -1}
		tpgBarSelYuv_y {Type I LastRead -1 FirstWrite -1}
		tpgBarSelYuv_u {Type I LastRead -1 FirstWrite -1}
		tpgBarSelYuv_v {Type I LastRead -1 FirstWrite -1}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_xBar_9 {Type IO LastRead -1 FirstWrite -1}
		tpgBarSelRgb_r {Type I LastRead -1 FirstWrite -1}
		tpgBarSelRgb_g {Type I LastRead -1 FirstWrite -1}
		tpgBarSelRgb_b {Type I LastRead -1 FirstWrite -1}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_xBar {Type IO LastRead -1 FirstWrite -1}
		tpgSinTableArray {Type I LastRead -1 FirstWrite -1}
		zonePlateVDelta {Type IO LastRead -1 FirstWrite -1}
		tpgTartanBarArray {Type I LastRead -1 FirstWrite -1}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign {Type IO LastRead -1 FirstWrite -1}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_1 {Type IO LastRead -1 FirstWrite -1}
		yCount {Type IO LastRead -1 FirstWrite -1}
		tpgPatternCrossHatch_unsigned_short_unsigned_short_unsigned_short_unsigned_sh {Type IO LastRead -1 FirstWrite -1}
		tpgPatternCrossHatch_unsigned_short_unsigned_short_unsigned_short_unsigned_sh_1 {Type IO LastRead -1 FirstWrite -1}
		vHatch {Type IO LastRead -1 FirstWrite -1}
		yCount_2 {Type IO LastRead -1 FirstWrite -1}
		tpgSinTableArray_9bit_0 {Type I LastRead -1 FirstWrite -1}
		tpgSinTableArray_9bit_1 {Type I LastRead -1 FirstWrite -1}
		tpgSinTableArray_9bit_2 {Type I LastRead -1 FirstWrite -1}
		tpgCheckerBoardArray {Type I LastRead -1 FirstWrite -1}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_s {Type IO LastRead -1 FirstWrite -1}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_1 {Type IO LastRead -1 FirstWrite -1}
		yCount_3 {Type IO LastRead -1 FirstWrite -1}
		rSerie {Type IO LastRead -1 FirstWrite -1}
		gSerie {Type IO LastRead -1 FirstWrite -1}
		bSerie {Type IO LastRead -1 FirstWrite -1}
		DPtpgBarSelYuv_709_y {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelYuv_709_u {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelYuv_709_v {Type I LastRead -1 FirstWrite -1}
		DPtpgBarArray {Type I LastRead -1 FirstWrite -1}
		tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_s {Type IO LastRead -1 FirstWrite -1}
		DPtpgBarSelRgb_VESA_r {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelRgb_VESA_g {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelRgb_VESA_b {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelRgb_CEA_r {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelRgb_CEA_g {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelRgb_CEA_b {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelYuv_601_y {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelYuv_601_u {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelYuv_601_v {Type I LastRead -1 FirstWrite -1}
		tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_1 {Type IO LastRead -1 FirstWrite -1}
		yCount_1 {Type IO LastRead -1 FirstWrite -1}}
	tpgBackground_Pipeline_VITIS_LOOP_565_2 {
		rampVal_3_flag_0 {Type I LastRead 0 FirstWrite -1}
		hdata_flag_0 {Type I LastRead 0 FirstWrite -1}
		rampVal_2_flag_0 {Type I LastRead 0 FirstWrite -1}
		dpDynamicRange_val {Type I LastRead 0 FirstWrite -1}
		colorFormat_val {Type I LastRead 0 FirstWrite -1}
		dpYUVCoef_val {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		Sel {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		barWidth {Type I LastRead 0 FirstWrite -1}
		enableInput_val {Type I LastRead 0 FirstWrite -1}
		width_val {Type I LastRead 0 FirstWrite -1}
		outpix_24 {Type I LastRead 0 FirstWrite -1}
		select_ln1518 {Type I LastRead 0 FirstWrite -1}
		select_ln1503 {Type I LastRead 0 FirstWrite -1}
		rampStart_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln736 {Type I LastRead 0 FirstWrite -1}
		zext_ln563 {Type I LastRead 0 FirstWrite -1}
		rev {Type I LastRead 0 FirstWrite -1}
		icmp_ln736 {Type I LastRead 0 FirstWrite -1}
		passthruStartX_val {Type I LastRead 0 FirstWrite -1}
		passthruEndX_val {Type I LastRead 0 FirstWrite -1}
		bckgndYUV {Type O LastRead -1 FirstWrite 19}
		patternId_val {Type I LastRead 0 FirstWrite -1}
		srcYUV {Type I LastRead 18 FirstWrite -1}
		zext_ln1120_1 {Type I LastRead 0 FirstWrite -1}
		redYuv_load {Type I LastRead 0 FirstWrite -1}
		grnYuv_load {Type I LastRead 0 FirstWrite -1}
		bluYuv_load {Type I LastRead 0 FirstWrite -1}
		blkYuv_load {Type I LastRead 0 FirstWrite -1}
		whiYuv_load {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		shl_ln {Type I LastRead 0 FirstWrite -1}
		ZplateHorContStart_val {Type I LastRead 0 FirstWrite -1}
		ZplateHorContDelta_val {Type I LastRead 0 FirstWrite -1}
		ZplateVerContStart_val {Type I LastRead 0 FirstWrite -1}
		icmp_ln1337 {Type I LastRead 0 FirstWrite -1}
		ZplateVerContDelta_val {Type I LastRead 0 FirstWrite -1}
		barWidthMinSamples {Type I LastRead 0 FirstWrite -1}
		add_ln1386 {Type I LastRead 0 FirstWrite -1}
		blkYuv_1_load {Type I LastRead 0 FirstWrite -1}
		add_ln1473 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1449_1 {Type I LastRead 0 FirstWrite -1}
		whiYuv_3_load {Type I LastRead 0 FirstWrite -1}
		add_ln1533 {Type I LastRead 0 FirstWrite -1}
		rampVal_3_flag_1_out {Type O LastRead -1 FirstWrite 18}
		rampVal_3_new_1_out {Type O LastRead -1 FirstWrite 18}
		rampVal_3_loc_1_out {Type IO LastRead 18 FirstWrite 18}
		rampVal_loc_1_out {Type IO LastRead 18 FirstWrite 17}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out {Type IO LastRead 17 FirstWrite 16}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out {Type IO LastRead 17 FirstWrite 16}
		zonePlateVAddr_loc_1_out {Type IO LastRead 1 FirstWrite 0}
		vBarSel_loc_1_out {Type IO LastRead 16 FirstWrite 15}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out {Type IO LastRead 16 FirstWrite 15}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out {Type IO LastRead 16 FirstWrite 15}
		hdata_flag_1_out {Type O LastRead -1 FirstWrite 18}
		hdata_new_1_out {Type O LastRead -1 FirstWrite 18}
		hdata_loc_1_out {Type IO LastRead 18 FirstWrite 18}
		vBarSel_2_loc_1_out {Type IO LastRead 16 FirstWrite 15}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out {Type IO LastRead 16 FirstWrite 15}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out {Type IO LastRead 16 FirstWrite 15}
		rampVal_2_flag_1_out {Type O LastRead -1 FirstWrite 18}
		rampVal_2_new_1_out {Type O LastRead -1 FirstWrite 18}
		rampVal_2_loc_1_out {Type IO LastRead 18 FirstWrite 18}
		vBarSel_3_loc_1_out {Type IO LastRead 16 FirstWrite 15}
		tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out {Type IO LastRead 16 FirstWrite 15}
		tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out {Type IO LastRead 16 FirstWrite 15}
		outpix_11_out {Type IO LastRead 19 FirstWrite 18}
		outpix_10_out {Type IO LastRead 19 FirstWrite 18}
		outpix_9_out {Type IO LastRead 19 FirstWrite 18}
		outpix_8_out {Type IO LastRead 19 FirstWrite 18}
		outpix_7_out {Type IO LastRead 19 FirstWrite 18}
		outpix_6_out {Type IO LastRead 19 FirstWrite 18}
		p_0_0_0_1378_out {Type IO LastRead 19 FirstWrite 18}
		p_0_0_09_1376_out {Type IO LastRead 19 FirstWrite 18}
		p_0_0_010_1374_out {Type IO LastRead 19 FirstWrite 18}
		p_0_0_0372_out {Type IO LastRead 19 FirstWrite 18}
		p_0_0_09370_out {Type IO LastRead 19 FirstWrite 18}
		p_0_0_010368_out {Type IO LastRead 19 FirstWrite 18}
		rampVal {Type O LastRead -1 FirstWrite 17}
		tpgBarSelYuv_y {Type I LastRead -1 FirstWrite -1}
		tpgBarSelYuv_u {Type I LastRead -1 FirstWrite -1}
		tpgBarSelYuv_v {Type I LastRead -1 FirstWrite -1}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_xBar_9 {Type IO LastRead -1 FirstWrite -1}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8 {Type O LastRead -1 FirstWrite 15}
		tpgBarSelRgb_r {Type I LastRead -1 FirstWrite -1}
		tpgBarSelRgb_g {Type I LastRead -1 FirstWrite -1}
		tpgBarSelRgb_b {Type I LastRead -1 FirstWrite -1}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel {Type O LastRead -1 FirstWrite 15}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_xBar {Type IO LastRead -1 FirstWrite -1}
		tpgSinTableArray {Type I LastRead -1 FirstWrite -1}
		zonePlateVAddr {Type O LastRead -1 FirstWrite 0}
		zonePlateVDelta {Type IO LastRead -1 FirstWrite -1}
		tpgTartanBarArray {Type I LastRead -1 FirstWrite -1}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign {Type IO LastRead -1 FirstWrite -1}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 {Type O LastRead -1 FirstWrite 14}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 {Type O LastRead -1 FirstWrite 14}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_1 {Type IO LastRead -1 FirstWrite -1}
		yCount {Type IO LastRead -1 FirstWrite -1}
		vBarSel {Type O LastRead -1 FirstWrite 14}
		tpgPatternCrossHatch_unsigned_short_unsigned_short_unsigned_short_unsigned_sh {Type IO LastRead -1 FirstWrite -1}
		tpgPatternCrossHatch_unsigned_short_unsigned_short_unsigned_short_unsigned_sh_1 {Type IO LastRead -1 FirstWrite -1}
		vHatch {Type IO LastRead -1 FirstWrite -1}
		yCount_2 {Type IO LastRead -1 FirstWrite -1}
		tpgSinTableArray_9bit_0 {Type I LastRead -1 FirstWrite -1}
		tpgSinTableArray_9bit_1 {Type I LastRead -1 FirstWrite -1}
		tpgSinTableArray_9bit_2 {Type I LastRead -1 FirstWrite -1}
		tpgCheckerBoardArray {Type I LastRead -1 FirstWrite -1}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_s {Type IO LastRead -1 FirstWrite -1}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 {Type O LastRead -1 FirstWrite 14}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 {Type O LastRead -1 FirstWrite 14}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_1 {Type IO LastRead -1 FirstWrite -1}
		yCount_3 {Type IO LastRead -1 FirstWrite -1}
		vBarSel_2 {Type O LastRead -1 FirstWrite 14}
		rSerie {Type IO LastRead -1 FirstWrite -1}
		gSerie {Type IO LastRead -1 FirstWrite -1}
		bSerie {Type IO LastRead -1 FirstWrite -1}
		DPtpgBarSelYuv_709_y {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelYuv_709_u {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelYuv_709_v {Type I LastRead -1 FirstWrite -1}
		DPtpgBarArray {Type I LastRead -1 FirstWrite -1}
		tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_s {Type IO LastRead -1 FirstWrite -1}
		tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2 {Type O LastRead -1 FirstWrite 14}
		DPtpgBarSelRgb_VESA_r {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelRgb_VESA_g {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelRgb_VESA_b {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelRgb_CEA_r {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelRgb_CEA_g {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelRgb_CEA_b {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelYuv_601_y {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelYuv_601_u {Type I LastRead -1 FirstWrite -1}
		DPtpgBarSelYuv_601_v {Type I LastRead -1 FirstWrite -1}
		tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3 {Type O LastRead -1 FirstWrite 14}
		tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_1 {Type IO LastRead -1 FirstWrite -1}
		yCount_1 {Type IO LastRead -1 FirstWrite -1}
		vBarSel_1 {Type O LastRead -1 FirstWrite 14}}
	reg_ap_uint_10_s {
		d {Type I LastRead 1 FirstWrite -1}}
	reg_int_s {
		d {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2148958187"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2148958187"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	srcYUV { ap_fifo {  { srcYUV_dout fifo_data_out 0 48 }  { srcYUV_empty_n fifo_status_empty 0 1 }  { srcYUV_read fifo_data_in 1 1 }  { srcYUV_num_data_valid fifo_update 0 5 }  { srcYUV_fifo_cap fifo_data 0 5 } } }
	height_val { ap_stable {  { height_val in_data 0 16 } } }
	width_val { ap_stable {  { width_val in_data 0 16 } } }
	passthruStartX_val { ap_stable {  { passthruStartX_val in_data 0 16 } } }
	passthruStartY_val { ap_stable {  { passthruStartY_val in_data 0 16 } } }
	passthruEndX_val { ap_stable {  { passthruEndX_val in_data 0 16 } } }
	passthruEndY_val { ap_stable {  { passthruEndY_val in_data 0 16 } } }
	enableInput_val { ap_stable {  { enableInput_val in_data 0 8 } } }
	patternId_val { ap_stable {  { patternId_val in_data 0 8 } } }
	ZplateHorContStart_val { ap_stable {  { ZplateHorContStart_val in_data 0 16 } } }
	ZplateHorContDelta_val { ap_stable {  { ZplateHorContDelta_val in_data 0 16 } } }
	ZplateVerContStart_val { ap_stable {  { ZplateVerContStart_val in_data 0 16 } } }
	ZplateVerContDelta_val { ap_stable {  { ZplateVerContDelta_val in_data 0 16 } } }
	dpDynamicRange_val { ap_stable {  { dpDynamicRange_val in_data 0 8 } } }
	dpYUVCoef_val { ap_stable {  { dpYUVCoef_val in_data 0 8 } } }
	motionSpeed_val { ap_stable {  { motionSpeed_val in_data 0 8 } } }
	colorFormat_val { ap_stable {  { colorFormat_val in_data 0 8 } } }
	bckgndYUV { ap_fifo {  { bckgndYUV_din fifo_data_out 1 48 }  { bckgndYUV_full_n fifo_status_empty 0 1 }  { bckgndYUV_write fifo_data_in 1 1 }  { bckgndYUV_num_data_valid fifo_update 0 5 }  { bckgndYUV_fifo_cap fifo_data 0 5 } } }
	s { ap_none {  { s in_data 0 32 } } }
}
