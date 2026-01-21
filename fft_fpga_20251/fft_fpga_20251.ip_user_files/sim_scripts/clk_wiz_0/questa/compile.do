vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

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

vlog -work xpm -64 -incr -mfcu  -sv -L vid_phy_controller_v2_2_22 "+incdir+../../../ipstatic" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"/home/dan-alencar/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/home/dan-alencar/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" \
"../../../../fft_fpga_20251.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../../fft_fpga_20251.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

