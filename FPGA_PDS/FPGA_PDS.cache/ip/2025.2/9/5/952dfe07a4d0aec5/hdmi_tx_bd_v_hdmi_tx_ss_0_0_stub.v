// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Jan 22 13:51:47 2026
// Host        : DESKTOP-6GRI2EI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hdmi_tx_bd_v_hdmi_tx_ss_0_0_stub.v
// Design      : hdmi_tx_bd_v_hdmi_tx_ss_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcau15p-ffvb676-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "hdmi_tx_bd_v_hdmi_tx_ss_0_0,bd_2339,{}" *) (* CORE_GENERATION_INFO = "hdmi_tx_bd_v_hdmi_tx_ss_0_0,bd_2339,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_hdmi_tx_ss,x_ipVersion=3.2,x_ipCoreRevision=16,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,Component_Name=hdmi_tx_bd_v_hdmi_tx_ss_0_0,C_INCLUDE_HDCP_1_4=false,C_INCLUDE_HDCP_2_2=false,C_MAX_BITS_PER_COMPONENT=8,C_INPUT_PIXELS_PER_CLOCK=4,C_HYSTERESIS_LEVEL=12,C_ADDR_WIDTH=10,C_INCLUDE_LOW_RESO_VID=true,C_VID_INTERFACE=0,C_INCLUDE_YUV420_SUP=true,C_VALIDATION_ENABLE=false,C_HDMI_FAST_SWITCH=false,C_SMARTCONNECT_ENABLE=false,C_HPD_INVERT=false,C_EXDES_TOPOLOGY=0,C_EXDES_TX_PLL_SELECTION=6,C_EXDES_RX_PLL_SELECTION=0,C_EXDES_NIDRU=true,C_HDMI_VERSION=3,C_DDC2_EN=0,C_CH_WIDTH=8,C_VIDEO_MASK_ENABLE=1,C_ADD_MARK_DBG=0,C_EXDES_AXILITE_FREQ=100,C_MAX_RES=0,x_ipLicense=v_hdmi@2017.10(hardware_evaluation)}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "bd_2339,Vivado 2025.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_cpu_aclk, s_axi_cpu_aresetn, link_clk, 
  s_axis_audio_aclk, s_axis_audio_aresetn, acr_cts, acr_n, acr_valid, hpd, irq, video_clk, fid, 
  locked, s_axis_video_aclk, s_axis_video_aresetn, VIDEO_IN_tdata, VIDEO_IN_tlast, 
  VIDEO_IN_tready, VIDEO_IN_tuser, VIDEO_IN_tvalid, SB_STATUS_IN_tdata, 
  SB_STATUS_IN_tvalid, AUDIO_IN_tdata, AUDIO_IN_tid, AUDIO_IN_tready, AUDIO_IN_tvalid, 
  S_AXI_CPU_IN_awaddr, S_AXI_CPU_IN_awprot, S_AXI_CPU_IN_awvalid, S_AXI_CPU_IN_awready, 
  S_AXI_CPU_IN_wdata, S_AXI_CPU_IN_wstrb, S_AXI_CPU_IN_wvalid, S_AXI_CPU_IN_wready, 
  S_AXI_CPU_IN_bresp, S_AXI_CPU_IN_bvalid, S_AXI_CPU_IN_bready, S_AXI_CPU_IN_araddr, 
  S_AXI_CPU_IN_arprot, S_AXI_CPU_IN_arvalid, S_AXI_CPU_IN_arready, S_AXI_CPU_IN_rdata, 
  S_AXI_CPU_IN_rresp, S_AXI_CPU_IN_rvalid, S_AXI_CPU_IN_rready, DDC_OUT_scl_i, 
  DDC_OUT_scl_o, DDC_OUT_scl_t, DDC_OUT_sda_i, DDC_OUT_sda_o, DDC_OUT_sda_t, 
  LINK_DATA0_OUT_tdata, LINK_DATA0_OUT_tvalid, LINK_DATA1_OUT_tdata, 
  LINK_DATA1_OUT_tvalid, LINK_DATA2_OUT_tdata, LINK_DATA2_OUT_tvalid)
