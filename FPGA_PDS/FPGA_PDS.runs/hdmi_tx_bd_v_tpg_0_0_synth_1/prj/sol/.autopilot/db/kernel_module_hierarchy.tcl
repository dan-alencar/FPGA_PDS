set ModuleHierarchy {[{
"Name" : "v_tpg", "RefName" : "v_tpg","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_v_tpgHlsDataFlow_fu_525", "RefName" : "v_tpgHlsDataFlow","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "AXIvideo2MultiPixStream_U0", "RefName" : "AXIvideo2MultiPixStream","ID" : "2","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_158", "RefName" : "AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_wait_for_start","RefName" : "loop_wait_for_start","ID" : "4","Type" : "pipeline"},]},
			{"Name" : "grp_reg_unsigned_short_6_fu_230", "RefName" : "reg_unsigned_short_6","ID" : "5","Type" : "pipeline"},
			{"Name" : "grp_reg_unsigned_short_6_fu_236", "RefName" : "reg_unsigned_short_6","ID" : "6","Type" : "pipeline"},],
			"SubLoops" : [
			{"Name" : "loop_height","RefName" : "loop_height","ID" : "7","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_178", "RefName" : "AXIvideo2MultiPixStream_Pipeline_loop_width","ID" : "8","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_width","RefName" : "loop_width","ID" : "9","Type" : "pipeline"},]},
			{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_207", "RefName" : "AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol","ID" : "10","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_wait_for_eol","RefName" : "loop_wait_for_eol","ID" : "11","Type" : "pipeline"},]},]},]},
		{"Name" : "tpgBackground_U0", "RefName" : "tpgBackground","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_563_1","RefName" : "VITIS_LOOP_563_1","ID" : "13","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_tpgBackground_Pipeline_VITIS_LOOP_565_2_fu_621", "RefName" : "tpgBackground_Pipeline_VITIS_LOOP_565_2","ID" : "14","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_565_2","RefName" : "VITIS_LOOP_565_2","ID" : "15","Type" : "pipeline",
					"SubInsts" : [
					{"Name" : "grp_reg_ap_uint_10_s_fu_2671", "RefName" : "reg_ap_uint_10_s","ID" : "16","Type" : "pipeline"},
					{"Name" : "grp_reg_int_s_fu_3062", "RefName" : "reg_int_s","ID" : "17","Type" : "pipeline"},]},]},]},]},
		{"Name" : "tpgForeground_U0", "RefName" : "tpgForeground","ID" : "18","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_772_1","RefName" : "VITIS_LOOP_772_1","ID" : "19","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_tpgForeground_Pipeline_VITIS_LOOP_774_2_fu_201", "RefName" : "tpgForeground_Pipeline_VITIS_LOOP_774_2","ID" : "20","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_774_2","RefName" : "VITIS_LOOP_774_2","ID" : "21","Type" : "pipeline"},]},]},]},
		{"Name" : "MultiPixStream2AXIvideo_U0", "RefName" : "MultiPixStream2AXIvideo","ID" : "22","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_979_1","RefName" : "VITIS_LOOP_979_1","ID" : "23","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2_fu_169", "RefName" : "MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2","ID" : "24","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_981_2","RefName" : "VITIS_LOOP_981_2","ID" : "25","Type" : "pipeline"},]},]},]},]},
	{"Name" : "grp_reg_unsigned_short_s_fu_760", "RefName" : "reg_unsigned_short_s","ID" : "26","Type" : "pipeline"},]
}]}