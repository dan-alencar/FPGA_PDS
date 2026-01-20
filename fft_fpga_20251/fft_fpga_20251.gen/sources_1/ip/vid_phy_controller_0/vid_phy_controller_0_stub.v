// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Jan 20 17:42:34 2026
// Host        : dan-alencar running 64-bit Linux Mint 22.2
// Command     : write_verilog -force -mode synth_stub
//               /home/dan-alencar/Documents/GitHub/FPGA_PDS/fft_fpga_20251/fft_fpga_20251.gen/sources_1/ip/vid_phy_controller_0/vid_phy_controller_0_stub.v
// Design      : vid_phy_controller_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcau15p-ffvb676-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "vid_phy_controller_0,vid_phy_controller_0_top,{}" *) (* CORE_GENERATION_INFO = "vid_phy_controller_0,vid_phy_controller_0_top,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=vid_phy_controller,x_ipVersion=2.2,x_ipCoreRevision=22,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_COMPONENT_NAME=vid_phy_controller_0,C_FAMILY=kintexuplus,C_DEVICE=xcau15p,C_SILICON_REVISION=0,C_SPEEDGRADE=-2,C_SupportLevel=1,C_TransceiverControl=false,c_sub_core_name=vid_phy_controller_0_gtwrapper,C_Tx_Protocol=1,C_Tx_Dp_Protocol=0,C_Rx_Protocol=3,C_Rx_Dp_Protocol=0,C_Tx_No_Of_Channels=3,C_Rx_No_Of_Channels=3,C_TX_PLL_SELECTION=6,C_TX_REFCLK_SEL=0,C_RX_PLL_SELECTION=0,C_RX_REFCLK_SEL=1,C_NIDRU_REFCLK_SEL=0,C_vid_phy_tx_axi4s_ch_TDATA_WIDTH=40,C_vid_phy_tx_axi4s_ch_INT_TDATA_WIDTH=40,C_vid_phy_tx_axi4s_ch_TUSER_WIDTH=1,C_vid_phy_rx_axi4s_ch_TDATA_WIDTH=40,C_vid_phy_rx_axi4s_ch_INT_TDATA_WIDTH=40,C_vid_phy_rx_axi4s_ch_TUSER_WIDTH=1,C_vid_phy_control_sb_tx_TDATA_WIDTH=1,C_vid_phy_status_sb_tx_TDATA_WIDTH=8,C_vid_phy_control_sb_rx_TDATA_WIDTH=1,C_vid_phy_status_sb_rx_TDATA_WIDTH=1,C_vid_phy_axi4lite_DATA_WIDTH=32,C_vid_phy_axi4lite_ADDR_WIDTH=10,C_NIDRU=0,Tx_Buffer_Bypass=1,C_Txrefclk_Rdy_Invert=0,C_INPUT_PIXELS_PER_CLOCK=4,C_Hdmi_Fast_Switch=1,C_Err_Irq_En=0,C_Use_GT_CH4_HDMI=0,C_INT_WIDTH=0,C_TX_TDATA_WIDTH=40,C_RX_TDATA_WIDTH=40}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "vid_phy_controller_0_top,Vivado 2025.2" *) 
module vid_phy_controller_0(tx_refclk_rdy, tx_tmds_clk, tx_video_clk, 
  tx_tmds_clk_p, tx_tmds_clk_n, mgtrefclk0_pad_p_in, mgtrefclk0_pad_n_in, phy_txn_out, 
  phy_txp_out, txoutclk, vid_phy_tx_axi4s_aclk, vid_phy_tx_axi4s_aresetn, 
  vid_phy_tx_axi4s_ch0_tdata, vid_phy_tx_axi4s_ch0_tuser, vid_phy_tx_axi4s_ch0_tvalid, 
  vid_phy_tx_axi4s_ch0_tready, vid_phy_tx_axi4s_ch1_tdata, vid_phy_tx_axi4s_ch1_tuser, 
  vid_phy_tx_axi4s_ch1_tvalid, vid_phy_tx_axi4s_ch1_tready, vid_phy_tx_axi4s_ch2_tdata, 
  vid_phy_tx_axi4s_ch2_tuser, vid_phy_tx_axi4s_ch2_tvalid, vid_phy_tx_axi4s_ch2_tready, 
  irq, vid_phy_sb_aclk, vid_phy_sb_aresetn, vid_phy_status_sb_tx_tdata, 
  vid_phy_status_sb_tx_tvalid, vid_phy_status_sb_tx_tready, vid_phy_axi4lite_awaddr, 
  vid_phy_axi4lite_awprot, vid_phy_axi4lite_awvalid, vid_phy_axi4lite_awready, 
  vid_phy_axi4lite_wdata, vid_phy_axi4lite_wstrb, vid_phy_axi4lite_wvalid, 
  vid_phy_axi4lite_wready, vid_phy_axi4lite_bresp, vid_phy_axi4lite_bvalid, 
  vid_phy_axi4lite_bready, vid_phy_axi4lite_araddr, vid_phy_axi4lite_arprot, 
  vid_phy_axi4lite_arvalid, vid_phy_axi4lite_arready, vid_phy_axi4lite_rdata, 
  vid_phy_axi4lite_rresp, vid_phy_axi4lite_rvalid, vid_phy_axi4lite_rready, 
  vid_phy_axi4lite_aclk, vid_phy_axi4lite_aresetn, drpclk)
