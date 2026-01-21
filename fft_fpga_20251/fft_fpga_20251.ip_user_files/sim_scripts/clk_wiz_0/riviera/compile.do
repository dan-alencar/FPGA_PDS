transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr -l vid_phy_controller_v2_2_22 "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/dan-alencar/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l vid_phy_controller_v2_2_22 "+incdir+../../../ipstatic" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"/home/dan-alencar/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"/home/dan-alencar/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../../../../../../2025.2/data/rsb/busdef" "+incdir+/home/dan-alencar/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib \
"../../../../fft_fpga_20251.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../../fft_fpga_20251.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

