//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_8312.bd
//Design : bd_8312
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_8312,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_8312,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "hdmi_tx_bd_v_hdmi_rx_ss_0_0.hwdef" *) 
module bd_8312
   (AUDIO_OUT_tdata,
    AUDIO_OUT_tid,
    AUDIO_OUT_tready,
    AUDIO_OUT_tvalid,
    DDC_OUT_scl_i,
    DDC_OUT_scl_o,
    DDC_OUT_scl_t,
    DDC_OUT_sda_i,
    DDC_OUT_sda_o,
    DDC_OUT_sda_t,
    LINK_DATA0_IN_tdata,
    LINK_DATA0_IN_tvalid,
    LINK_DATA1_IN_tdata,
    LINK_DATA1_IN_tvalid,
    LINK_DATA2_IN_tdata,
    LINK_DATA2_IN_tvalid,
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
    VIDEO_OUT_tdata,
    VIDEO_OUT_tlast,
    VIDEO_OUT_tready,
    VIDEO_OUT_tuser,
    VIDEO_OUT_tvalid,
    acr_cts,
    acr_n,
    acr_valid,
    cable_detect,
    fid,
    hpd,
    irq,
    link_clk,
    s_axi_cpu_aclk,
    s_axi_cpu_aresetn,
    s_axis_audio_aclk,
    s_axis_audio_aresetn,
    s_axis_video_aclk,
    s_axis_video_aresetn,
    video_clk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AUDIO_OUT, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0" *) output [31:0]AUDIO_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TID" *) output [7:0]AUDIO_OUT_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TREADY" *) input AUDIO_OUT_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_OUT TVALID" *) output AUDIO_OUT_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I" *) (* X_INTERFACE_MODE = "Master" *) input DDC_OUT_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O" *) output DDC_OUT_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T" *) output DDC_OUT_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I" *) input DDC_OUT_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O" *) output DDC_OUT_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T" *) output DDC_OUT_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TDATA" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA0_IN, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_rxoutclk, FREQ_HZ 148500000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [39:0]LINK_DATA0_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TVALID" *) input LINK_DATA0_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TDATA" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA1_IN, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_rxoutclk, FREQ_HZ 148500000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [39:0]LINK_DATA1_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TVALID" *) input LINK_DATA1_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TDATA" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA2_IN, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_rxoutclk, FREQ_HZ 148500000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [39:0]LINK_DATA2_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TVALID" *) input LINK_DATA2_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SB_STATUS_IN, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]SB_STATUS_IN_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID" *) input SB_STATUS_IN_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CPU_IN, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [8:0]S_AXI_CPU_IN_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARPROT" *) input [2:0]S_AXI_CPU_IN_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARREADY" *) output S_AXI_CPU_IN_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARVALID" *) input S_AXI_CPU_IN_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWADDR" *) input [8:0]S_AXI_CPU_IN_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWPROT" *) input [2:0]S_AXI_CPU_IN_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWREADY" *) output S_AXI_CPU_IN_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWVALID" *) input S_AXI_CPU_IN_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BREADY" *) input S_AXI_CPU_IN_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BRESP" *) output [1:0]S_AXI_CPU_IN_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BVALID" *) output S_AXI_CPU_IN_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RDATA" *) output [31:0]S_AXI_CPU_IN_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RREADY" *) input S_AXI_CPU_IN_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RRESP" *) output [1:0]S_AXI_CPU_IN_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RVALID" *) output S_AXI_CPU_IN_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WDATA" *) input [31:0]S_AXI_CPU_IN_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WREADY" *) output S_AXI_CPU_IN_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WSTRB" *) input [3:0]S_AXI_CPU_IN_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WVALID" *) input S_AXI_CPU_IN_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VIDEO_OUT, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, PHASE 0.0, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) output [47:0]VIDEO_OUT_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TLAST" *) output VIDEO_OUT_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TREADY" *) input VIDEO_OUT_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TUSER" *) output VIDEO_OUT_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 VIDEO_OUT TVALID" *) output VIDEO_OUT_tvalid;
  output [19:0]acr_cts;
  output [19:0]acr_n;
  output acr_valid;
  input cable_detect;
  output fid;
  output hpd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LINK_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LINK_CLK, ASSOCIATED_BUSIF LINK_DATA0_IN:LINK_DATA1_IN:LINK_DATA2_IN, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_rxoutclk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input link_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_CPU_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_CPU_ACLK, ASSOCIATED_BUSIF SB_STATUS_IN:S_AXI_CPU_IN, ASSOCIATED_RESET s_axi_cpu_aresetn, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_cpu_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_CPU_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_CPU_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_cpu_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_AUDIO_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_AUDIO_ACLK, ASSOCIATED_BUSIF AUDIO_OUT, ASSOCIATED_RESET s_axis_audio_aresetn, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_audio_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_AUDIO_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_AUDIO_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_audio_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_VIDEO_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_VIDEO_ACLK, ASSOCIATED_BUSIF VIDEO_OUT, ASSOCIATED_RESET s_axis_video_aresetn, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_video_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_VIDEO_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_VIDEO_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_video_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.VIDEO_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.VIDEO_CLK, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_rx_video_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input video_clk;

  wire [31:0]AUDIO_OUT_tdata;
  wire [7:0]AUDIO_OUT_tid;
  wire AUDIO_OUT_tready;
  wire AUDIO_OUT_tvalid;
  wire DDC_OUT_scl_i;
  wire DDC_OUT_scl_o;
  wire DDC_OUT_scl_t;
  wire DDC_OUT_sda_i;
  wire DDC_OUT_sda_o;
  wire DDC_OUT_sda_t;
  wire [39:0]LINK_DATA0_IN_tdata;
  wire LINK_DATA0_IN_tvalid;
  wire [39:0]LINK_DATA1_IN_tdata;
  wire LINK_DATA1_IN_tvalid;
  wire [39:0]LINK_DATA2_IN_tdata;
  wire LINK_DATA2_IN_tvalid;
  wire [7:0]SB_STATUS_IN_tdata;
  wire SB_STATUS_IN_tvalid;
  wire [8:0]S_AXI_CPU_IN_araddr;
  wire [2:0]S_AXI_CPU_IN_arprot;
  wire S_AXI_CPU_IN_arready;
  wire S_AXI_CPU_IN_arvalid;
  wire [8:0]S_AXI_CPU_IN_awaddr;
  wire [2:0]S_AXI_CPU_IN_awprot;
  wire S_AXI_CPU_IN_awready;
  wire S_AXI_CPU_IN_awvalid;
  wire S_AXI_CPU_IN_bready;
  wire [1:0]S_AXI_CPU_IN_bresp;
  wire S_AXI_CPU_IN_bvalid;
  wire [31:0]S_AXI_CPU_IN_rdata;
  wire S_AXI_CPU_IN_rready;
  wire [1:0]S_AXI_CPU_IN_rresp;
  wire S_AXI_CPU_IN_rvalid;
  wire [31:0]S_AXI_CPU_IN_wdata;
  wire S_AXI_CPU_IN_wready;
  wire [3:0]S_AXI_CPU_IN_wstrb;
  wire S_AXI_CPU_IN_wvalid;
  wire [47:0]VIDEO_OUT_tdata;
  wire VIDEO_OUT_tlast;
  wire VIDEO_OUT_tready;
  wire VIDEO_OUT_tuser;
  wire VIDEO_OUT_tvalid;
  wire [19:0]acr_cts;
  wire [19:0]acr_n;
  wire acr_valid;
  wire cable_detect;
  wire fid;
  wire hpd;
  wire intf_net_v_hdmi_rx_VIDEO_OUT_ACTIVE_VIDEO;
  wire [47:0]intf_net_v_hdmi_rx_VIDEO_OUT_DATA;
  wire intf_net_v_hdmi_rx_VIDEO_OUT_FIELD;
  wire intf_net_v_hdmi_rx_VIDEO_OUT_HSYNC;
  wire intf_net_v_hdmi_rx_VIDEO_OUT_VSYNC;
  wire [95:0]intf_net_v_hdmi_rx_hdcp_out_TDATA;
  wire intf_net_v_hdmi_rx_hdcp_out_TID;
  wire intf_net_v_hdmi_rx_hdcp_out_TLAST;
  wire intf_net_v_hdmi_rx_hdcp_out_TREADY;
  wire [3:0]intf_net_v_hdmi_rx_hdcp_out_TSTRB;
  wire [31:0]intf_net_v_hdmi_rx_hdcp_out_TUSER;
  wire intf_net_v_hdmi_rx_hdcp_out_TVALID;
  wire irq;
  wire link_clk;
  wire [0:0]net_inverter_1_Res;
  wire net_v_hdmi_rx_axis_enable;
  wire net_v_hdmi_rx_bridge_pixel_drop;
  wire net_v_hdmi_rx_bridge_yuv420;
  wire net_v_hdmi_rx_m_axis_video_aresetn_out;
  wire [1:0]net_v_hdmi_rx_vid_format_out;
  wire net_v_hdmi_rx_video_reset;
  wire net_v_vid_in_axi4s_overflow;
  wire s_axi_cpu_aclk;
  wire s_axi_cpu_aresetn;
  wire s_axis_audio_aclk;
  wire s_axis_audio_aresetn;
  wire s_axis_video_aclk;
  wire s_axis_video_aresetn;
  wire video_clk;

  assign net_inverter_1_Res = ~ cable_detect;
  bd_8312_v_hdmi_rx_0 v_hdmi_rx
       (.acr_cts(acr_cts),
        .acr_n(acr_n),
        .acr_valid(acr_valid),
        .axis_enable(net_v_hdmi_rx_axis_enable),
        .bridge_overflow(net_v_vid_in_axi4s_overflow),
        .bridge_pixel_drop(net_v_hdmi_rx_bridge_pixel_drop),
        .bridge_yuv420(net_v_hdmi_rx_bridge_yuv420),
        .cable_detect(net_inverter_1_Res),
        .ddc_scl_i(DDC_OUT_scl_i),
        .ddc_scl_o(DDC_OUT_scl_o),
        .ddc_scl_t(DDC_OUT_scl_t),
        .ddc_sda_i(DDC_OUT_sda_i),
        .ddc_sda_o(DDC_OUT_sda_o),
        .ddc_sda_t(DDC_OUT_sda_t),
        .hpd(hpd),
        .irq(irq),
        .link_clk(link_clk),
        .link_data0(LINK_DATA0_IN_tdata),
        .link_data1(LINK_DATA1_IN_tdata),
        .link_data2(LINK_DATA2_IN_tdata),
        .link_valid0(LINK_DATA0_IN_tvalid),
        .link_valid1(LINK_DATA1_IN_tvalid),
        .link_valid2(LINK_DATA2_IN_tvalid),
        .m_axis_audio_aclk(s_axis_audio_aclk),
        .m_axis_audio_aresetn(s_axis_audio_aresetn),
        .m_axis_audio_tdata(AUDIO_OUT_tdata),
        .m_axis_audio_tid(AUDIO_OUT_tid),
        .m_axis_audio_tready(AUDIO_OUT_tready),
        .m_axis_audio_tvalid(AUDIO_OUT_tvalid),
        .m_axis_hdcp_tdata(intf_net_v_hdmi_rx_hdcp_out_TDATA),
        .m_axis_hdcp_tid(intf_net_v_hdmi_rx_hdcp_out_TID),
        .m_axis_hdcp_tlast(intf_net_v_hdmi_rx_hdcp_out_TLAST),
        .m_axis_hdcp_tready(intf_net_v_hdmi_rx_hdcp_out_TREADY),
        .m_axis_hdcp_tstrb(intf_net_v_hdmi_rx_hdcp_out_TSTRB),
        .m_axis_hdcp_tuser(intf_net_v_hdmi_rx_hdcp_out_TUSER),
        .m_axis_hdcp_tvalid(intf_net_v_hdmi_rx_hdcp_out_TVALID),
        .m_axis_video_aclk(s_axis_video_aclk),
        .m_axis_video_aresetn_in(s_axis_video_aresetn),
        .m_axis_video_aresetn_out(net_v_hdmi_rx_m_axis_video_aresetn_out),
        .s_axi_aclk(s_axi_cpu_aclk),
        .s_axi_araddr(S_AXI_CPU_IN_araddr),
        .s_axi_aresetn(s_axi_cpu_aresetn),
        .s_axi_arprot(S_AXI_CPU_IN_arprot),
        .s_axi_arready(S_AXI_CPU_IN_arready),
        .s_axi_arvalid(S_AXI_CPU_IN_arvalid),
        .s_axi_awaddr(S_AXI_CPU_IN_awaddr),
        .s_axi_awprot(S_AXI_CPU_IN_awprot),
        .s_axi_awready(S_AXI_CPU_IN_awready),
        .s_axi_awvalid(S_AXI_CPU_IN_awvalid),
        .s_axi_bready(S_AXI_CPU_IN_bready),
        .s_axi_bresp(S_AXI_CPU_IN_bresp),
        .s_axi_bvalid(S_AXI_CPU_IN_bvalid),
        .s_axi_rdata(S_AXI_CPU_IN_rdata),
        .s_axi_rready(S_AXI_CPU_IN_rready),
        .s_axi_rresp(S_AXI_CPU_IN_rresp),
        .s_axi_rvalid(S_AXI_CPU_IN_rvalid),
        .s_axi_wdata(S_AXI_CPU_IN_wdata),
        .s_axi_wready(S_AXI_CPU_IN_wready),
        .s_axi_wstrb(S_AXI_CPU_IN_wstrb),
        .s_axi_wvalid(S_AXI_CPU_IN_wvalid),
        .s_axis_hdcp_tdata(intf_net_v_hdmi_rx_hdcp_out_TDATA),
        .s_axis_hdcp_tid(intf_net_v_hdmi_rx_hdcp_out_TID),
        .s_axis_hdcp_tlast(intf_net_v_hdmi_rx_hdcp_out_TLAST),
        .s_axis_hdcp_tready(intf_net_v_hdmi_rx_hdcp_out_TREADY),
        .s_axis_hdcp_tstrb(intf_net_v_hdmi_rx_hdcp_out_TSTRB),
        .s_axis_hdcp_tuser(intf_net_v_hdmi_rx_hdcp_out_TUSER),
        .s_axis_hdcp_tvalid(intf_net_v_hdmi_rx_hdcp_out_TVALID),
        .sb_status_data(SB_STATUS_IN_tdata),
        .sb_status_valid(SB_STATUS_IN_tvalid),
        .vid_format_out(net_v_hdmi_rx_vid_format_out),
        .video_clk(video_clk),
        .video_data(intf_net_v_hdmi_rx_VIDEO_OUT_DATA),
        .video_de(intf_net_v_hdmi_rx_VIDEO_OUT_ACTIVE_VIDEO),
        .video_field(intf_net_v_hdmi_rx_VIDEO_OUT_FIELD),
        .video_hs(intf_net_v_hdmi_rx_VIDEO_OUT_HSYNC),
        .video_reset(net_v_hdmi_rx_video_reset),
        .video_vs(intf_net_v_hdmi_rx_VIDEO_OUT_VSYNC));
  bd_8312_v_vid_in_axi4s_0 v_vid_in_axi4s
       (.aclk(s_axis_video_aclk),
        .aclken(1'b1),
        .aresetn(net_v_hdmi_rx_m_axis_video_aresetn_out),
        .axis_enable(net_v_hdmi_rx_axis_enable),
        .drop_en(net_v_hdmi_rx_bridge_pixel_drop),
        .fid(fid),
        .m_axis_video_tdata(VIDEO_OUT_tdata),
        .m_axis_video_tlast(VIDEO_OUT_tlast),
        .m_axis_video_tready(VIDEO_OUT_tready),
        .m_axis_video_tuser(VIDEO_OUT_tuser),
        .m_axis_video_tvalid(VIDEO_OUT_tvalid),
        .overflow(net_v_vid_in_axi4s_overflow),
        .remap_420_en(net_v_hdmi_rx_bridge_yuv420),
        .vid_active_video(intf_net_v_hdmi_rx_VIDEO_OUT_ACTIVE_VIDEO),
        .vid_data(intf_net_v_hdmi_rx_VIDEO_OUT_DATA),
        .vid_field_id(intf_net_v_hdmi_rx_VIDEO_OUT_FIELD),
        .vid_format(net_v_hdmi_rx_vid_format_out),
        .vid_hblank(1'b0),
        .vid_hsync(intf_net_v_hdmi_rx_VIDEO_OUT_HSYNC),
        .vid_io_in_ce(1'b1),
        .vid_io_in_clk(video_clk),
        .vid_io_in_reset(net_v_hdmi_rx_video_reset),
        .vid_vblank(1'b0),
        .vid_vsync(intf_net_v_hdmi_rx_VIDEO_OUT_VSYNC));
endmodule
