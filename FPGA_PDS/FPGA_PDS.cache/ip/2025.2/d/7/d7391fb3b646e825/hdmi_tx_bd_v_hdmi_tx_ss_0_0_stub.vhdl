-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Wed Jan 21 12:37:28 2026
-- Host        : dan-alencar running 64-bit Linux Mint 22.2
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hdmi_tx_bd_v_hdmi_tx_ss_0_0_stub.vhdl
-- Design      : hdmi_tx_bd_v_hdmi_tx_ss_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_cpu_aclk : in STD_LOGIC;
    s_axi_cpu_aresetn : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    s_axis_audio_aclk : in STD_LOGIC;
    s_axis_audio_aresetn : in STD_LOGIC;
    acr_cts : in STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_n : in STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_valid : in STD_LOGIC;
    hpd : in STD_LOGIC;
    irq : out STD_LOGIC;
    video_clk : in STD_LOGIC;
    fid : in STD_LOGIC;
    locked : out STD_LOGIC;
    s_axis_video_aclk : in STD_LOGIC;
    s_axis_video_aresetn : in STD_LOGIC;
    VIDEO_IN_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    VIDEO_IN_tlast : in STD_LOGIC;
    VIDEO_IN_tready : out STD_LOGIC;
    VIDEO_IN_tuser : in STD_LOGIC;
    VIDEO_IN_tvalid : in STD_LOGIC;
    SB_STATUS_IN_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SB_STATUS_IN_tvalid : in STD_LOGIC;
    AUDIO_IN_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AUDIO_IN_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AUDIO_IN_tready : out STD_LOGIC;
    AUDIO_IN_tvalid : in STD_LOGIC;
    S_AXI_CPU_IN_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_CPU_IN_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CPU_IN_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CPU_IN_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CPU_IN_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CPU_IN_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_CPU_IN_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CPU_IN_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CPU_IN_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CPU_IN_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CPU_IN_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    DDC_OUT_scl_i : in STD_LOGIC;
    DDC_OUT_scl_o : out STD_LOGIC;
    DDC_OUT_scl_t : out STD_LOGIC;
    DDC_OUT_sda_i : in STD_LOGIC;
    DDC_OUT_sda_o : out STD_LOGIC;
    DDC_OUT_sda_t : out STD_LOGIC;
    LINK_DATA0_OUT_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA0_OUT_tvalid : out STD_LOGIC;
    LINK_DATA1_OUT_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA1_OUT_tvalid : out STD_LOGIC;
    LINK_DATA2_OUT_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    LINK_DATA2_OUT_tvalid : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hdmi_tx_bd_v_hdmi_tx_ss_0_0,bd_2339,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hdmi_tx_bd_v_hdmi_tx_ss_0_0,bd_2339,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_hdmi_tx_ss,x_ipVersion=3.2,x_ipCoreRevision=16,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,Component_Name=hdmi_tx_bd_v_hdmi_tx_ss_0_0,C_INCLUDE_HDCP_1_4=false,C_INCLUDE_HDCP_2_2=false,C_MAX_BITS_PER_COMPONENT=8,C_INPUT_PIXELS_PER_CLOCK=4,C_HYSTERESIS_LEVEL=12,C_ADDR_WIDTH=10,C_INCLUDE_LOW_RESO_VID=true,C_VID_INTERFACE=0,C_INCLUDE_YUV420_SUP=true,C_VALIDATION_ENABLE=false,C_HDMI_FAST_SWITCH=false,C_SMARTCONNECT_ENABLE=false,C_HPD_INVERT=false,C_EXDES_TOPOLOGY=0,C_EXDES_TX_PLL_SELECTION=6,C_EXDES_RX_PLL_SELECTION=0,C_EXDES_NIDRU=true,C_HDMI_VERSION=3,C_DDC2_EN=0,C_CH_WIDTH=8,C_VIDEO_MASK_ENABLE=1,C_ADD_MARK_DBG=0,C_EXDES_AXILITE_FREQ=100,C_MAX_RES=0,x_ipLicense=v_hdmi@2017.10(design_linking)}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "s_axi_cpu_aclk,s_axi_cpu_aresetn,link_clk,s_axis_audio_aclk,s_axis_audio_aresetn,acr_cts[19:0],acr_n[19:0],acr_valid,hpd,irq,video_clk,fid,locked,s_axis_video_aclk,s_axis_video_aresetn,VIDEO_IN_tdata[95:0],VIDEO_IN_tlast,VIDEO_IN_tready,VIDEO_IN_tuser,VIDEO_IN_tvalid,SB_STATUS_IN_tdata[7:0],SB_STATUS_IN_tvalid,AUDIO_IN_tdata[31:0],AUDIO_IN_tid[7:0],AUDIO_IN_tready,AUDIO_IN_tvalid,S_AXI_CPU_IN_awaddr[16:0],S_AXI_CPU_IN_awprot[2:0],S_AXI_CPU_IN_awvalid[0:0],S_AXI_CPU_IN_awready[0:0],S_AXI_CPU_IN_wdata[31:0],S_AXI_CPU_IN_wstrb[3:0],S_AXI_CPU_IN_wvalid[0:0],S_AXI_CPU_IN_wready[0:0],S_AXI_CPU_IN_bresp[1:0],S_AXI_CPU_IN_bvalid[0:0],S_AXI_CPU_IN_bready[0:0],S_AXI_CPU_IN_araddr[16:0],S_AXI_CPU_IN_arprot[2:0],S_AXI_CPU_IN_arvalid[0:0],S_AXI_CPU_IN_arready[0:0],S_AXI_CPU_IN_rdata[31:0],S_AXI_CPU_IN_rresp[1:0],S_AXI_CPU_IN_rvalid[0:0],S_AXI_CPU_IN_rready[0:0],DDC_OUT_scl_i,DDC_OUT_scl_o,DDC_OUT_scl_t,DDC_OUT_sda_i,DDC_OUT_sda_o,DDC_OUT_sda_t,LINK_DATA0_OUT_tdata[39:0],LINK_DATA0_OUT_tvalid,LINK_DATA1_OUT_tdata[39:0],LINK_DATA1_OUT_tvalid,LINK_DATA2_OUT_tdata[39:0],LINK_DATA2_OUT_tvalid";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_cpu_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.s_axi_cpu_aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s_axi_cpu_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_cpu_aclk : signal is "XIL_INTERFACENAME CLK.s_axi_cpu_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, ASSOCIATED_BUSIF SB_STATUS_IN:S_AXI_CPU_IN, ASSOCIATED_RESET s_axi_cpu_aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN s_sc_aclken";
  attribute X_INTERFACE_INFO of s_axi_cpu_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.s_axi_cpu_aresetn RST";
  attribute X_INTERFACE_MODE of s_axi_cpu_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_cpu_aresetn : signal is "XIL_INTERFACENAME RST.s_axi_cpu_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of link_clk : signal is "xilinx.com:signal:clock:1.0 CLK.link_clk CLK";
  attribute X_INTERFACE_MODE of link_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of link_clk : signal is "XIL_INTERFACENAME CLK.link_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, ASSOCIATED_BUSIF LINK_DATA0_OUT:LINK_DATA1_OUT:LINK_DATA2_OUT, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_audio_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.s_axis_audio_aclk CLK";
  attribute X_INTERFACE_MODE of s_axis_audio_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_audio_aclk : signal is "XIL_INTERFACENAME CLK.s_axis_audio_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, ASSOCIATED_BUSIF AUDIO_IN, ASSOCIATED_RESET s_axis_audio_aresetn, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_audio_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.s_axis_audio_aresetn RST";
  attribute X_INTERFACE_MODE of s_axis_audio_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_audio_aresetn : signal is "XIL_INTERFACENAME RST.s_axis_audio_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 INTR.irq INTERRUPT";
  attribute X_INTERFACE_MODE of irq : signal is "master";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME INTR.irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of video_clk : signal is "xilinx.com:signal:clock:1.0 CLK.video_clk CLK";
  attribute X_INTERFACE_MODE of video_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of video_clk : signal is "XIL_INTERFACENAME CLK.video_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, INSERT_VIP 0, ASSOCIATED_CLKEN clken";
  attribute X_INTERFACE_INFO of s_axis_video_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.s_axis_video_aclk CLK";
  attribute X_INTERFACE_MODE of s_axis_video_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_video_aclk : signal is "XIL_INTERFACENAME CLK.s_axis_video_aclk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, ASSOCIATED_BUSIF VIDEO_IN, ASSOCIATED_RESET s_axis_video_aresetn, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_video_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.s_axis_video_aresetn RST";
  attribute X_INTERFACE_MODE of s_axis_video_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_video_aresetn : signal is "XIL_INTERFACENAME RST.s_axis_video_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of VIDEO_IN_tdata : signal is "xilinx.com:interface:axis:1.0 VIDEO_IN TDATA";
  attribute X_INTERFACE_MODE of VIDEO_IN_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of VIDEO_IN_tdata : signal is "XIL_INTERFACENAME VIDEO_IN, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of VIDEO_IN_tlast : signal is "xilinx.com:interface:axis:1.0 VIDEO_IN TLAST";
  attribute X_INTERFACE_INFO of VIDEO_IN_tready : signal is "xilinx.com:interface:axis:1.0 VIDEO_IN TREADY";
  attribute X_INTERFACE_INFO of VIDEO_IN_tuser : signal is "xilinx.com:interface:axis:1.0 VIDEO_IN TUSER";
  attribute X_INTERFACE_INFO of VIDEO_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 VIDEO_IN TVALID";
  attribute X_INTERFACE_INFO of SB_STATUS_IN_tdata : signal is "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA";
  attribute X_INTERFACE_MODE of SB_STATUS_IN_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of SB_STATUS_IN_tdata : signal is "XIL_INTERFACENAME SB_STATUS_IN, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SB_STATUS_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID";
  attribute X_INTERFACE_INFO of AUDIO_IN_tdata : signal is "xilinx.com:interface:axis:1.0 AUDIO_IN TDATA";
  attribute X_INTERFACE_MODE of AUDIO_IN_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of AUDIO_IN_tdata : signal is "XIL_INTERFACENAME AUDIO_IN, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of AUDIO_IN_tid : signal is "xilinx.com:interface:axis:1.0 AUDIO_IN TID";
  attribute X_INTERFACE_INFO of AUDIO_IN_tready : signal is "xilinx.com:interface:axis:1.0 AUDIO_IN TREADY";
  attribute X_INTERFACE_INFO of AUDIO_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 AUDIO_IN TVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWADDR";
  attribute X_INTERFACE_MODE of S_AXI_CPU_IN_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_CPU_IN_awaddr : signal is "XIL_INTERFACENAME S_AXI_CPU_IN, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 17, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WDATA";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WSTRB";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BRESP";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RDATA";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RRESP";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RREADY";
  attribute X_INTERFACE_INFO of DDC_OUT_scl_i : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I";
  attribute X_INTERFACE_MODE of DDC_OUT_scl_i : signal is "master";
  attribute X_INTERFACE_INFO of DDC_OUT_scl_o : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O";
  attribute X_INTERFACE_INFO of DDC_OUT_scl_t : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T";
  attribute X_INTERFACE_INFO of DDC_OUT_sda_i : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I";
  attribute X_INTERFACE_INFO of DDC_OUT_sda_o : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O";
  attribute X_INTERFACE_INFO of DDC_OUT_sda_t : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T";
  attribute X_INTERFACE_INFO of LINK_DATA0_OUT_tdata : signal is "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TDATA";
  attribute X_INTERFACE_MODE of LINK_DATA0_OUT_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of LINK_DATA0_OUT_tdata : signal is "XIL_INTERFACENAME LINK_DATA0_OUT, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of LINK_DATA0_OUT_tvalid : signal is "xilinx.com:interface:axis:1.0 LINK_DATA0_OUT TVALID";
  attribute X_INTERFACE_INFO of LINK_DATA1_OUT_tdata : signal is "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TDATA";
  attribute X_INTERFACE_MODE of LINK_DATA1_OUT_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of LINK_DATA1_OUT_tdata : signal is "XIL_INTERFACENAME LINK_DATA1_OUT, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of LINK_DATA1_OUT_tvalid : signal is "xilinx.com:interface:axis:1.0 LINK_DATA1_OUT TVALID";
  attribute X_INTERFACE_INFO of LINK_DATA2_OUT_tdata : signal is "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TDATA";
  attribute X_INTERFACE_MODE of LINK_DATA2_OUT_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of LINK_DATA2_OUT_tdata : signal is "XIL_INTERFACENAME LINK_DATA2_OUT, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of LINK_DATA2_OUT_tvalid : signal is "xilinx.com:interface:axis:1.0 LINK_DATA2_OUT TVALID";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "bd_2339,Vivado 2025.2";
begin
end;
