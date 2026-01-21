-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Tue Jan 20 20:04:05 2026
-- Host        : dan-alencar running 64-bit Linux Mint 22.2
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vid_phy_controller_0_stub.vhdl
-- Design      : vid_phy_controller_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    tx_refclk_rdy : in STD_LOGIC;
    tx_tmds_clk : out STD_LOGIC;
    tx_video_clk : out STD_LOGIC;
    mgtrefclk0_pad_p_in : in STD_LOGIC;
    mgtrefclk0_pad_n_in : in STD_LOGIC;
    phy_txn_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_txp_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txoutclk : out STD_LOGIC;
    vid_phy_tx_axi4s_aclk : in STD_LOGIC;
    vid_phy_tx_axi4s_aresetn : in STD_LOGIC;
    vid_phy_tx_axi4s_ch0_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    vid_phy_tx_axi4s_ch0_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_phy_tx_axi4s_ch0_tvalid : in STD_LOGIC;
    vid_phy_tx_axi4s_ch0_tready : out STD_LOGIC;
    vid_phy_tx_axi4s_ch1_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    vid_phy_tx_axi4s_ch1_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_phy_tx_axi4s_ch1_tvalid : in STD_LOGIC;
    vid_phy_tx_axi4s_ch1_tready : out STD_LOGIC;
    vid_phy_tx_axi4s_ch2_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    vid_phy_tx_axi4s_ch2_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_phy_tx_axi4s_ch2_tvalid : in STD_LOGIC;
    vid_phy_tx_axi4s_ch2_tready : out STD_LOGIC;
    irq : out STD_LOGIC;
    vid_phy_sb_aclk : in STD_LOGIC;
    vid_phy_sb_aresetn : in STD_LOGIC;
    vid_phy_status_sb_tx_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vid_phy_status_sb_tx_tvalid : out STD_LOGIC;
    vid_phy_status_sb_tx_tready : in STD_LOGIC;
    vid_phy_axi4lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    vid_phy_axi4lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    vid_phy_axi4lite_awvalid : in STD_LOGIC;
    vid_phy_axi4lite_awready : out STD_LOGIC;
    vid_phy_axi4lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    vid_phy_axi4lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vid_phy_axi4lite_wvalid : in STD_LOGIC;
    vid_phy_axi4lite_wready : out STD_LOGIC;
    vid_phy_axi4lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vid_phy_axi4lite_bvalid : out STD_LOGIC;
    vid_phy_axi4lite_bready : in STD_LOGIC;
    vid_phy_axi4lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    vid_phy_axi4lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    vid_phy_axi4lite_arvalid : in STD_LOGIC;
    vid_phy_axi4lite_arready : out STD_LOGIC;
    vid_phy_axi4lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    vid_phy_axi4lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vid_phy_axi4lite_rvalid : out STD_LOGIC;
    vid_phy_axi4lite_rready : in STD_LOGIC;
    vid_phy_axi4lite_aclk : in STD_LOGIC;
    vid_phy_axi4lite_aresetn : in STD_LOGIC;
    drpclk : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "vid_phy_controller_0,vid_phy_controller_0_top,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "vid_phy_controller_0,vid_phy_controller_0_top,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=vid_phy_controller,x_ipVersion=2.2,x_ipCoreRevision=22,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_COMPONENT_NAME=vid_phy_controller_0,C_FAMILY=kintexuplus,C_DEVICE=xcau15p,C_SILICON_REVISION=0,C_SPEEDGRADE=-2,C_SupportLevel=1,C_TransceiverControl=false,c_sub_core_name=vid_phy_controller_0_gtwrapper,C_Tx_Protocol=1,C_Tx_Dp_Protocol=0,C_Rx_Protocol=3,C_Rx_Dp_Protocol=0,C_Tx_No_Of_Channels=4,C_Rx_No_Of_Channels=4,C_TX_PLL_SELECTION=6,C_TX_REFCLK_SEL=0,C_RX_PLL_SELECTION=0,C_RX_REFCLK_SEL=1,C_NIDRU_REFCLK_SEL=0,C_vid_phy_tx_axi4s_ch_TDATA_WIDTH=40,C_vid_phy_tx_axi4s_ch_INT_TDATA_WIDTH=40,C_vid_phy_tx_axi4s_ch_TUSER_WIDTH=1,C_vid_phy_rx_axi4s_ch_TDATA_WIDTH=40,C_vid_phy_rx_axi4s_ch_INT_TDATA_WIDTH=40,C_vid_phy_rx_axi4s_ch_TUSER_WIDTH=1,C_vid_phy_control_sb_tx_TDATA_WIDTH=1,C_vid_phy_status_sb_tx_TDATA_WIDTH=8,C_vid_phy_control_sb_rx_TDATA_WIDTH=1,C_vid_phy_status_sb_rx_TDATA_WIDTH=1,C_vid_phy_axi4lite_DATA_WIDTH=32,C_vid_phy_axi4lite_ADDR_WIDTH=10,C_NIDRU=0,Tx_Buffer_Bypass=1,C_Txrefclk_Rdy_Invert=0,C_INPUT_PIXELS_PER_CLOCK=4,C_Hdmi_Fast_Switch=1,C_Err_Irq_En=0,C_Use_GT_CH4_HDMI=1,C_INT_WIDTH=0,C_TX_TDATA_WIDTH=40,C_RX_TDATA_WIDTH=40}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "tx_refclk_rdy,tx_tmds_clk,tx_video_clk,mgtrefclk0_pad_p_in,mgtrefclk0_pad_n_in,phy_txn_out[3:0],phy_txp_out[3:0],txoutclk,vid_phy_tx_axi4s_aclk,vid_phy_tx_axi4s_aresetn,vid_phy_tx_axi4s_ch0_tdata[39:0],vid_phy_tx_axi4s_ch0_tuser[0:0],vid_phy_tx_axi4s_ch0_tvalid,vid_phy_tx_axi4s_ch0_tready,vid_phy_tx_axi4s_ch1_tdata[39:0],vid_phy_tx_axi4s_ch1_tuser[0:0],vid_phy_tx_axi4s_ch1_tvalid,vid_phy_tx_axi4s_ch1_tready,vid_phy_tx_axi4s_ch2_tdata[39:0],vid_phy_tx_axi4s_ch2_tuser[0:0],vid_phy_tx_axi4s_ch2_tvalid,vid_phy_tx_axi4s_ch2_tready,irq,vid_phy_sb_aclk,vid_phy_sb_aresetn,vid_phy_status_sb_tx_tdata[7:0],vid_phy_status_sb_tx_tvalid,vid_phy_status_sb_tx_tready,vid_phy_axi4lite_awaddr[9:0],vid_phy_axi4lite_awprot[2:0],vid_phy_axi4lite_awvalid,vid_phy_axi4lite_awready,vid_phy_axi4lite_wdata[31:0],vid_phy_axi4lite_wstrb[3:0],vid_phy_axi4lite_wvalid,vid_phy_axi4lite_wready,vid_phy_axi4lite_bresp[1:0],vid_phy_axi4lite_bvalid,vid_phy_axi4lite_bready,vid_phy_axi4lite_araddr[9:0],vid_phy_axi4lite_arprot[2:0],vid_phy_axi4lite_arvalid,vid_phy_axi4lite_arready,vid_phy_axi4lite_rdata[31:0],vid_phy_axi4lite_rresp[1:0],vid_phy_axi4lite_rvalid,vid_phy_axi4lite_rready,vid_phy_axi4lite_aclk,vid_phy_axi4lite_aresetn,drpclk";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of tx_tmds_clk : signal is "xilinx.com:signal:clock:1.0 tx_tmds_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of tx_tmds_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of tx_tmds_clk : signal is "XIL_INTERFACENAME tx_tmds_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tx_video_clk : signal is "xilinx.com:signal:clock:1.0 tx_video_clk CLK";
  attribute X_INTERFACE_MODE of tx_video_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of tx_video_clk : signal is "XIL_INTERFACENAME tx_video_clk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mgtrefclk0_pad_p_in : signal is "xilinx.com:signal:clock:1.0 mgtrefclk0_pad_p_in CLK";
  attribute X_INTERFACE_MODE of mgtrefclk0_pad_p_in : signal is "slave";
  attribute X_INTERFACE_PARAMETER of mgtrefclk0_pad_p_in : signal is "XIL_INTERFACENAME mgtrefclk0_pad_p_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mgtrefclk0_pad_n_in : signal is "xilinx.com:signal:clock:1.0 mgtrefclk0_pad_n_in CLK";
  attribute X_INTERFACE_MODE of mgtrefclk0_pad_n_in : signal is "slave";
  attribute X_INTERFACE_PARAMETER of mgtrefclk0_pad_n_in : signal is "XIL_INTERFACENAME mgtrefclk0_pad_n_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of txoutclk : signal is "xilinx.com:signal:clock:1.0 txoutclk CLK";
  attribute X_INTERFACE_MODE of txoutclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of txoutclk : signal is "XIL_INTERFACENAME txoutclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_aclk : signal is "xilinx.com:signal:clock:1.0 vid_phy_tx_axi4s_CLK CLK";
  attribute X_INTERFACE_MODE of vid_phy_tx_axi4s_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of vid_phy_tx_axi4s_aclk : signal is "XIL_INTERFACENAME vid_phy_tx_axi4s_CLK, ASSOCIATED_BUSIF vid_phy_tx_axi4s_ch0:vid_phy_tx_axi4s_ch1:vid_phy_tx_axi4s_ch2:vid_phy_tx_axi4s_ch3, ASSOCIATED_RESET vid_phy_tx_axi4s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_aresetn : signal is "xilinx.com:signal:reset:1.0 vid_phy_tx_axi4s_RST RST";
  attribute X_INTERFACE_MODE of vid_phy_tx_axi4s_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of vid_phy_tx_axi4s_aresetn : signal is "XIL_INTERFACENAME vid_phy_tx_axi4s_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_ch0_tdata : signal is "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0 TDATA";
  attribute X_INTERFACE_MODE of vid_phy_tx_axi4s_ch0_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of vid_phy_tx_axi4s_ch0_tdata : signal is "XIL_INTERFACENAME vid_phy_tx_axi4s_ch0, WIZ.DATA_WIDTH 32, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_ch0_tuser : signal is "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0 TUSER";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_ch0_tvalid : signal is "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0 TVALID";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_ch0_tready : signal is "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0 TREADY";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_ch1_tdata : signal is "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1 TDATA";
  attribute X_INTERFACE_MODE of vid_phy_tx_axi4s_ch1_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of vid_phy_tx_axi4s_ch1_tdata : signal is "XIL_INTERFACENAME vid_phy_tx_axi4s_ch1, WIZ.DATA_WIDTH 32, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_ch1_tuser : signal is "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1 TUSER";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_ch1_tvalid : signal is "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1 TVALID";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_ch1_tready : signal is "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1 TREADY";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_ch2_tdata : signal is "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2 TDATA";
  attribute X_INTERFACE_MODE of vid_phy_tx_axi4s_ch2_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of vid_phy_tx_axi4s_ch2_tdata : signal is "XIL_INTERFACENAME vid_phy_tx_axi4s_ch2, WIZ.DATA_WIDTH 32, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_ch2_tuser : signal is "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2 TUSER";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_ch2_tvalid : signal is "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2 TVALID";
  attribute X_INTERFACE_INFO of vid_phy_tx_axi4s_ch2_tready : signal is "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2 TREADY";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT";
  attribute X_INTERFACE_MODE of irq : signal is "master";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of vid_phy_sb_aclk : signal is "xilinx.com:signal:clock:1.0 vid_phy_sb_CLK CLK";
  attribute X_INTERFACE_MODE of vid_phy_sb_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of vid_phy_sb_aclk : signal is "XIL_INTERFACENAME vid_phy_sb_CLK, ASSOCIATED_BUSIF vid_phy_control_sb_tx:vid_phy_status_sb_tx:vid_phy_control_sb_rx:vid_phy_status_sb_rx, ASSOCIATED_RESET vid_phy_sb_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_phy_sb_aresetn : signal is "xilinx.com:signal:reset:1.0 vid_phy_sb_RST RST";
  attribute X_INTERFACE_MODE of vid_phy_sb_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of vid_phy_sb_aresetn : signal is "XIL_INTERFACENAME vid_phy_sb_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_phy_status_sb_tx_tdata : signal is "xilinx.com:interface:axis:1.0 vid_phy_status_sb_tx TDATA";
  attribute X_INTERFACE_MODE of vid_phy_status_sb_tx_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of vid_phy_status_sb_tx_tdata : signal is "XIL_INTERFACENAME vid_phy_status_sb_tx, WIZ.DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_phy_status_sb_tx_tvalid : signal is "xilinx.com:interface:axis:1.0 vid_phy_status_sb_tx TVALID";
  attribute X_INTERFACE_INFO of vid_phy_status_sb_tx_tready : signal is "xilinx.com:interface:axis:1.0 vid_phy_status_sb_tx TREADY";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite AWADDR";
  attribute X_INTERFACE_MODE of vid_phy_axi4lite_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of vid_phy_axi4lite_awaddr : signal is "XIL_INTERFACENAME vid_phy_axi4lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_awprot : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite AWPROT";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite AWVALID";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_awready : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite AWREADY";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_wdata : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite WDATA";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_wstrb : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite WSTRB";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite WVALID";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_wready : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite WREADY";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_bresp : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite BRESP";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite BVALID";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_bready : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite BREADY";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_araddr : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite ARADDR";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_arprot : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite ARPROT";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite ARVALID";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_arready : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite ARREADY";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_rdata : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite RDATA";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_rresp : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite RRESP";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite RVALID";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_rready : signal is "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite RREADY";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_aclk : signal is "xilinx.com:signal:clock:1.0 vid_phy_axi4lite_CLK CLK";
  attribute X_INTERFACE_MODE of vid_phy_axi4lite_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of vid_phy_axi4lite_aclk : signal is "XIL_INTERFACENAME vid_phy_axi4lite_CLK, ASSOCIATED_BUSIF vid_phy_axi4lite, ASSOCIATED_RESET vid_phy_axi4lite_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vid_phy_axi4lite_aresetn : signal is "xilinx.com:signal:reset:1.0 vid_phy_axi4lite_RST RST";
  attribute X_INTERFACE_MODE of vid_phy_axi4lite_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of vid_phy_axi4lite_aresetn : signal is "XIL_INTERFACENAME vid_phy_axi4lite_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of drpclk : signal is "xilinx.com:signal:clock:1.0 drpclk CLK";
  attribute X_INTERFACE_MODE of drpclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of drpclk : signal is "XIL_INTERFACENAME drpclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "vid_phy_controller_0_top,Vivado 2025.2";
begin
end;