/* synthesis syn_black_box black_box_pad_pin="s_axi_cpu_aclk,s_axi_cpu_aresetn,link_clk,s_axis_audio_aclk,s_axis_audio_aresetn,acr_cts[19:0],acr_n[19:0],acr_valid,hpd,irq,video_clk,fid,locked,s_axis_video_aclk,s_axis_video_aresetn,VIDEO_IN_tdata[95:0],VIDEO_IN_tlast,VIDEO_IN_tready,VIDEO_IN_tuser,VIDEO_IN_tvalid,SB_STATUS_IN_tdata[7:0],SB_STATUS_IN_tvalid,AUDIO_IN_tdata[31:0],AUDIO_IN_tid[7:0],AUDIO_IN_tready,AUDIO_IN_tvalid,S_AXI_CPU_IN_awaddr[16:0],S_AXI_CPU_IN_awprot[2:0],S_AXI_CPU_IN_awvalid[0:0],S_AXI_CPU_IN_awready[0:0],S_AXI_CPU_IN_wdata[31:0],S_AXI_CPU_IN_wstrb[3:0],S_AXI_CPU_IN_wvalid[0:0],S_AXI_CPU_IN_wready[0:0],S_AXI_CPU_IN_bresp[1:0],S_AXI_CPU_IN_bvalid[0:0],S_AXI_CPU_IN_bready[0:0],S_AXI_CPU_IN_araddr[16:0],S_AXI_CPU_IN_arprot[2:0],S_AXI_CPU_IN_arvalid[0:0],S_AXI_CPU_IN_arready[0:0],S_AXI_CPU_IN_rdata[31:0],S_AXI_CPU_IN_rresp[1:0],S_AXI_CPU_IN_rvalid[0:0],S_AXI_CPU_IN_rready[0:0],DDC_OUT_scl_i,DDC_OUT_scl_o,DDC_OUT_scl_t,DDC_OUT_sda_i,DDC_OUT_sda_o,DDC_OUT_sda_t,LINK_DATA0_OUT_tdata[39:0],LINK_DATA0_OUT_tvalid,LINK_DATA1_OUT_tdata[39:0],LINK_DATA1_OUT_tvalid,LINK_DATA2_OUT_tdata[39:0],LINK_DATA2_OUT_tvalid" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axi_cpu_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axi_cpu_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, ASSOCIATED_BUSIF SB_STATUS_IN:S_AXI_CPU_IN, ASSOCIATED_RESET s_axi_cpu_aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN s_sc_aclken" *) input s_axi_cpu_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axi_cpu_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axi_cpu_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_cpu_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.link_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.link_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, ASSOCIATED_BUSIF LINK_DATA0_OUT:LINK_DATA1_OUT:LINK_DATA2_OUT, INSERT_VIP 0" *) input link_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_audio_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axis_audio_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, ASSOCIATED_BUSIF AUDIO_IN, ASSOCIATED_RESET s_axis_audio_aresetn, INSERT_VIP 0" *) input s_axis_audio_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_audio_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axis_audio_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_audio_aresetn;
  input [19:0]acr_cts;
  input [19:0]acr_n;
  input acr_valid;
  input hpd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.irq INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.video_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.video_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, INSERT_VIP 0, ASSOCIATED_CLKEN clken" *) input video_clk;
  input fid;
  output locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_video_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axis_video_aclk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, ASSOCIATED_BUSIF VIDEO_IN, ASSOCIATED_RESET s_axis_video_aresetn, INSERT_VIP 0" *) input s_axis_video_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_video_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axis_video_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_video_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VIDEO_IN, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [95:0]VIDEO_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TLAST" *) input VIDEO_IN_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TREADY" *) output VIDEO_IN_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TUSER" *) input VIDEO_IN_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TVALID" *) input VIDEO_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SB_STATUS_IN, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]SB_STATUS_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID" *) input SB_STATUS_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AUDIO_IN, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]AUDIO_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TID" *) input [7:0]AUDIO_IN_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TREADY" *) output AUDIO_IN_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TVALID" *) input AUDIO_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CPU_IN, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 17, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [16:0]S_AXI_CPU_IN_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWPROT" *) input [2:0]S_AXI_CPU_IN_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWVALID" *) input [0:0]S_AXI_CPU_IN_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWREADY" *) output [0:0]S_AXI_CPU_IN_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WDATA" *) input [31:0]S_AXI_CPU_IN_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WSTRB" *) input [3:0]S_AXI_CPU_IN_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WVALID" *) input [0:0]S_AXI_CPU_IN_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WREADY" *) output [0:0]S_AXI_CPU_IN_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BRESP" *) output [1:0]S_AXI_CPU_IN_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BVALID" *) output [0:0]S_AXI_CPU_IN_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BREADY" *) input [0:0]S_AXI_CPU_IN_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARADDR" *) input [16:0]S_AXI_CPU_IN_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARPROT" *) input [2:0]S_AXI_CPU_IN_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARVALID" *) input [0:0]S_AXI_CPU_IN_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARREADY" *) output [0:0]S_AXI_CPU_IN_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RDATA" *) output [31:0]S_AXI_CPU_IN_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RRESP" *) output [1:0]S_AXI_CPU_IN_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RVALID" *) output [0:0]S_AXI_CPU_IN_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RREADY" *) input [0:0]S_AXI_CPU_IN_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I" *) (* X_INTERFACE_MODE = "master" *) input DDC_OUT_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O" *) output DDC_OUT_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T" *) output DDC_OUT_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I" *) input DDC_OUT_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O" *) output DDC_OUT_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T" *) output DDC_OUT_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA0_OUT, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [39:0]LINK_DATA0_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TVALID" *) output LINK_DATA0_OUT_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA1_OUT, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [39:0]LINK_DATA1_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TVALID" *) output LINK_DATA1_OUT_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA2_OUT, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [39:0]LINK_DATA2_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TVALID" *) output LINK_DATA2_OUT_tvalid;
endmodule
