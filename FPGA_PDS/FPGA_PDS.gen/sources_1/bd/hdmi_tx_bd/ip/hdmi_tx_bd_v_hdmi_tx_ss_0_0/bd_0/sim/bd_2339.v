//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_2339.bd
//Design : bd_2339
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_2339,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_2339,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "hdmi_tx_bd_v_hdmi_tx_ss_0_0.hwdef" *) 
module bd_2339
   (AUDIO_IN_tdata,
    AUDIO_IN_tid,
    AUDIO_IN_tready,
    AUDIO_IN_tvalid,
    DDC_OUT_scl_i,
    DDC_OUT_scl_o,
    DDC_OUT_scl_t,
    DDC_OUT_sda_i,
    DDC_OUT_sda_o,
    DDC_OUT_sda_t,
    LINK_DATA0_OUT_tdata,
    LINK_DATA0_OUT_tvalid,
    LINK_DATA1_OUT_tdata,
    LINK_DATA1_OUT_tvalid,
    LINK_DATA2_OUT_tdata,
    LINK_DATA2_OUT_tvalid,
    SB_STATUS_IN_tdata,
    SB_STATUS_IN_tvalid,
    S_AXI_CPU_IN_araddr,
    S_AXI_CPU_IN_arprot,
    S_AXI_CPU_IN_arready,
    S_AXI_CPU_IN_arvalid,
    S_AXI_CPU_IN_awaddr,
    S_AXI_CPU_IN_awprot,
    S_AXI_CPU_IN_awready,
    S_AXI_CPU_IN_awvalid,
    S_AXI_CPU_IN_bready,
    S_AXI_CPU_IN_bresp,
    S_AXI_CPU_IN_bvalid,
    S_AXI_CPU_IN_rdata,
    S_AXI_CPU_IN_rready,
    S_AXI_CPU_IN_rresp,
    S_AXI_CPU_IN_rvalid,
    S_AXI_CPU_IN_wdata,
    S_AXI_CPU_IN_wready,
    S_AXI_CPU_IN_wstrb,
    S_AXI_CPU_IN_wvalid,
    VIDEO_IN_tdata,
    VIDEO_IN_tlast,
    VIDEO_IN_tready,
    VIDEO_IN_tuser,
    VIDEO_IN_tvalid,
    acr_cts,
    acr_n,
    acr_valid,
    fid,
    hpd,
    irq,
    link_clk,
    locked,
    s_axi_cpu_aclk,
    s_axi_cpu_aresetn,
    s_axis_audio_aclk,
    s_axis_audio_aresetn,
    s_axis_video_aclk,
    s_axis_video_aresetn,
    video_clk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TDATA" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AUDIO_IN, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0" *) input [31:0]AUDIO_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TID" *) input [7:0]AUDIO_IN_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TREADY" *) output AUDIO_IN_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TVALID" *) input AUDIO_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I" *) (* X_INTERFACE_MODE = "Master" *) input DDC_OUT_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O" *) output DDC_OUT_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T" *) output DDC_OUT_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I" *) input DDC_OUT_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O" *) output DDC_OUT_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T" *) output DDC_OUT_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA0_OUT, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, FREQ_HZ 297000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [39:0]LINK_DATA0_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TVALID" *) output LINK_DATA0_OUT_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA1_OUT, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, FREQ_HZ 297000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [39:0]LINK_DATA1_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TVALID" *) output LINK_DATA1_OUT_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA2_OUT, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, FREQ_HZ 297000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [39:0]LINK_DATA2_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TVALID" *) output LINK_DATA2_OUT_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SB_STATUS_IN, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]SB_STATUS_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID" *) input SB_STATUS_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CPU_IN, ADDR_WIDTH 17, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [16:0]S_AXI_CPU_IN_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARPROT" *) input [2:0]S_AXI_CPU_IN_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARREADY" *) output [0:0]S_AXI_CPU_IN_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARVALID" *) input [0:0]S_AXI_CPU_IN_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWADDR" *) input [16:0]S_AXI_CPU_IN_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWPROT" *) input [2:0]S_AXI_CPU_IN_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWREADY" *) output [0:0]S_AXI_CPU_IN_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWVALID" *) input [0:0]S_AXI_CPU_IN_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BREADY" *) input [0:0]S_AXI_CPU_IN_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BRESP" *) output [1:0]S_AXI_CPU_IN_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BVALID" *) output [0:0]S_AXI_CPU_IN_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RDATA" *) output [31:0]S_AXI_CPU_IN_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RREADY" *) input [0:0]S_AXI_CPU_IN_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RRESP" *) output [1:0]S_AXI_CPU_IN_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RVALID" *) output [0:0]S_AXI_CPU_IN_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WDATA" *) input [31:0]S_AXI_CPU_IN_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WREADY" *) output [0:0]S_AXI_CPU_IN_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WSTRB" *) input [3:0]S_AXI_CPU_IN_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WVALID" *) input [0:0]S_AXI_CPU_IN_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TDATA" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VIDEO_IN, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, FREQ_HZ 297000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [95:0]VIDEO_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TLAST" *) input VIDEO_IN_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TREADY" *) output VIDEO_IN_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TUSER" *) input VIDEO_IN_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_IN TVALID" *) input VIDEO_IN_tvalid;
  input [19:0]acr_cts;
  input [19:0]acr_n;
  input acr_valid;
  input fid;
  input hpd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LINK_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LINK_CLK, ASSOCIATED_BUSIF LINK_DATA0_OUT:LINK_DATA1_OUT:LINK_DATA2_OUT, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input link_clk;
  output locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_CPU_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_CPU_ACLK, ASSOCIATED_BUSIF SB_STATUS_IN:S_AXI_CPU_IN, ASSOCIATED_CLKEN s_sc_aclken, ASSOCIATED_RESET s_axi_cpu_aresetn, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_cpu_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_CPU_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_CPU_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_cpu_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_AUDIO_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_AUDIO_ACLK, ASSOCIATED_BUSIF AUDIO_IN, ASSOCIATED_RESET s_axis_audio_aresetn, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_audio_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_AUDIO_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_AUDIO_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_audio_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_VIDEO_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_VIDEO_ACLK, ASSOCIATED_BUSIF VIDEO_IN, ASSOCIATED_RESET s_axis_video_aresetn, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_video_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_VIDEO_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_VIDEO_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_video_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.VIDEO_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.VIDEO_CLK, ASSOCIATED_CLKEN clken, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input video_clk;

  wire [31:0]AUDIO_IN_tdata;
  wire [7:0]AUDIO_IN_tid;
  wire AUDIO_IN_tready;
  wire AUDIO_IN_tvalid;
  wire DDC_OUT_scl_i;
  wire DDC_OUT_scl_o;
  wire DDC_OUT_scl_t;
  wire DDC_OUT_sda_i;
  wire DDC_OUT_sda_o;
  wire DDC_OUT_sda_t;
  wire [39:0]LINK_DATA0_OUT_tdata;
  wire LINK_DATA0_OUT_tvalid;
  wire [39:0]LINK_DATA1_OUT_tdata;
  wire LINK_DATA1_OUT_tvalid;
  wire [39:0]LINK_DATA2_OUT_tdata;
  wire LINK_DATA2_OUT_tvalid;
  wire [7:0]SB_STATUS_IN_tdata;
  wire SB_STATUS_IN_tvalid;
  wire [16:0]S_AXI_CPU_IN_araddr;
  wire [2:0]S_AXI_CPU_IN_arprot;
  wire \^S_AXI_CPU_IN_arready ;
  wire [0:0]S_AXI_CPU_IN_arvalid;
  wire [16:0]S_AXI_CPU_IN_awaddr;
  wire [2:0]S_AXI_CPU_IN_awprot;
  wire \^S_AXI_CPU_IN_awready ;
  wire [0:0]S_AXI_CPU_IN_awvalid;
  wire [0:0]S_AXI_CPU_IN_bready;
  wire [1:0]S_AXI_CPU_IN_bresp;
  wire \^S_AXI_CPU_IN_bvalid ;
  wire [31:0]S_AXI_CPU_IN_rdata;
  wire [0:0]S_AXI_CPU_IN_rready;
  wire [1:0]S_AXI_CPU_IN_rresp;
  wire \^S_AXI_CPU_IN_rvalid ;
  wire [31:0]S_AXI_CPU_IN_wdata;
  wire \^S_AXI_CPU_IN_wready ;
  wire [3:0]S_AXI_CPU_IN_wstrb;
  wire [0:0]S_AXI_CPU_IN_wvalid;
  wire [95:0]VIDEO_IN_tdata;
  wire VIDEO_IN_tlast;
  wire VIDEO_IN_tready;
  wire VIDEO_IN_tuser;
  wire VIDEO_IN_tvalid;
  wire [19:0]acr_cts;
  wire [19:0]acr_n;
  wire acr_valid;
  wire fid;
  wire hpd;
  wire [8:0]intf_net_axi_smartconnect_M00_AXI_ARADDR;
  wire [2:0]intf_net_axi_smartconnect_M00_AXI_ARPROT;
  wire intf_net_axi_smartconnect_M00_AXI_ARREADY;
  wire intf_net_axi_smartconnect_M00_AXI_ARVALID;
  wire [8:0]intf_net_axi_smartconnect_M00_AXI_AWADDR;
  wire [2:0]intf_net_axi_smartconnect_M00_AXI_AWPROT;
  wire intf_net_axi_smartconnect_M00_AXI_AWREADY;
  wire intf_net_axi_smartconnect_M00_AXI_AWVALID;
  wire intf_net_axi_smartconnect_M00_AXI_BREADY;
  wire [1:0]intf_net_axi_smartconnect_M00_AXI_BRESP;
  wire intf_net_axi_smartconnect_M00_AXI_BVALID;
  wire [31:0]intf_net_axi_smartconnect_M00_AXI_RDATA;
  wire intf_net_axi_smartconnect_M00_AXI_RREADY;
  wire [1:0]intf_net_axi_smartconnect_M00_AXI_RRESP;
  wire intf_net_axi_smartconnect_M00_AXI_RVALID;
  wire [31:0]intf_net_axi_smartconnect_M00_AXI_WDATA;
  wire intf_net_axi_smartconnect_M00_AXI_WREADY;
  wire [3:0]intf_net_axi_smartconnect_M00_AXI_WSTRB;
  wire intf_net_axi_smartconnect_M00_AXI_WVALID;
  wire [8:0]intf_net_axi_smartconnect_M01_AXI_ARADDR;
  wire intf_net_axi_smartconnect_M01_AXI_ARREADY;
  wire intf_net_axi_smartconnect_M01_AXI_ARVALID;
  wire [8:0]intf_net_axi_smartconnect_M01_AXI_AWADDR;
  wire intf_net_axi_smartconnect_M01_AXI_AWREADY;
  wire intf_net_axi_smartconnect_M01_AXI_AWVALID;
  wire intf_net_axi_smartconnect_M01_AXI_BREADY;
  wire [1:0]intf_net_axi_smartconnect_M01_AXI_BRESP;
  wire intf_net_axi_smartconnect_M01_AXI_BVALID;
  wire [31:0]intf_net_axi_smartconnect_M01_AXI_RDATA;
  wire intf_net_axi_smartconnect_M01_AXI_RREADY;
  wire [1:0]intf_net_axi_smartconnect_M01_AXI_RRESP;
  wire intf_net_axi_smartconnect_M01_AXI_RVALID;
  wire [31:0]intf_net_axi_smartconnect_M01_AXI_WDATA;
  wire intf_net_axi_smartconnect_M01_AXI_WREADY;
  wire [3:0]intf_net_axi_smartconnect_M01_AXI_WSTRB;
  wire intf_net_axi_smartconnect_M01_AXI_WVALID;
  wire intf_net_v_axi4s_vid_out_vid_io_out_ACTIVE_VIDEO;
  wire [95:0]intf_net_v_axi4s_vid_out_vid_io_out_DATA;
  wire intf_net_v_axi4s_vid_out_vid_io_out_HSYNC;
  wire intf_net_v_axi4s_vid_out_vid_io_out_VSYNC;
  wire [95:0]intf_net_v_hdmi_tx_hdcp_out_TDATA;
  wire intf_net_v_hdmi_tx_hdcp_out_TID;
  wire intf_net_v_hdmi_tx_hdcp_out_TLAST;
  wire intf_net_v_hdmi_tx_hdcp_out_TREADY;
  wire [3:0]intf_net_v_hdmi_tx_hdcp_out_TSTRB;
  wire [31:0]intf_net_v_hdmi_tx_hdcp_out_TUSER;
  wire intf_net_v_hdmi_tx_hdcp_out_TVALID;
  wire intf_net_v_tc_vtiming_out_ACTIVE_VIDEO;
  wire intf_net_v_tc_vtiming_out_FIELD;
  wire intf_net_v_tc_vtiming_out_HBLANK;
  wire intf_net_v_tc_vtiming_out_HSYNC;
  wire intf_net_v_tc_vtiming_out_VBLANK;
  wire intf_net_v_tc_vtiming_out_VSYNC;
  wire irq;
  wire link_clk;
  wire locked;
  wire [0:0]net_util_vector_logic_0_Res;
  wire net_v_axi4s_vid_out_overflow;
  wire net_v_axi4s_vid_out_underflow;
  wire net_v_axi4s_vid_out_vtg_ce;
  wire net_v_hdmi_tx_bridge_pixel_repeat;
  wire net_v_hdmi_tx_bridge_yuv420;
  wire net_v_hdmi_tx_s_axis_video_aresetn_out;
  wire [1:0]net_v_hdmi_tx_vid_format_out;
  wire net_v_hdmi_tx_video_reset;
  wire s_axi_cpu_aclk;
  wire s_axi_cpu_aresetn;
  wire s_axis_audio_aclk;
  wire s_axis_audio_aresetn;
  wire s_axis_video_aclk;
  wire s_axis_video_aresetn;
  wire video_clk;

  assign S_AXI_CPU_IN_arready[0] = \^S_AXI_CPU_IN_arready ;
  assign S_AXI_CPU_IN_awready[0] = \^S_AXI_CPU_IN_awready ;
  assign S_AXI_CPU_IN_bvalid[0] = \^S_AXI_CPU_IN_bvalid ;
  assign S_AXI_CPU_IN_rvalid[0] = \^S_AXI_CPU_IN_rvalid ;
  assign S_AXI_CPU_IN_wready[0] = \^S_AXI_CPU_IN_wready ;
  bd_2339_axi_smartconnect_0 axi_smartconnect
       (.M00_AXI_araddr(intf_net_axi_smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(intf_net_axi_smartconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(intf_net_axi_smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(intf_net_axi_smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(intf_net_axi_smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(intf_net_axi_smartconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(intf_net_axi_smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(intf_net_axi_smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(intf_net_axi_smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(intf_net_axi_smartconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(intf_net_axi_smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(intf_net_axi_smartconnect_M00_AXI_RDATA),
        .M00_AXI_rready(intf_net_axi_smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(intf_net_axi_smartconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(intf_net_axi_smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(intf_net_axi_smartconnect_M00_AXI_WDATA),
        .M00_AXI_wready(intf_net_axi_smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(intf_net_axi_smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(intf_net_axi_smartconnect_M00_AXI_WVALID),
        .M01_AXI_araddr(intf_net_axi_smartconnect_M01_AXI_ARADDR),
        .M01_AXI_arready(intf_net_axi_smartconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(intf_net_axi_smartconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(intf_net_axi_smartconnect_M01_AXI_AWADDR),
        .M01_AXI_awready(intf_net_axi_smartconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(intf_net_axi_smartconnect_M01_AXI_AWVALID),
        .M01_AXI_bready(intf_net_axi_smartconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(intf_net_axi_smartconnect_M01_AXI_BRESP),
        .M01_AXI_bvalid(intf_net_axi_smartconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(intf_net_axi_smartconnect_M01_AXI_RDATA),
        .M01_AXI_rready(intf_net_axi_smartconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(intf_net_axi_smartconnect_M01_AXI_RRESP),
        .M01_AXI_rvalid(intf_net_axi_smartconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(intf_net_axi_smartconnect_M01_AXI_WDATA),
        .M01_AXI_wready(intf_net_axi_smartconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(intf_net_axi_smartconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(intf_net_axi_smartconnect_M01_AXI_WVALID),
        .S00_AXI_araddr(S_AXI_CPU_IN_araddr),
        .S00_AXI_arprot(S_AXI_CPU_IN_arprot),
        .S00_AXI_arready(\^S_AXI_CPU_IN_arready ),
        .S00_AXI_arvalid(S_AXI_CPU_IN_arvalid),
        .S00_AXI_awaddr(S_AXI_CPU_IN_awaddr),
        .S00_AXI_awprot(S_AXI_CPU_IN_awprot),
        .S00_AXI_awready(\^S_AXI_CPU_IN_awready ),
        .S00_AXI_awvalid(S_AXI_CPU_IN_awvalid),
        .S00_AXI_bready(S_AXI_CPU_IN_bready),
        .S00_AXI_bresp(S_AXI_CPU_IN_bresp),
        .S00_AXI_bvalid(\^S_AXI_CPU_IN_bvalid ),
        .S00_AXI_rdata(S_AXI_CPU_IN_rdata),
        .S00_AXI_rready(S_AXI_CPU_IN_rready),
        .S00_AXI_rresp(S_AXI_CPU_IN_rresp),
        .S00_AXI_rvalid(\^S_AXI_CPU_IN_rvalid ),
        .S00_AXI_wdata(S_AXI_CPU_IN_wdata),
        .S00_AXI_wready(\^S_AXI_CPU_IN_wready ),
        .S00_AXI_wstrb(S_AXI_CPU_IN_wstrb),
        .S00_AXI_wvalid(S_AXI_CPU_IN_wvalid),
        .aclk(s_axi_cpu_aclk),
        .aresetn(s_axi_cpu_aresetn));
  assign net_util_vector_logic_0_Res = ~ net_v_hdmi_tx_video_reset;
  bd_2339_v_axi4s_vid_out_0 v_axi4s_vid_out
       (.aclk(s_axis_video_aclk),
        .aclken(1'b1),
        .aresetn(net_v_hdmi_tx_s_axis_video_aresetn_out),
        .fid(fid),
        .locked(locked),
        .overflow(net_v_axi4s_vid_out_overflow),
        .remap_420_en(net_v_hdmi_tx_bridge_yuv420),
        .repeat_en(net_v_hdmi_tx_bridge_pixel_repeat),
        .s_axis_video_tdata(VIDEO_IN_tdata),
        .s_axis_video_tlast(VIDEO_IN_tlast),
        .s_axis_video_tready(VIDEO_IN_tready),
        .s_axis_video_tuser(VIDEO_IN_tuser),
        .s_axis_video_tvalid(VIDEO_IN_tvalid),
        .underflow(net_v_axi4s_vid_out_underflow),
        .vid_active_video(intf_net_v_axi4s_vid_out_vid_io_out_ACTIVE_VIDEO),
        .vid_data(intf_net_v_axi4s_vid_out_vid_io_out_DATA),
        .vid_hsync(intf_net_v_axi4s_vid_out_vid_io_out_HSYNC),
        .vid_io_out_ce(1'b1),
        .vid_io_out_clk(video_clk),
        .vid_io_out_reset(net_v_hdmi_tx_video_reset),
        .vid_vsync(intf_net_v_axi4s_vid_out_vid_io_out_VSYNC),
        .video_format(net_v_hdmi_tx_vid_format_out),
        .vtg_active_video(intf_net_v_tc_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(net_v_axi4s_vid_out_vtg_ce),
        .vtg_field_id(intf_net_v_tc_vtiming_out_FIELD),
        .vtg_hblank(intf_net_v_tc_vtiming_out_HBLANK),
        .vtg_hsync(intf_net_v_tc_vtiming_out_HSYNC),
        .vtg_vblank(intf_net_v_tc_vtiming_out_VBLANK),
        .vtg_vsync(intf_net_v_tc_vtiming_out_VSYNC));
  bd_2339_v_hdmi_tx_0 v_hdmi_tx
       (.acr_cts(acr_cts),
        .acr_n(acr_n),
        .acr_valid(acr_valid),
        .bridge_locked(locked),
        .bridge_overflow(net_v_axi4s_vid_out_overflow),
        .bridge_pixel_repeat(net_v_hdmi_tx_bridge_pixel_repeat),
        .bridge_underflow(net_v_axi4s_vid_out_underflow),
        .bridge_yuv420(net_v_hdmi_tx_bridge_yuv420),
        .ddc_scl_i(DDC_OUT_scl_i),
        .ddc_scl_o(DDC_OUT_scl_o),
        .ddc_scl_t(DDC_OUT_scl_t),
        .ddc_sda_i(DDC_OUT_sda_i),
        .ddc_sda_o(DDC_OUT_sda_o),
        .ddc_sda_t(DDC_OUT_sda_t),
        .hpd(hpd),
        .irq(irq),
        .link_clk(link_clk),
        .link_data0(LINK_DATA0_OUT_tdata),
        .link_data1(LINK_DATA1_OUT_tdata),
        .link_data2(LINK_DATA2_OUT_tdata),
        .link_valid0(LINK_DATA0_OUT_tvalid),
        .link_valid1(LINK_DATA1_OUT_tvalid),
        .link_valid2(LINK_DATA2_OUT_tvalid),
        .m_axis_hdcp_tdata(intf_net_v_hdmi_tx_hdcp_out_TDATA),
        .m_axis_hdcp_tid(intf_net_v_hdmi_tx_hdcp_out_TID),
        .m_axis_hdcp_tlast(intf_net_v_hdmi_tx_hdcp_out_TLAST),
        .m_axis_hdcp_tready(intf_net_v_hdmi_tx_hdcp_out_TREADY),
        .m_axis_hdcp_tstrb(intf_net_v_hdmi_tx_hdcp_out_TSTRB),
        .m_axis_hdcp_tuser(intf_net_v_hdmi_tx_hdcp_out_TUSER),
        .m_axis_hdcp_tvalid(intf_net_v_hdmi_tx_hdcp_out_TVALID),
        .s_axi_aclk(s_axi_cpu_aclk),
        .s_axi_araddr(intf_net_axi_smartconnect_M00_AXI_ARADDR),
        .s_axi_aresetn(s_axi_cpu_aresetn),
        .s_axi_arprot(intf_net_axi_smartconnect_M00_AXI_ARPROT),
        .s_axi_arready(intf_net_axi_smartconnect_M00_AXI_ARREADY),
        .s_axi_arvalid(intf_net_axi_smartconnect_M00_AXI_ARVALID),
        .s_axi_awaddr(intf_net_axi_smartconnect_M00_AXI_AWADDR),
        .s_axi_awprot(intf_net_axi_smartconnect_M00_AXI_AWPROT),
        .s_axi_awready(intf_net_axi_smartconnect_M00_AXI_AWREADY),
        .s_axi_awvalid(intf_net_axi_smartconnect_M00_AXI_AWVALID),
        .s_axi_bready(intf_net_axi_smartconnect_M00_AXI_BREADY),
        .s_axi_bresp(intf_net_axi_smartconnect_M00_AXI_BRESP),
        .s_axi_bvalid(intf_net_axi_smartconnect_M00_AXI_BVALID),
        .s_axi_rdata(intf_net_axi_smartconnect_M00_AXI_RDATA),
        .s_axi_rready(intf_net_axi_smartconnect_M00_AXI_RREADY),
        .s_axi_rresp(intf_net_axi_smartconnect_M00_AXI_RRESP),
        .s_axi_rvalid(intf_net_axi_smartconnect_M00_AXI_RVALID),
        .s_axi_wdata(intf_net_axi_smartconnect_M00_AXI_WDATA),
        .s_axi_wready(intf_net_axi_smartconnect_M00_AXI_WREADY),
        .s_axi_wstrb(intf_net_axi_smartconnect_M00_AXI_WSTRB),
        .s_axi_wvalid(intf_net_axi_smartconnect_M00_AXI_WVALID),
        .s_axis_audio_aclk(s_axis_audio_aclk),
        .s_axis_audio_aresetn(s_axis_audio_aresetn),
        .s_axis_audio_tdata(AUDIO_IN_tdata),
        .s_axis_audio_tid(AUDIO_IN_tid),
        .s_axis_audio_tready(AUDIO_IN_tready),
        .s_axis_audio_tvalid(AUDIO_IN_tvalid),
        .s_axis_hdcp_tdata(intf_net_v_hdmi_tx_hdcp_out_TDATA),
        .s_axis_hdcp_tid(intf_net_v_hdmi_tx_hdcp_out_TID),
        .s_axis_hdcp_tlast(intf_net_v_hdmi_tx_hdcp_out_TLAST),
        .s_axis_hdcp_tready(intf_net_v_hdmi_tx_hdcp_out_TREADY),
        .s_axis_hdcp_tstrb(intf_net_v_hdmi_tx_hdcp_out_TSTRB),
        .s_axis_hdcp_tuser(intf_net_v_hdmi_tx_hdcp_out_TUSER),
        .s_axis_hdcp_tvalid(intf_net_v_hdmi_tx_hdcp_out_TVALID),
        .s_axis_video_aclk(s_axis_video_aclk),
        .s_axis_video_aresetn_in(s_axis_video_aresetn),
        .s_axis_video_aresetn_out(net_v_hdmi_tx_s_axis_video_aresetn_out),
        .sb_status_data(SB_STATUS_IN_tdata),
        .sb_status_valid(SB_STATUS_IN_tvalid),
        .vid_format_out(net_v_hdmi_tx_vid_format_out),
        .video_clk(video_clk),
        .video_data(intf_net_v_axi4s_vid_out_vid_io_out_DATA),
        .video_data_arb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .video_de(intf_net_v_axi4s_vid_out_vid_io_out_ACTIVE_VIDEO),
        .video_de_arb({1'b0,1'b0,1'b0,1'b0}),
        .video_hs(intf_net_v_axi4s_vid_out_vid_io_out_HSYNC),
        .video_hs_arb({1'b0,1'b0,1'b0,1'b0}),
        .video_reset(net_v_hdmi_tx_video_reset),
        .video_vs(intf_net_v_axi4s_vid_out_vid_io_out_VSYNC),
        .video_vs_arb({1'b0,1'b0,1'b0,1'b0}));
  bd_2339_v_tc_0 v_tc
       (.active_video_out(intf_net_v_tc_vtiming_out_ACTIVE_VIDEO),
        .clk(video_clk),
        .clken(1'b1),
        .field_id_out(intf_net_v_tc_vtiming_out_FIELD),
        .fsync_in(1'b0),
        .gen_clken(net_v_axi4s_vid_out_vtg_ce),
        .hblank_out(intf_net_v_tc_vtiming_out_HBLANK),
        .hsync_out(intf_net_v_tc_vtiming_out_HSYNC),
        .resetn(net_util_vector_logic_0_Res),
        .s_axi_aclk(s_axi_cpu_aclk),
        .s_axi_aclken(1'b1),
        .s_axi_araddr(intf_net_axi_smartconnect_M01_AXI_ARADDR),
        .s_axi_aresetn(s_axi_cpu_aresetn),
        .s_axi_arready(intf_net_axi_smartconnect_M01_AXI_ARREADY),
        .s_axi_arvalid(intf_net_axi_smartconnect_M01_AXI_ARVALID),
        .s_axi_awaddr(intf_net_axi_smartconnect_M01_AXI_AWADDR),
        .s_axi_awready(intf_net_axi_smartconnect_M01_AXI_AWREADY),
        .s_axi_awvalid(intf_net_axi_smartconnect_M01_AXI_AWVALID),
        .s_axi_bready(intf_net_axi_smartconnect_M01_AXI_BREADY),
        .s_axi_bresp(intf_net_axi_smartconnect_M01_AXI_BRESP),
        .s_axi_bvalid(intf_net_axi_smartconnect_M01_AXI_BVALID),
        .s_axi_rdata(intf_net_axi_smartconnect_M01_AXI_RDATA),
        .s_axi_rready(intf_net_axi_smartconnect_M01_AXI_RREADY),
        .s_axi_rresp(intf_net_axi_smartconnect_M01_AXI_RRESP),
        .s_axi_rvalid(intf_net_axi_smartconnect_M01_AXI_RVALID),
        .s_axi_wdata(intf_net_axi_smartconnect_M01_AXI_WDATA),
        .s_axi_wready(intf_net_axi_smartconnect_M01_AXI_WREADY),
        .s_axi_wstrb(intf_net_axi_smartconnect_M01_AXI_WSTRB),
        .s_axi_wvalid(intf_net_axi_smartconnect_M01_AXI_WVALID),
        .sof_state(1'b0),
        .vblank_out(intf_net_v_tc_vtiming_out_VBLANK),
        .vsync_out(intf_net_v_tc_vtiming_out_VSYNC));
endmodule
