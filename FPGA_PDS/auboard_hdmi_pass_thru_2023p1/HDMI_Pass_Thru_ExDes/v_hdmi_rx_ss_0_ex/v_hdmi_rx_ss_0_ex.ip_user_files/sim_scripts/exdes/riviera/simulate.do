transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+exdes  -L xilinx_vip -L xpm -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_30 -L xil_defaultlib -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_18 -L floating_point_v7_0_20 -L xbip_dsp48_mult_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L div_gen_v5_1_19 -L v_tpg_v8_2_2 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_28 -L fifo_generator_v13_2_8 -L axi_data_fifo_v2_1_27 -L axi_crossbar_v2_1_29 -L hdmi_acr_ctrl_v1_0_1 -L axi_intc_v4_1_17 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L axi_uartlite_v2_0_32 -L lmb_bram_if_cntlr_v4_0_22 -L lmb_v10_v3_0_12 -L axi_iic_v2_1_4 -L blk_mem_gen_v8_4_6 -L microblaze_v11_0_11 -L mdm_v3_2_24 -L proc_sys_reset_v5_0_13 -L xlconcat_v2_1_4 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_28 -L v_hdmi_rx_v3_0_2 -L v_vid_in_axi4s_v5_0_2 -L util_vector_logic_v2_0_2 -L v_hdmi_tx_v3_0_2 -L v_tc_v6_2_6 -L v_tc_v6_1_13 -L v_vid_in_axi4s_v4_0_9 -L v_axi4s_vid_out_v4_0_16 -L xlconstant_v1_1_7 -L gtwizard_ultrascale_v1_7_16 -L vid_phy_controller_v2_2_16 -L axi_clock_converter_v2_1_27 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.exdes xil_defaultlib.glbl

do {exdes.udo}

run 1000ns

endsim

quit -force
