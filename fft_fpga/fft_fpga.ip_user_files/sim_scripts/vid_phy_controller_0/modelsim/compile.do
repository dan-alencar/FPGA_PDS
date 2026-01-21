vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/gtwizard_ultrascale_v1_7_22
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/vid_phy_controller_v2_2_22

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap gtwizard_ultrascale_v1_7_22 modelsim_lib/msim/gtwizard_ultrascale_v1_7_22
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap vid_phy_controller_v2_2_22 modelsim_lib/msim/vid_phy_controller_v2_2_22

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L vid_phy_controller_v2_2_22 "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L vid_phy_controller_v2_2_22 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"/home/dan-alencar/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/home/dan-alencar/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work gtwizard_ultrascale_v1_7_22 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/ip_0/sim/gtwizard_ultrascale_v1_7_gthe4_channel.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/ip_0/sim/vid_phy_controller_0_gtwrapper_gthe4_channel_wrapper.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/ip_0/sim/vid_phy_controller_0_gtwrapper_gtwizard_gthe4.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/ip_0/sim/vid_phy_controller_0_gtwrapper_gtwizard_top.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/ip_0/sim/vid_phy_controller_0_gtwrapper.v" \

vcom -work vid_phy_controller_v2_2_22 -64 -93  \
"../../../ipstatic/hdl/src/vhd/nidru_20_v_7.vhd" \
"../../../ipstatic/hdl/src/vhd/bs_flex_v_2.vhd" \
"../../../ipstatic/hdl/src/vhd/nidru_20_wrapper.vhd" \

vlog -work vid_phy_controller_v2_2_22 -64 -incr -mfcu  -sv -L vid_phy_controller_v2_2_22 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_lib.sv" \

vlog -work vid_phy_controller_v2_2_22 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_sync_block.v" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_sync_pulse.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_gtxe2_hdmi_txaln.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_gtxe2_hdmi_xcvr.v" \

vlog -work vid_phy_controller_v2_2_22 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_cpll_railing.v" \

vlog -work vid_phy_controller_v2_2_22 -64 -incr -mfcu  -sv -L vid_phy_controller_v2_2_22 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_datawidth_conv.sv" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_gt_tx_tmdsclk_patgen.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L vid_phy_controller_v2_2_22 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_clkdet.sv" \

vlog -work vid_phy_controller_v2_2_22 -64 -incr -mfcu  -sv -L vid_phy_controller_v2_2_22 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_dru.sv" \

vlog -work vid_phy_controller_v2_2_22 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_axi4lite.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_128_to_64_conv.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_64_to_128_conv.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_gt_usrclk_source.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_gt_usrclk_source_8series.v" \

vlog -work vid_phy_controller_v2_2_22 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_drp_control.v" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_drp_control_8series.v" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_drp_control_hdmi.v" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_interrupts.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_CLOCK_MODULE.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_CLOCK_MODULE_8series.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_plle2_drp.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_mmcme2_drp.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_mmcme3_drp.v" \

vlog -work vid_phy_controller_v2_2_22 -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/src/verilog/vid_phy_controller_v2_2_gtp_common.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_gthe4_common.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/hdl/src/verilog/vid_phy_controller_0_gtwrapper_gthe4_common_wrapper.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/synth/vid_phy_controller_0_top.v" \
"../../../../fft_fpga.gen/sources_1/ip/vid_phy_controller_0/sim/vid_phy_controller_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

