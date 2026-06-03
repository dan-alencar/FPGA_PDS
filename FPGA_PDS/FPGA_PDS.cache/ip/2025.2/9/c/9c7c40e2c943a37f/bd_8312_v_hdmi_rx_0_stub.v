// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Jun  2 22:29:24 2026
// Host        : pop-os running 64-bit Pop!_OS 24.04 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_8312_v_hdmi_rx_0_stub.v
// Design      : bd_8312_v_hdmi_rx_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcau15p-ffvb676-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "bd_8312_v_hdmi_rx_0,v_hdmi_rx_v3_0_7,{}" *) (* CORE_GENERATION_INFO = "bd_8312_v_hdmi_rx_0,v_hdmi_rx_v3_0_7,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_hdmi_rx,x_ipVersion=3.0,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ADDR_WIDTH=9,C_BITS_PER_COMPONENT=8,C_PIXELS_PER_CLOCK=2,C_GT_LANES=2,C_DDC_EDID_SIZE=256,C_SIM_SPEEDUP=FALSE,C_HDCP_IF_ENABLE=0,C_VECTOR_DE_ENABLE=0,C_CH_WIDTH=8,C_SIM_DEVICE_EN=0,C_SIM_DEVICE=VERSAL_AI_CORE_ES1,C_RELAX_DVI_CONSTRAINT=0,C_TST_DBG=0,C_MAX_RES=0,x_ipLicense=v_hdmi@2017.10(hardware_evaluation)}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "v_hdmi_rx_v3_0_7,Vivado 2025.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_aclk, s_axi_aresetn, 
  m_axis_video_aresetn_in, s_axi_awaddr, s_axi_awprot, s_axi_awvalid, s_axi_awready, 
  s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, s_axi_bresp, s_axi_bvalid, 
  s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, s_axi_arready, s_axi_rdata, 
  s_axi_rresp, s_axi_rvalid, s_axi_rready, link_clk, link_data0, link_data1, link_data2, 
  link_valid0, link_valid1, link_valid2, hpd, cable_detect, video_reset, 
  m_axis_video_aresetn_out, axis_enable, sb_status_data, sb_status_valid, avmute, video_clk, 
  m_axis_video_aclk, video_vs, video_hs, video_data, video_de, video_field, video_vs_arb, 
  video_hs_arb, video_de_arb, video_data_arb, m_axis_audio_aresetn, m_axis_audio_aclk, 
  m_axis_audio_tready, m_axis_audio_tid, m_axis_audio_tdata, m_axis_audio_tvalid, acr_cts, 
  acr_n, acr_valid, m_axis_hdcp_aresetn, m_axis_hdcp_aclk, m_axis_hdcp_aclken, 
  m_axis_hdcp_tid, m_axis_hdcp_tuser, m_axis_hdcp_tdata, m_axis_hdcp_tstrb, 
  m_axis_hdcp_tvalid, m_axis_hdcp_tlast, m_axis_hdcp_tready, s_axis_hdcp_tid, 
  s_axis_hdcp_tuser, s_axis_hdcp_tdata, s_axis_hdcp_tstrb, s_axis_hdcp_tvalid, 
  s_axis_hdcp_tlast, s_axis_hdcp_tready, ddc_scl_i, ddc_scl_o, ddc_scl_t, ddc_sda_i, ddc_sda_o, 
  ddc_sda_t, irq, bridge_yuv420, bridge_pixel_drop, vid_format_out, bridge_overflow)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aresetn,m_axis_video_aresetn_in,s_axi_awaddr[8:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[8:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,link_data0[39:0],link_data1[39:0],link_data2[39:0],link_valid0,link_valid1,link_valid2,hpd,cable_detect,video_reset,m_axis_video_aresetn_out,axis_enable,sb_status_data[7:0],sb_status_valid,avmute,video_vs,video_hs,video_data[47:0],video_de,video_field,video_vs_arb[1:0],video_hs_arb[1:0],video_de_arb[1:0],video_data_arb[47:0],m_axis_audio_aresetn,m_axis_audio_tready,m_axis_audio_tid[7:0],m_axis_audio_tdata[31:0],m_axis_audio_tvalid,acr_cts[19:0],acr_n[19:0],acr_valid,m_axis_hdcp_aresetn,m_axis_hdcp_aclk,m_axis_hdcp_aclken,m_axis_hdcp_tid,m_axis_hdcp_tuser[31:0],m_axis_hdcp_tdata[95:0],m_axis_hdcp_tstrb[3:0],m_axis_hdcp_tvalid,m_axis_hdcp_tlast,m_axis_hdcp_tready,s_axis_hdcp_tid,s_axis_hdcp_tuser[31:0],s_axis_hdcp_tdata[95:0],s_axis_hdcp_tstrb[3:0],s_axis_hdcp_tvalid,s_axis_hdcp_tlast,s_axis_hdcp_tready,ddc_scl_i,ddc_scl_o,ddc_scl_t,ddc_sda_i,ddc_sda_o,ddc_sda_t,irq,bridge_yuv420,bridge_pixel_drop,vid_format_out[1:0],bridge_overflow" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */
/* synthesis syn_force_seq_prim="link_clk" */
/* synthesis syn_force_seq_prim="video_clk" */
/* synthesis syn_force_seq_prim="m_axis_video_aclk" */
/* synthesis syn_force_seq_prim="m_axis_audio_aclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CPU_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_AXI_CLK, ASSOCIATED_BUSIF CPU_IN:SB_STATUS_IN, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) input s_axi_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 CPU_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AXIS_VIDEO_ARSTN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_VIDEO_ARSTN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axis_video_aresetn_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_IN, WIZ.DATA_WIDTH 32, WIZ.NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN ARADDR" *) input [8:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPU_IN RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 LINK_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_CLK, ASSOCIATED_BUSIF LINK_DATA0_IN:LINK_DATA1_IN:LINK_DATA2_IN, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_rxoutclk, INSERT_VIP 0" *) input link_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA0_IN, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [39:0]link_data0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA1_IN, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [39:0]link_data1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA2_IN, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [39:0]link_data2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TVALID" *) input link_valid0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TVALID" *) input link_valid1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TVALID" *) input link_valid2;
  output hpd;
  input cable_detect;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 VIDEO_RESET RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VIDEO_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output video_reset;
  output m_axis_video_aresetn_out;
  output axis_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SB_STATUS_IN, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]sb_status_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID" *) input sb_status_valid;
  output avmute;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 VIDEO_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VIDEO_CLK, ASSOCIATED_BUSIF VIDEO_OUT, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_rx_video_clk, INSERT_VIP 0" *) input video_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXIS_VIDEO_ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_VIDEO_ACLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) input m_axis_video_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_OUT VSYNC" *) (* X_INTERFACE_MODE = "master" *) output video_vs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_OUT HSYNC" *) output video_hs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_OUT DATA" *) output [47:0]video_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_OUT ACTIVE_VIDEO" *) output video_de;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_OUT FIELD" *) output video_field;
  output [1:0]video_vs_arb;
  output [1:0]video_hs_arb;
  output [1:0]video_de_arb;
  output [47:0]video_data_arb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AUDIO_AXIS_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AUDIO_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axis_audio_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AUDIO_AXIS_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AUDIO_AXIS_CLK, ASSOCIATED_BUSIF AUDIO_OUT, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) input m_axis_audio_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AUDIO_OUT, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_audio_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TID" *) output [7:0]m_axis_audio_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TDATA" *) output [31:0]m_axis_audio_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TVALID" *) output m_axis_audio_tvalid;
  output [19:0]acr_cts;
  output [19:0]acr_n;
  output acr_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 HDCP_AXIS_RST RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HDCP_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output m_axis_hdcp_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 HDCP_AXIS_CLK CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HDCP_AXIS_CLK, ASSOCIATED_BUSIF HDCP_IN:HDCP_OUT, ASSOCIATED_RESET m_axis_hdcp_aresetn, ASSOCIATED_CLKEN m_axis_hdcp_aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_8312_v_hdmi_rx_0_m_axis_hdcp_aclk, INSERT_VIP 0" *) output m_axis_hdcp_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 HDCP_AXIS_CLKEN CE" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HDCP_AXIS_CLKEN, POLARITY ACTIVE_LOW" *) output m_axis_hdcp_aclken;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HDCP_OUT, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN bd_8312_v_hdmi_rx_0_m_axis_hdcp_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_hdcp_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TUSER" *) output [31:0]m_axis_hdcp_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TDATA" *) output [95:0]m_axis_hdcp_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TSTRB" *) output [3:0]m_axis_hdcp_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TVALID" *) output m_axis_hdcp_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TLAST" *) output m_axis_hdcp_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TREADY" *) input m_axis_hdcp_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HDCP_IN, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN bd_8312_v_hdmi_rx_0_m_axis_hdcp_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_hdcp_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TUSER" *) input [31:0]s_axis_hdcp_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TDATA" *) input [95:0]s_axis_hdcp_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TSTRB" *) input [3:0]s_axis_hdcp_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TVALID" *) input s_axis_hdcp_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TLAST" *) input s_axis_hdcp_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TREADY" *) output s_axis_hdcp_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I" *) (* X_INTERFACE_MODE = "master" *) input ddc_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O" *) output ddc_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T" *) output ddc_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I" *) input ddc_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O" *) output ddc_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T" *) output ddc_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 IRQ_SIGNAL_INTERRUPT INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME IRQ_SIGNAL_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  output bridge_yuv420;
  output bridge_pixel_drop;
  output [1:0]vid_format_out;
  input bridge_overflow;
endmodule
