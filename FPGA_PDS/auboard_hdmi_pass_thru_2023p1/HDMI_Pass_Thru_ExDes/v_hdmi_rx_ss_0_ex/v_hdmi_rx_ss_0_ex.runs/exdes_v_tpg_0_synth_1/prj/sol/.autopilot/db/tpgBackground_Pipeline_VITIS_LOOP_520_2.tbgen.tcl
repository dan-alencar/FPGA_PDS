set moduleName tpgBackground_Pipeline_VITIS_LOOP_520_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {tpgBackground_Pipeline_VITIS_LOOP_520_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ outpix_5 int 8 regular  }
	{ outpix_4 int 8 regular  }
	{ outpix_3 int 8 regular  }
	{ outpix_2 int 8 regular  }
	{ outpix_1 int 8 regular  }
	{ outpix int 8 regular  }
	{ loopWidth int 16 regular {ap_stable 0} }
	{ ovrlayYUV int 48 regular {fifo 1 volatile }  }
	{ cmp8 int 1 regular {ap_stable 0} }
	{ bckgndId_load int 8 regular {ap_stable 0} }
	{ srcYUV int 48 regular {fifo 0 volatile }  }
	{ empty_44 int 1 regular {ap_stable 0} }
	{ empty int 1 regular {ap_stable 0} }
	{ trunc_ln1 int 14 regular {ap_stable 0} }
	{ trunc_ln int 14 regular {ap_stable 0} }
	{ y int 16 regular  }
	{ zext_ln1212 int 16 regular {ap_stable 0} }
	{ zext_ln1196 int 16 regular {ap_stable 0} }
	{ zext_ln518_1 int 16 regular  }
	{ cmp35_i int 1 regular {ap_stable 0} }
	{ passthruStartX_load int 16 regular {ap_stable 0} }
	{ passthruEndX_load int 16 regular {ap_stable 0} }
	{ cmp59_not int 1 regular  }
	{ cmp68_not int 1 regular  }
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out int 8 regular {pointer 2}  }
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out int 8 regular {pointer 2}  }
	{ vBarSel_loc_1_out int 8 regular {pointer 2}  }
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out int 8 regular {pointer 2}  }
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out int 8 regular {pointer 2}  }
	{ vBarSel_1_loc_1_out int 8 regular {pointer 2}  }
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out int 8 regular {pointer 2}  }
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out int 8 regular {pointer 2}  }
	{ outpix_11_out int 8 regular {pointer 1}  }
	{ outpix_10_out int 8 regular {pointer 1}  }
	{ outpix_9_out int 8 regular {pointer 1}  }
	{ outpix_8_out int 8 regular {pointer 1}  }
	{ outpix_7_out int 8 regular {pointer 1}  }
	{ outpix_6_out int 8 regular {pointer 1}  }
	{ p_0_5_0_0_0253383_out int 8 regular {pointer 2}  }
	{ p_0_4_0_0_0251381_out int 8 regular {pointer 2}  }
	{ p_0_3_0_0_0249379_out int 8 regular {pointer 2}  }
	{ p_0_2_0_0_0247377_out int 8 regular {pointer 2}  }
	{ p_0_1_0_0_0245375_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0243373_out int 8 regular {pointer 2}  }
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7 int 8 regular {pointer 1} {global 1}  }
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel int 8 regular {pointer 1} {global 1}  }
	{ s int 32 regular {pointer 0} {global 0}  }
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 int 3 regular {pointer 1} {global 1}  }
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 int 3 regular {pointer 1} {global 1}  }
	{ vBarSel int 3 regular {pointer 1} {global 1}  }
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 int 3 regular {pointer 1} {global 1}  }
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 int 3 regular {pointer 1} {global 1}  }
	{ vBarSel_1 int 8 regular {pointer 1} {global 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "outpix_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "outpix_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "outpix_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "outpix_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "outpix_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "outpix", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ovrlayYUV", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cmp8", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bckgndId_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "srcYUV", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "empty_44", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln1", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1212", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1196", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln518_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp35_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "passthruStartX_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "passthruEndX_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp59_not", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp68_not", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "vBarSel_loc_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "vBarSel_1_loc_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "outpix_11_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outpix_10_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outpix_9_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outpix_8_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outpix_7_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outpix_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_5_0_0_0253383_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_4_0_0_0251381_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_3_0_0_0249379_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_2_0_0_0247377_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_1_0_0_0245375_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0243373_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "vBarSel", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "vBarSel_1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 109
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ srcYUV_dout sc_in sc_lv 48 signal 10 } 
	{ srcYUV_num_data_valid sc_in sc_lv 5 signal 10 } 
	{ srcYUV_fifo_cap sc_in sc_lv 5 signal 10 } 
	{ srcYUV_empty_n sc_in sc_logic 1 signal 10 } 
	{ srcYUV_read sc_out sc_logic 1 signal 10 } 
	{ ovrlayYUV_din sc_out sc_lv 48 signal 7 } 
	{ ovrlayYUV_num_data_valid sc_in sc_lv 5 signal 7 } 
	{ ovrlayYUV_fifo_cap sc_in sc_lv 5 signal 7 } 
	{ ovrlayYUV_full_n sc_in sc_logic 1 signal 7 } 
	{ ovrlayYUV_write sc_out sc_logic 1 signal 7 } 
	{ outpix_5 sc_in sc_lv 8 signal 0 } 
	{ outpix_4 sc_in sc_lv 8 signal 1 } 
	{ outpix_3 sc_in sc_lv 8 signal 2 } 
	{ outpix_2 sc_in sc_lv 8 signal 3 } 
	{ outpix_1 sc_in sc_lv 8 signal 4 } 
	{ outpix sc_in sc_lv 8 signal 5 } 
	{ loopWidth sc_in sc_lv 16 signal 6 } 
	{ cmp8 sc_in sc_lv 1 signal 8 } 
	{ bckgndId_load sc_in sc_lv 8 signal 9 } 
	{ empty_44 sc_in sc_lv 1 signal 11 } 
	{ empty sc_in sc_lv 1 signal 12 } 
	{ trunc_ln1 sc_in sc_lv 14 signal 13 } 
	{ trunc_ln sc_in sc_lv 14 signal 14 } 
	{ y sc_in sc_lv 16 signal 15 } 
	{ zext_ln1212 sc_in sc_lv 16 signal 16 } 
	{ zext_ln1196 sc_in sc_lv 16 signal 17 } 
	{ zext_ln518_1 sc_in sc_lv 16 signal 18 } 
	{ cmp35_i sc_in sc_lv 1 signal 19 } 
	{ passthruStartX_load sc_in sc_lv 16 signal 20 } 
	{ passthruEndX_load sc_in sc_lv 16 signal 21 } 
	{ cmp59_not sc_in sc_lv 1 signal 22 } 
	{ cmp68_not sc_in sc_lv 1 signal 23 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_i sc_in sc_lv 8 signal 24 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o sc_out sc_lv 8 signal 24 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out_i sc_in sc_lv 8 signal 25 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out_o sc_out sc_lv 8 signal 25 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out_o_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ vBarSel_loc_1_out_i sc_in sc_lv 8 signal 26 } 
	{ vBarSel_loc_1_out_o sc_out sc_lv 8 signal 26 } 
	{ vBarSel_loc_1_out_o_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_i sc_in sc_lv 8 signal 27 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o sc_out sc_lv 8 signal 27 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_i sc_in sc_lv 8 signal 28 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o sc_out sc_lv 8 signal 28 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ vBarSel_1_loc_1_out_i sc_in sc_lv 8 signal 29 } 
	{ vBarSel_1_loc_1_out_o sc_out sc_lv 8 signal 29 } 
	{ vBarSel_1_loc_1_out_o_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_i sc_in sc_lv 8 signal 30 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o sc_out sc_lv 8 signal 30 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_i sc_in sc_lv 8 signal 31 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o sc_out sc_lv 8 signal 31 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ outpix_11_out sc_out sc_lv 8 signal 32 } 
	{ outpix_11_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ outpix_10_out sc_out sc_lv 8 signal 33 } 
	{ outpix_10_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ outpix_9_out sc_out sc_lv 8 signal 34 } 
	{ outpix_9_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ outpix_8_out sc_out sc_lv 8 signal 35 } 
	{ outpix_8_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ outpix_7_out sc_out sc_lv 8 signal 36 } 
	{ outpix_7_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ outpix_6_out sc_out sc_lv 8 signal 37 } 
	{ outpix_6_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ p_0_5_0_0_0253383_out_i sc_in sc_lv 8 signal 38 } 
	{ p_0_5_0_0_0253383_out_o sc_out sc_lv 8 signal 38 } 
	{ p_0_5_0_0_0253383_out_o_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ p_0_4_0_0_0251381_out_i sc_in sc_lv 8 signal 39 } 
	{ p_0_4_0_0_0251381_out_o sc_out sc_lv 8 signal 39 } 
	{ p_0_4_0_0_0251381_out_o_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ p_0_3_0_0_0249379_out_i sc_in sc_lv 8 signal 40 } 
	{ p_0_3_0_0_0249379_out_o sc_out sc_lv 8 signal 40 } 
	{ p_0_3_0_0_0249379_out_o_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ p_0_2_0_0_0247377_out_i sc_in sc_lv 8 signal 41 } 
	{ p_0_2_0_0_0247377_out_o sc_out sc_lv 8 signal 41 } 
	{ p_0_2_0_0_0247377_out_o_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ p_0_1_0_0_0245375_out_i sc_in sc_lv 8 signal 42 } 
	{ p_0_1_0_0_0245375_out_o sc_out sc_lv 8 signal 42 } 
	{ p_0_1_0_0_0245375_out_o_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ p_0_0_0_0_0243373_out_i sc_in sc_lv 8 signal 43 } 
	{ p_0_0_0_0_0243373_out_o sc_out sc_lv 8 signal 43 } 
	{ p_0_0_0_0_0243373_out_o_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7 sc_out sc_lv 8 signal 44 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel sc_out sc_lv 8 signal 45 } 
	{ tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ s sc_in sc_lv 32 signal 46 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 sc_out sc_lv 3 signal 47 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 sc_out sc_lv 3 signal 48 } 
	{ tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ vBarSel sc_out sc_lv 3 signal 49 } 
	{ vBarSel_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 sc_out sc_lv 3 signal 50 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 sc_out sc_lv 3 signal 51 } 
	{ tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ vBarSel_1 sc_out sc_lv 8 signal 52 } 
	{ vBarSel_1_ap_vld sc_out sc_logic 1 outvld 52 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "srcYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "srcYUV", "role": "dout" }} , 
 	{ "name": "srcYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "srcYUV", "role": "num_data_valid" }} , 
 	{ "name": "srcYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "srcYUV", "role": "fifo_cap" }} , 
 	{ "name": "srcYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcYUV", "role": "empty_n" }} , 
 	{ "name": "srcYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcYUV", "role": "read" }} , 
 	{ "name": "ovrlayYUV_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "din" }} , 
 	{ "name": "ovrlayYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "num_data_valid" }} , 
 	{ "name": "ovrlayYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "fifo_cap" }} , 
 	{ "name": "ovrlayYUV_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "full_n" }} , 
 	{ "name": "ovrlayYUV_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "write" }} , 
 	{ "name": "outpix_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_5", "role": "default" }} , 
 	{ "name": "outpix_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_4", "role": "default" }} , 
 	{ "name": "outpix_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_3", "role": "default" }} , 
 	{ "name": "outpix_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_2", "role": "default" }} , 
 	{ "name": "outpix_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_1", "role": "default" }} , 
 	{ "name": "outpix", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix", "role": "default" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "cmp8", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp8", "role": "default" }} , 
 	{ "name": "bckgndId_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bckgndId_load", "role": "default" }} , 
 	{ "name": "empty_44", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_44", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "trunc_ln1", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "trunc_ln1", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "y", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y", "role": "default" }} , 
 	{ "name": "zext_ln1212", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln1212", "role": "default" }} , 
 	{ "name": "zext_ln1196", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln1196", "role": "default" }} , 
 	{ "name": "zext_ln518_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln518_1", "role": "default" }} , 
 	{ "name": "cmp35_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp35_i", "role": "default" }} , 
 	{ "name": "passthruStartX_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "passthruStartX_load", "role": "default" }} , 
 	{ "name": "passthruEndX_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "passthruEndX_load", "role": "default" }} , 
 	{ "name": "cmp59_not", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp59_not", "role": "default" }} , 
 	{ "name": "cmp68_not", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp68_not", "role": "default" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out", "role": "i" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out", "role": "o" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out", "role": "i" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out", "role": "o" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out", "role": "o_ap_vld" }} , 
 	{ "name": "vBarSel_loc_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vBarSel_loc_1_out", "role": "i" }} , 
 	{ "name": "vBarSel_loc_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vBarSel_loc_1_out", "role": "o" }} , 
 	{ "name": "vBarSel_loc_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vBarSel_loc_1_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out", "role": "i" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out", "role": "o" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out", "role": "i" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out", "role": "o" }} , 
 	{ "name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out", "role": "o_ap_vld" }} , 
 	{ "name": "vBarSel_1_loc_1_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vBarSel_1_loc_1_out", "role": "i" }} , 
 	{ "name": "vBarSel_1_loc_1_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vBarSel_1_loc_1_out", "role": "o" }} , 
 	{ "name": "vBarSel_1_loc_1_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vBarSel_1_loc_1_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out", "role": "i" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out", "role": "o" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out", "role": "i" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out", "role": "o" }} , 
 	{ "name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out", "role": "o_ap_vld" }} , 
 	{ "name": "outpix_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_11_out", "role": "default" }} , 
 	{ "name": "outpix_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outpix_11_out", "role": "ap_vld" }} , 
 	{ "name": "outpix_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_10_out", "role": "default" }} , 
 	{ "name": "outpix_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outpix_10_out", "role": "ap_vld" }} , 
 	{ "name": "outpix_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_9_out", "role": "default" }} , 
 	{ "name": "outpix_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outpix_9_out", "role": "ap_vld" }} , 
 	{ "name": "outpix_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_8_out", "role": "default" }} , 
 	{ "name": "outpix_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outpix_8_out", "role": "ap_vld" }} , 
 	{ "name": "outpix_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_7_out", "role": "default" }} , 
 	{ "name": "outpix_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outpix_7_out", "role": "ap_vld" }} , 
 	{ "name": "outpix_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outpix_6_out", "role": "default" }} , 
 	{ "name": "outpix_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outpix_6_out", "role": "ap_vld" }} , 
 	{ "name": "p_0_5_0_0_0253383_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_5_0_0_0253383_out", "role": "i" }} , 
 	{ "name": "p_0_5_0_0_0253383_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_5_0_0_0253383_out", "role": "o" }} , 
 	{ "name": "p_0_5_0_0_0253383_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_5_0_0_0253383_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_4_0_0_0251381_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_4_0_0_0251381_out", "role": "i" }} , 
 	{ "name": "p_0_4_0_0_0251381_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_4_0_0_0251381_out", "role": "o" }} , 
 	{ "name": "p_0_4_0_0_0251381_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_4_0_0_0251381_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_3_0_0_0249379_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_3_0_0_0249379_out", "role": "i" }} , 
 	{ "name": "p_0_3_0_0_0249379_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_3_0_0_0249379_out", "role": "o" }} , 
 	{ "name": "p_0_3_0_0_0249379_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_3_0_0_0249379_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_2_0_0_0247377_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_2_0_0_0247377_out", "role": "i" }} , 
 	{ "name": "p_0_2_0_0_0247377_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_2_0_0_0247377_out", "role": "o" }} , 
 	{ "name": "p_0_2_0_0_0247377_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_0247377_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_1_0_0_0245375_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0245375_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_0245375_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0245375_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_0245375_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_0245375_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0243373_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0243373_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0243373_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0243373_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0243373_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0243373_out", "role": "o_ap_vld" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7", "role": "default" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7", "role": "ap_vld" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel", "role": "default" }} , 
 	{ "name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel", "role": "ap_vld" }} , 
 	{ "name": "s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "default" }} , 
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
 	{ "name": "vBarSel_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vBarSel_1", "role": "default" }} , 
 	{ "name": "vBarSel_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vBarSel_1", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "tpgBackground_Pipeline_VITIS_LOOP_520_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "outpix_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "outpix_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "outpix_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "outpix_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "outpix_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "outpix", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "ovrlayYUV", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ovrlayYUV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmp8", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "bckgndId_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "srcYUV", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcYUV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_44", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "empty", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "trunc_ln1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "zext_ln1196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "zext_ln518_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp35_i", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "passthruStartX_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "passthruEndX_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp59_not", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp68_not", "Type" : "None", "Direction" : "I"},
			{"Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "vBarSel_loc_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "vBarSel_1_loc_1_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "outpix_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outpix_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outpix_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outpix_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outpix_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outpix_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_5_0_0_0253383_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_4_0_0_0251381_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_3_0_0_0249379_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_0247377_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0245375_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0243373_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "blkYuv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tpgBarSelYuv_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tpgBarSelYuv_u", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tpgBarSelYuv_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_xBar_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpgBarSelRgb_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tpgBarSelRgb_g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tpgBarSelRgb_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_xBar", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s", "Type" : "None", "Direction" : "I"},
			{"Name" : "tpgTartanBarArray", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "yCount", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "vBarSel", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpgPatternCrossHatch_unsigned_short_unsigned_short_unsigned_short_unsigned_sh", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tpgPatternCrossHatch_unsigned_short_unsigned_short_unsigned_short_unsigned_sh_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "vHatch", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "yCount_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "blkYuv_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "whiYuv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tpgCheckerBoardArray", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "yCount_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "vBarSel_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rSerie", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "gSerie", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bSerie", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_520_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.blkYuv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tpgBarSelYuv_y_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tpgBarSelYuv_u_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tpgBarSelYuv_v_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tpgBarSelRgb_r_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tpgBarSelRgb_g_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tpgBarSelRgb_b_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tpgTartanBarArray_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.blkYuv_1_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.whiYuv_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tpgCheckerBoardArray_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reg_ap_uint_10_s_fu_2104", "Parent" : "0",
		"CDFG" : "reg_ap_uint_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_val", "Type" : "Stable", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tpgBackground_Pipeline_VITIS_LOOP_520_2 {
		outpix_5 {Type I LastRead 0 FirstWrite -1}
		outpix_4 {Type I LastRead 0 FirstWrite -1}
		outpix_3 {Type I LastRead 0 FirstWrite -1}
		outpix_2 {Type I LastRead 0 FirstWrite -1}
		outpix_1 {Type I LastRead 0 FirstWrite -1}
		outpix {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		ovrlayYUV {Type O LastRead -1 FirstWrite 6}
		cmp8 {Type I LastRead 0 FirstWrite -1}
		bckgndId_load {Type I LastRead 0 FirstWrite -1}
		srcYUV {Type I LastRead 3 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		zext_ln1212 {Type I LastRead 0 FirstWrite -1}
		zext_ln1196 {Type I LastRead 0 FirstWrite -1}
		zext_ln518_1 {Type I LastRead 0 FirstWrite -1}
		cmp35_i {Type I LastRead 0 FirstWrite -1}
		passthruStartX_load {Type I LastRead 0 FirstWrite -1}
		passthruEndX_load {Type I LastRead 0 FirstWrite -1}
		cmp59_not {Type I LastRead 0 FirstWrite -1}
		cmp68_not {Type I LastRead 0 FirstWrite -1}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out {Type IO LastRead 3 FirstWrite 2}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out {Type IO LastRead 3 FirstWrite 2}
		vBarSel_loc_1_out {Type IO LastRead 2 FirstWrite 1}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out {Type IO LastRead 2 FirstWrite 1}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out {Type IO LastRead 2 FirstWrite 1}
		vBarSel_1_loc_1_out {Type IO LastRead 2 FirstWrite 1}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out {Type IO LastRead 2 FirstWrite 1}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out {Type IO LastRead 2 FirstWrite 1}
		outpix_11_out {Type O LastRead -1 FirstWrite 5}
		outpix_10_out {Type O LastRead -1 FirstWrite 5}
		outpix_9_out {Type O LastRead -1 FirstWrite 5}
		outpix_8_out {Type O LastRead -1 FirstWrite 5}
		outpix_7_out {Type O LastRead -1 FirstWrite 5}
		outpix_6_out {Type O LastRead -1 FirstWrite 5}
		p_0_5_0_0_0253383_out {Type IO LastRead 4 FirstWrite 3}
		p_0_4_0_0_0251381_out {Type IO LastRead 4 FirstWrite 3}
		p_0_3_0_0_0249379_out {Type IO LastRead 4 FirstWrite 3}
		p_0_2_0_0_0247377_out {Type IO LastRead 4 FirstWrite 3}
		p_0_1_0_0_0245375_out {Type IO LastRead 4 FirstWrite 3}
		p_0_0_0_0_0243373_out {Type IO LastRead 4 FirstWrite 3}
		blkYuv {Type I LastRead -1 FirstWrite -1}
		tpgBarSelYuv_y {Type I LastRead -1 FirstWrite -1}
		tpgBarSelYuv_u {Type I LastRead -1 FirstWrite -1}
		tpgBarSelYuv_v {Type I LastRead -1 FirstWrite -1}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_xBar_6 {Type IO LastRead -1 FirstWrite -1}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7 {Type O LastRead -1 FirstWrite 2}
		tpgBarSelRgb_r {Type I LastRead -1 FirstWrite -1}
		tpgBarSelRgb_g {Type I LastRead -1 FirstWrite -1}
		tpgBarSelRgb_b {Type I LastRead -1 FirstWrite -1}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel {Type O LastRead -1 FirstWrite 2}
		tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_xBar {Type IO LastRead -1 FirstWrite -1}
		s {Type I LastRead 2 FirstWrite -1}
		tpgTartanBarArray {Type I LastRead -1 FirstWrite -1}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign {Type IO LastRead -1 FirstWrite -1}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 {Type O LastRead -1 FirstWrite 0}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 {Type O LastRead -1 FirstWrite 0}
		tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_1 {Type IO LastRead -1 FirstWrite -1}
		yCount {Type IO LastRead -1 FirstWrite -1}
		vBarSel {Type O LastRead -1 FirstWrite 0}
		tpgPatternCrossHatch_unsigned_short_unsigned_short_unsigned_short_unsigned_sh {Type IO LastRead -1 FirstWrite -1}
		tpgPatternCrossHatch_unsigned_short_unsigned_short_unsigned_short_unsigned_sh_1 {Type IO LastRead -1 FirstWrite -1}
		vHatch {Type IO LastRead -1 FirstWrite -1}
		yCount_1 {Type IO LastRead -1 FirstWrite -1}
		blkYuv_1 {Type I LastRead -1 FirstWrite -1}
		whiYuv {Type I LastRead -1 FirstWrite -1}
		tpgCheckerBoardArray {Type I LastRead -1 FirstWrite -1}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_s {Type IO LastRead -1 FirstWrite -1}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 {Type O LastRead -1 FirstWrite 0}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 {Type O LastRead -1 FirstWrite 0}
		tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_1 {Type IO LastRead -1 FirstWrite -1}
		yCount_2 {Type IO LastRead -1 FirstWrite -1}
		vBarSel_1 {Type O LastRead -1 FirstWrite 0}
		rSerie {Type IO LastRead -1 FirstWrite -1}
		gSerie {Type IO LastRead -1 FirstWrite -1}
		bSerie {Type IO LastRead -1 FirstWrite -1}}
	reg_ap_uint_10_s {
		d_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	outpix_5 { ap_none {  { outpix_5 in_data 0 8 } } }
	outpix_4 { ap_none {  { outpix_4 in_data 0 8 } } }
	outpix_3 { ap_none {  { outpix_3 in_data 0 8 } } }
	outpix_2 { ap_none {  { outpix_2 in_data 0 8 } } }
	outpix_1 { ap_none {  { outpix_1 in_data 0 8 } } }
	outpix { ap_none {  { outpix in_data 0 8 } } }
	loopWidth { ap_stable {  { loopWidth in_data 0 16 } } }
	ovrlayYUV { ap_fifo {  { ovrlayYUV_din fifo_port_we 1 48 }  { ovrlayYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { ovrlayYUV_fifo_cap fifo_update 0 5 }  { ovrlayYUV_full_n fifo_status 0 1 }  { ovrlayYUV_write fifo_data 1 1 } } }
	cmp8 { ap_stable {  { cmp8 in_data 0 1 } } }
	bckgndId_load { ap_stable {  { bckgndId_load in_data 0 8 } } }
	srcYUV { ap_fifo {  { srcYUV_dout fifo_port_we 0 48 }  { srcYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { srcYUV_fifo_cap fifo_update 0 5 }  { srcYUV_empty_n fifo_status 0 1 }  { srcYUV_read fifo_data 1 1 } } }
	empty_44 { ap_stable {  { empty_44 in_data 0 1 } } }
	empty { ap_stable {  { empty in_data 0 1 } } }
	trunc_ln1 { ap_stable {  { trunc_ln1 in_data 0 14 } } }
	trunc_ln { ap_stable {  { trunc_ln in_data 0 14 } } }
	y { ap_none {  { y in_data 0 16 } } }
	zext_ln1212 { ap_stable {  { zext_ln1212 in_data 0 16 } } }
	zext_ln1196 { ap_stable {  { zext_ln1196 in_data 0 16 } } }
	zext_ln518_1 { ap_none {  { zext_ln518_1 in_data 0 16 } } }
	cmp35_i { ap_stable {  { cmp35_i in_data 0 1 } } }
	passthruStartX_load { ap_stable {  { passthruStartX_load in_data 0 16 } } }
	passthruEndX_load { ap_stable {  { passthruEndX_load in_data 0 16 } } }
	cmp59_not { ap_none {  { cmp59_not in_data 0 1 } } }
	cmp68_not { ap_none {  { cmp68_not in_data 0 1 } } }
	tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out { ap_ovld {  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_i in_data 0 8 }  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o out_data 1 8 }  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out { ap_ovld {  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out_i in_data 0 8 }  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out_o out_data 1 8 }  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out_o_ap_vld out_vld 1 1 } } }
	vBarSel_loc_1_out { ap_ovld {  { vBarSel_loc_1_out_i in_data 0 8 }  { vBarSel_loc_1_out_o out_data 1 8 }  { vBarSel_loc_1_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out { ap_ovld {  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_i in_data 0 8 }  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o out_data 1 8 }  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out { ap_ovld {  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_i in_data 0 8 }  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o out_data 1 8 }  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o_ap_vld out_vld 1 1 } } }
	vBarSel_1_loc_1_out { ap_ovld {  { vBarSel_1_loc_1_out_i in_data 0 8 }  { vBarSel_1_loc_1_out_o out_data 1 8 }  { vBarSel_1_loc_1_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out { ap_ovld {  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_i in_data 0 8 }  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o out_data 1 8 }  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out { ap_ovld {  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_i in_data 0 8 }  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o out_data 1 8 }  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o_ap_vld out_vld 1 1 } } }
	outpix_11_out { ap_vld {  { outpix_11_out out_data 1 8 }  { outpix_11_out_ap_vld out_vld 1 1 } } }
	outpix_10_out { ap_vld {  { outpix_10_out out_data 1 8 }  { outpix_10_out_ap_vld out_vld 1 1 } } }
	outpix_9_out { ap_vld {  { outpix_9_out out_data 1 8 }  { outpix_9_out_ap_vld out_vld 1 1 } } }
	outpix_8_out { ap_vld {  { outpix_8_out out_data 1 8 }  { outpix_8_out_ap_vld out_vld 1 1 } } }
	outpix_7_out { ap_vld {  { outpix_7_out out_data 1 8 }  { outpix_7_out_ap_vld out_vld 1 1 } } }
	outpix_6_out { ap_vld {  { outpix_6_out out_data 1 8 }  { outpix_6_out_ap_vld out_vld 1 1 } } }
	p_0_5_0_0_0253383_out { ap_ovld {  { p_0_5_0_0_0253383_out_i in_data 0 8 }  { p_0_5_0_0_0253383_out_o out_data 1 8 }  { p_0_5_0_0_0253383_out_o_ap_vld out_vld 1 1 } } }
	p_0_4_0_0_0251381_out { ap_ovld {  { p_0_4_0_0_0251381_out_i in_data 0 8 }  { p_0_4_0_0_0251381_out_o out_data 1 8 }  { p_0_4_0_0_0251381_out_o_ap_vld out_vld 1 1 } } }
	p_0_3_0_0_0249379_out { ap_ovld {  { p_0_3_0_0_0249379_out_i in_data 0 8 }  { p_0_3_0_0_0249379_out_o out_data 1 8 }  { p_0_3_0_0_0249379_out_o_ap_vld out_vld 1 1 } } }
	p_0_2_0_0_0247377_out { ap_ovld {  { p_0_2_0_0_0247377_out_i in_data 0 8 }  { p_0_2_0_0_0247377_out_o out_data 1 8 }  { p_0_2_0_0_0247377_out_o_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_0245375_out { ap_ovld {  { p_0_1_0_0_0245375_out_i in_data 0 8 }  { p_0_1_0_0_0245375_out_o out_data 1 8 }  { p_0_1_0_0_0245375_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0243373_out { ap_ovld {  { p_0_0_0_0_0243373_out_i in_data 0 8 }  { p_0_0_0_0_0243373_out_o out_data 1 8 }  { p_0_0_0_0_0243373_out_o_ap_vld out_vld 1 1 } } }
	tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7 { ap_vld {  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7 out_data 1 8 }  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_ap_vld out_vld 1 1 } } }
	tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel { ap_vld {  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel out_data 1 8 }  { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_ap_vld out_vld 1 1 } } }
	s { ap_none {  { s in_data 0 32 } } }
	tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 { ap_vld {  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 out_data 1 3 }  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2_ap_vld out_vld 1 1 } } }
	tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 { ap_vld {  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 out_data 1 3 }  { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3_ap_vld out_vld 1 1 } } }
	vBarSel { ap_vld {  { vBarSel out_data 1 3 }  { vBarSel_ap_vld out_vld 1 1 } } }
	tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 { ap_vld {  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 out_data 1 3 }  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2_ap_vld out_vld 1 1 } } }
	tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 { ap_vld {  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 out_data 1 3 }  { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3_ap_vld out_vld 1 1 } } }
	vBarSel_1 { ap_vld {  { vBarSel_1 out_data 1 8 }  { vBarSel_1_ap_vld out_vld 1 1 } } }
}
