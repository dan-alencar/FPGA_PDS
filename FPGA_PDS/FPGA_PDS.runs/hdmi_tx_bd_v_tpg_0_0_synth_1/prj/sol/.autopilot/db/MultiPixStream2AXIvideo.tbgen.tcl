set moduleName MultiPixStream2AXIvideo
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
set C_modelName {MultiPixStream2AXIvideo}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ ovrlayYUV int 48 regular {fifo 0 volatile }  }
	{ m_axis_video_V_data_V int 48 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ m_axis_video_V_keep_V int 6 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ m_axis_video_V_strb_V int 6 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ m_axis_video_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ m_axis_video_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ m_axis_video_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ m_axis_video_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
	{ height_val5 int 11 regular {ap_stable 0} }
	{ width_val10 int 11 regular {ap_stable 0} }
	{ colorFormat_val27 int 8 regular {ap_stable 0} }
	{ fid_in_val12 int 1 regular {ap_stable 0} }
	{ fid int 1 regular {pointer 1}  }
	{ field_id_val11 int 16 regular {ap_stable 0} }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ovrlayYUV", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_val5", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "width_val10", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "colorFormat_val27", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "fid_in_val12", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "fid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "field_id_val11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ovrlayYUV_dout sc_in sc_lv 48 signal 0 } 
	{ ovrlayYUV_empty_n sc_in sc_logic 1 signal 0 } 
	{ ovrlayYUV_read sc_out sc_logic 1 signal 0 } 
	{ ovrlayYUV_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ ovrlayYUV_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ m_axis_video_TDATA sc_out sc_lv 48 signal 1 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 7 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 7 } 
	{ m_axis_video_TKEEP sc_out sc_lv 6 signal 2 } 
	{ m_axis_video_TSTRB sc_out sc_lv 6 signal 3 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 4 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 5 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 6 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 7 } 
	{ height_val5 sc_in sc_lv 11 signal 8 } 
	{ width_val10 sc_in sc_lv 11 signal 9 } 
	{ colorFormat_val27 sc_in sc_lv 8 signal 10 } 
	{ fid_in_val12 sc_in sc_lv 1 signal 11 } 
	{ fid sc_out sc_lv 1 signal 12 } 
	{ fid_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ field_id_val11 sc_in sc_lv 16 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ovrlayYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "dout" }} , 
 	{ "name": "ovrlayYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "empty_n" }} , 
 	{ "name": "ovrlayYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "read" }} , 
 	{ "name": "ovrlayYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "num_data_valid" }} , 
 	{ "name": "ovrlayYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ovrlayYUV", "role": "fifo_cap" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "height_val5", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height_val5", "role": "default" }} , 
 	{ "name": "width_val10", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width_val10", "role": "default" }} , 
 	{ "name": "colorFormat_val27", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "colorFormat_val27", "role": "default" }} , 
 	{ "name": "fid_in_val12", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fid_in_val12", "role": "default" }} , 
 	{ "name": "fid", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fid", "role": "default" }} , 
 	{ "name": "fid_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fid", "role": "ap_vld" }} , 
 	{ "name": "field_id_val11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "field_id_val11", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "1", "Max" : "1043281"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1043281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ovrlayYUV { ap_fifo {  { ovrlayYUV_dout fifo_data_out 0 48 }  { ovrlayYUV_empty_n fifo_status_empty 0 1 }  { ovrlayYUV_read fifo_data_in 1 1 }  { ovrlayYUV_num_data_valid fifo_update 0 5 }  { ovrlayYUV_fifo_cap fifo_data 0 5 } } }
	m_axis_video_V_data_V { axis {  { m_axis_video_TDATA out_data 1 48 } } }
	m_axis_video_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 6 } } }
	m_axis_video_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 6 } } }
	m_axis_video_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	m_axis_video_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	m_axis_video_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	m_axis_video_V_dest_V { axis {  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TREADY out_acc 0 1 }  { m_axis_video_TDEST out_data 1 1 } } }
	height_val5 { ap_stable {  { height_val5 in_data 0 11 } } }
	width_val10 { ap_stable {  { width_val10 in_data 0 11 } } }
	colorFormat_val27 { ap_stable {  { colorFormat_val27 in_data 0 8 } } }
	fid_in_val12 { ap_stable {  { fid_in_val12 in_data 0 1 } } }
	fid { ap_vld {  { fid out_data 1 1 }  { fid_ap_vld out_vld 1 1 } } }
	field_id_val11 { ap_stable {  { field_id_val11 in_data 0 16 } } }
}
