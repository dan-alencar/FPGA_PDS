set moduleName v_tpg
set isTopModule 1
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
set C_modelName {v_tpg}
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
	{ height int 16 regular {axi_slave 0 stable }  }
	{ width int 16 regular {axi_slave 0 stable }  }
	{ field_id int 16 regular {axi_slave 0 stable }  }
	{ fid_in int 1 regular {pointer 0 stable }  }
	{ passthruStartX int 16 regular {axi_slave 0 stable }  }
	{ passthruStartY int 16 regular {axi_slave 0 stable }  }
	{ passthruEndX int 16 regular {axi_slave 0 stable }  }
	{ passthruEndY int 16 regular {axi_slave 0 stable }  }
	{ enableInput int 8 regular {axi_slave 0 stable }  }
	{ bckgndId int 8 regular {axi_slave 0 stable }  }
	{ ovrlayId int 8 regular {axi_slave 0 stable }  }
	{ maskId int 8 regular {axi_slave 0 stable }  }
	{ motionSpeed int 8 regular {axi_slave 0 stable }  }
	{ colorFormat int 8 regular {axi_slave 0 stable }  }
	{ crossHairX int 16 regular {axi_slave 0 stable }  }
	{ crossHairY int 16 regular {axi_slave 0 stable }  }
	{ ZplateHorContStart int 16 regular {axi_slave 0 stable }  }
	{ ZplateHorContDelta int 16 regular {axi_slave 0 stable }  }
	{ ZplateVerContStart int 16 regular {axi_slave 0 stable }  }
	{ ZplateVerContDelta int 16 regular {axi_slave 0 stable }  }
	{ boxSize int 16 regular {axi_slave 0 stable }  }
	{ boxColorR int 16 regular {axi_slave 0 stable }  }
	{ boxColorG int 16 regular {axi_slave 0 stable }  }
	{ boxColorB int 16 regular {axi_slave 0 stable }  }
	{ dpDynamicRange int 8 regular {axi_slave 0 stable }  }
	{ dpYUVCoef int 8 regular {axi_slave 0 stable }  }
	{ bck_motion_en int 16 regular {axi_slave 0 stable }  }
	{ m_axis_video_V_data_V int 48 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ m_axis_video_V_keep_V int 6 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ m_axis_video_V_strb_V int 6 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ m_axis_video_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ m_axis_video_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ m_axis_video_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ m_axis_video_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
	{ fid int 1 regular {pointer 1}  }
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
 	{ "Name" : "height", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "width", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "field_id", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":215}} , 
 	{ "Name" : "fid_in", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "passthruStartX", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":167}} , 
 	{ "Name" : "passthruStartY", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":168}, "offset_end" : {"in":175}} , 
 	{ "Name" : "passthruEndX", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":176}, "offset_end" : {"in":183}} , 
 	{ "Name" : "passthruEndY", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":184}, "offset_end" : {"in":191}} , 
 	{ "Name" : "enableInput", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":152}, "offset_end" : {"in":159}} , 
 	{ "Name" : "bckgndId", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "ovrlayId", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "maskId", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "motionSpeed", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "colorFormat", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "crossHairX", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "crossHairY", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "ZplateHorContStart", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "ZplateHorContDelta", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "ZplateVerContStart", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "ZplateVerContDelta", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "boxSize", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "boxColorR", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "boxColorG", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "boxColorB", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "dpDynamicRange", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":199}} , 
 	{ "Name" : "dpYUVCoef", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":200}, "offset_end" : {"in":207}} , 
 	{ "Name" : "bck_motion_en", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":216}, "offset_end" : {"in":223}} , 
 	{ "Name" : "m_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_video_TDATA sc_in sc_lv 48 signal 0 } 
	{ s_axis_video_TVALID sc_in sc_logic 1 invld 6 } 
	{ s_axis_video_TREADY sc_out sc_logic 1 inacc 6 } 
	{ s_axis_video_TKEEP sc_in sc_lv 6 signal 1 } 
	{ s_axis_video_TSTRB sc_in sc_lv 6 signal 2 } 
	{ s_axis_video_TUSER sc_in sc_lv 1 signal 3 } 
	{ s_axis_video_TLAST sc_in sc_lv 1 signal 4 } 
	{ s_axis_video_TID sc_in sc_lv 1 signal 5 } 
	{ s_axis_video_TDEST sc_in sc_lv 1 signal 6 } 
	{ fid_in sc_in sc_lv 1 signal 10 } 
	{ m_axis_video_TDATA sc_out sc_lv 48 signal 34 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 40 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 40 } 
	{ m_axis_video_TKEEP sc_out sc_lv 6 signal 35 } 
	{ m_axis_video_TSTRB sc_out sc_lv 6 signal 36 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 37 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 38 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 39 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 40 } 
	{ fid sc_out sc_lv 1 signal 41 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"v_tpg","role":"start","value":"0","valid_bit":"0"},{"name":"v_tpg","role":"continue","value":"0","valid_bit":"4"},{"name":"v_tpg","role":"auto_start","value":"0","valid_bit":"7"},{"name":"height","role":"data","value":"16"},{"name":"width","role":"data","value":"24"},{"name":"bckgndId","role":"data","value":"32"},{"name":"ovrlayId","role":"data","value":"40"},{"name":"maskId","role":"data","value":"48"},{"name":"motionSpeed","role":"data","value":"56"},{"name":"colorFormat","role":"data","value":"64"},{"name":"crossHairX","role":"data","value":"72"},{"name":"crossHairY","role":"data","value":"80"},{"name":"ZplateHorContStart","role":"data","value":"88"},{"name":"ZplateHorContDelta","role":"data","value":"96"},{"name":"ZplateVerContStart","role":"data","value":"104"},{"name":"ZplateVerContDelta","role":"data","value":"112"},{"name":"boxSize","role":"data","value":"120"},{"name":"boxColorR","role":"data","value":"128"},{"name":"boxColorG","role":"data","value":"136"},{"name":"boxColorB","role":"data","value":"144"},{"name":"enableInput","role":"data","value":"152"},{"name":"passthruStartX","role":"data","value":"160"},{"name":"passthruStartY","role":"data","value":"168"},{"name":"passthruEndX","role":"data","value":"176"},{"name":"passthruEndY","role":"data","value":"184"},{"name":"dpDynamicRange","role":"data","value":"192"},{"name":"dpYUVCoef","role":"data","value":"200"},{"name":"field_id","role":"data","value":"208"},{"name":"bck_motion_en","role":"data","value":"216"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"v_tpg","role":"start","value":"0","valid_bit":"0"},{"name":"v_tpg","role":"done","value":"0","valid_bit":"1"},{"name":"v_tpg","role":"idle","value":"0","valid_bit":"2"},{"name":"v_tpg","role":"ready","value":"0","valid_bit":"3"},{"name":"v_tpg","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_video_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "s_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "s_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "s_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "fid_in", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fid_in", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "fid", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fid", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	v_tpg {
		s_axis_video_V_data_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 1 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 1 FirstWrite -1}
		height {Type I LastRead 2 FirstWrite -1}
		width {Type I LastRead 2 FirstWrite -1}
		field_id {Type I LastRead 2 FirstWrite -1}
		fid_in {Type I LastRead 2 FirstWrite -1}
		passthruStartX {Type I LastRead 2 FirstWrite -1}
		passthruStartY {Type I LastRead 2 FirstWrite -1}
		passthruEndX {Type I LastRead 2 FirstWrite -1}
		passthruEndY {Type I LastRead 2 FirstWrite -1}
		enableInput {Type I LastRead 2 FirstWrite -1}
		bckgndId {Type I LastRead 2 FirstWrite -1}
		ovrlayId {Type I LastRead 2 FirstWrite -1}
		maskId {Type I LastRead 2 FirstWrite -1}
		motionSpeed {Type I LastRead 2 FirstWrite -1}
		colorFormat {Type I LastRead 2 FirstWrite -1}
		crossHairX {Type I LastRead 2 FirstWrite -1}
		crossHairY {Type I LastRead 2 FirstWrite -1}
		ZplateHorContStart {Type I LastRead 2 FirstWrite -1}
		ZplateHorContDelta {Type I LastRead 2 FirstWrite -1}
		ZplateVerContStart {Type I LastRead 2 FirstWrite -1}
		ZplateVerContDelta {Type I LastRead 2 FirstWrite -1}
		boxSize {Type I LastRead 2 FirstWrite -1}
		boxColorR {Type I LastRead 2 FirstWrite -1}
		boxColorG {Type I LastRead 2 FirstWrite -1}
		boxColorB {Type I LastRead 2 FirstWrite -1}
		dpDynamicRange {Type I LastRead 2 FirstWrite -1}
		dpYUVCoef {Type I LastRead 2 FirstWrite -1}
		bck_motion_en {Type I LastRead 0 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 2}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 2}
		fid {Type O LastRead -1 FirstWrite 0}
		count {Type IO LastRead -1 FirstWrite -1}
		s {Type IO LastRead -1 FirstWrite -1}
		rampStart {Type IO LastRead -1 FirstWrite -1}
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
		counter {Type O LastRead -1 FirstWrite 1}}
	reg_unsigned_short_s {
		d {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26", "Max" : "2148958191"}
	, {"Name" : "Interval", "Min" : "27", "Max" : "2148958192"}
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
	s_axis_video_V_dest_V { axis {  { s_axis_video_TVALID in_vld 0 1 }  { s_axis_video_TREADY in_acc 1 1 }  { s_axis_video_TDEST in_data 0 1 } } }
	fid_in { ap_none {  { fid_in in_data 0 1 } } }
	m_axis_video_V_data_V { axis {  { m_axis_video_TDATA out_data 1 48 } } }
	m_axis_video_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 6 } } }
	m_axis_video_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 6 } } }
	m_axis_video_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	m_axis_video_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	m_axis_video_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	m_axis_video_V_dest_V { axis {  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TREADY out_acc 0 1 }  { m_axis_video_TDEST out_data 1 1 } } }
	fid { ap_none {  { fid out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
