vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/v_hdmi_rx_v3_0_2
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/v_vid_in_axi4s_v5_0_2

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap v_hdmi_rx_v3_0_2 questa_lib/msim/v_hdmi_rx_v3_0_2
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap v_vid_in_axi4s_v5_0_2 questa_lib/msim/v_vid_in_axi4s_v5_0_2

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L v_hdmi_rx_v3_0_2 "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L v_hdmi_rx_v3_0_2 "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work v_hdmi_rx_v3_0_2 -64 -incr -mfcu  -sv -L v_hdmi_rx_v3_0_2 "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/v_hdmi_rx_v3_0_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L v_hdmi_rx_v3_0_2 "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/ip/v_hdmi_rx_ss_0/bd_0/ip/ip_0/sim/bd_2422_0_v_hdmi_rx_0.sv" \

vlog -work v_vid_in_axi4s_v5_0_2 -64 -incr -mfcu  "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/v_vid_in_axi4s_v5_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+/tools/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/ip/v_hdmi_rx_ss_0/bd_0/ip/ip_1/sim/bd_2422_0_v_vid_in_axi4s_0.v" \
"../../../../project_1.gen/sources_1/ip/v_hdmi_rx_ss_0/bd_0/sim/bd_2422_0.v" \
"../../../../project_1.gen/sources_1/ip/v_hdmi_rx_ss_0/sim/v_hdmi_rx_ss_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

