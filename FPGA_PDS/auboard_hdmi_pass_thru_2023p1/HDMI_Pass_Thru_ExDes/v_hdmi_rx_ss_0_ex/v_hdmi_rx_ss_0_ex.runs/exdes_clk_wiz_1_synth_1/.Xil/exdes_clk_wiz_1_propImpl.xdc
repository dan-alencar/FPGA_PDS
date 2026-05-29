set_property SRC_FILE_INFO {cfile:/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ip/exdes_clk_wiz_1/exdes_clk_wiz_1.xdc rfile:../../../v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ip/exdes_clk_wiz_1/exdes_clk_wiz_1.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.033
