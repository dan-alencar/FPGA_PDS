set ModuleHierarchy {[{
"Name" : "v_tpg","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_v_tpgHlsDataFlow_fu_287","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "AXIvideo2MultiPixStream_U0","ID" : "2","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_183","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_wait_for_start","ID" : "4","Type" : "pipeline"},]},
			{"Name" : "grp_reg_unsigned_short_s_fu_258","ID" : "5","Type" : "pipeline"},
			{"Name" : "grp_reg_unsigned_short_s_fu_264","ID" : "6","Type" : "pipeline"},],
			"SubLoops" : [
			{"Name" : "loop_height","ID" : "7","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_203","ID" : "8","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_width","ID" : "9","Type" : "pipeline"},]},
			{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_232","ID" : "10","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_wait_for_eol","ID" : "11","Type" : "pipeline"},]},]},]},
		{"Name" : "tpgBackground_U0","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_518_1","ID" : "13","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_292","ID" : "14","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_520_2","ID" : "15","Type" : "pipeline",
					"SubInsts" : [
					{"Name" : "grp_reg_ap_uint_10_s_fu_2104","ID" : "16","Type" : "pipeline"},]},]},]},]},
		{"Name" : "MultiPixStream2AXIvideo_U0","ID" : "17","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_934_1","ID" : "18","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_936_2_fu_157","ID" : "19","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_936_2","ID" : "20","Type" : "pipeline"},]},]},]},]},
	{"Name" : "grp_reg_unsigned_short_s_fu_421","ID" : "21","Type" : "pipeline"},]
}]}