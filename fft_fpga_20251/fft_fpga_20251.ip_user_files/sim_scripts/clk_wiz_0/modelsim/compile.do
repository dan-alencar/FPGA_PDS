vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L vid_phy_controller_v2_2_20 "+incdir+/home/danilo-alencar/AMD/2025.1/Vivado/data/xilinx_vip/include" \
"/home/danilo-alencar/AMD/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/danilo-alencar/AMD/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/danilo-alencar/AMD/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/danilo-alencar/AMD/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/danilo-alencar/AMD/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/danilo-alencar/AMD/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/danilo-alencar/AMD/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/danilo-alencar/AMD/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/danilo-alencar/AMD/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L vid_phy_controller_v2_2_20 "+incdir+../../../ipstatic" "+incdir+../../../../../../../../AMD/2025.1/data/rsb/busdef" "+incdir+/home/danilo-alencar/AMD/2025.1/Vivado/data/xilinx_vip/include" \
"/home/danilo-alencar/AMD/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/home/danilo-alencar/AMD/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../ipstatic" "+incdir+../../../../../../../../AMD/2025.1/data/rsb/busdef" "+incdir+/home/danilo-alencar/AMD/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../fft_fpga_20251.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../../fft_fpga_20251.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

