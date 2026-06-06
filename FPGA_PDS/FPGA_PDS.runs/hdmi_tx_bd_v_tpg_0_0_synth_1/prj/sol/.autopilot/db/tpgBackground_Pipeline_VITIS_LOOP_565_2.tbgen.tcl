set moduleName tpgBackground_Pipeline_VITIS_LOOP_565_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set C_modelName {tpgBackground_Pipeline_VITIS_LOOP_565_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rampVal_3_flag_0 int 1 regular  }
	{ hdata_flag_0 int 1 regular  }
	{ rampVal_2_flag_0 int 1 regular  }
	{ dpDynamicRange_val int 8 regular {ap_stable 0} }
	{ colorFormat_val int 8 regular {ap_stable 0} }
	{ dpYUVCoef_val int 8 regular {ap_stable 0} }
	{ empty_46 int 7 regular {ap_stable 0} }
	{ Sel int 2 regular  }
	{ y int 16 regular  }
	{ barWidth int 11 regular {ap_stable 0} }
	{ enableInput_val int 8 regular {ap_stable 0} }
	{ width_val int 16 regular {ap_stable 0} }
	{ outpix_24 int 8 regular  }
	{ select_ln1518 int 8 regular {ap_stable 0} }
	{ select_ln1503 int 8 regular {ap_stable 0} }
	{ rampStart_1 int 8 regular  }
	{ zext_ln736 int 16 regular {ap_stable 0} }
	{ zext_ln563 int 16 regular {ap_stable 0} }
	{ rev int 1 regular  }
	{ icmp_ln736 int 1 regular  }
	{ passthruStartX_val int 16 regular {ap_stable 0} }
	{ passthruEndX_val int 16 regular {ap_stable 0} }
	{ bckgndYUV int 48 regular {fifo 1 volatile }  }
	{ patternId_val int 8 regular {ap_stable 0} }
	{ srcYUV int 48 regular {fifo 0 volatile }  }
	{ zext_ln1120_1 int 8 regular  }
	{ redYuv_load int 8 regular  }
	{ grnYuv_load int 8 regular  }
	{ bluYuv_load int 8 regular  }
	{ blkYuv_load int 8 regular  }
	{ whiYuv_load int 8 regular  }
	{ empty int 8 regular  }
	{ shl_ln int 16 regular  }
	{ ZplateHorContStart_val int 16 regular {ap_stable 0} }
	{ ZplateHorContDelta_val int 16 regular {ap_stable 0} }
	{ ZplateVerContStart_val int 16 regular {ap_stable 0} }
	{ icmp_ln1337 int 1 regular  }
	{ ZplateVerContDelta_val int 16 regular {ap_stable 0} }
	{ barWidthMinSamples int 10 regular {ap_stable 0} }
	{ add_ln1386 int 11 regular {ap_stable 0} }
	{ blkYuv_1_load int 8 regular  }
	{ add_ln1473 int 17 regular {ap_stable 0} }
	{ icmp_ln1449_1 int 1 regular  }
	{ whiYuv_3_load int 8 regular  }
	{ add_ln1533 int 8 regular  }
	{ rampVal_3_flag_1_out int 1 regular {pointer 1}  }
	{ rampVal_3_new_1_out int 16 regular {pointer 1}  }
	{ rampVal_3_loc_1_out int 16 regular {pointer 2}  }
	{ rampVal_loc_1_out int 16 regular {pointer 2}  }
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out int 8 regular {pointer 2}  }
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out int 8 regular {pointer 2}  }
	{ zonePlateVAddr_loc_1_out int 16 regular {pointer 2}  }
	{ vBarSel_loc_1_out int 8 regular {pointer 2}  }
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out int 8 regular {pointer 2}  }
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out int 8 regular {pointer 2}  }
	{ hdata_flag_1_out int 1 regular {pointer 1}  }
	{ hdata_new_1_out int 16 regular {pointer 1}  }
	{ hdata_loc_1_out int 16 regular {pointer 2}  }
	{ vBarSel_2_loc_1_out int 8 regular {pointer 2}  }
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out int 8 regular {pointer 2}  }
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out int 8 regular {pointer 2}  }
	{ rampVal_2_flag_1_out int 1 regular {pointer 1}  }
	{ rampVal_2_new_1_out int 16 regular {pointer 1}  }
	{ rampVal_2_loc_1_out int 16 regular {pointer 2}  }
	{ vBarSel_3_loc_1_out int 8 regular {pointer 2}  }
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out int 8 regular {pointer 2}  }
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out int 8 regular {pointer 2}  }
	{ outpix_11_out int 8 regular {pointer 2}  }
	{ outpix_10_out int 8 regular {pointer 2}  }
	{ outpix_9_out int 8 regular {pointer 2}  }
	{ outpix_8_out int 8 regular {pointer 2}  }
	{ outpix_7_out int 8 regular {pointer 2}  }
	{ outpix_6_out int 8 regular {pointer 2}  }
	{ p_0_0_0_1378_out int 8 regular {pointer 2}  }
	{ p_0_0_09_1376_out int 8 regular {pointer 2}  }
	{ p_0_0_010_1374_out int 8 regular {pointer 2}  }
	{ p_0_0_0372_out int 8 regular {pointer 2}  }
	{ p_0_0_09370_out int 8 regular {pointer 2}  }
	{ p_0_0_010368_out int 8 regular {pointer 2}  }
	{ rampVal int 8 regular {pointer 1} {global 1}  }
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8 int 8 regular {pointer 1} {global 1}  }
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel int 8 regular {pointer 1} {global 1}  }
	{ zonePlateVAddr int 16 regular {pointer 1} {global 1}  }
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 int 3 regular {pointer 1} {global 1}  }
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 int 3 regular {pointer 1} {global 1}  }
	{ vBarSel int 3 regular {pointer 1} {global 1}  }
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 int 3 regular {pointer 1} {global 1}  }
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 int 3 regular {pointer 1} {global 1}  }
	{ vBarSel_2 int 8 regular {pointer 1} {global 1}  }
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2 int 3 regular {pointer 1} {global 1}  }
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3 int 3 regular {pointer 1} {global 1}  }
	{ vBarSel_1 int 1 regular {pointer 1} {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rampVal_3_flag_0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "hdata_flag_0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rampVal_2_flag_0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dpDynamicRange_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "colorFormat_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dpYUVCoef_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_46", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "Sel", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "barWidth", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "enableInput_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "width_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "outpix_24", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln1518", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln1503", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "rampStart_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln736", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln563", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rev", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln736", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "passthruStartX_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "passthruEndX_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bckgndYUV", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "patternId_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "srcYUV", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1120_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "redYuv_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "grnYuv_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bluYuv_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blkYuv_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "whiYuv_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ZplateHorContStart_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ZplateHorContDelta_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ZplateVerContStart_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln1337", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ZplateVerContDelta_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "barWidthMinSamples", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln1386", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "blkYuv_1_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln1473", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln1449_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "whiYuv_3_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln1533", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "rampVal_3_flag_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rampVal_3_new_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rampVal_3_loc_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "rampVal_loc_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "zonePlateVAddr_loc_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "vBarSel_loc_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "hdata_flag_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hdata_new_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hdata_loc_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "vBarSel_2_loc_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "rampVal_2_flag_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rampVal_2_new_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rampVal_2_loc_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "vBarSel_3_loc_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "outpix_11_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "outpix_10_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "outpix_9_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "outpix_8_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "outpix_7_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "outpix_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_1378_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_09_1376_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_010_1374_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0372_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_09370_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_010368_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "rampVal", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "zonePlateVAddr", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "vBarSel", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "vBarSel_2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "vBarSel_1", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 181
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ srcYUV_dout sc_in sc_lv 48 signal 24 } 
	{ srcYUV_empty_n sc_in sc_logic 1 signal 24 } 
	{ srcYUV_read sc_out sc_logic 1 signal 24 } 
	{ srcYUV_num_data_valid sc_in sc_lv 5 signal 24 } 
	{ srcYUV_fifo_cap sc_in sc_lv 5 signal 24 } 
	{ bckgndYUV_din sc_out sc_lv 48 signal 22 } 
	{ bckgndYUV_full_n sc_in sc_logic 1 signal 22 } 
	{ bckgndYUV_write sc_out sc_logic 1 signal 22 } 
	{ bckgndYUV_num_data_valid sc_in sc_lv 5 signal 22 } 
	{ bckgndYUV_fifo_cap sc_in sc_lv 5 signal 22 } 
	{ rampVal_3_flag_0 sc_in sc_lv 1 signal 0 } 
	{ hdata_flag_0 sc_in sc_lv 1 signal 1 } 
	{ rampVal_2_flag_0 sc_in sc_lv 1 signal 2 } 
	{ dpDynamicRange_val sc_in sc_lv 8 signal 3 } 
	{ colorFormat_val sc_in sc_lv 8 signal 4 } 
	{ dpYUVCoef_val sc_in sc_lv 8 signal 5 } 
	{ empty_46 sc_in sc_lv 7 signal 6 } 
	{ Sel sc_in sc_lv 2 signal 7 } 
	{ y sc_in sc_lv 16 signal 8 } 
	{ barWidth sc_in sc_lv 11 signal 9 } 
	{ enableInput_val sc_in sc_lv 8 signal 10 } 
	{ width_val sc_in sc_lv 16 signal 11 } 
	{ outpix_24 sc_in sc_lv 8 signal 12 } 
	{ select_ln1518 sc_in sc_lv 8 signal 13 } 
	{ select_ln1503 sc_in sc_lv 8 signal 14 } 
	{ rampStart_1 sc_in sc_lv 8 signal 15 } 
	{ zext_ln736 sc_in sc_lv 16 signal 16 } 
	{ zext_ln563 sc_in sc_lv 16 signal 17 } 
	{ rev sc_in sc_lv 1 signal 18 } 
	{ icmp_ln736 sc_in sc_lv 1 signal 19 } 
	{ passthruStartX_val sc_in sc_lv 16 signal 20 } 
	{ passthruEndX_val sc_in sc_lv 16 signal 21 } 
	{ patternId_val sc_in sc_lv 8 signal 23 } 
	{ zext_ln1120_1 sc_in sc_lv 8 signal 25 } 
	{ redYuv_load sc_in sc_lv 8 signal 26 } 
	{ grnYuv_load sc_in sc_lv 8 signal 27 } 
	{ bluYuv_load sc_in sc_lv 8 signal 28 } 
	{ blkYuv_load sc_in sc_lv 8 signal 29 } 
	{ whiYuv_load sc_in sc_lv 8 signal 30 } 
	{ empty sc_in sc_lv 8 signal 31 } 
	{ shl_ln sc_in sc_lv 16 signal 32 } 
	{ ZplateHorContStart_val sc_in sc_lv 16 signal 33 } 
	{ ZplateHorContDelta_val sc_in sc_lv 16 signal 34 } 
	{ ZplateVerContStart_val sc_in sc_lv 16 signal 35 } 
	{ icmp_ln1337 sc_in sc_lv 1 signal 36 } 
	{ ZplateVerContDelta_val sc_in sc_lv 16 signal 37 } 
	{ barWidthMinSamples sc_in sc_lv 10 signal 38 } 
	{ add_ln1386 sc_in sc_lv 11 signal 39 } 
	{ blkYuv_1_load sc_in sc_lv 8 signal 40 } 
	{ add_ln1473 sc_in sc_lv 17 signal 41 } 
	{ icmp_ln1449_1 sc_in sc_lv 1 signal 42 } 
	{ whiYuv_3_load sc_in sc_lv 8 signal 43 } 
	{ add_ln1533 sc_in sc_lv 8 signal 44 } 
	{ rampVal_3_flag_1_out sc_out sc_lv 1 signal 45 } 
	{ rampVal_3_flag_1_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ rampVal_3_new_1_out sc_out sc_lv 16 signal 46 } 
	{ rampVal_3_new_1_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ rampVal_3_loc_1_out_i sc_in sc_lv 16 signal 47 } 
	{ rampVal_3_loc_1_out_o sc_out sc_lv 16 signal 47 } 
	{ rampVal_3_loc_1_out_o_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ rampVal_loc_1_out_i sc_in sc_lv 16 signal 48 } 
	{ rampVal_loc_1_out_o sc_out sc_lv 16 signal 48 } 
	{ rampVal_loc_1_out_o_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_i sc_in sc_lv 8 signal 49 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o sc_out sc_lv 8 signal 49 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out_i sc_in sc_lv 8 signal 50 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out_o sc_out sc_lv 8 signal 50 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out_o_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ zonePlateVAddr_loc_1_out_i sc_in sc_lv 16 signal 51 } 
	{ zonePlateVAddr_loc_1_out_o sc_out sc_lv 16 signal 51 } 
	{ zonePlateVAddr_loc_1_out_o_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ vBarSel_loc_1_out_i sc_in sc_lv 8 signal 52 } 
	{ vBarSel_loc_1_out_o sc_out sc_lv 8 signal 52 } 
	{ vBarSel_loc_1_out_o_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_i sc_in sc_lv 8 signal 53 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o sc_out sc_lv 8 signal 53 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_i sc_in sc_lv 8 signal 54 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o sc_out sc_lv 8 signal 54 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ hdata_flag_1_out sc_out sc_lv 1 signal 55 } 
	{ hdata_flag_1_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ hdata_new_1_out sc_out sc_lv 16 signal 56 } 
	{ hdata_new_1_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ hdata_loc_1_out_i sc_in sc_lv 16 signal 57 } 
	{ hdata_loc_1_out_o sc_out sc_lv 16 signal 57 } 
	{ hdata_loc_1_out_o_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ vBarSel_2_loc_1_out_i sc_in sc_lv 8 signal 58 } 
	{ vBarSel_2_loc_1_out_o sc_out sc_lv 8 signal 58 } 
	{ vBarSel_2_loc_1_out_o_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_i sc_in sc_lv 8 signal 59 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o sc_out sc_lv 8 signal 59 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_i sc_in sc_lv 8 signal 60 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o sc_out sc_lv 8 signal 60 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ rampVal_2_flag_1_out sc_out sc_lv 1 signal 61 } 
	{ rampVal_2_flag_1_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ rampVal_2_new_1_out sc_out sc_lv 16 signal 62 } 
	{ rampVal_2_new_1_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ rampVal_2_loc_1_out_i sc_in sc_lv 16 signal 63 } 
	{ rampVal_2_loc_1_out_o sc_out sc_lv 16 signal 63 } 
	{ rampVal_2_loc_1_out_o_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ vBarSel_3_loc_1_out_i sc_in sc_lv 8 signal 64 } 
	{ vBarSel_3_loc_1_out_o sc_out sc_lv 8 signal 64 } 
	{ vBarSel_3_loc_1_out_o_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out_i sc_in sc_lv 8 signal 65 } 
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out_o sc_out sc_lv 8 signal 65 } 
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out_o_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out_i sc_in sc_lv 8 signal 66 } 
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out_o sc_out sc_lv 8 signal 66 } 
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out_o_ap_vld sc_out sc_logic 1 outvld 66 } 
	{ outpix_11_out_i sc_in sc_lv 8 signal 67 } 
	{ outpix_11_out_o sc_out sc_lv 8 signal 67 } 
	{ outpix_11_out_o_ap_vld sc_out sc_logic 1 outvld 67 } 
	{ outpix_10_out_i sc_in sc_lv 8 signal 68 } 
	{ outpix_10_out_o sc_out sc_lv 8 signal 68 } 
	{ outpix_10_out_o_ap_vld sc_out sc_logic 1 outvld 68 } 
	{ outpix_9_out_i sc_in sc_lv 8 signal 69 } 
	{ outpix_9_out_o sc_out sc_lv 8 signal 69 } 
	{ outpix_9_out_o_ap_vld sc_out sc_logic 1 outvld 69 } 
	{ outpix_8_out_i sc_in sc_lv 8 signal 70 } 
	{ outpix_8_out_o sc_out sc_lv 8 signal 70 } 
	{ outpix_8_out_o_ap_vld sc_out sc_logic 1 outvld 70 } 
	{ outpix_7_out_i sc_in sc_lv 8 signal 71 } 
	{ outpix_7_out_o sc_out sc_lv 8 signal 71 } 
	{ outpix_7_out_o_ap_vld sc_out sc_logic 1 outvld 71 } 
	{ outpix_6_out_i sc_in sc_lv 8 signal 72 } 
	{ outpix_6_out_o sc_out sc_lv 8 signal 72 } 
	{ outpix_6_out_o_ap_vld sc_out sc_logic 1 outvld 72 } 
	{ p_0_0_0_1378_out_i sc_in sc_lv 8 signal 73 } 
	{ p_0_0_0_1378_out_o sc_out sc_lv 8 signal 73 } 
	{ p_0_0_0_1378_out_o_ap_vld sc_out sc_logic 1 outvld 73 } 
	{ p_0_0_09_1376_out_i sc_in sc_lv 8 signal 74 } 
	{ p_0_0_09_1376_out_o sc_out sc_lv 8 signal 74 } 
	{ p_0_0_09_1376_out_o_ap_vld sc_out sc_logic 1 outvld 74 } 
	{ p_0_0_010_1374_out_i sc_in sc_lv 8 signal 75 } 
	{ p_0_0_010_1374_out_o sc_out sc_lv 8 signal 75 } 
	{ p_0_0_010_1374_out_o_ap_vld sc_out sc_logic 1 outvld 75 } 
	{ p_0_0_0372_out_i sc_in sc_lv 8 signal 76 } 
	{ p_0_0_0372_out_o sc_out sc_lv 8 signal 76 } 
	{ p_0_0_0372_out_o_ap_vld sc_out sc_logic 1 outvld 76 } 
	{ p_0_0_09370_out_i sc_in sc_lv 8 signal 77 } 
	{ p_0_0_09370_out_o sc_out sc_lv 8 signal 77 } 
	{ p_0_0_09370_out_o_ap_vld sc_out sc_logic 1 outvld 77 } 
	{ p_0_0_010368_out_i sc_in sc_lv 8 signal 78 } 
	{ p_0_0_010368_out_o sc_out sc_lv 8 signal 78 } 
	{ p_0_0_010368_out_o_ap_vld sc_out sc_logic 1 outvld 78 } 
	{ rampVal sc_out sc_lv 8 signal 79 } 
	{ rampVal_ap_vld sc_out sc_logic 1 outvld 79 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8 sc_out sc_lv 8 signal 80 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_ap_vld sc_out sc_logic 1 outvld 80 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel sc_out sc_lv 8 signal 81 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_ap_vld sc_out sc_logic 1 outvld 81 } 
	{ zonePlateVAddr sc_out sc_lv 16 signal 82 } 
	{ zonePlateVAddr_ap_vld sc_out sc_logic 1 outvld 82 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 sc_out sc_lv 3 signal 83 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2_ap_vld sc_out sc_logic 1 outvld 83 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 sc_out sc_lv 3 signal 84 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3_ap_vld sc_out sc_logic 1 outvld 84 } 
	{ vBarSel sc_out sc_lv 3 signal 85 } 
	{ vBarSel_ap_vld sc_out sc_logic 1 outvld 85 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 sc_out sc_lv 3 signal 86 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2_ap_vld sc_out sc_logic 1 outvld 86 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 sc_out sc_lv 3 signal 87 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3_ap_vld sc_out sc_logic 1 outvld 87 } 
	{ vBarSel_2 sc_out sc_lv 8 signal 88 } 
	{ vBarSel_2_ap_vld sc_out sc_logic 1 outvld 88 } 
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2 sc_out sc_lv 3 signal 89 } 
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2_ap_vld sc_out sc_logic 1 outvld 89 } 
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3 sc_out sc_lv 3 signal 90 } 
	{ tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3_ap_vld sc_out sc_logic 1 outvld 90 } 
	{ vBarSel_1 sc_out sc_lv 1 signal 91 } 
	{ vBarSel_1_ap_vld sc_out sc_logic 1 outvld 91 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "srcYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "srcYUV", "role": "dout" }} , 
 	{ "name": "srcYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcYUV", "role": "empty_n" }} , 
 	{ "name": "srcYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcYUV", "role": "read" }} , 
 	{ "name": "srcYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "srcYUV", "role": "num_data_valid" }} , 
 	{ "name": "srcYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "srcYUV", "role": "fifo_cap" }} , 
 	{ "name": "bckgndYUV_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "din" }} , 
 	{ "name": "bckgndYUV_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "full_n" }} , 
 	{ "name": "bckgndYUV_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "write" }} , 
 	{ "name": "bckgndYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "num_data_valid" }} , 
 	{ "name": "bckgndYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bckgndYUV", "role": "fifo_cap" }} , 
 	{ "name": "rampVal_3_flag_0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rampVal_3_flag_0", "role": "default" }} , 
 	{ "name": "hdata_flag_0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hdata_flag_0", "role": "default" }} , 
 	{ "name": "rampVal_2_flag_0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rampVal_2_flag_0", "role": "default" }} , 
 	{ "name": "dpDynamicRange_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dpDynamicRange_val", "role": "default" }} , 
 	{ "name": "colorFormat_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "colorFormat_val", "role": "default" }} , 
 	{ "name": "dpYUVCoef_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dpYUVCoef_val", "role": "default" }} , 
 	{ "name": "empty_46", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "empty_46", "role": "default" }} , 
 	{ "name": "Sel", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Sel", "role": "default" }} , 
 	{ "name": "y", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y", "role": "default" }} , 
 	{ "name": "barWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "barWidth", "role": "default" }} , 
 	{ "name": "enableInput_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "enableInput_val", "role": "default" }} , 
 	{ "name": "width_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "width_val", "role": "default" }} , 
 	{ "name": "outpix_24", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_24", "role": "default" }} , 
 	{ "name": "select_ln1518", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "select_ln1518", "role": "default" }} , 
 	{ "name": "select_ln1503", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "select_ln1503", "role": "default" }} , 
 	{ "name": "rampStart_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rampStart_1", "role": "default" }} , 
 	{ "name": "zext_ln736", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln736", "role": "default" }} , 
 	{ "name": "zext_ln563", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln563", "role": "default" }} , 
 	{ "name": "rev", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rev", "role": "default" }} , 
 	{ "name": "icmp_ln736", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln736", "role": "default" }} , 
 	{ "name": "passthruStartX_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "passthruStartX_val", "role": "default" }} , 
 	{ "name": "passthruEndX_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "passthruEndX_val", "role": "default" }} , 
 	{ "name": "patternId_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "patternId_val", "role": "default" }} , 
 	{ "name": "zext_ln1120_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln1120_1", "role": "default" }} , 
 	{ "name": "redYuv_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "redYuv_load", "role": "default" }} , 
 	{ "name": "grnYuv_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grnYuv_load", "role": "default" }} , 
 	{ "name": "bluYuv_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bluYuv_load", "role": "default" }} , 
 	{ "name": "blkYuv_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blkYuv_load", "role": "default" }} , 
 	{ "name": "whiYuv_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "whiYuv_load", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "shl_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "shl_ln", "role": "default" }} , 
 	{ "name": "ZplateHorContStart_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ZplateHorContStart_val", "role": "default" }} , 
 	{ "name": "ZplateHorContDelta_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ZplateHorContDelta_val", "role": "default" }} , 
 	{ "name": "ZplateVerContStart_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ZplateVerContStart_val", "role": "default" }} , 
 	{ "name": "icmp_ln1337", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln1337", "role": "default" }} , 
 	{ "name": "ZplateVerContDelta_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ZplateVerContDelta_val", "role": "default" }} , 
 	{ "name": "barWidthMinSamples", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "barWidthMinSamples", "role": "default" }} , 
 	{ "name": "add_ln1386", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "add_ln1386", "role": "default" }} , 
 	{ "name": "blkYuv_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blkYuv_1_load", "role": "default" }} , 
 	{ "name": "add_ln1473", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "add_ln1473", "role": "default" }} , 
 	{ "name": "icmp_ln1449_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln1449_1", "role": "default" }} , 
 	{ "name": "whiYuv_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "whiYuv_3_load", "role": "default" }} , 
 	{ "name": "add_ln1533", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "add_ln1533", "role": "default" }} , 
 	{ "name": "rampVal_3_flag_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rampVal_3_flag_1_out", "role": "default" }} , 
 	{ "name": "rampVal_3_flag_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rampVal_3_flag_1_out", "role": "ap_vld" }} , 
 	{ "name": "rampVal_3_new_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rampVal_3_new_1_out", "role": "default" }} , 
 	{ "name": "rampVal_3_new_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rampVal_3_new_1_out", "role": "ap_vld" }} , 
 	{ "name": "rampVal_3_loc_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rampVal_3_loc_1_out", "role": "i" }} , 
 	{ "name": "rampVal_3_loc_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rampVal_3_loc_1_out", "role": "o" }} , 
 	{ "name": "rampVal_3_loc_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rampVal_3_loc_1_out", "role": "o_ap_vld" }} , 
 	{ "name": "rampVal_loc_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rampVal_loc_1_out", "role": "i" }} , 
 	{ "name": "rampVal_loc_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rampVal_loc_1_out", "role": "o" }} , 
 	{ "name": "rampVal_loc_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rampVal_loc_1_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out", "role": "i" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out", "role": "o" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out", "role": "i" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out", "role": "o" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out", "role": "o_ap_vld" }} , 
 	{ "name": "zonePlateVAddr_loc_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zonePlateVAddr_loc_1_out", "role": "i" }} , 
 	{ "name": "zonePlateVAddr_loc_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zonePlateVAddr_loc_1_out", "role": "o" }} , 
 	{ "name": "zonePlateVAddr_loc_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "zonePlateVAddr_loc_1_out", "role": "o_ap_vld" }} , 
 	{ "name": "vBarSel_loc_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vBarSel_loc_1_out", "role": "i" }} , 
 	{ "name": "vBarSel_loc_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vBarSel_loc_1_out", "role": "o" }} , 
 	{ "name": "vBarSel_loc_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vBarSel_loc_1_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out", "role": "i" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out", "role": "o" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out", "role": "i" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out", "role": "o" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out", "role": "o_ap_vld" }} , 
 	{ "name": "hdata_flag_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hdata_flag_1_out", "role": "default" }} , 
 	{ "name": "hdata_flag_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hdata_flag_1_out", "role": "ap_vld" }} , 
 	{ "name": "hdata_new_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hdata_new_1_out", "role": "default" }} , 
 	{ "name": "hdata_new_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hdata_new_1_out", "role": "ap_vld" }} , 
 	{ "name": "hdata_loc_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hdata_loc_1_out", "role": "i" }} , 
 	{ "name": "hdata_loc_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hdata_loc_1_out", "role": "o" }} , 
 	{ "name": "hdata_loc_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hdata_loc_1_out", "role": "o_ap_vld" }} , 
 	{ "name": "vBarSel_2_loc_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vBarSel_2_loc_1_out", "role": "i" }} , 
 	{ "name": "vBarSel_2_loc_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vBarSel_2_loc_1_out", "role": "o" }} , 
 	{ "name": "vBarSel_2_loc_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vBarSel_2_loc_1_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out", "role": "i" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out", "role": "o" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out", "role": "i" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out", "role": "o" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out", "role": "o_ap_vld" }} , 
 	{ "name": "rampVal_2_flag_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rampVal_2_flag_1_out", "role": "default" }} , 
 	{ "name": "rampVal_2_flag_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rampVal_2_flag_1_out", "role": "ap_vld" }} , 
 	{ "name": "rampVal_2_new_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rampVal_2_new_1_out", "role": "default" }} , 
 	{ "name": "rampVal_2_new_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rampVal_2_new_1_out", "role": "ap_vld" }} , 
 	{ "name": "rampVal_2_loc_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rampVal_2_loc_1_out", "role": "i" }} , 
 	{ "name": "rampVal_2_loc_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rampVal_2_loc_1_out", "role": "o" }} , 
 	{ "name": "rampVal_2_loc_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rampVal_2_loc_1_out", "role": "o_ap_vld" }} , 
 	{ "name": "vBarSel_3_loc_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vBarSel_3_loc_1_out", "role": "i" }} , 
 	{ "name": "vBarSel_3_loc_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vBarSel_3_loc_1_out", "role": "o" }} , 
 	{ "name": "vBarSel_3_loc_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vBarSel_3_loc_1_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out", "role": "i" }} , 
 	{ "name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out", "role": "o" }} , 
 	{ "name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out", "role": "i" }} , 
 	{ "name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out", "role": "o" }} , 
 	{ "name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out", "role": "o_ap_vld" }} , 
 	{ "name": "outpix_11_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_11_out", "role": "i" }} , 
 	{ "name": "outpix_11_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_11_out", "role": "o" }} , 
 	{ "name": "outpix_11_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outpix_11_out", "role": "o_ap_vld" }} , 
 	{ "name": "outpix_10_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_10_out", "role": "i" }} , 
 	{ "name": "outpix_10_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_10_out", "role": "o" }} , 
 	{ "name": "outpix_10_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outpix_10_out", "role": "o_ap_vld" }} , 
 	{ "name": "outpix_9_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_9_out", "role": "i" }} , 
 	{ "name": "outpix_9_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_9_out", "role": "o" }} , 
 	{ "name": "outpix_9_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outpix_9_out", "role": "o_ap_vld" }} , 
 	{ "name": "outpix_8_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_8_out", "role": "i" }} , 
 	{ "name": "outpix_8_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_8_out", "role": "o" }} , 
 	{ "name": "outpix_8_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outpix_8_out", "role": "o_ap_vld" }} , 
 	{ "name": "outpix_7_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_7_out", "role": "i" }} , 
 	{ "name": "outpix_7_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_7_out", "role": "o" }} , 
 	{ "name": "outpix_7_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outpix_7_out", "role": "o_ap_vld" }} , 
 	{ "name": "outpix_6_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_6_out", "role": "i" }} , 
 	{ "name": "outpix_6_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_6_out", "role": "o" }} , 
 	{ "name": "outpix_6_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outpix_6_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_1378_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_1378_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_1378_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_1378_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_1378_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_1378_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_09_1376_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_09_1376_out", "role": "i" }} , 
 	{ "name": "p_0_0_09_1376_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_09_1376_out", "role": "o" }} , 
 	{ "name": "p_0_0_09_1376_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_09_1376_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_010_1374_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_010_1374_out", "role": "i" }} , 
 	{ "name": "p_0_0_010_1374_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_010_1374_out", "role": "o" }} , 
 	{ "name": "p_0_0_010_1374_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_010_1374_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0372_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0372_out", "role": "i" }} , 
 	{ "name": "p_0_0_0372_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0372_out", "role": "o" }} , 
 	{ "name": "p_0_0_0372_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0372_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_09370_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_09370_out", "role": "i" }} , 
 	{ "name": "p_0_0_09370_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_09370_out", "role": "o" }} , 
 	{ "name": "p_0_0_09370_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_09370_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_010368_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_010368_out", "role": "i" }} , 
 	{ "name": "p_0_0_010368_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_010368_out", "role": "o" }} , 
 	{ "name": "p_0_0_010368_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_010368_out", "role": "o_ap_vld" }} , 
 	{ "name": "rampVal", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rampVal", "role": "default" }} , 
 	{ "name": "rampVal_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rampVal", "role": "ap_vld" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8", "role": "default" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8", "role": "ap_vld" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel", "role": "default" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel", "role": "ap_vld" }} , 
 	{ "name": "zonePlateVAddr", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zonePlateVAddr", "role": "default" }} , 
 	{ "name": "zonePlateVAddr_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "zonePlateVAddr", "role": "ap_vld" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2", "role": "default" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2", "role": "ap_vld" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3", "role": "default" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3", "role": "ap_vld" }} , 
 	{ "name": "vBarSel", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "vBarSel", "role": "default" }} , 
 	{ "name": "vBarSel_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vBarSel", "role": "ap_vld" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2", "role": "default" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2", "role": "ap_vld" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3", "role": "default" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3", "role": "ap_vld" }} , 
 	{ "name": "vBarSel_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vBarSel_2", "role": "default" }} , 
 	{ "name": "vBarSel_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vBarSel_2", "role": "ap_vld" }} , 
 	{ "name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2", "role": "default" }} , 
 	{ "name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2", "role": "ap_vld" }} , 
 	{ "name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3", "role": "default" }} , 
 	{ "name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3", "role": "ap_vld" }} , 
 	{ "name": "vBarSel_1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "vBarSel_1", "role": "default" }} , 
 	{ "name": "vBarSel_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vBarSel_1", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "21", "Max" : "32788"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "32769"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rampVal_3_flag_0 { ap_none {  { rampVal_3_flag_0 in_data 0 1 } } }
	hdata_flag_0 { ap_none {  { hdata_flag_0 in_data 0 1 } } }
	rampVal_2_flag_0 { ap_none {  { rampVal_2_flag_0 in_data 0 1 } } }
	dpDynamicRange_val { ap_stable {  { dpDynamicRange_val in_data 0 8 } } }
	colorFormat_val { ap_stable {  { colorFormat_val in_data 0 8 } } }
	dpYUVCoef_val { ap_stable {  { dpYUVCoef_val in_data 0 8 } } }
	empty_46 { ap_stable {  { empty_46 in_data 0 7 } } }
	Sel { ap_none {  { Sel in_data 0 2 } } }
	y { ap_none {  { y in_data 0 16 } } }
	barWidth { ap_stable {  { barWidth in_data 0 11 } } }
	enableInput_val { ap_stable {  { enableInput_val in_data 0 8 } } }
	width_val { ap_stable {  { width_val in_data 0 16 } } }
	outpix_24 { ap_none {  { outpix_24 in_data 0 8 } } }
	select_ln1518 { ap_stable {  { select_ln1518 in_data 0 8 } } }
	select_ln1503 { ap_stable {  { select_ln1503 in_data 0 8 } } }
	rampStart_1 { ap_none {  { rampStart_1 in_data 0 8 } } }
	zext_ln736 { ap_stable {  { zext_ln736 in_data 0 16 } } }
	zext_ln563 { ap_stable {  { zext_ln563 in_data 0 16 } } }
	rev { ap_none {  { rev in_data 0 1 } } }
	icmp_ln736 { ap_none {  { icmp_ln736 in_data 0 1 } } }
	passthruStartX_val { ap_stable {  { passthruStartX_val in_data 0 16 } } }
	passthruEndX_val { ap_stable {  { passthruEndX_val in_data 0 16 } } }
	bckgndYUV { ap_fifo {  { bckgndYUV_din fifo_data_out 1 48 }  { bckgndYUV_full_n fifo_status_empty 0 1 }  { bckgndYUV_write fifo_data_in 1 1 }  { bckgndYUV_num_data_valid fifo_update 0 5 }  { bckgndYUV_fifo_cap fifo_data 0 5 } } }
	patternId_val { ap_stable {  { patternId_val in_data 0 8 } } }
	srcYUV { ap_fifo {  { srcYUV_dout fifo_data_out 0 48 }  { srcYUV_empty_n fifo_status_empty 0 1 }  { srcYUV_read fifo_data_in 1 1 }  { srcYUV_num_data_valid fifo_update 0 5 }  { srcYUV_fifo_cap fifo_data 0 5 } } }
	zext_ln1120_1 { ap_none {  { zext_ln1120_1 in_data 0 8 } } }
	redYuv_load { ap_none {  { redYuv_load in_data 0 8 } } }
	grnYuv_load { ap_none {  { grnYuv_load in_data 0 8 } } }
	bluYuv_load { ap_none {  { bluYuv_load in_data 0 8 } } }
	blkYuv_load { ap_none {  { blkYuv_load in_data 0 8 } } }
	whiYuv_load { ap_none {  { whiYuv_load in_data 0 8 } } }
	empty { ap_none {  { empty in_data 0 8 } } }
	shl_ln { ap_none {  { shl_ln in_data 0 16 } } }
	ZplateHorContStart_val { ap_stable {  { ZplateHorContStart_val in_data 0 16 } } }
	ZplateHorContDelta_val { ap_stable {  { ZplateHorContDelta_val in_data 0 16 } } }
	ZplateVerContStart_val { ap_stable {  { ZplateVerContStart_val in_data 0 16 } } }
	icmp_ln1337 { ap_none {  { icmp_ln1337 in_data 0 1 } } }
	ZplateVerContDelta_val { ap_stable {  { ZplateVerContDelta_val in_data 0 16 } } }
	barWidthMinSamples { ap_stable {  { barWidthMinSamples in_data 0 10 } } }
	add_ln1386 { ap_stable {  { add_ln1386 in_data 0 11 } } }
	blkYuv_1_load { ap_none {  { blkYuv_1_load in_data 0 8 } } }
	add_ln1473 { ap_stable {  { add_ln1473 in_data 0 17 } } }
	icmp_ln1449_1 { ap_none {  { icmp_ln1449_1 in_data 0 1 } } }
	whiYuv_3_load { ap_none {  { whiYuv_3_load in_data 0 8 } } }
	add_ln1533 { ap_none {  { add_ln1533 in_data 0 8 } } }
	rampVal_3_flag_1_out { ap_vld {  { rampVal_3_flag_1_out out_data 1 1 }  { rampVal_3_flag_1_out_ap_vld out_vld 1 1 } } }
	rampVal_3_new_1_out { ap_vld {  { rampVal_3_new_1_out out_data 1 16 }  { rampVal_3_new_1_out_ap_vld out_vld 1 1 } } }
	rampVal_3_loc_1_out { ap_ovld {  { rampVal_3_loc_1_out_i in_data 0 16 }  { rampVal_3_loc_1_out_o out_data 1 16 }  { rampVal_3_loc_1_out_o_ap_vld out_vld 1 1 } } }
	rampVal_loc_1_out { ap_ovld {  { rampVal_loc_1_out_i in_data 0 16 }  { rampVal_loc_1_out_o out_data 1 16 }  { rampVal_loc_1_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out { ap_ovld {  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_i in_data 0 8 }  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o out_data 1 8 }  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out { ap_ovld {  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out_i in_data 0 8 }  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out_o out_data 1 8 }  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out_o_ap_vld out_vld 1 1 } } }
	zonePlateVAddr_loc_1_out { ap_ovld {  { zonePlateVAddr_loc_1_out_i in_data 0 16 }  { zonePlateVAddr_loc_1_out_o out_data 1 16 }  { zonePlateVAddr_loc_1_out_o_ap_vld out_vld 1 1 } } }
	vBarSel_loc_1_out { ap_ovld {  { vBarSel_loc_1_out_i in_data 0 8 }  { vBarSel_loc_1_out_o out_data 1 8 }  { vBarSel_loc_1_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out { ap_ovld {  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_i in_data 0 8 }  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o out_data 1 8 }  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out { ap_ovld {  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_i in_data 0 8 }  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o out_data 1 8 }  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o_ap_vld out_vld 1 1 } } }
	hdata_flag_1_out { ap_vld {  { hdata_flag_1_out out_data 1 1 }  { hdata_flag_1_out_ap_vld out_vld 1 1 } } }
	hdata_new_1_out { ap_vld {  { hdata_new_1_out out_data 1 16 }  { hdata_new_1_out_ap_vld out_vld 1 1 } } }
	hdata_loc_1_out { ap_ovld {  { hdata_loc_1_out_i in_data 0 16 }  { hdata_loc_1_out_o out_data 1 16 }  { hdata_loc_1_out_o_ap_vld out_vld 1 1 } } }
	vBarSel_2_loc_1_out { ap_ovld {  { vBarSel_2_loc_1_out_i in_data 0 8 }  { vBarSel_2_loc_1_out_o out_data 1 8 }  { vBarSel_2_loc_1_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out { ap_ovld {  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_i in_data 0 8 }  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o out_data 1 8 }  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out { ap_ovld {  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_i in_data 0 8 }  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o out_data 1 8 }  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o_ap_vld out_vld 1 1 } } }
	rampVal_2_flag_1_out { ap_vld {  { rampVal_2_flag_1_out out_data 1 1 }  { rampVal_2_flag_1_out_ap_vld out_vld 1 1 } } }
	rampVal_2_new_1_out { ap_vld {  { rampVal_2_new_1_out out_data 1 16 }  { rampVal_2_new_1_out_ap_vld out_vld 1 1 } } }
	rampVal_2_loc_1_out { ap_ovld {  { rampVal_2_loc_1_out_i in_data 0 16 }  { rampVal_2_loc_1_out_o out_data 1 16 }  { rampVal_2_loc_1_out_o_ap_vld out_vld 1 1 } } }
	vBarSel_3_loc_1_out { ap_ovld {  { vBarSel_3_loc_1_out_i in_data 0 8 }  { vBarSel_3_loc_1_out_o out_data 1 8 }  { vBarSel_3_loc_1_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out { ap_ovld {  { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out_i in_data 0 8 }  { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out_o out_data 1 8 }  { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out { ap_ovld {  { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out_i in_data 0 8 }  { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out_o out_data 1 8 }  { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out_o_ap_vld out_vld 1 1 } } }
	outpix_11_out { ap_ovld {  { outpix_11_out_i in_data 0 8 }  { outpix_11_out_o out_data 1 8 }  { outpix_11_out_o_ap_vld out_vld 1 1 } } }
	outpix_10_out { ap_ovld {  { outpix_10_out_i in_data 0 8 }  { outpix_10_out_o out_data 1 8 }  { outpix_10_out_o_ap_vld out_vld 1 1 } } }
	outpix_9_out { ap_ovld {  { outpix_9_out_i in_data 0 8 }  { outpix_9_out_o out_data 1 8 }  { outpix_9_out_o_ap_vld out_vld 1 1 } } }
	outpix_8_out { ap_ovld {  { outpix_8_out_i in_data 0 8 }  { outpix_8_out_o out_data 1 8 }  { outpix_8_out_o_ap_vld out_vld 1 1 } } }
	outpix_7_out { ap_ovld {  { outpix_7_out_i in_data 0 8 }  { outpix_7_out_o out_data 1 8 }  { outpix_7_out_o_ap_vld out_vld 1 1 } } }
	outpix_6_out { ap_ovld {  { outpix_6_out_i in_data 0 8 }  { outpix_6_out_o out_data 1 8 }  { outpix_6_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_1378_out { ap_ovld {  { p_0_0_0_1378_out_i in_data 0 8 }  { p_0_0_0_1378_out_o out_data 1 8 }  { p_0_0_0_1378_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_09_1376_out { ap_ovld {  { p_0_0_09_1376_out_i in_data 0 8 }  { p_0_0_09_1376_out_o out_data 1 8 }  { p_0_0_09_1376_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_010_1374_out { ap_ovld {  { p_0_0_010_1374_out_i in_data 0 8 }  { p_0_0_010_1374_out_o out_data 1 8 }  { p_0_0_010_1374_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0372_out { ap_ovld {  { p_0_0_0372_out_i in_data 0 8 }  { p_0_0_0372_out_o out_data 1 8 }  { p_0_0_0372_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_09370_out { ap_ovld {  { p_0_0_09370_out_i in_data 0 8 }  { p_0_0_09370_out_o out_data 1 8 }  { p_0_0_09370_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_010368_out { ap_ovld {  { p_0_0_010368_out_i in_data 0 8 }  { p_0_0_010368_out_o out_data 1 8 }  { p_0_0_010368_out_o_ap_vld out_vld 1 1 } } }
	rampVal { ap_vld {  { rampVal out_data 1 8 }  { rampVal_ap_vld out_vld 1 1 } } }
	tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8 { ap_vld {  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8 out_data 1 8 }  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_ap_vld out_vld 1 1 } } }
	tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel { ap_vld {  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel out_data 1 8 }  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_ap_vld out_vld 1 1 } } }
	zonePlateVAddr { ap_vld {  { zonePlateVAddr out_data 1 16 }  { zonePlateVAddr_ap_vld out_vld 1 1 } } }
	tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 { ap_vld {  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 out_data 1 3 }  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2_ap_vld out_vld 1 1 } } }
	tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 { ap_vld {  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 out_data 1 3 }  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3_ap_vld out_vld 1 1 } } }
	vBarSel { ap_vld {  { vBarSel out_data 1 3 }  { vBarSel_ap_vld out_vld 1 1 } } }
	tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 { ap_vld {  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 out_data 1 3 }  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2_ap_vld out_vld 1 1 } } }
	tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 { ap_vld {  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 out_data 1 3 }  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3_ap_vld out_vld 1 1 } } }
	vBarSel_2 { ap_vld {  { vBarSel_2 out_data 1 8 }  { vBarSel_2_ap_vld out_vld 1 1 } } }
	tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2 { ap_vld {  { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2 out_data 1 3 }  { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2_ap_vld out_vld 1 1 } } }
	tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3 { ap_vld {  { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3 out_data 1 3 }  { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3_ap_vld out_vld 1 1 } } }
	vBarSel_1 { ap_vld {  { vBarSel_1 out_data 1 1 }  { vBarSel_1_ap_vld out_vld 1 1 } } }
}