/* synthesis syn_black_box black_box_pad_pin="tx_refclk_rdy,tx_tmds_clk_p,tx_tmds_clk_n,mgtrefclk0_pad_p_in,mgtrefclk0_pad_n_in,phy_txn_out[2:0],phy_txp_out[2:0],vid_phy_tx_axi4s_aclk,vid_phy_tx_axi4s_aresetn,vid_phy_tx_axi4s_ch0_tdata[39:0],vid_phy_tx_axi4s_ch0_tuser[0:0],vid_phy_tx_axi4s_ch0_tvalid,vid_phy_tx_axi4s_ch0_tready,vid_phy_tx_axi4s_ch1_tdata[39:0],vid_phy_tx_axi4s_ch1_tuser[0:0],vid_phy_tx_axi4s_ch1_tvalid,vid_phy_tx_axi4s_ch1_tready,vid_phy_tx_axi4s_ch2_tdata[39:0],vid_phy_tx_axi4s_ch2_tuser[0:0],vid_phy_tx_axi4s_ch2_tvalid,vid_phy_tx_axi4s_ch2_tready,irq,vid_phy_sb_aclk,vid_phy_sb_aresetn,vid_phy_status_sb_tx_tdata[7:0],vid_phy_status_sb_tx_tvalid,vid_phy_status_sb_tx_tready,vid_phy_axi4lite_awaddr[9:0],vid_phy_axi4lite_awprot[2:0],vid_phy_axi4lite_awvalid,vid_phy_axi4lite_awready,vid_phy_axi4lite_wdata[31:0],vid_phy_axi4lite_wstrb[3:0],vid_phy_axi4lite_wvalid,vid_phy_axi4lite_wready,vid_phy_axi4lite_bresp[1:0],vid_phy_axi4lite_bvalid,vid_phy_axi4lite_bready,vid_phy_axi4lite_araddr[9:0],vid_phy_axi4lite_arprot[2:0],vid_phy_axi4lite_arvalid,vid_phy_axi4lite_arready,vid_phy_axi4lite_rdata[31:0],vid_phy_axi4lite_rresp[1:0],vid_phy_axi4lite_rvalid,vid_phy_axi4lite_rready,vid_phy_axi4lite_aresetn" */
/* synthesis syn_force_seq_prim="tx_tmds_clk" */
/* synthesis syn_force_seq_prim="tx_video_clk" */
/* synthesis syn_force_seq_prim="txoutclk" */
/* synthesis syn_force_seq_prim="vid_phy_axi4lite_aclk" */
/* synthesis syn_force_seq_prim="drpclk" */;
  input tx_refclk_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_tmds_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_tmds_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output tx_tmds_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_video_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_video_clk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output tx_video_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_tmds_clk_p CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_tmds_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output tx_tmds_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_tmds_clk_n CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_tmds_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output tx_tmds_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mgtrefclk0_pad_p_in CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mgtrefclk0_pad_p_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input mgtrefclk0_pad_p_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mgtrefclk0_pad_n_in CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mgtrefclk0_pad_n_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input mgtrefclk0_pad_n_in;
  output [2:0]phy_txn_out;
  output [2:0]phy_txp_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 txoutclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME txoutclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output txoutclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_phy_tx_axi4s_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_tx_axi4s_CLK, ASSOCIATED_BUSIF vid_phy_tx_axi4s_ch0:vid_phy_tx_axi4s_ch1:vid_phy_tx_axi4s_ch2:vid_phy_tx_axi4s_ch3, ASSOCIATED_RESET vid_phy_tx_axi4s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input vid_phy_tx_axi4s_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_phy_tx_axi4s_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_tx_axi4s_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input vid_phy_tx_axi4s_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_tx_axi4s_ch0, WIZ.DATA_WIDTH 32, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [39:0]vid_phy_tx_axi4s_ch0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0 TUSER" *) input [0:0]vid_phy_tx_axi4s_ch0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0 TVALID" *) input vid_phy_tx_axi4s_ch0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0 TREADY" *) output vid_phy_tx_axi4s_ch0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_tx_axi4s_ch1, WIZ.DATA_WIDTH 32, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [39:0]vid_phy_tx_axi4s_ch1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1 TUSER" *) input [0:0]vid_phy_tx_axi4s_ch1_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1 TVALID" *) input vid_phy_tx_axi4s_ch1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1 TREADY" *) output vid_phy_tx_axi4s_ch1_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_tx_axi4s_ch2, WIZ.DATA_WIDTH 32, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [39:0]vid_phy_tx_axi4s_ch2_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2 TUSER" *) input [0:0]vid_phy_tx_axi4s_ch2_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2 TVALID" *) input vid_phy_tx_axi4s_ch2_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2 TREADY" *) output vid_phy_tx_axi4s_ch2_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_phy_sb_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_sb_CLK, ASSOCIATED_BUSIF vid_phy_control_sb_tx:vid_phy_status_sb_tx:vid_phy_control_sb_rx:vid_phy_status_sb_rx, ASSOCIATED_RESET vid_phy_sb_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input vid_phy_sb_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_phy_sb_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_sb_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input vid_phy_sb_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_status_sb_tx TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_status_sb_tx, WIZ.DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]vid_phy_status_sb_tx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_status_sb_tx TVALID" *) output vid_phy_status_sb_tx_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_status_sb_tx TREADY" *) input vid_phy_status_sb_tx_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_axi4lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [9:0]vid_phy_axi4lite_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite AWPROT" *) input [2:0]vid_phy_axi4lite_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite AWVALID" *) input vid_phy_axi4lite_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite AWREADY" *) output vid_phy_axi4lite_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite WDATA" *) input [31:0]vid_phy_axi4lite_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite WSTRB" *) input [3:0]vid_phy_axi4lite_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite WVALID" *) input vid_phy_axi4lite_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite WREADY" *) output vid_phy_axi4lite_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite BRESP" *) output [1:0]vid_phy_axi4lite_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite BVALID" *) output vid_phy_axi4lite_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite BREADY" *) input vid_phy_axi4lite_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite ARADDR" *) input [9:0]vid_phy_axi4lite_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite ARPROT" *) input [2:0]vid_phy_axi4lite_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite ARVALID" *) input vid_phy_axi4lite_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite ARREADY" *) output vid_phy_axi4lite_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite RDATA" *) output [31:0]vid_phy_axi4lite_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite RRESP" *) output [1:0]vid_phy_axi4lite_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite RVALID" *) output vid_phy_axi4lite_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite RREADY" *) input vid_phy_axi4lite_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_phy_axi4lite_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_axi4lite_CLK, ASSOCIATED_BUSIF vid_phy_axi4lite, ASSOCIATED_RESET vid_phy_axi4lite_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input vid_phy_axi4lite_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_phy_axi4lite_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_axi4lite_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input vid_phy_axi4lite_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 drpclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME drpclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input drpclk /* synthesis syn_isclock = 1 */;
endmodule
