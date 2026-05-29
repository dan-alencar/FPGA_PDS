transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {}
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/v_hdmi_rx_v3_0_2
vlib activehdl/xil_defaultlib
vlib activehdl/v_vid_in_axi4s_v5_0_2

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l v_hdmi_rx_v3_0_2 -l xil_defaultlib -l v_vid_in_axi4s_v5_0_2 \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l v_hdmi_rx_v3_0_2 -l xil_defaultlib -l v_vid_in_axi4s_v5_0_2 \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work v_hdmi_rx_v3_0_2  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l v_hdmi_rx_v3_0_2 -l xil_defaultlib -l v_vid_in_axi4s_v5_0_2 \
"../../../ipstatic/hdl/v_hdmi_rx_v3_0_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l v_hdmi_rx_v3_0_2 -l xil_defaultlib -l v_vid_in_axi4s_v5_0_2 \
"../../../../project_1.gen/sources_1/ip/v_hdmi_rx_ss_0/bd_0/ip/ip_0/sim/bd_2422_0_v_hdmi_rx_0.sv" \

vlog -work v_vid_in_axi4s_v5_0_2  -v2k5 "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l v_hdmi_rx_v3_0_2 -l xil_defaultlib -l v_vid_in_axi4s_v5_0_2 \
"../../../ipstatic/hdl/v_vid_in_axi4s_v5_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l v_hdmi_rx_v3_0_2 -l xil_defaultlib -l v_vid_in_axi4s_v5_0_2 \
"../../../../project_1.gen/sources_1/ip/v_hdmi_rx_ss_0/bd_0/ip/ip_1/sim/bd_2422_0_v_vid_in_axi4s_0.v" \
"../../../../project_1.gen/sources_1/ip/v_hdmi_rx_ss_0/bd_0/sim/bd_2422_0.v" \
"../../../../project_1.gen/sources_1/ip/v_hdmi_rx_ss_0/sim/v_hdmi_rx_ss_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

