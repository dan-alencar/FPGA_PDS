set moduleName v_tpgHlsDataFlow
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type dataflow
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
set C_modelName {v_tpgHlsDataFlow}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ s_axis_video_V_data_V int 48 regular {axi_s 0 volatile  { s_axis_video Data } }  }
	{ s_axis_video_V_keep_V int 6 regular {axi_s 0 volatile  { s_axis_video Keep } }  }
	{ s_axis_video_V_strb_V int 6 regular {axi_s 0 volatile  { s_axis_video Strb } }  }
	{ s_axis_video_V_user_V int 1 regular {axi_s 0 volatile  { s_axis_video User } }  }
	{ s_axis_video_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_video Last } }  }
	{ s_axis_video_V_id_V int 1 regular {axi_s 0 volatile  { s_axis_video ID } }  }
	{ s_axis_video_V_dest_V int 1 regular {axi_s 0 volatile  { s_axis_video Dest } }  }
	{ height_val5 int 16 regular {ap_stable 0} }
	{ width_val10 int 16 regular {ap_stable 0} }
	{ field_id_val11 int 16 regular {ap_stable 0} }
	{ fid_in_val12 int 1 regular {ap_stable 0} }
	{ passthruStartX_val13 int 16 regular {ap_stable 0} }
	{ passthruStartY_val14 int 16 regular {ap_stable 0} }
	{ passthruEndX_val15 int 16 regular {ap_stable 0} }
	{ passthruEndY_val16 int 16 regular {ap_stable 0} }
	{ enableInput_val18 int 8 regular {ap_stable 0} }
	{ bckgndId_val19 int 8 regular {ap_stable 0} }
	{ ovrlayId_val20 int 8 regular {ap_stable 0} }
	{ maskId_val21 int 8 regular {ap_stable 0} }
	{ motionSpeed_val23 int 8 regular {ap_stable 0} }
	{ colorFormat_val27 int 8 regular {ap_stable 0} }
	{ crossHairX_val28 int 16 regular {ap_stable 0} }
	{ crossHairY_val29 int 16 regular {ap_stable 0} }
	{ ZplateHorContStart_val30 int 16 regular {ap_stable 0} }
	{ ZplateHorContDelta_val31 int 16 regular {ap_stable 0} }
	{ ZplateVerContStart_val32 int 16 regular {ap_stable 0} }
	{ ZplateVerContDelta_val33 int 16 regular {ap_stable 0} }
	{ boxSize_val34 int 16 regular {ap_stable 0} }
	{ boxColorR_val35 int 8 regular {ap_stable 0} }
	{ boxColorG_val36 int 8 regular {ap_stable 0} }
	{ boxColorB_val37 int 8 regular {ap_stable 0} }
	{ dpDynamicRange_val38 int 8 regular {ap_stable 0} }
	{ dpYUVCoef_val39 int 8 regular {ap_stable 0} }
	{ m_axis_video_V_data_V int 48 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ m_axis_video_V_keep_V int 6 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ m_axis_video_V_strb_V int 6 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ m_axis_video_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ m_axis_video_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ m_axis_video_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ m_axis_video_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
	{ fid int 1 regular {pointer 1}  }
	{ s int 32 regular {pointer 0} {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "height_val5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "width_val10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "field_id_val11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "fid_in_val12", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "passthruStartX_val13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "passthruStartY_val14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "passthruEndX_val15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "passthruEndY_val16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "enableInput_val18", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bckgndId_val19", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ovrlayId_val20", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "maskId_val21", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "motionSpeed_val23", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "colorFormat_val27", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "crossHairX_val28", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "crossHairY_val29", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ZplateHorContStart_val30", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ZplateHorContDelta_val31", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ZplateVerContStart_val32", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ZplateVerContDelta_val33", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "boxSize_val34", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorR_val35", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorG_val36", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boxColorB_val37", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dpDynamicRange_val38", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dpYUVCoef_val39", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 81
set portList { 
	{ s_axis_video_TDATA sc_in sc_lv 48 signal 0 } 
	{ s_axis_video_TKEEP sc_in sc_lv 6 signal 1 } 
	{ s_axis_video_TSTRB sc_in sc_lv 6 signal 2 } 
	{ s_axis_video_TUSER sc_in sc_lv 1 signal 3 } 
	{ s_axis_video_TLAST sc_in sc_lv 1 signal 4 } 
	{ s_axis_video_TID sc_in sc_lv 1 signal 5 } 
	{ s_axis_video_TDEST sc_in sc_lv 1 signal 6 } 
	{ height_val5 sc_in sc_lv 16 signal 7 } 
	{ width_val10 sc_in sc_lv 16 signal 8 } 
	{ field_id_val11 sc_in sc_lv 16 signal 9 } 
	{ fid_in_val12 sc_in sc_lv 1 signal 10 } 
	{ passthruStartX_val13 sc_in sc_lv 16 signal 11 } 
	{ passthruStartY_val14 sc_in sc_lv 16 signal 12 } 
	{ passthruEndX_val15 sc_in sc_lv 16 signal 13 } 
	{ passthruEndY_val16 sc_in sc_lv 16 signal 14 } 
	{ enableInput_val18 sc_in sc_lv 8 signal 15 } 
	{ bckgndId_val19 sc_in sc_lv 8 signal 16 } 
	{ ovrlayId_val20 sc_in sc_lv 8 signal 17 } 
	{ maskId_val21 sc_in sc_lv 8 signal 18 } 
	{ motionSpeed_val23 sc_in sc_lv 8 signal 19 } 
	{ colorFormat_val27 sc_in sc_lv 8 signal 20 } 
	{ crossHairX_val28 sc_in sc_lv 16 signal 21 } 
	{ crossHairY_val29 sc_in sc_lv 16 signal 22 } 
	{ ZplateHorContStart_val30 sc_in sc_lv 16 signal 23 } 
	{ ZplateHorContDelta_val31 sc_in sc_lv 16 signal 24 } 
	{ ZplateVerContStart_val32 sc_in sc_lv 16 signal 25 } 
	{ ZplateVerContDelta_val33 sc_in sc_lv 16 signal 26 } 
	{ boxSize_val34 sc_in sc_lv 16 signal 27 } 
	{ boxColorR_val35 sc_in sc_lv 8 signal 28 } 
	{ boxColorG_val36 sc_in sc_lv 8 signal 29 } 
	{ boxColorB_val37 sc_in sc_lv 8 signal 30 } 
	{ dpDynamicRange_val38 sc_in sc_lv 8 signal 31 } 
	{ dpYUVCoef_val39 sc_in sc_lv 8 signal 32 } 
	{ m_axis_video_TDATA sc_out sc_lv 48 signal 33 } 
	{ m_axis_video_TKEEP sc_out sc_lv 6 signal 34 } 
	{ m_axis_video_TSTRB sc_out sc_lv 6 signal 35 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 36 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 37 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 38 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 39 } 
	{ fid sc_out sc_lv 1 signal 40 } 
	{ s sc_in sc_lv 32 signal 41 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ s_axis_video_TVALID sc_in sc_logic 1 invld 6 } 
	{ s_axis_video_TREADY sc_out sc_logic 1 inacc 6 } 
	{ enableInput_val18_ap_vld sc_in sc_logic 1 invld 15 } 
	{ height_val5_ap_vld sc_in sc_logic 1 invld 7 } 
	{ width_val10_ap_vld sc_in sc_logic 1 invld 8 } 
	{ colorFormat_val27_ap_vld sc_in sc_logic 1 invld 20 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ passthruStartX_val13_ap_vld sc_in sc_logic 1 invld 11 } 
	{ passthruStartY_val14_ap_vld sc_in sc_logic 1 invld 12 } 
	{ passthruEndX_val15_ap_vld sc_in sc_logic 1 invld 13 } 
	{ passthruEndY_val16_ap_vld sc_in sc_logic 1 invld 14 } 
	{ bckgndId_val19_ap_vld sc_in sc_logic 1 invld 16 } 
	{ ZplateHorContStart_val30_ap_vld sc_in sc_logic 1 invld 23 } 
	{ ZplateHorContDelta_val31_ap_vld sc_in sc_logic 1 invld 24 } 
	{ ZplateVerContStart_val32_ap_vld sc_in sc_logic 1 invld 25 } 
	{ ZplateVerContDelta_val33_ap_vld sc_in sc_logic 1 invld 26 } 
	{ dpDynamicRange_val38_ap_vld sc_in sc_logic 1 invld 31 } 
	{ dpYUVCoef_val39_ap_vld sc_in sc_logic 1 invld 32 } 
	{ motionSpeed_val23_ap_vld sc_in sc_logic 1 invld 19 } 
	{ s_ap_vld sc_in sc_logic 1 invld 41 } 
	{ ovrlayId_val20_ap_vld sc_in sc_logic 1 invld 17 } 
	{ maskId_val21_ap_vld sc_in sc_logic 1 invld 18 } 
	{ crossHairX_val28_ap_vld sc_in sc_logic 1 invld 21 } 
	{ crossHairY_val29_ap_vld sc_in sc_logic 1 invld 22 } 
	{ boxSize_val34_ap_vld sc_in sc_logic 1 invld 27 } 
	{ boxColorR_val35_ap_vld sc_in sc_logic 1 invld 28 } 
	{ boxColorG_val36_ap_vld sc_in sc_logic 1 invld 29 } 
	{ boxColorB_val37_ap_vld sc_in sc_logic 1 invld 30 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 39 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 39 } 
	{ fid_in_val12_ap_vld sc_in sc_logic 1 invld 10 } 
	{ fid_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ field_id_val11_ap_vld sc_in sc_logic 1 invld 9 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "s_axis_video_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "s_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "s_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "s_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "height_val5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "height_val5", "role": "default" }} , 
 	{ "name": "width_val10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "width_val10", "role": "default" }} , 
 	{ "name": "field_id_val11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "field_id_val11", "role": "default" }} , 
 	{ "name": "fid_in_val12", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fid_in_val12", "role": "default" }} , 
 	{ "name": "passthruStartX_val13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "passthruStartX_val13", "role": "default" }} , 
 	{ "name": "passthruStartY_val14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "passthruStartY_val14", "role": "default" }} , 
 	{ "name": "passthruEndX_val15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "passthruEndX_val15", "role": "default" }} , 
 	{ "name": "passthruEndY_val16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "passthruEndY_val16", "role": "default" }} , 
 	{ "name": "enableInput_val18", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "enableInput_val18", "role": "default" }} , 
 	{ "name": "bckgndId_val19", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bckgndId_val19", "role": "default" }} , 
 	{ "name": "ovrlayId_val20", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ovrlayId_val20", "role": "default" }} , 
 	{ "name": "maskId_val21", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "maskId_val21", "role": "default" }} , 
 	{ "name": "motionSpeed_val23", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "motionSpeed_val23", "role": "default" }} , 
 	{ "name": "colorFormat_val27", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "colorFormat_val27", "role": "default" }} , 
 	{ "name": "crossHairX_val28", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "crossHairX_val28", "role": "default" }} , 
 	{ "name": "crossHairY_val29", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "crossHairY_val29", "role": "default" }} , 
 	{ "name": "ZplateHorContStart_val30", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ZplateHorContStart_val30", "role": "default" }} , 
 	{ "name": "ZplateHorContDelta_val31", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ZplateHorContDelta_val31", "role": "default" }} , 
 	{ "name": "ZplateVerContStart_val32", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ZplateVerContStart_val32", "role": "default" }} , 
 	{ "name": "ZplateVerContDelta_val33", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ZplateVerContDelta_val33", "role": "default" }} , 
 	{ "name": "boxSize_val34", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "boxSize_val34", "role": "default" }} , 
 	{ "name": "boxColorR_val35", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorR_val35", "role": "default" }} , 
 	{ "name": "boxColorG_val36", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorG_val36", "role": "default" }} , 
 	{ "name": "boxColorB_val37", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "boxColorB_val37", "role": "default" }} , 
 	{ "name": "dpDynamicRange_val38", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dpDynamicRange_val38", "role": "default" }} , 
 	{ "name": "dpYUVCoef_val39", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dpYUVCoef_val39", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "fid", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fid", "role": "default" }} , 
 	{ "name": "s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "s_axis_video_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "enableInput_val18_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "enableInput_val18", "role": "ap_vld" }} , 
 	{ "name": "height_val5_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "height_val5", "role": "ap_vld" }} , 
 	{ "name": "width_val10_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "width_val10", "role": "ap_vld" }} , 
 	{ "name": "colorFormat_val27_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "colorFormat_val27", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "passthruStartX_val13_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "passthruStartX_val13", "role": "ap_vld" }} , 
 	{ "name": "passthruStartY_val14_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "passthruStartY_val14", "role": "ap_vld" }} , 
 	{ "name": "passthruEndX_val15_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "passthruEndX_val15", "role": "ap_vld" }} , 
 	{ "name": "passthruEndY_val16_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "passthruEndY_val16", "role": "ap_vld" }} , 
 	{ "name": "bckgndId_val19_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "bckgndId_val19", "role": "ap_vld" }} , 
 	{ "name": "ZplateHorContStart_val30_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ZplateHorContStart_val30", "role": "ap_vld" }} , 
 	{ "name": "ZplateHorContDelta_val31_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ZplateHorContDelta_val31", "role": "ap_vld" }} , 
 	{ "name": "ZplateVerContStart_val32_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ZplateVerContStart_val32", "role": "ap_vld" }} , 
 	{ "name": "ZplateVerContDelta_val33_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ZplateVerContDelta_val33", "role": "ap_vld" }} , 
 	{ "name": "dpDynamicRange_val38_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dpDynamicRange_val38", "role": "ap_vld" }} , 
 	{ "name": "dpYUVCoef_val39_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dpYUVCoef_val39", "role": "ap_vld" }} , 
 	{ "name": "motionSpeed_val23_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "motionSpeed_val23", "role": "ap_vld" }} , 
 	{ "name": "s_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s", "role": "ap_vld" }} , 
 	{ "name": "ovrlayId_val20_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ovrlayId_val20", "role": "ap_vld" }} , 
 	{ "name": "maskId_val21_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "maskId_val21", "role": "ap_vld" }} , 
 	{ "name": "crossHairX_val28_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "crossHairX_val28", "role": "ap_vld" }} , 
 	{ "name": "crossHairY_val29_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "crossHairY_val29", "role": "ap_vld" }} , 
 	{ "name": "boxSize_val34_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "boxSize_val34", "role": "ap_vld" }} , 
 	{ "name": "boxColorR_val35_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "boxColorR_val35", "role": "ap_vld" }} , 
 	{ "name": "boxColorG_val36_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "boxColorG_val36", "role": "ap_vld" }} , 
 	{ "name": "boxColorB_val37_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "boxColorB_val37", "role": "ap_vld" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "fid_in_val12_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fid_in_val12", "role": "ap_vld" }} , 
 	{ "name": "fid_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fid", "role": "ap_vld" }} , 
 	{ "name": "field_id_val11_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "field_id_val11", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	v_tpgHlsDataFlow {
		s_axis_video_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 1 FirstWrite -1}
		height_val5 {Type I LastRead 0 FirstWrite -1}
		width_val10 {Type I LastRead 0 FirstWrite -1}
		field_id_val11 {Type I LastRead 6 FirstWrite -1}
		fid_in_val12 {Type I LastRead 6 FirstWrite -1}
		passthruStartX_val13 {Type I LastRead 2 FirstWrite -1}
		passthruStartY_val14 {Type I LastRead 2 FirstWrite -1}
		passthruEndX_val15 {Type I LastRead 2 FirstWrite -1}
		passthruEndY_val16 {Type I LastRead 2 FirstWrite -1}
		enableInput_val18 {Type I LastRead 0 FirstWrite -1}
		bckgndId_val19 {Type I LastRead 2 FirstWrite -1}
		ovrlayId_val20 {Type I LastRead 4 FirstWrite -1}
		maskId_val21 {Type I LastRead 4 FirstWrite -1}
		motionSpeed_val23 {Type I LastRead 2 FirstWrite -1}
		colorFormat_val27 {Type I LastRead 0 FirstWrite -1}
		crossHairX_val28 {Type I LastRead 4 FirstWrite -1}
		crossHairY_val29 {Type I LastRead 4 FirstWrite -1}
		ZplateHorContStart_val30 {Type I LastRead 2 FirstWrite -1}
		ZplateHorContDelta_val31 {Type I LastRead 2 FirstWrite -1}
		ZplateVerContStart_val32 {Type I LastRead 2 FirstWrite -1}
		ZplateVerContDelta_val33 {Type I LastRead 2 FirstWrite -1}
		boxSize_val34 {Type I LastRead 4 FirstWrite -1}
		boxColorR_val35 {Type I LastRead 4 FirstWrite -1}
		boxColorG_val36 {Type I LastRead 4 FirstWrite -1}
		boxColorB_val37 {Type I LastRead 4 FirstWrite -1}
		dpDynamicRange_val38 {Type I LastRead 2 FirstWrite -1}
		dpYUVCoef_val39 {Type I LastRead 2 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 2}
		fid {Type O LastRead -1 FirstWrite 0}
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
		yCount_1 {Type IO LastRead -1 FirstWrite -1}
		whiYuv_2 {Type I LastRead -1 FirstWrite -1}
		boxHCoord {Type IO LastRead -1 FirstWrite -1}
		boxVCoord {Type IO LastRead -1 FirstWrite -1}
		vDir {Type IO LastRead -1 FirstWrite -1}
		hDir {Type IO LastRead -1 FirstWrite -1}
		fidStored {Type IO LastRead -1 FirstWrite -1}
		counter {Type IO LastRead -1 FirstWrite -1}}
	AXIvideo2MultiPixStream {
		s_axis_video_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 1 FirstWrite -1}
		srcYUV {Type O LastRead -1 FirstWrite 2}
		enableInput_val18 {Type I LastRead 1 FirstWrite -1}
		height_val5 {Type I LastRead 0 FirstWrite -1}
		width_val10 {Type I LastRead 0 FirstWrite -1}
		colorFormat_val27 {Type I LastRead 1 FirstWrite -1}}
	AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_last_i_out {Type O LastRead -1 FirstWrite 0}
		axi_data_promoted428_i_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_width {
		p_4_0_0_0186422_lcssa447_i {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0178415_lcssa431_i {Type I LastRead 0 FirstWrite -1}
		sof_4_i {Type I LastRead 0 FirstWrite -1}
		colorFormat_val27 {Type I LastRead 0 FirstWrite -1}
		trunc_ln_i {Type I LastRead 0 FirstWrite -1}
		srcYUV {Type O LastRead -1 FirstWrite 2}
		s_axis_video_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 1 FirstWrite -1}
		p_4_0_0_0186423_i_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0_0178414_i_out {Type O LastRead -1 FirstWrite 1}}
	AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol {
		p_4_0_0_0186423_i_reload {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0178414_i_reload {Type I LastRead 0 FirstWrite -1}
		and_ln897_i {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		p_4_0_0_0186422_lcssa445_i_out {Type O LastRead -1 FirstWrite 0}
		p_0_0_0_0178415_lcssa429_i_out {Type O LastRead -1 FirstWrite 0}}
	reg_unsigned_short_6 {
		d {Type I LastRead 1 FirstWrite -1}}
	reg_unsigned_short_6 {
		d {Type I LastRead 1 FirstWrite -1}}
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
		d {Type I LastRead 0 FirstWrite -1}}
	tpgForeground {
		bckgndYUV {Type I LastRead 1 FirstWrite -1}
		height_val {Type I LastRead 1 FirstWrite -1}
		width_val {Type I LastRead 1 FirstWrite -1}
		patternId_val {Type I LastRead 1 FirstWrite -1}
		maskId_val {Type I LastRead 1 FirstWrite -1}
		colorFormat_val {Type I LastRead 0 FirstWrite -1}
		crossHairX_val {Type I LastRead 1 FirstWrite -1}
		crossHairY_val {Type I LastRead 1 FirstWrite -1}
		boxSize_val {Type I LastRead 1 FirstWrite -1}
		boxColorR_val {Type I LastRead 1 FirstWrite -1}
		boxColorG_val {Type I LastRead 1 FirstWrite -1}
		boxColorB_val {Type I LastRead 1 FirstWrite -1}
		motionSpeed_val {Type I LastRead 1 FirstWrite -1}
		ovrlayYUV {Type O LastRead -1 FirstWrite 1}
		whiYuv_2 {Type I LastRead -1 FirstWrite -1}
		boxHCoord {Type IO LastRead -1 FirstWrite -1}
		boxVCoord {Type IO LastRead -1 FirstWrite -1}
		vDir {Type IO LastRead -1 FirstWrite -1}
		hDir {Type IO LastRead -1 FirstWrite -1}}
	tpgForeground_Pipeline_VITIS_LOOP_774_2 {
		colorFormat_val {Type I LastRead 0 FirstWrite -1}
		shl_ln {Type I LastRead 0 FirstWrite -1}
		maskId_val {Type I LastRead 0 FirstWrite -1}
		width_val {Type I LastRead 0 FirstWrite -1}
		select_ln1977 {Type I LastRead 0 FirstWrite -1}
		and_ln1989 {Type I LastRead 0 FirstWrite -1}
		and_ln1993 {Type I LastRead 0 FirstWrite -1}
		and_ln1991 {Type I LastRead 0 FirstWrite -1}
		ovrlayYUV {Type O LastRead -1 FirstWrite 1}
		bckgndYUV {Type I LastRead 1 FirstWrite -1}
		patternId_val {Type I LastRead 0 FirstWrite -1}
		boxSize_val {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		boxColorB_val {Type I LastRead 0 FirstWrite -1}
		boxColorG_val {Type I LastRead 0 FirstWrite -1}
		boxColorR_val {Type I LastRead 0 FirstWrite -1}
		pixOut_17 {Type I LastRead 0 FirstWrite -1}
		vMax {Type I LastRead 0 FirstWrite -1}
		zext_ln789 {Type I LastRead 0 FirstWrite -1}
		hMax {Type I LastRead 0 FirstWrite -1}
		zext_ln1977 {Type I LastRead 0 FirstWrite -1}
		icmp_ln1963 {Type I LastRead 0 FirstWrite -1}
		crossHairX_val {Type I LastRead 0 FirstWrite -1}
		whiYuv_2_load {Type I LastRead 0 FirstWrite -1}
		boxHCoord_loc_1_out {Type IO LastRead 1 FirstWrite 0}
		boxVCoord_loc_1_out {Type IO LastRead 1 FirstWrite 0}
		boxVCoord {Type O LastRead -1 FirstWrite 1}
		vDir {Type IO LastRead -1 FirstWrite -1}
		boxHCoord {Type O LastRead -1 FirstWrite 1}
		hDir {Type IO LastRead -1 FirstWrite -1}}
	MultiPixStream2AXIvideo {
		ovrlayYUV {Type I LastRead 2 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 2}
		height_val5 {Type I LastRead 0 FirstWrite -1}
		width_val10 {Type I LastRead 0 FirstWrite -1}
		colorFormat_val27 {Type I LastRead 0 FirstWrite -1}
		fid_in_val12 {Type I LastRead 0 FirstWrite -1}
		fid {Type O LastRead -1 FirstWrite 0}
		field_id_val11 {Type I LastRead 0 FirstWrite -1}
		fidStored {Type IO LastRead -1 FirstWrite -1}
		counter {Type IO LastRead -1 FirstWrite -1}}
	MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2 {
		counter_loc_0_i_i {Type I LastRead 0 FirstWrite -1}
		sof_i {Type I LastRead 0 FirstWrite -1}
		colorFormat_val27 {Type I LastRead 0 FirstWrite -1}
		lshr_ln_i {Type I LastRead 0 FirstWrite -1}
		ovrlayYUV {Type I LastRead 2 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 2}
		add_ln994_i {Type I LastRead 0 FirstWrite -1}
		counter_loc_1_i_i_out {Type O LastRead -1 FirstWrite 3}
		phi_ln1036_i_out {Type O LastRead -1 FirstWrite 2}
		counter {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "2148958187"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "2148958188"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_video_V_data_V { axis {  { s_axis_video_TDATA in_data 0 48 } } }
	s_axis_video_V_keep_V { axis {  { s_axis_video_TKEEP in_data 0 6 } } }
	s_axis_video_V_strb_V { axis {  { s_axis_video_TSTRB in_data 0 6 } } }
	s_axis_video_V_user_V { axis {  { s_axis_video_TUSER in_data 0 1 } } }
	s_axis_video_V_last_V { axis {  { s_axis_video_TLAST in_data 0 1 } } }
	s_axis_video_V_id_V { axis {  { s_axis_video_TID in_data 0 1 } } }
	s_axis_video_V_dest_V { axis {  { s_axis_video_TDEST in_data 0 1 }  { s_axis_video_TVALID in_vld 0 1 }  { s_axis_video_TREADY in_acc 1 1 } } }
	height_val5 { ap_none {  { height_val5 in_data 0 16 }  { height_val5_ap_vld in_vld 0 1 } } }
	width_val10 { ap_none {  { width_val10 in_data 0 16 }  { width_val10_ap_vld in_vld 0 1 } } }
	field_id_val11 { ap_none {  { field_id_val11 in_data 0 16 }  { field_id_val11_ap_vld in_vld 0 1 } } }
	fid_in_val12 { ap_stable {  { fid_in_val12 in_data 0 1 }  { fid_in_val12_ap_vld in_vld 0 1 } } }
	passthruStartX_val13 { ap_none {  { passthruStartX_val13 in_data 0 16 }  { passthruStartX_val13_ap_vld in_vld 0 1 } } }
	passthruStartY_val14 { ap_none {  { passthruStartY_val14 in_data 0 16 }  { passthruStartY_val14_ap_vld in_vld 0 1 } } }
	passthruEndX_val15 { ap_none {  { passthruEndX_val15 in_data 0 16 }  { passthruEndX_val15_ap_vld in_vld 0 1 } } }
	passthruEndY_val16 { ap_none {  { passthruEndY_val16 in_data 0 16 }  { passthruEndY_val16_ap_vld in_vld 0 1 } } }
	enableInput_val18 { ap_none {  { enableInput_val18 in_data 0 8 }  { enableInput_val18_ap_vld in_vld 0 1 } } }
	bckgndId_val19 { ap_none {  { bckgndId_val19 in_data 0 8 }  { bckgndId_val19_ap_vld in_vld 0 1 } } }
	ovrlayId_val20 { ap_none {  { ovrlayId_val20 in_data 0 8 }  { ovrlayId_val20_ap_vld in_vld 0 1 } } }
	maskId_val21 { ap_none {  { maskId_val21 in_data 0 8 }  { maskId_val21_ap_vld in_vld 0 1 } } }
	motionSpeed_val23 { ap_none {  { motionSpeed_val23 in_data 0 8 }  { motionSpeed_val23_ap_vld in_vld 0 1 } } }
	colorFormat_val27 { ap_none {  { colorFormat_val27 in_data 0 8 }  { colorFormat_val27_ap_vld in_vld 0 1 } } }
	crossHairX_val28 { ap_none {  { crossHairX_val28 in_data 0 16 }  { crossHairX_val28_ap_vld in_vld 0 1 } } }
	crossHairY_val29 { ap_none {  { crossHairY_val29 in_data 0 16 }  { crossHairY_val29_ap_vld in_vld 0 1 } } }
	ZplateHorContStart_val30 { ap_none {  { ZplateHorContStart_val30 in_data 0 16 }  { ZplateHorContStart_val30_ap_vld in_vld 0 1 } } }
	ZplateHorContDelta_val31 { ap_none {  { ZplateHorContDelta_val31 in_data 0 16 }  { ZplateHorContDelta_val31_ap_vld in_vld 0 1 } } }
	ZplateVerContStart_val32 { ap_none {  { ZplateVerContStart_val32 in_data 0 16 }  { ZplateVerContStart_val32_ap_vld in_vld 0 1 } } }
	ZplateVerContDelta_val33 { ap_none {  { ZplateVerContDelta_val33 in_data 0 16 }  { ZplateVerContDelta_val33_ap_vld in_vld 0 1 } } }
	boxSize_val34 { ap_none {  { boxSize_val34 in_data 0 16 }  { boxSize_val34_ap_vld in_vld 0 1 } } }
	boxColorR_val35 { ap_none {  { boxColorR_val35 in_data 0 8 }  { boxColorR_val35_ap_vld in_vld 0 1 } } }
	boxColorG_val36 { ap_none {  { boxColorG_val36 in_data 0 8 }  { boxColorG_val36_ap_vld in_vld 0 1 } } }
	boxColorB_val37 { ap_none {  { boxColorB_val37 in_data 0 8 }  { boxColorB_val37_ap_vld in_vld 0 1 } } }
	dpDynamicRange_val38 { ap_none {  { dpDynamicRange_val38 in_data 0 8 }  { dpDynamicRange_val38_ap_vld in_vld 0 1 } } }
	dpYUVCoef_val39 { ap_none {  { dpYUVCoef_val39 in_data 0 8 }  { dpYUVCoef_val39_ap_vld in_vld 0 1 } } }
	m_axis_video_V_data_V { axis {  { m_axis_video_TDATA out_data 1 48 } } }
	m_axis_video_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 6 } } }
	m_axis_video_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 6 } } }
	m_axis_video_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	m_axis_video_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	m_axis_video_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	m_axis_video_V_dest_V { axis {  { m_axis_video_TDEST out_data 1 1 }  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TREADY out_acc 0 1 } } }
	fid { ap_vld {  { fid out_data 1 1 }  { fid_ap_vld out_vld 1 1 } } }
	s { ap_none {  { s in_data 0 32 }  { s_ap_vld in_vld 0 1 } } }
}
