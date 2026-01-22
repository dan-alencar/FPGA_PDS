// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Jan 22 13:51:47 2026
// Host        : DESKTOP-6GRI2EI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hdmi_tx_bd_v_hdmi_tx_ss_0_0_sim_netlist.v
// Design      : hdmi_tx_bd_v_hdmi_tx_ss_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcau15p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "hdmi_tx_bd_v_hdmi_tx_ss_0_0.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2339
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
  wire [0:0]S_AXI_CPU_IN_arready;
  wire [0:0]S_AXI_CPU_IN_arvalid;
  wire [16:0]S_AXI_CPU_IN_awaddr;
  wire [2:0]S_AXI_CPU_IN_awprot;
  wire [0:0]S_AXI_CPU_IN_awready;
  wire [0:0]S_AXI_CPU_IN_awvalid;
  wire [0:0]S_AXI_CPU_IN_bready;
  wire [1:0]S_AXI_CPU_IN_bresp;
  wire [0:0]S_AXI_CPU_IN_bvalid;
  wire [31:0]S_AXI_CPU_IN_rdata;
  wire [0:0]S_AXI_CPU_IN_rready;
  wire [1:0]S_AXI_CPU_IN_rresp;
  wire [0:0]S_AXI_CPU_IN_rvalid;
  wire [31:0]S_AXI_CPU_IN_wdata;
  wire [0:0]S_AXI_CPU_IN_wready;
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
  wire [2:0]NLW_axi_smartconnect_M01_AXI_arprot_UNCONNECTED;
  wire [2:0]NLW_axi_smartconnect_M01_AXI_awprot_UNCONNECTED;
  wire NLW_v_axi4s_vid_out_sof_state_out_UNCONNECTED;
  wire NLW_v_axi4s_vid_out_vid_field_id_UNCONNECTED;
  wire NLW_v_axi4s_vid_out_vid_hblank_UNCONNECTED;
  wire NLW_v_axi4s_vid_out_vid_vblank_UNCONNECTED;
  wire [10:0]NLW_v_axi4s_vid_out_fifo_read_level_UNCONNECTED;
  wire [31:0]NLW_v_axi4s_vid_out_status_UNCONNECTED;
  wire NLW_v_hdmi_tx_m_axis_hdcp_aclk_UNCONNECTED;
  wire NLW_v_hdmi_tx_m_axis_hdcp_aclken_UNCONNECTED;
  wire NLW_v_hdmi_tx_m_axis_hdcp_aresetn_UNCONNECTED;
  wire NLW_v_tc_irq_UNCONNECTED;
  wire [0:0]NLW_v_tc_fsync_out_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "bd_2339_axi_smartconnect_0,bd_6eeb,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "bd_6eeb,Vivado 2025.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2339_axi_smartconnect_0 axi_smartconnect
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
        .M01_AXI_arprot(NLW_axi_smartconnect_M01_AXI_arprot_UNCONNECTED[2:0]),
        .M01_AXI_arready(intf_net_axi_smartconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(intf_net_axi_smartconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(intf_net_axi_smartconnect_M01_AXI_AWADDR),
        .M01_AXI_awprot(NLW_axi_smartconnect_M01_AXI_awprot_UNCONNECTED[2:0]),
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
        .S00_AXI_arready(S_AXI_CPU_IN_arready),
        .S00_AXI_arvalid(S_AXI_CPU_IN_arvalid),
        .S00_AXI_awaddr(S_AXI_CPU_IN_awaddr),
        .S00_AXI_awprot(S_AXI_CPU_IN_awprot),
        .S00_AXI_awready(S_AXI_CPU_IN_awready),
        .S00_AXI_awvalid(S_AXI_CPU_IN_awvalid),
        .S00_AXI_bready(S_AXI_CPU_IN_bready),
        .S00_AXI_bresp(S_AXI_CPU_IN_bresp),
        .S00_AXI_bvalid(S_AXI_CPU_IN_bvalid),
        .S00_AXI_rdata(S_AXI_CPU_IN_rdata),
        .S00_AXI_rready(S_AXI_CPU_IN_rready),
        .S00_AXI_rresp(S_AXI_CPU_IN_rresp),
        .S00_AXI_rvalid(S_AXI_CPU_IN_rvalid),
        .S00_AXI_wdata(S_AXI_CPU_IN_wdata),
        .S00_AXI_wready(S_AXI_CPU_IN_wready),
        .S00_AXI_wstrb(S_AXI_CPU_IN_wstrb),
        .S00_AXI_wvalid(S_AXI_CPU_IN_wvalid),
        .aclk(s_axi_cpu_aclk),
        .aresetn(s_axi_cpu_aresetn));
  (* CHECK_LICENSE_TYPE = "bd_2339_v_axi4s_vid_out_0,v_axi4s_vid_out_v4_0_20,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "v_axi4s_vid_out_v4_0_20,Vivado 2025.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2339_v_axi4s_vid_out_0 v_axi4s_vid_out
       (.aclk(s_axis_video_aclk),
        .aclken(1'b1),
        .aresetn(net_v_hdmi_tx_s_axis_video_aresetn_out),
        .fid(fid),
        .fifo_read_level(NLW_v_axi4s_vid_out_fifo_read_level_UNCONNECTED[10:0]),
        .locked(locked),
        .overflow(net_v_axi4s_vid_out_overflow),
        .remap_420_en(net_v_hdmi_tx_bridge_yuv420),
        .repeat_en(net_v_hdmi_tx_bridge_pixel_repeat),
        .s_axis_video_tdata(VIDEO_IN_tdata),
        .s_axis_video_tlast(VIDEO_IN_tlast),
        .s_axis_video_tready(VIDEO_IN_tready),
        .s_axis_video_tuser(VIDEO_IN_tuser),
        .s_axis_video_tvalid(VIDEO_IN_tvalid),
        .sof_state_out(NLW_v_axi4s_vid_out_sof_state_out_UNCONNECTED),
        .status(NLW_v_axi4s_vid_out_status_UNCONNECTED[31:0]),
        .underflow(net_v_axi4s_vid_out_underflow),
        .vid_active_video(intf_net_v_axi4s_vid_out_vid_io_out_ACTIVE_VIDEO),
        .vid_data(intf_net_v_axi4s_vid_out_vid_io_out_DATA),
        .vid_field_id(NLW_v_axi4s_vid_out_vid_field_id_UNCONNECTED),
        .vid_hblank(NLW_v_axi4s_vid_out_vid_hblank_UNCONNECTED),
        .vid_hsync(intf_net_v_axi4s_vid_out_vid_io_out_HSYNC),
        .vid_io_out_ce(1'b1),
        .vid_io_out_clk(video_clk),
        .vid_io_out_reset(net_v_hdmi_tx_video_reset),
        .vid_vblank(NLW_v_axi4s_vid_out_vid_vblank_UNCONNECTED),
        .vid_vsync(intf_net_v_axi4s_vid_out_vid_io_out_VSYNC),
        .video_format(net_v_hdmi_tx_vid_format_out),
        .vtg_active_video(intf_net_v_tc_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(net_v_axi4s_vid_out_vtg_ce),
        .vtg_field_id(intf_net_v_tc_vtiming_out_FIELD),
        .vtg_hblank(intf_net_v_tc_vtiming_out_HBLANK),
        .vtg_hsync(intf_net_v_tc_vtiming_out_HSYNC),
        .vtg_vblank(intf_net_v_tc_vtiming_out_VBLANK),
        .vtg_vsync(intf_net_v_tc_vtiming_out_VSYNC));
  (* CHECK_LICENSE_TYPE = "bd_2339_v_hdmi_tx_0,v_hdmi_tx_v3_0_6,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "v_hdmi_tx_v3_0_6,Vivado 2025.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2339_v_hdmi_tx_0 v_hdmi_tx
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
        .m_axis_hdcp_aclk(NLW_v_hdmi_tx_m_axis_hdcp_aclk_UNCONNECTED),
        .m_axis_hdcp_aclken(NLW_v_hdmi_tx_m_axis_hdcp_aclken_UNCONNECTED),
        .m_axis_hdcp_aresetn(NLW_v_hdmi_tx_m_axis_hdcp_aresetn_UNCONNECTED),
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
  (* CHECK_LICENSE_TYPE = "bd_2339_v_tc_0,v_tc,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "v_tc,Vivado 2025.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2339_v_tc_0 v_tc
       (.active_video_out(intf_net_v_tc_vtiming_out_ACTIVE_VIDEO),
        .clk(video_clk),
        .clken(1'b1),
        .field_id_out(intf_net_v_tc_vtiming_out_FIELD),
        .fsync_in(1'b0),
        .fsync_out(NLW_v_tc_fsync_out_UNCONNECTED[0]),
        .gen_clken(net_v_axi4s_vid_out_vtg_ce),
        .hblank_out(intf_net_v_tc_vtiming_out_HBLANK),
        .hsync_out(intf_net_v_tc_vtiming_out_HSYNC),
        .irq(NLW_v_tc_irq_UNCONNECTED),
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
  LUT1 #(
    .INIT(2'h1)) 
    v_tc_i_1
       (.I0(net_v_hdmi_tx_video_reset),
        .O(net_util_vector_logic_0_Res));
endmodule

(* CHECK_LICENSE_TYPE = "bd_2339_axi_smartconnect_0,bd_6eeb,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_6eeb,Vivado 2025.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2339_axi_smartconnect_0
   (aclk,
    aresetn,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_rready,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awvalid,
    M01_AXI_awready,
    M01_AXI_wdata,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M01_AXI_wready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_bready,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arvalid,
    M01_AXI_arready,
    M01_AXI_rdata,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, ASSOCIATED_BUSIF M00_AXI:M01_AXI:S00_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN s_sc_aclken" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 17, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [16:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [16:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [8:0]M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [8:0]M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [8:0]M01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *) output [2:0]M01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *) output M01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *) input M01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *) output [31:0]M01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *) output [3:0]M01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *) output M01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *) input M01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *) input [1:0]M01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *) input M01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *) output M01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *) output [8:0]M01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *) output [2:0]M01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *) output M01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *) input M01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *) input [31:0]M01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *) input [1:0]M01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *) input M01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *) output M01_AXI_rready;


endmodule

(* CHECK_LICENSE_TYPE = "bd_2339_v_axi4s_vid_out_0,v_axi4s_vid_out_v4_0_20,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "v_axi4s_vid_out_v4_0_20,Vivado 2025.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2339_v_axi4s_vid_out_0
   (aclk,
    aclken,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tready,
    s_axis_video_tuser,
    s_axis_video_tlast,
    fid,
    vid_io_out_clk,
    vid_io_out_ce,
    vid_io_out_reset,
    vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    vid_data,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_active_video,
    vtg_field_id,
    vtg_ce,
    video_format,
    locked,
    overflow,
    underflow,
    fifo_read_level,
    status,
    sof_state_out,
    repeat_en,
    remap_420_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF video_in, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_HIGH" *) input aclken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [95:0]s_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TVALID" *) input s_axis_video_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TREADY" *) output s_axis_video_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TUSER" *) input s_axis_video_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TLAST" *) input s_axis_video_tlast;
  input fid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_io_out_clk_intf CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_clk_intf, ASSOCIATED_BUSIF vid_io_out, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input vid_io_out_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 vid_io_out_ce_intf CE" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_ce_intf, POLARITY ACTIVE_HIGH" *) input vid_io_out_ce;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_io_out_reset_intf RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_reset_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input vid_io_out_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out ACTIVE_VIDEO" *) (* X_INTERFACE_MODE = "master" *) output vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VSYNC" *) output vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HSYNC" *) output vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VBLANK" *) output vid_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HBLANK" *) output vid_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out FIELD" *) output vid_field_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out DATA" *) output [95:0]vid_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VSYNC" *) (* X_INTERFACE_MODE = "slave" *) input vtg_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HSYNC" *) input vtg_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VBLANK" *) input vtg_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HBLANK" *) input vtg_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in ACTIVE_VIDEO" *) input vtg_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in FIELD" *) input vtg_field_id;
  output vtg_ce;
  input [1:0]video_format;
  output locked;
  output overflow;
  output underflow;
  output [10:0]fifo_read_level;
  output [31:0]status;
  output sof_state_out;
  input repeat_en;
  input remap_420_en;


endmodule

(* CHECK_LICENSE_TYPE = "bd_2339_v_hdmi_tx_0,v_hdmi_tx_v3_0_6,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "v_hdmi_tx_v3_0_6,Vivado 2025.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2339_v_hdmi_tx_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axis_video_aclk,
    s_axis_video_aresetn_in,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    video_clk,
    link_clk,
    video_vs,
    video_hs,
    video_data,
    video_de,
    video_vs_arb,
    video_hs_arb,
    video_de_arb,
    video_data_arb,
    s_axis_audio_aresetn,
    s_axis_audio_aclk,
    s_axis_audio_tready,
    s_axis_audio_tid,
    s_axis_audio_tdata,
    s_axis_audio_tvalid,
    acr_cts,
    acr_n,
    acr_valid,
    link_data0,
    link_data1,
    link_data2,
    link_valid0,
    link_valid1,
    link_valid2,
    hpd,
    bridge_locked,
    bridge_overflow,
    bridge_underflow,
    s_axis_video_aresetn_out,
    video_reset,
    sb_status_data,
    sb_status_valid,
    m_axis_hdcp_aresetn,
    m_axis_hdcp_aclk,
    m_axis_hdcp_aclken,
    m_axis_hdcp_tid,
    m_axis_hdcp_tuser,
    m_axis_hdcp_tdata,
    m_axis_hdcp_tstrb,
    m_axis_hdcp_tvalid,
    m_axis_hdcp_tlast,
    m_axis_hdcp_tready,
    s_axis_hdcp_tid,
    s_axis_hdcp_tuser,
    s_axis_hdcp_tdata,
    s_axis_hdcp_tstrb,
    s_axis_hdcp_tvalid,
    s_axis_hdcp_tlast,
    s_axis_hdcp_tready,
    ddc_scl_i,
    ddc_scl_o,
    ddc_scl_t,
    ddc_sda_i,
    ddc_sda_o,
    ddc_sda_t,
    irq,
    vid_format_out,
    bridge_yuv420,
    bridge_pixel_repeat);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI:SB_STATUS_IN, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXIS_VIDEO_ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_VIDEO_ACLK, ASSOCIATED_RESET s_axis_video_aresetn_in, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input s_axis_video_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXIS_VIDEO_ARESETN_IN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_VIDEO_ARESETN_IN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_video_aresetn_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, WIZ.DATA_WIDTH 32, WIZ.NUM_REG 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 VIDEO_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VIDEO_CLK, ASSOCIATED_BUSIF VIDEO_IN, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input video_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 LINK_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_CLK, ASSOCIATED_BUSIF LINK_DATA0_OUT:LINK_DATA1_OUT:LINK_DATA2_OUT, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input link_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_IN VSYNC" *) (* X_INTERFACE_MODE = "slave" *) input video_vs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_IN HSYNC" *) input video_hs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_IN DATA" *) input [95:0]video_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 VIDEO_IN ACTIVE_VIDEO" *) input video_de;
  input [3:0]video_vs_arb;
  input [3:0]video_hs_arb;
  input [3:0]video_de_arb;
  input [95:0]video_data_arb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AUD_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AUD_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_audio_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AUD_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AUD_AXI_CLK, ASSOCIATED_BUSIF AUDIO_IN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input s_axis_audio_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TREADY" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AUDIO_IN, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_audio_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TID" *) input [7:0]s_axis_audio_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TDATA" *) input [31:0]s_axis_audio_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AUDIO_IN TVALID" *) input s_axis_audio_tvalid;
  input [19:0]acr_cts;
  input [19:0]acr_n;
  input acr_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA0_OUT, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [39:0]link_data0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA1_OUT, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [39:0]link_data1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LINK_DATA2_OUT, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [39:0]link_data2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TVALID" *) output link_valid0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TVALID" *) output link_valid1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TVALID" *) output link_valid2;
  input hpd;
  input bridge_locked;
  input bridge_overflow;
  input bridge_underflow;
  output s_axis_video_aresetn_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 VIDEO_RESET RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VIDEO_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output video_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SB_STATUS_IN, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]sb_status_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID" *) input sb_status_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 HDCP_AXI_RST RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HDCP_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output m_axis_hdcp_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 HDCP_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HDCP_AXI_CLK, ASSOCIATED_BUSIF HDCP_IN:HDCP_OUT, ASSOCIATED_RESET m_axis_hdcp_aresetn, ASSOCIATED_CLKEN m_axis_hdcp_aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_2339_v_hdmi_tx_0_m_axis_hdcp_aclk, INSERT_VIP 0" *) output m_axis_hdcp_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 HDCP_AXI_CKE CE" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HDCP_AXI_CKE, POLARITY ACTIVE_LOW" *) output m_axis_hdcp_aclken;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HDCP_OUT, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN bd_2339_v_hdmi_tx_0_m_axis_hdcp_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_hdcp_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TUSER" *) output [31:0]m_axis_hdcp_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TDATA" *) output [95:0]m_axis_hdcp_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TSTRB" *) output [3:0]m_axis_hdcp_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TVALID" *) output m_axis_hdcp_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TLAST" *) output m_axis_hdcp_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_OUT TREADY" *) input m_axis_hdcp_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 HDCP_IN TID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HDCP_IN, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 32, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN bd_2339_v_hdmi_tx_0_m_axis_hdcp_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_hdcp_tid;
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
  output [1:0]vid_format_out;
  output bridge_yuv420;
  output bridge_pixel_repeat;


