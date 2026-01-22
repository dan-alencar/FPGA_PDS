onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xilinx_vip -L xpm -L v_hdmi_tx_v3_0_6 -L axi_lite_ipif_v3_0_4 -L v_tc_v6_2_11 -L v_tc_v6_1_14 -L v_vid_in_axi4s_v4_0_11 -L v_axi4s_vid_out_v4_0_20 -L proc_sys_reset_v5_0_17 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_36 -L axi_vip_v1_1_22 -L xbip_utils_v3_0_15 -L axi_utils_v2_0_11 -L xbip_pipe_v3_0_11 -L xbip_dsp48_wrapper_v3_0_7 -L mult_gen_v12_0_24 -L floating_point_v7_0_26 -L div_gen_v5_1_25 -L v_tpg_v8_2_8 -L interrupt_control_v3_1_5 -L axi_iic_v2_1_11 -L gtwizard_ultrascale_v1_7_22 -L vid_phy_controller_v2_2_22 -L xlconstant_v1_1_10 -L microblaze_v11_0_16 -L lmb_v10_v3_0_16 -L lmb_bram_if_cntlr_v4_0_27 -L blk_mem_gen_v8_4_12 -L axi_intc_v4_1_22 -L mdm_v3_2_29 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.hdmi_tx_bd xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {hdmi_tx_bd.udo}

run 1000ns

quit -force