endmodule

(* CHECK_LICENSE_TYPE = "bd_2339_v_tc_0,v_tc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "v_tc,Vivado 2025.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2339_v_tc_0
   (clk,
    clken,
    s_axi_aclk,
    s_axi_aclken,
    gen_clken,
    sof_state,
    field_id_out,
    hsync_out,
    hblank_out,
    vsync_out,
    vblank_out,
    active_video_out,
    resetn,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    irq,
    fsync_in,
    fsync_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF vtiming_in:vtiming_out, ASSOCIATED_RESET resetn, ASSOCIATED_CLKEN clken, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 clken_intf CE" *) (* X_INTERFACE_MODE = "slave clken_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clken_intf, POLARITY ACTIVE_HIGH" *) input clken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave s_axi_aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk_intf, ASSOCIATED_BUSIF ctrl, ASSOCIATED_RESET s_axi_aresetn, ASSOCIATED_CLKEN s_axi_aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 s_axi_aclken_intf CE" *) (* X_INTERFACE_MODE = "slave s_axi_aclken_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclken_intf, POLARITY ACTIVE_HIGH" *) input s_axi_aclken;
  input gen_clken;
  input sof_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out FIELD" *) (* X_INTERFACE_MODE = "master vtiming_out" *) output field_id_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out HSYNC" *) output hsync_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out HBLANK" *) output hblank_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out VSYNC" *) output vsync_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out VBLANK" *) output vblank_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out ACTIVE_VIDEO" *) output active_video_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn_intf RST" *) (* X_INTERFACE_MODE = "slave resetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave s_axi_aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl AWADDR" *) (* X_INTERFACE_MODE = "slave ctrl" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl ARADDR" *) input [8:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT" *) (* X_INTERFACE_MODE = "master IRQ" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  input fsync_in;
  output [0:0]fsync_out;


endmodule

(* CHECK_LICENSE_TYPE = "hdmi_tx_bd_v_hdmi_tx_ss_0_0,bd_2339,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_2339,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_cpu_aclk,
    s_axi_cpu_aresetn,
    link_clk,
    s_axis_audio_aclk,
    s_axis_audio_aresetn,
    acr_cts,
    acr_n,
    acr_valid,
    hpd,
    irq,
    video_clk,
    fid,
    locked,
    s_axis_video_aclk,
    s_axis_video_aresetn,
    VIDEO_IN_tdata,
    VIDEO_IN_tlast,
    VIDEO_IN_tready,
    VIDEO_IN_tuser,
    VIDEO_IN_tvalid,
    SB_STATUS_IN_tdata,
    SB_STATUS_IN_tvalid,
    AUDIO_IN_tdata,
    AUDIO_IN_tid,
    AUDIO_IN_tready,
    AUDIO_IN_tvalid,
    S_AXI_CPU_IN_awaddr,
    S_AXI_CPU_IN_awprot,
    S_AXI_CPU_IN_awvalid,
    S_AXI_CPU_IN_awready,
    S_AXI_CPU_IN_wdata,
    S_AXI_CPU_IN_wstrb,
    S_AXI_CPU_IN_wvalid,
    S_AXI_CPU_IN_wready,
    S_AXI_CPU_IN_bresp,
    S_AXI_CPU_IN_bvalid,
    S_AXI_CPU_IN_bready,
    S_AXI_CPU_IN_araddr,
    S_AXI_CPU_IN_arprot,
    S_AXI_CPU_IN_arvalid,
    S_AXI_CPU_IN_arready,
    S_AXI_CPU_IN_rdata,
    S_AXI_CPU_IN_rresp,
    S_AXI_CPU_IN_rvalid,
    S_AXI_CPU_IN_rready,
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
    LINK_DATA2_OUT_tvalid);
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
  wire [0:0]S_AXI_CPU_IN_arready;
  wire [0:0]S_AXI_CPU_IN_arvalid;
  wire [16:0]S_AXI_CPU_IN_awaddr;
  wire [2:0]S_AXI_CPU_IN_awprot;
  wire [0:0]S_AXI_CPU_IN_awready;
  wire [0:0]S_AXI_CPU_IN_awvalid;
  wire [0:0]S_AXI_CPU_IN_bready;
  wire [1:0]S_AXI_CPU_IN_bresp;
  wire [0:0]S_AXI_CPU_IN_bvalid;
  wire [31:0]S_AXI_CPU_IN_rdata;
  wire [0:0]S_AXI_CPU_IN_rready;
  wire [1:0]S_AXI_CPU_IN_rresp;
  wire [0:0]S_AXI_CPU_IN_rvalid;
  wire [31:0]S_AXI_CPU_IN_wdata;
  wire [0:0]S_AXI_CPU_IN_wready;
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
  wire irq;
  wire link_clk;
  wire locked;
  wire s_axi_cpu_aclk;
  wire s_axi_cpu_aresetn;
  wire s_axis_audio_aclk;
  wire s_axis_audio_aresetn;
  wire s_axis_video_aclk;
  wire s_axis_video_aresetn;
  wire video_clk;

  (* HW_HANDOFF = "hdmi_tx_bd_v_hdmi_tx_ss_0_0.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_2339 inst
       (.AUDIO_IN_tdata(AUDIO_IN_tdata),
        .AUDIO_IN_tid(AUDIO_IN_tid),
        .AUDIO_IN_tready(AUDIO_IN_tready),
        .AUDIO_IN_tvalid(AUDIO_IN_tvalid),
        .DDC_OUT_scl_i(DDC_OUT_scl_i),
        .DDC_OUT_scl_o(DDC_OUT_scl_o),
        .DDC_OUT_scl_t(DDC_OUT_scl_t),
        .DDC_OUT_sda_i(DDC_OUT_sda_i),
        .DDC_OUT_sda_o(DDC_OUT_sda_o),
        .DDC_OUT_sda_t(DDC_OUT_sda_t),
        .LINK_DATA0_OUT_tdata(LINK_DATA0_OUT_tdata),
        .LINK_DATA0_OUT_tvalid(LINK_DATA0_OUT_tvalid),
        .LINK_DATA1_OUT_tdata(LINK_DATA1_OUT_tdata),
        .LINK_DATA1_OUT_tvalid(LINK_DATA1_OUT_tvalid),
        .LINK_DATA2_OUT_tdata(LINK_DATA2_OUT_tdata),
        .LINK_DATA2_OUT_tvalid(LINK_DATA2_OUT_tvalid),
        .SB_STATUS_IN_tdata(SB_STATUS_IN_tdata),
        .SB_STATUS_IN_tvalid(SB_STATUS_IN_tvalid),
        .S_AXI_CPU_IN_araddr(S_AXI_CPU_IN_araddr),
        .S_AXI_CPU_IN_arprot(S_AXI_CPU_IN_arprot),
        .S_AXI_CPU_IN_arready(S_AXI_CPU_IN_arready),
        .S_AXI_CPU_IN_arvalid(S_AXI_CPU_IN_arvalid),
        .S_AXI_CPU_IN_awaddr(S_AXI_CPU_IN_awaddr),
        .S_AXI_CPU_IN_awprot(S_AXI_CPU_IN_awprot),
        .S_AXI_CPU_IN_awready(S_AXI_CPU_IN_awready),
        .S_AXI_CPU_IN_awvalid(S_AXI_CPU_IN_awvalid),
        .S_AXI_CPU_IN_bready(S_AXI_CPU_IN_bready),
        .S_AXI_CPU_IN_bresp(S_AXI_CPU_IN_bresp),
        .S_AXI_CPU_IN_bvalid(S_AXI_CPU_IN_bvalid),
        .S_AXI_CPU_IN_rdata(S_AXI_CPU_IN_rdata),
        .S_AXI_CPU_IN_rready(S_AXI_CPU_IN_rready),
        .S_AXI_CPU_IN_rresp(S_AXI_CPU_IN_rresp),
        .S_AXI_CPU_IN_rvalid(S_AXI_CPU_IN_rvalid),
        .S_AXI_CPU_IN_wdata(S_AXI_CPU_IN_wdata),
        .S_AXI_CPU_IN_wready(S_AXI_CPU_IN_wready),
        .S_AXI_CPU_IN_wstrb(S_AXI_CPU_IN_wstrb),
        .S_AXI_CPU_IN_wvalid(S_AXI_CPU_IN_wvalid),
        .VIDEO_IN_tdata(VIDEO_IN_tdata),
        .VIDEO_IN_tlast(VIDEO_IN_tlast),
        .VIDEO_IN_tready(VIDEO_IN_tready),
        .VIDEO_IN_tuser(VIDEO_IN_tuser),
        .VIDEO_IN_tvalid(VIDEO_IN_tvalid),
        .acr_cts(acr_cts),
        .acr_n(acr_n),
        .acr_valid(acr_valid),
        .fid(fid),
        .hpd(hpd),
        .irq(irq),
        .link_clk(link_clk),
        .locked(locked),
        .s_axi_cpu_aclk(s_axi_cpu_aclk),
        .s_axi_cpu_aresetn(s_axi_cpu_aresetn),
        .s_axis_audio_aclk(s_axis_audio_aclk),
        .s_axis_audio_aresetn(s_axis_audio_aresetn),
        .s_axis_video_aclk(s_axis_video_aclk),
        .s_axis_video_aresetn(s_axis_video_aresetn),
        .video_clk(video_clk));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
