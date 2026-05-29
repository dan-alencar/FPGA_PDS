// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Aug  1 13:02:15 2024
// Host        : HP-Z4-G4-027564 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ exdes_hdmi_acr_ctrl_0_sim_netlist.v
// Design      : exdes_hdmi_acr_ctrl_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcau15p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "exdes_hdmi_acr_ctrl_0,hdmi_acr_ctrl_v1_0_1_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "hdmi_acr_ctrl_v1_0_1_wrapper,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (hdmi_clk,
    aud_clk,
    axi_aclk,
    axi_aresetn,
    axi_awvalid,
    axi_awready,
    axi_awaddr,
    axi_wvalid,
    axi_wready,
    axi_wdata,
    axi_wstrb,
    axi_bvalid,
    axi_bready,
    axi_bresp,
    axi_arvalid,
    axi_arready,
    axi_araddr,
    axi_rvalid,
    axi_rready,
    axi_rdata,
    axi_rresp,
    pll_lock_in,
    aud_resetn_out,
    aud_acr_valid_in,
    aud_acr_cts_in,
    aud_acr_n_in,
    aud_acr_valid_out,
    aud_acr_cts_out,
    aud_acr_n_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 hdmi_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hdmi_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_vid_phy_controller_0_tx_tmds_clk, INSERT_VIP 0" *) input hdmi_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aud_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_clk, ASSOCIATED_RESET aud_resetn:aud_resetn_out, ASSOCIATED_BUSIF m_axis_dividend:m_axis_divisor:s_axis_dout, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aud_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_aclk, ASSOCIATED_RESET axi_aresetn, ASSOCIATED_BUSIF axi, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, INSERT_VIP 0" *) input axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWVALID" *) input axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWREADY" *) output axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi AWADDR" *) input [31:0]axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WVALID" *) input axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WREADY" *) output axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WDATA" *) input [31:0]axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi WSTRB" *) input [3:0]axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi BVALID" *) output axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi BREADY" *) input axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi BRESP" *) output [1:0]axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARVALID" *) input axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARREADY" *) output axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi ARADDR" *) input [31:0]axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RVALID" *) output axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RREADY" *) input axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RDATA" *) output [31:0]axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]axi_rresp;
  input pll_lock_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aud_resetn_out RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_resetn_out, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output aud_resetn_out;
  input aud_acr_valid_in;
  input [19:0]aud_acr_cts_in;
  input [19:0]aud_acr_n_in;
  output aud_acr_valid_out;
  output [19:0]aud_acr_cts_out;
  output [19:0]aud_acr_n_out;

  wire \<const0> ;
  wire [19:0]aud_acr_cts_in;
  wire [19:0]aud_acr_cts_out;
  wire [19:0]aud_acr_n_in;
  wire [19:0]aud_acr_n_out;
  wire aud_acr_valid_in;
  wire aud_acr_valid_out;
  wire aud_clk;
  wire aud_resetn_out;
  wire axi_aclk;
  wire [31:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [31:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire [1:1]\^axi_bresp ;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire [1:1]\^axi_rresp ;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire axi_wready;
  wire axi_wvalid;
  wire hdmi_clk;
  wire pll_lock_in;
  wire NLW_inst_aud_resetn_UNCONNECTED;
  wire NLW_inst_m_axis_dividend_tvalid_UNCONNECTED;
  wire NLW_inst_m_axis_divisor_tvalid_UNCONNECTED;
  wire NLW_inst_s_axis_dout_tready_UNCONNECTED;
  wire [0:0]NLW_inst_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_inst_axi_rresp_UNCONNECTED;
  wire [63:0]NLW_inst_m_axis_dividend_tdata_UNCONNECTED;
  wire [31:0]NLW_inst_m_axis_divisor_tdata_UNCONNECTED;

  assign axi_bresp[1] = \^axi_bresp [1];
  assign axi_bresp[0] = \<const0> ;
  assign axi_rresp[1] = \^axi_rresp [1];
  assign axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_EXDES_TOPOLOGY = "0" *) 
  (* C_FAMILY = "kintexuplus" *) 
  (* C_HDMI_VERSION = "0" *) 
  (* P_DIVD_TDATA_W = "64" *) 
  (* P_DIVS_TDATA_W = "32" *) 
  (* P_DOUT_TDATA_W = "64" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_wrapper inst
       (.aud_acr_cts_in(aud_acr_cts_in),
        .aud_acr_cts_out(aud_acr_cts_out),
        .aud_acr_n_in(aud_acr_n_in),
        .aud_acr_n_out(aud_acr_n_out),
        .aud_acr_valid_in(aud_acr_valid_in),
        .aud_acr_valid_out(aud_acr_valid_out),
        .aud_clk(aud_clk),
        .aud_resetn(NLW_inst_aud_resetn_UNCONNECTED),
        .aud_resetn_out(aud_resetn_out),
        .axi_aclk(axi_aclk),
        .axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_araddr[7:0]}),
        .axi_aresetn(axi_aresetn),
        .axi_arready(axi_arready),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_awaddr[7:0]}),
        .axi_awready(axi_awready),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bresp({\^axi_bresp ,NLW_inst_axi_bresp_UNCONNECTED[0]}),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .axi_rready(axi_rready),
        .axi_rresp({\^axi_rresp ,NLW_inst_axi_rresp_UNCONNECTED[0]}),
        .axi_rvalid(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wready(axi_wready),
        .axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .axi_wvalid(axi_wvalid),
        .hdmi_clk(hdmi_clk),
        .m_axis_dividend_tdata(NLW_inst_m_axis_dividend_tdata_UNCONNECTED[63:0]),
        .m_axis_dividend_tready(1'b0),
        .m_axis_dividend_tvalid(NLW_inst_m_axis_dividend_tvalid_UNCONNECTED),
        .m_axis_divisor_tdata(NLW_inst_m_axis_divisor_tdata_UNCONNECTED[31:0]),
        .m_axis_divisor_tready(1'b0),
        .m_axis_divisor_tvalid(NLW_inst_m_axis_divisor_tvalid_UNCONNECTED),
        .pll_lock_in(pll_lock_in),
        .rx_link_clk(1'b0),
        .rx_tmds_clk(1'b0),
        .s_axis_dout_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_dout_tready(NLW_inst_s_axis_dout_tready_UNCONNECTED),
        .s_axis_dout_tvalid(1'b0),
        .tx_link_clk(1'b0),
        .tx_tmds_clk(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14
   (S_AXI_WREADY_reg,
    axi_awready,
    axi_bvalid,
    axi_bresp,
    axi_arready,
    axi_rvalid,
    axi_rdata,
    axi_rresp,
    aud_acr_valid_out,
    aud_acr_cts_out,
    aud_acr_n_out,
    aud_resetn_out,
    axi_wvalid,
    axi_aclk,
    axi_awvalid,
    axi_bready,
    axi_awaddr,
    axi_arvalid,
    axi_rready,
    axi_wdata,
    hdmi_clk,
    aud_clk,
    pll_lock_in,
    axi_araddr,
    aud_acr_valid_in,
    aud_acr_cts_in,
    aud_acr_n_in,
    axi_aresetn);
  output S_AXI_WREADY_reg;
  output axi_awready;
  output axi_bvalid;
  output [0:0]axi_bresp;
  output axi_arready;
  output axi_rvalid;
  output [31:0]axi_rdata;
  output [0:0]axi_rresp;
  output aud_acr_valid_out;
  output [19:0]aud_acr_cts_out;
  output [19:0]aud_acr_n_out;
  output aud_resetn_out;
  input axi_wvalid;
  input axi_aclk;
  input axi_awvalid;
  input axi_bready;
  input [7:0]axi_awaddr;
  input axi_arvalid;
  input axi_rready;
  input [31:0]axi_wdata;
  input hdmi_clk;
  input aud_clk;
  input pll_lock_in;
  input [7:0]axi_araddr;
  input aud_acr_valid_in;
  input [19:0]aud_acr_cts_in;
  input [19:0]aud_acr_n_in;
  input axi_aresetn;

  wire S_AXI_WREADY_reg;
  wire [19:0]aud_acr_cts_in;
  wire [19:0]aud_acr_cts_out;
  wire [19:0]aud_acr_n_in;
  wire [19:0]aud_acr_n_out;
  wire aud_acr_valid_in;
  wire aud_acr_valid_out;
  wire aud_clk;
  wire aud_resetn_out;
  wire axi_aclk;
  wire [7:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [7:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire [0:0]axi_bresp;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire [0:0]axi_rresp;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire axi_wvalid;
  wire hdmi_clk;
  wire pll_lock_in;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14_top hdmi_acr_ctrl_top_inst
       (.S_AXI_WREADY_reg(S_AXI_WREADY_reg),
        .aud_acr_cts_in(aud_acr_cts_in),
        .aud_acr_cts_out(aud_acr_cts_out),
        .aud_acr_n_in(aud_acr_n_in),
        .aud_acr_n_out(aud_acr_n_out),
        .aud_acr_valid_in(aud_acr_valid_in),
        .aud_acr_valid_out(aud_acr_valid_out),
        .aud_clk(aud_clk),
        .aud_resetn_out(aud_resetn_out),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr),
        .axi_aresetn(axi_aresetn),
        .axi_arready(axi_arready),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr),
        .axi_awready(axi_awready),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bresp(axi_bresp),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .axi_rready(axi_rready),
        .axi_rresp(axi_rresp),
        .axi_rvalid(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wvalid(axi_wvalid),
        .hdmi_clk(hdmi_clk),
        .pll_lock_in(pll_lock_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14_axi
   (data1,
    axi_rresp,
    S_AXI_WREADY_reg_0,
    axi_awready,
    axi_bvalid,
    axi_bresp,
    axi_arready,
    axi_rvalid,
    Q,
    axi_rdata,
    \rCKEDivVal_reg[2]_0 ,
    axi_wdata,
    axi_aclk,
    axi_wvalid,
    axi_aresetn,
    axi_awvalid,
    axi_bready,
    axi_awaddr,
    axi_arvalid,
    axi_rready,
    D,
    axi_araddr);
  output [3:0]data1;
  output [0:0]axi_rresp;
  output S_AXI_WREADY_reg_0;
  output axi_awready;
  output axi_bvalid;
  output [0:0]axi_bresp;
  output axi_arready;
  output axi_rvalid;
  output [31:0]Q;
  output [31:0]axi_rdata;
  output [2:0]\rCKEDivVal_reg[2]_0 ;
  input [31:0]axi_wdata;
  input axi_aclk;
  input axi_wvalid;
  input axi_aresetn;
  input axi_awvalid;
  input axi_bready;
  input [7:0]axi_awaddr;
  input axi_arvalid;
  input axi_rready;
  input [31:0]D;
  input [7:0]axi_araddr;

  wire [31:0]D;
  wire \FSM_onehot_stmRead[3]_i_1_n_0 ;
  wire \FSM_sequential_stmWrite[1]_i_1_n_0 ;
  wire [31:0]Q;
  wire S_AXI_ARREADY_i_1_n_0;
  wire S_AXI_AWREADY_i_1_n_0;
  wire S_AXI_AWREADY_i_2_n_0;
  wire S_AXI_BRESP0;
  wire \S_AXI_BRESP[1]_i_1_n_0 ;
  wire \S_AXI_BRESP[1]_i_2_n_0 ;
  wire S_AXI_BVALID_i_1_n_0;
  wire \S_AXI_RDATA[0]_i_1_n_0 ;
  wire \S_AXI_RDATA[0]_i_2_n_0 ;
  wire \S_AXI_RDATA[10]_i_1_n_0 ;
  wire \S_AXI_RDATA[11]_i_1_n_0 ;
  wire \S_AXI_RDATA[12]_i_1_n_0 ;
  wire \S_AXI_RDATA[13]_i_1_n_0 ;
  wire \S_AXI_RDATA[14]_i_1_n_0 ;
  wire \S_AXI_RDATA[15]_i_1_n_0 ;
  wire \S_AXI_RDATA[16]_i_1_n_0 ;
  wire \S_AXI_RDATA[17]_i_1_n_0 ;
  wire \S_AXI_RDATA[18]_i_1_n_0 ;
  wire \S_AXI_RDATA[19]_i_1_n_0 ;
  wire \S_AXI_RDATA[1]_i_1_n_0 ;
  wire \S_AXI_RDATA[1]_i_2_n_0 ;
  wire \S_AXI_RDATA[20]_i_1_n_0 ;
  wire \S_AXI_RDATA[21]_i_1_n_0 ;
  wire \S_AXI_RDATA[22]_i_1_n_0 ;
  wire \S_AXI_RDATA[23]_i_1_n_0 ;
  wire \S_AXI_RDATA[24]_i_1_n_0 ;
  wire \S_AXI_RDATA[25]_i_1_n_0 ;
  wire \S_AXI_RDATA[26]_i_1_n_0 ;
  wire \S_AXI_RDATA[27]_i_1_n_0 ;
  wire \S_AXI_RDATA[28]_i_1_n_0 ;
  wire \S_AXI_RDATA[29]_i_1_n_0 ;
  wire \S_AXI_RDATA[2]_i_1_n_0 ;
  wire \S_AXI_RDATA[2]_i_2_n_0 ;
  wire \S_AXI_RDATA[30]_i_1_n_0 ;
  wire \S_AXI_RDATA[31]_i_1_n_0 ;
  wire \S_AXI_RDATA[31]_i_2_n_0 ;
  wire \S_AXI_RDATA[31]_i_3_n_0 ;
  wire \S_AXI_RDATA[31]_i_4_n_0 ;
  wire \S_AXI_RDATA[31]_i_5_n_0 ;
  wire \S_AXI_RDATA[3]_i_1_n_0 ;
  wire \S_AXI_RDATA[3]_i_2_n_0 ;
  wire \S_AXI_RDATA[4]_i_1_n_0 ;
  wire \S_AXI_RDATA[5]_i_1_n_0 ;
  wire \S_AXI_RDATA[6]_i_1_n_0 ;
  wire \S_AXI_RDATA[7]_i_1_n_0 ;
  wire \S_AXI_RDATA[8]_i_1_n_0 ;
  wire \S_AXI_RDATA[9]_i_1_n_0 ;
  wire \S_AXI_RRESP[1]_i_1_n_0 ;
  wire \S_AXI_RRESP[1]_i_2_n_0 ;
  wire S_AXI_RVALID_i_1_n_0;
  wire S_AXI_WREADY_i_1_n_0;
  wire S_AXI_WREADY_reg_0;
  wire axi_aclk;
  wire [7:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [7:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire [0:0]axi_bresp;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire [0:0]axi_rresp;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire axi_wvalid;
  wire [3:0]data1;
  wire p_0_in0;
  wire \rCKEDivVal[2]_i_1_n_0 ;
  wire [2:0]\rCKEDivVal_reg[2]_0 ;
  wire [31:0]rCTSValue;
  wire rEnab_ACR;
  wire rNValue;
  wire [7:4]rReadAddr;
  wire \rReadAddr[0]_i_1_n_0 ;
  wire \rReadAddr[1]_i_1_n_0 ;
  wire \rReadAddr[2]_i_1_n_0 ;
  wire \rReadAddr[3]_i_1_n_0 ;
  wire \rReadAddr[4]_i_1_n_0 ;
  wire \rReadAddr[5]_i_1_n_0 ;
  wire \rReadAddr[6]_i_1_n_0 ;
  wire \rReadAddr[7]_i_1_n_0 ;
  wire \rReadAddr[7]_i_2_n_0 ;
  wire \rReadAddr_reg_n_0_[0] ;
  wire \rReadAddr_reg_n_0_[1] ;
  wire \rReadAddr_reg_n_0_[2] ;
  wire \rReadAddr_reg_n_0_[3] ;
  wire [31:0]rVersionNr;
  wire rVersionNr_0;
  wire rWriteAddr;
  wire \rWriteAddr_reg_n_0_[0] ;
  wire \rWriteAddr_reg_n_0_[1] ;
  wire \rWriteAddr_reg_n_0_[2] ;
  wire \rWriteAddr_reg_n_0_[3] ;
  wire \rWriteAddr_reg_n_0_[4] ;
  wire \rWriteAddr_reg_n_0_[6] ;
  wire \rWriteAddr_reg_n_0_[7] ;
  wire [3:0]stmRead;
  wire [1:0]stmWrite;
  wire [1:0]stmWrite__0;

  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_stmRead[3]_i_1 
       (.I0(stmRead[0]),
        .I1(stmRead[2]),
        .I2(axi_rready),
        .I3(stmRead[3]),
        .I4(stmRead[1]),
        .I5(axi_arvalid),
        .O(\FSM_onehot_stmRead[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_stmRead_reg[0] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_stmRead[3]_i_1_n_0 ),
        .D(stmRead[3]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(stmRead[0]));
  (* FSM_ENCODED_STATES = "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmRead_reg[1] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_stmRead[3]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(stmRead[0]),
        .Q(stmRead[1]));
  (* FSM_ENCODED_STATES = "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmRead_reg[2] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_stmRead[3]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(stmRead[1]),
        .Q(stmRead[2]));
  (* FSM_ENCODED_STATES = "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmRead_reg[3] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_stmRead[3]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(stmRead[2]),
        .Q(stmRead[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_stmWrite[0]_i_1 
       (.I0(stmWrite[0]),
        .O(stmWrite__0[0]));
  LUT5 #(
    .INIT(32'hFACF0ACF)) 
    \FSM_sequential_stmWrite[1]_i_1 
       (.I0(axi_wvalid),
        .I1(axi_awvalid),
        .I2(stmWrite[0]),
        .I3(stmWrite[1]),
        .I4(axi_bready),
        .O(\FSM_sequential_stmWrite[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_stmWrite[1]_i_2 
       (.I0(stmWrite[0]),
        .I1(stmWrite[1]),
        .O(stmWrite__0[1]));
  (* FSM_ENCODED_STATES = "sWriteReset:00,sWriteAddr:01,sWriteData:10,sWriteResp:11," *) 
  FDCE \FSM_sequential_stmWrite_reg[0] 
       (.C(axi_aclk),
        .CE(\FSM_sequential_stmWrite[1]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(stmWrite__0[0]),
        .Q(stmWrite[0]));
  (* FSM_ENCODED_STATES = "sWriteReset:00,sWriteAddr:01,sWriteData:10,sWriteResp:11," *) 
  FDCE \FSM_sequential_stmWrite_reg[1] 
       (.C(axi_aclk),
        .CE(\FSM_sequential_stmWrite[1]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(stmWrite__0[1]),
        .Q(stmWrite[1]));
  LUT4 #(
    .INIT(16'hDFDC)) 
    S_AXI_ARREADY_i_1
       (.I0(axi_arvalid),
        .I1(stmRead[0]),
        .I2(stmRead[1]),
        .I3(axi_arready),
        .O(S_AXI_ARREADY_i_1_n_0));
  FDCE S_AXI_ARREADY_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(S_AXI_ARREADY_i_1_n_0),
        .Q(axi_arready));
  LUT4 #(
    .INIT(16'h8BBB)) 
    S_AXI_AWREADY_i_1
       (.I0(axi_awready),
        .I1(stmWrite[1]),
        .I2(axi_awvalid),
        .I3(stmWrite[0]),
        .O(S_AXI_AWREADY_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AWREADY_i_2
       (.I0(axi_aresetn),
        .O(S_AXI_AWREADY_i_2_n_0));
  FDCE S_AXI_AWREADY_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(S_AXI_AWREADY_i_1_n_0),
        .Q(axi_awready));
  LUT6 #(
    .INIT(64'hEFEAFFFFEFEA0000)) 
    \S_AXI_BRESP[1]_i_1 
       (.I0(\S_AXI_BRESP[1]_i_2_n_0 ),
        .I1(\rWriteAddr_reg_n_0_[4] ),
        .I2(\rWriteAddr_reg_n_0_[2] ),
        .I3(\rWriteAddr_reg_n_0_[3] ),
        .I4(S_AXI_BRESP0),
        .I5(axi_bresp),
        .O(\S_AXI_BRESP[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \S_AXI_BRESP[1]_i_2 
       (.I0(\rWriteAddr_reg_n_0_[0] ),
        .I1(\rWriteAddr_reg_n_0_[6] ),
        .I2(\rWriteAddr_reg_n_0_[7] ),
        .I3(p_0_in0),
        .I4(\rWriteAddr_reg_n_0_[1] ),
        .O(\S_AXI_BRESP[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_BRESP[1]_i_3 
       (.I0(S_AXI_WREADY_reg_0),
        .I1(axi_wvalid),
        .O(S_AXI_BRESP0));
  FDCE \S_AXI_BRESP_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_BRESP[1]_i_1_n_0 ),
        .Q(axi_bresp));
  LUT5 #(
    .INIT(32'h5FF050C0)) 
    S_AXI_BVALID_i_1
       (.I0(axi_bready),
        .I1(axi_wvalid),
        .I2(stmWrite[1]),
        .I3(stmWrite[0]),
        .I4(axi_bvalid),
        .O(S_AXI_BVALID_i_1_n_0));
  FDCE S_AXI_BVALID_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(S_AXI_BVALID_i_1_n_0),
        .Q(axi_bvalid));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \S_AXI_RDATA[0]_i_1 
       (.I0(Q[0]),
        .I1(\S_AXI_RDATA[31]_i_5_n_0 ),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[0]),
        .I4(\S_AXI_RDATA[0]_i_2_n_0 ),
        .O(\S_AXI_RDATA[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \S_AXI_RDATA[0]_i_2 
       (.I0(data1[0]),
        .I1(rVersionNr[0]),
        .I2(\rReadAddr_reg_n_0_[2] ),
        .I3(stmRead[2]),
        .I4(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I5(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[10]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[10]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[10]),
        .I4(Q[10]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[11]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[11]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[11]),
        .I4(Q[11]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[12]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[12]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[12]),
        .I4(Q[12]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[13]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[13]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[13]),
        .I4(Q[13]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[14]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[14]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[14]),
        .I4(Q[14]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[15]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[15]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[15]),
        .I4(Q[15]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[16]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[16]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[16]),
        .I4(Q[16]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[17]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[17]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[17]),
        .I4(Q[17]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[18]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[18]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[18]),
        .I4(Q[18]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[19]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[19]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[19]),
        .I4(Q[19]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \S_AXI_RDATA[1]_i_1 
       (.I0(Q[1]),
        .I1(\S_AXI_RDATA[31]_i_5_n_0 ),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[1]),
        .I4(\S_AXI_RDATA[1]_i_2_n_0 ),
        .O(\S_AXI_RDATA[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \S_AXI_RDATA[1]_i_2 
       (.I0(data1[1]),
        .I1(rVersionNr[1]),
        .I2(\rReadAddr_reg_n_0_[2] ),
        .I3(stmRead[2]),
        .I4(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I5(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[20]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[20]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[20]),
        .I4(Q[20]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[21]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[21]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[21]),
        .I4(Q[21]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[22]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[22]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[22]),
        .I4(Q[22]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[23]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[23]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[23]),
        .I4(Q[23]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[24]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[24]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[24]),
        .I4(Q[24]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[25]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[25]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[25]),
        .I4(Q[25]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[26]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[26]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[26]),
        .I4(Q[26]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[27]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[27]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[27]),
        .I4(Q[27]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[28]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[28]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[28]),
        .I4(Q[28]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[29]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[29]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[29]),
        .I4(Q[29]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \S_AXI_RDATA[2]_i_1 
       (.I0(Q[2]),
        .I1(\S_AXI_RDATA[31]_i_5_n_0 ),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[2]),
        .I4(\S_AXI_RDATA[2]_i_2_n_0 ),
        .O(\S_AXI_RDATA[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \S_AXI_RDATA[2]_i_2 
       (.I0(data1[2]),
        .I1(rVersionNr[2]),
        .I2(\rReadAddr_reg_n_0_[2] ),
        .I3(stmRead[2]),
        .I4(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I5(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[30]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[30]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[30]),
        .I4(Q[30]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \S_AXI_RDATA[31]_i_1 
       (.I0(stmRead[0]),
        .I1(stmRead[2]),
        .O(\S_AXI_RDATA[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[31]_i_2 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[31]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[31]),
        .I4(Q[31]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \S_AXI_RDATA[31]_i_3 
       (.I0(\rReadAddr_reg_n_0_[2] ),
        .I1(stmRead[2]),
        .I2(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I3(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \S_AXI_RDATA[31]_i_4 
       (.I0(\rReadAddr_reg_n_0_[2] ),
        .I1(stmRead[2]),
        .I2(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I3(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \S_AXI_RDATA[31]_i_5 
       (.I0(\rReadAddr_reg_n_0_[2] ),
        .I1(stmRead[2]),
        .I2(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I3(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \S_AXI_RDATA[3]_i_1 
       (.I0(Q[3]),
        .I1(\S_AXI_RDATA[31]_i_5_n_0 ),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[3]),
        .I4(\S_AXI_RDATA[3]_i_2_n_0 ),
        .O(\S_AXI_RDATA[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \S_AXI_RDATA[3]_i_2 
       (.I0(data1[3]),
        .I1(rVersionNr[3]),
        .I2(\rReadAddr_reg_n_0_[2] ),
        .I3(stmRead[2]),
        .I4(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I5(\rReadAddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[4]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[4]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[4]),
        .I4(Q[4]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[5]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[5]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[5]),
        .I4(Q[5]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[6]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[6]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[6]),
        .I4(Q[6]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[7]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[7]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[7]),
        .I4(Q[7]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[8]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[8]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[8]),
        .I4(Q[8]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \S_AXI_RDATA[9]_i_1 
       (.I0(\S_AXI_RDATA[31]_i_3_n_0 ),
        .I1(rVersionNr[9]),
        .I2(\S_AXI_RDATA[31]_i_4_n_0 ),
        .I3(rCTSValue[9]),
        .I4(Q[9]),
        .I5(\S_AXI_RDATA[31]_i_5_n_0 ),
        .O(\S_AXI_RDATA[9]_i_1_n_0 ));
  FDCE \S_AXI_RDATA_reg[0] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[0]_i_1_n_0 ),
        .Q(axi_rdata[0]));
  FDCE \S_AXI_RDATA_reg[10] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[10]_i_1_n_0 ),
        .Q(axi_rdata[10]));
  FDCE \S_AXI_RDATA_reg[11] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[11]_i_1_n_0 ),
        .Q(axi_rdata[11]));
  FDCE \S_AXI_RDATA_reg[12] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[12]_i_1_n_0 ),
        .Q(axi_rdata[12]));
  FDCE \S_AXI_RDATA_reg[13] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[13]_i_1_n_0 ),
        .Q(axi_rdata[13]));
  FDCE \S_AXI_RDATA_reg[14] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[14]_i_1_n_0 ),
        .Q(axi_rdata[14]));
  FDCE \S_AXI_RDATA_reg[15] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[15]_i_1_n_0 ),
        .Q(axi_rdata[15]));
  FDCE \S_AXI_RDATA_reg[16] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[16]_i_1_n_0 ),
        .Q(axi_rdata[16]));
  FDCE \S_AXI_RDATA_reg[17] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[17]_i_1_n_0 ),
        .Q(axi_rdata[17]));
  FDCE \S_AXI_RDATA_reg[18] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[18]_i_1_n_0 ),
        .Q(axi_rdata[18]));
  FDCE \S_AXI_RDATA_reg[19] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[19]_i_1_n_0 ),
        .Q(axi_rdata[19]));
  FDCE \S_AXI_RDATA_reg[1] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[1]_i_1_n_0 ),
        .Q(axi_rdata[1]));
  FDCE \S_AXI_RDATA_reg[20] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[20]_i_1_n_0 ),
        .Q(axi_rdata[20]));
  FDCE \S_AXI_RDATA_reg[21] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[21]_i_1_n_0 ),
        .Q(axi_rdata[21]));
  FDCE \S_AXI_RDATA_reg[22] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[22]_i_1_n_0 ),
        .Q(axi_rdata[22]));
  FDCE \S_AXI_RDATA_reg[23] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[23]_i_1_n_0 ),
        .Q(axi_rdata[23]));
  FDCE \S_AXI_RDATA_reg[24] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[24]_i_1_n_0 ),
        .Q(axi_rdata[24]));
  FDCE \S_AXI_RDATA_reg[25] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[25]_i_1_n_0 ),
        .Q(axi_rdata[25]));
  FDCE \S_AXI_RDATA_reg[26] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[26]_i_1_n_0 ),
        .Q(axi_rdata[26]));
  FDCE \S_AXI_RDATA_reg[27] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[27]_i_1_n_0 ),
        .Q(axi_rdata[27]));
  FDCE \S_AXI_RDATA_reg[28] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[28]_i_1_n_0 ),
        .Q(axi_rdata[28]));
  FDCE \S_AXI_RDATA_reg[29] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[29]_i_1_n_0 ),
        .Q(axi_rdata[29]));
  FDCE \S_AXI_RDATA_reg[2] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[2]_i_1_n_0 ),
        .Q(axi_rdata[2]));
  FDCE \S_AXI_RDATA_reg[30] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[30]_i_1_n_0 ),
        .Q(axi_rdata[30]));
  FDCE \S_AXI_RDATA_reg[31] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[31]_i_2_n_0 ),
        .Q(axi_rdata[31]));
  FDCE \S_AXI_RDATA_reg[3] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[3]_i_1_n_0 ),
        .Q(axi_rdata[3]));
  FDCE \S_AXI_RDATA_reg[4] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[4]_i_1_n_0 ),
        .Q(axi_rdata[4]));
  FDCE \S_AXI_RDATA_reg[5] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[5]_i_1_n_0 ),
        .Q(axi_rdata[5]));
  FDCE \S_AXI_RDATA_reg[6] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[6]_i_1_n_0 ),
        .Q(axi_rdata[6]));
  FDCE \S_AXI_RDATA_reg[7] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[7]_i_1_n_0 ),
        .Q(axi_rdata[7]));
  FDCE \S_AXI_RDATA_reg[8] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[8]_i_1_n_0 ),
        .Q(axi_rdata[8]));
  FDCE \S_AXI_RDATA_reg[9] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RDATA[9]_i_1_n_0 ),
        .Q(axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RRESP[1]_i_1 
       (.I0(\S_AXI_RRESP[1]_i_2_n_0 ),
        .I1(stmRead[2]),
        .O(\S_AXI_RRESP[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \S_AXI_RRESP[1]_i_2 
       (.I0(rReadAddr[6]),
        .I1(rReadAddr[7]),
        .I2(rReadAddr[4]),
        .I3(rReadAddr[5]),
        .I4(\rReadAddr_reg_n_0_[1] ),
        .I5(\rReadAddr_reg_n_0_[0] ),
        .O(\S_AXI_RRESP[1]_i_2_n_0 ));
  FDCE \S_AXI_RRESP_reg[1] 
       (.C(axi_aclk),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\S_AXI_RRESP[1]_i_1_n_0 ),
        .Q(axi_rresp));
  LUT5 #(
    .INIT(32'hDDCFDDCC)) 
    S_AXI_RVALID_i_1
       (.I0(axi_rready),
        .I1(stmRead[2]),
        .I2(stmRead[0]),
        .I3(stmRead[3]),
        .I4(axi_rvalid),
        .O(S_AXI_RVALID_i_1_n_0));
  FDCE S_AXI_RVALID_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(S_AXI_RVALID_i_1_n_0),
        .Q(axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF443044)) 
    S_AXI_WREADY_i_1
       (.I0(axi_wvalid),
        .I1(stmWrite[1]),
        .I2(axi_awvalid),
        .I3(stmWrite[0]),
        .I4(S_AXI_WREADY_reg_0),
        .O(S_AXI_WREADY_i_1_n_0));
  FDCE S_AXI_WREADY_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(S_AXI_WREADY_i_1_n_0),
        .Q(S_AXI_WREADY_reg_0));
  FDCE rACR_Sel_reg
       (.C(axi_aclk),
        .CE(rEnab_ACR),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[1]),
        .Q(data1[1]));
  FDCE rAud_Reset_reg
       (.C(axi_aclk),
        .CE(rEnab_ACR),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[2]),
        .Q(data1[2]));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \rCKEDivVal[2]_i_1 
       (.I0(axi_wvalid),
        .I1(S_AXI_WREADY_reg_0),
        .I2(\S_AXI_BRESP[1]_i_2_n_0 ),
        .I3(\rWriteAddr_reg_n_0_[2] ),
        .I4(\rWriteAddr_reg_n_0_[4] ),
        .I5(\rWriteAddr_reg_n_0_[3] ),
        .O(\rCKEDivVal[2]_i_1_n_0 ));
  FDPE \rCKEDivVal_reg[0] 
       (.C(axi_aclk),
        .CE(\rCKEDivVal[2]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(\rCKEDivVal_reg[2]_0 [0]));
  FDPE \rCKEDivVal_reg[1] 
       (.C(axi_aclk),
        .CE(\rCKEDivVal[2]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(\rCKEDivVal_reg[2]_0 [1]));
  FDCE \rCKEDivVal_reg[2] 
       (.C(axi_aclk),
        .CE(\rCKEDivVal[2]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[2]),
        .Q(\rCKEDivVal_reg[2]_0 [2]));
  FDCE \rCTSValue_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[0]),
        .Q(rCTSValue[0]));
  FDCE \rCTSValue_reg[10] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[10]),
        .Q(rCTSValue[10]));
  FDCE \rCTSValue_reg[11] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[11]),
        .Q(rCTSValue[11]));
  FDCE \rCTSValue_reg[12] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[12]),
        .Q(rCTSValue[12]));
  FDCE \rCTSValue_reg[13] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[13]),
        .Q(rCTSValue[13]));
  FDCE \rCTSValue_reg[14] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[14]),
        .Q(rCTSValue[14]));
  FDCE \rCTSValue_reg[15] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[15]),
        .Q(rCTSValue[15]));
  FDCE \rCTSValue_reg[16] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[16]),
        .Q(rCTSValue[16]));
  FDCE \rCTSValue_reg[17] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[17]),
        .Q(rCTSValue[17]));
  FDCE \rCTSValue_reg[18] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[18]),
        .Q(rCTSValue[18]));
  FDCE \rCTSValue_reg[19] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[19]),
        .Q(rCTSValue[19]));
  FDCE \rCTSValue_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[1]),
        .Q(rCTSValue[1]));
  FDCE \rCTSValue_reg[20] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[20]),
        .Q(rCTSValue[20]));
  FDCE \rCTSValue_reg[21] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[21]),
        .Q(rCTSValue[21]));
  FDCE \rCTSValue_reg[22] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[22]),
        .Q(rCTSValue[22]));
  FDCE \rCTSValue_reg[23] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[23]),
        .Q(rCTSValue[23]));
  FDCE \rCTSValue_reg[24] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[24]),
        .Q(rCTSValue[24]));
  FDCE \rCTSValue_reg[25] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[25]),
        .Q(rCTSValue[25]));
  FDCE \rCTSValue_reg[26] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[26]),
        .Q(rCTSValue[26]));
  FDCE \rCTSValue_reg[27] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[27]),
        .Q(rCTSValue[27]));
  FDCE \rCTSValue_reg[28] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[28]),
        .Q(rCTSValue[28]));
  FDCE \rCTSValue_reg[29] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[29]),
        .Q(rCTSValue[29]));
  FDCE \rCTSValue_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[2]),
        .Q(rCTSValue[2]));
  FDCE \rCTSValue_reg[30] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[30]),
        .Q(rCTSValue[30]));
  FDCE \rCTSValue_reg[31] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[31]),
        .Q(rCTSValue[31]));
  FDCE \rCTSValue_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[3]),
        .Q(rCTSValue[3]));
  FDCE \rCTSValue_reg[4] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[4]),
        .Q(rCTSValue[4]));
  FDCE \rCTSValue_reg[5] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[5]),
        .Q(rCTSValue[5]));
  FDCE \rCTSValue_reg[6] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[6]),
        .Q(rCTSValue[6]));
  FDCE \rCTSValue_reg[7] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[7]),
        .Q(rCTSValue[7]));
  FDCE \rCTSValue_reg[8] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[8]),
        .Q(rCTSValue[8]));
  FDCE \rCTSValue_reg[9] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(D[9]),
        .Q(rCTSValue[9]));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    rEnab_ACR_i_1
       (.I0(axi_wvalid),
        .I1(S_AXI_WREADY_reg_0),
        .I2(\S_AXI_BRESP[1]_i_2_n_0 ),
        .I3(\rWriteAddr_reg_n_0_[2] ),
        .I4(\rWriteAddr_reg_n_0_[3] ),
        .I5(\rWriteAddr_reg_n_0_[4] ),
        .O(rEnab_ACR));
  FDCE rEnab_ACR_reg
       (.C(axi_aclk),
        .CE(rEnab_ACR),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[0]),
        .Q(data1[0]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \rNValue[31]_i_1 
       (.I0(axi_wvalid),
        .I1(S_AXI_WREADY_reg_0),
        .I2(\S_AXI_BRESP[1]_i_2_n_0 ),
        .I3(\rWriteAddr_reg_n_0_[2] ),
        .I4(\rWriteAddr_reg_n_0_[3] ),
        .I5(\rWriteAddr_reg_n_0_[4] ),
        .O(rNValue));
  FDCE \rNValue_reg[0] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[0]),
        .Q(Q[0]));
  FDCE \rNValue_reg[10] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[10]),
        .Q(Q[10]));
  FDCE \rNValue_reg[11] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[11]),
        .Q(Q[11]));
  FDCE \rNValue_reg[12] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[12]),
        .Q(Q[12]));
  FDCE \rNValue_reg[13] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[13]),
        .Q(Q[13]));
  FDCE \rNValue_reg[14] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[14]),
        .Q(Q[14]));
  FDCE \rNValue_reg[15] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[15]),
        .Q(Q[15]));
  FDCE \rNValue_reg[16] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[16]),
        .Q(Q[16]));
  FDCE \rNValue_reg[17] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[17]),
        .Q(Q[17]));
  FDCE \rNValue_reg[18] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[18]),
        .Q(Q[18]));
  FDCE \rNValue_reg[19] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[19]),
        .Q(Q[19]));
  FDCE \rNValue_reg[1] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[1]),
        .Q(Q[1]));
  FDCE \rNValue_reg[20] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[20]),
        .Q(Q[20]));
  FDCE \rNValue_reg[21] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[21]),
        .Q(Q[21]));
  FDCE \rNValue_reg[22] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[22]),
        .Q(Q[22]));
  FDCE \rNValue_reg[23] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[23]),
        .Q(Q[23]));
  FDCE \rNValue_reg[24] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[24]),
        .Q(Q[24]));
  FDCE \rNValue_reg[25] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[25]),
        .Q(Q[25]));
  FDCE \rNValue_reg[26] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[26]),
        .Q(Q[26]));
  FDCE \rNValue_reg[27] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[27]),
        .Q(Q[27]));
  FDCE \rNValue_reg[28] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[28]),
        .Q(Q[28]));
  FDCE \rNValue_reg[29] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[29]),
        .Q(Q[29]));
  FDCE \rNValue_reg[2] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[2]),
        .Q(Q[2]));
  FDCE \rNValue_reg[30] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[30]),
        .Q(Q[30]));
  FDCE \rNValue_reg[31] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[31]),
        .Q(Q[31]));
  FDCE \rNValue_reg[3] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[3]),
        .Q(Q[3]));
  FDCE \rNValue_reg[4] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[4]),
        .Q(Q[4]));
  FDCE \rNValue_reg[5] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[5]),
        .Q(Q[5]));
  FDCE \rNValue_reg[6] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[6]),
        .Q(Q[6]));
  FDCE \rNValue_reg[7] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[7]),
        .Q(Q[7]));
  FDCE \rNValue_reg[8] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[8]),
        .Q(Q[8]));
  FDCE \rNValue_reg[9] 
       (.C(axi_aclk),
        .CE(rNValue),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[9]),
        .Q(Q[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[0]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[0]),
        .O(\rReadAddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[1]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[1]),
        .O(\rReadAddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[2]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[2]),
        .O(\rReadAddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[3]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[3]),
        .O(\rReadAddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[4]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[4]),
        .O(\rReadAddr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[5]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[5]),
        .O(\rReadAddr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[6]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_araddr[6]),
        .O(\rReadAddr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \rReadAddr[7]_i_1 
       (.I0(stmRead[1]),
        .I1(axi_arvalid),
        .I2(stmRead[0]),
        .O(\rReadAddr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[7]_i_2 
       (.I0(stmRead[1]),
        .I1(axi_araddr[7]),
        .O(\rReadAddr[7]_i_2_n_0 ));
  FDCE \rReadAddr_reg[0] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[0]_i_1_n_0 ),
        .Q(\rReadAddr_reg_n_0_[0] ));
  FDCE \rReadAddr_reg[1] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[1]_i_1_n_0 ),
        .Q(\rReadAddr_reg_n_0_[1] ));
  FDCE \rReadAddr_reg[2] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[2]_i_1_n_0 ),
        .Q(\rReadAddr_reg_n_0_[2] ));
  FDCE \rReadAddr_reg[3] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[3]_i_1_n_0 ),
        .Q(\rReadAddr_reg_n_0_[3] ));
  FDCE \rReadAddr_reg[4] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[4]_i_1_n_0 ),
        .Q(rReadAddr[4]));
  FDCE \rReadAddr_reg[5] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[5]_i_1_n_0 ),
        .Q(rReadAddr[5]));
  FDCE \rReadAddr_reg[6] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[6]_i_1_n_0 ),
        .Q(rReadAddr[6]));
  FDCE \rReadAddr_reg[7] 
       (.C(axi_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(\rReadAddr[7]_i_2_n_0 ),
        .Q(rReadAddr[7]));
  FDCE rTMDSClkRatio_reg
       (.C(axi_aclk),
        .CE(rEnab_ACR),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[3]),
        .Q(data1[3]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \rVersionNr[31]_i_1 
       (.I0(axi_wvalid),
        .I1(S_AXI_WREADY_reg_0),
        .I2(\S_AXI_BRESP[1]_i_2_n_0 ),
        .I3(\rWriteAddr_reg_n_0_[2] ),
        .I4(\rWriteAddr_reg_n_0_[3] ),
        .I5(\rWriteAddr_reg_n_0_[4] ),
        .O(rVersionNr_0));
  FDPE \rVersionNr_reg[0] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[0]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[0]));
  FDPE \rVersionNr_reg[10] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[10]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[10]));
  FDPE \rVersionNr_reg[11] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[11]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[11]));
  FDPE \rVersionNr_reg[12] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[12]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[12]));
  FDPE \rVersionNr_reg[13] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[13]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[13]));
  FDCE \rVersionNr_reg[14] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[14]),
        .Q(rVersionNr[14]));
  FDPE \rVersionNr_reg[15] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[15]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[15]));
  FDPE \rVersionNr_reg[16] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[16]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[16]));
  FDCE \rVersionNr_reg[17] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[17]),
        .Q(rVersionNr[17]));
  FDPE \rVersionNr_reg[18] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[18]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[18]));
  FDPE \rVersionNr_reg[19] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[19]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[19]));
  FDPE \rVersionNr_reg[1] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[1]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[1]));
  FDCE \rVersionNr_reg[20] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[20]),
        .Q(rVersionNr[20]));
  FDPE \rVersionNr_reg[21] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[21]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[21]));
  FDCE \rVersionNr_reg[22] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[22]),
        .Q(rVersionNr[22]));
  FDPE \rVersionNr_reg[23] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[23]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[23]));
  FDCE \rVersionNr_reg[24] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[24]),
        .Q(rVersionNr[24]));
  FDPE \rVersionNr_reg[25] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[25]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[25]));
  FDPE \rVersionNr_reg[26] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[26]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[26]));
  FDPE \rVersionNr_reg[27] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[27]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[27]));
  FDPE \rVersionNr_reg[28] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[28]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[28]));
  FDCE \rVersionNr_reg[29] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[29]),
        .Q(rVersionNr[29]));
  FDPE \rVersionNr_reg[2] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[2]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[2]));
  FDPE \rVersionNr_reg[30] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[30]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[30]));
  FDPE \rVersionNr_reg[31] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[31]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[31]));
  FDPE \rVersionNr_reg[3] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[3]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[3]));
  FDCE \rVersionNr_reg[4] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[4]),
        .Q(rVersionNr[4]));
  FDPE \rVersionNr_reg[5] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[5]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[5]));
  FDPE \rVersionNr_reg[6] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[6]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[6]));
  FDPE \rVersionNr_reg[7] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[7]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[7]));
  FDCE \rVersionNr_reg[8] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_wdata[8]),
        .Q(rVersionNr[8]));
  FDPE \rVersionNr_reg[9] 
       (.C(axi_aclk),
        .CE(rVersionNr_0),
        .D(axi_wdata[9]),
        .PRE(S_AXI_AWREADY_i_2_n_0),
        .Q(rVersionNr[9]));
  LUT3 #(
    .INIT(8'h08)) 
    \rWriteAddr[7]_i_1 
       (.I0(stmWrite[0]),
        .I1(axi_awvalid),
        .I2(stmWrite[1]),
        .O(rWriteAddr));
  FDCE \rWriteAddr_reg[0] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[0]),
        .Q(\rWriteAddr_reg_n_0_[0] ));
  FDCE \rWriteAddr_reg[1] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[1]),
        .Q(\rWriteAddr_reg_n_0_[1] ));
  FDCE \rWriteAddr_reg[2] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[2]),
        .Q(\rWriteAddr_reg_n_0_[2] ));
  FDCE \rWriteAddr_reg[3] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[3]),
        .Q(\rWriteAddr_reg_n_0_[3] ));
  FDCE \rWriteAddr_reg[4] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[4]),
        .Q(\rWriteAddr_reg_n_0_[4] ));
  FDCE \rWriteAddr_reg[5] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[5]),
        .Q(p_0_in0));
  FDCE \rWriteAddr_reg[6] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[6]),
        .Q(\rWriteAddr_reg_n_0_[6] ));
  FDCE \rWriteAddr_reg[7] 
       (.C(axi_aclk),
        .CE(rWriteAddr),
        .CLR(S_AXI_AWREADY_i_2_n_0),
        .D(axi_awaddr[7]),
        .Q(\rWriteAddr_reg_n_0_[7] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14_top
   (S_AXI_WREADY_reg,
    axi_awready,
    axi_bvalid,
    axi_bresp,
    axi_arready,
    axi_rvalid,
    axi_rdata,
    axi_rresp,
    aud_acr_valid_out,
    aud_acr_cts_out,
    aud_acr_n_out,
    aud_resetn_out,
    axi_wvalid,
    axi_aclk,
    axi_awvalid,
    axi_bready,
    axi_awaddr,
    axi_arvalid,
    axi_rready,
    axi_wdata,
    hdmi_clk,
    aud_clk,
    pll_lock_in,
    axi_araddr,
    aud_acr_valid_in,
    aud_acr_cts_in,
    aud_acr_n_in,
    axi_aresetn);
  output S_AXI_WREADY_reg;
  output axi_awready;
  output axi_bvalid;
  output [0:0]axi_bresp;
  output axi_arready;
  output axi_rvalid;
  output [31:0]axi_rdata;
  output [0:0]axi_rresp;
  output aud_acr_valid_out;
  output [19:0]aud_acr_cts_out;
  output [19:0]aud_acr_n_out;
  output aud_resetn_out;
  input axi_wvalid;
  input axi_aclk;
  input axi_awvalid;
  input axi_bready;
  input [7:0]axi_awaddr;
  input axi_arvalid;
  input axi_rready;
  input [31:0]axi_wdata;
  input hdmi_clk;
  input aud_clk;
  input pll_lock_in;
  input [7:0]axi_araddr;
  input aud_acr_valid_in;
  input [19:0]aud_acr_cts_in;
  input [19:0]aud_acr_n_in;
  input axi_aresetn;

  wire CTS_CLKCROSS_ACLK_INST_n_0;
  wire CTS_CLKCROSS_ACLK_INST_n_1;
  wire CTS_CLKCROSS_ACLK_INST_n_10;
  wire CTS_CLKCROSS_ACLK_INST_n_11;
  wire CTS_CLKCROSS_ACLK_INST_n_12;
  wire CTS_CLKCROSS_ACLK_INST_n_13;
  wire CTS_CLKCROSS_ACLK_INST_n_14;
  wire CTS_CLKCROSS_ACLK_INST_n_15;
  wire CTS_CLKCROSS_ACLK_INST_n_16;
  wire CTS_CLKCROSS_ACLK_INST_n_17;
  wire CTS_CLKCROSS_ACLK_INST_n_18;
  wire CTS_CLKCROSS_ACLK_INST_n_19;
  wire CTS_CLKCROSS_ACLK_INST_n_2;
  wire CTS_CLKCROSS_ACLK_INST_n_20;
  wire CTS_CLKCROSS_ACLK_INST_n_21;
  wire CTS_CLKCROSS_ACLK_INST_n_22;
  wire CTS_CLKCROSS_ACLK_INST_n_23;
  wire CTS_CLKCROSS_ACLK_INST_n_24;
  wire CTS_CLKCROSS_ACLK_INST_n_25;
  wire CTS_CLKCROSS_ACLK_INST_n_26;
  wire CTS_CLKCROSS_ACLK_INST_n_27;
  wire CTS_CLKCROSS_ACLK_INST_n_28;
  wire CTS_CLKCROSS_ACLK_INST_n_29;
  wire CTS_CLKCROSS_ACLK_INST_n_3;
  wire CTS_CLKCROSS_ACLK_INST_n_30;
  wire CTS_CLKCROSS_ACLK_INST_n_31;
  wire CTS_CLKCROSS_ACLK_INST_n_4;
  wire CTS_CLKCROSS_ACLK_INST_n_5;
  wire CTS_CLKCROSS_ACLK_INST_n_6;
  wire CTS_CLKCROSS_ACLK_INST_n_7;
  wire CTS_CLKCROSS_ACLK_INST_n_8;
  wire CTS_CLKCROSS_ACLK_INST_n_9;
  wire CTS_CLKCROSS_AUD_INST_n_0;
  wire CTS_CLKCROSS_AUD_INST_n_1;
  wire CTS_CLKCROSS_AUD_INST_n_10;
  wire CTS_CLKCROSS_AUD_INST_n_11;
  wire CTS_CLKCROSS_AUD_INST_n_12;
  wire CTS_CLKCROSS_AUD_INST_n_13;
  wire CTS_CLKCROSS_AUD_INST_n_14;
  wire CTS_CLKCROSS_AUD_INST_n_15;
  wire CTS_CLKCROSS_AUD_INST_n_16;
  wire CTS_CLKCROSS_AUD_INST_n_17;
  wire CTS_CLKCROSS_AUD_INST_n_18;
  wire CTS_CLKCROSS_AUD_INST_n_19;
  wire CTS_CLKCROSS_AUD_INST_n_2;
  wire CTS_CLKCROSS_AUD_INST_n_3;
  wire CTS_CLKCROSS_AUD_INST_n_4;
  wire CTS_CLKCROSS_AUD_INST_n_5;
  wire CTS_CLKCROSS_AUD_INST_n_6;
  wire CTS_CLKCROSS_AUD_INST_n_7;
  wire CTS_CLKCROSS_AUD_INST_n_8;
  wire CTS_CLKCROSS_AUD_INST_n_9;
  wire DIVVAL_CLKCROSS_INST_n_0;
  wire DIVVAL_CLKCROSS_INST_n_1;
  wire DIVVAL_CLKCROSS_INST_n_2;
  wire DIVVAL_CLKCROSS_INST_n_3;
  wire DIVVAL_CLKCROSS_INST_n_4;
  wire DIVVAL_CLKCROSS_INST_n_5;
  wire NVAL_CLKCROSS_INST_n_0;
  wire NVAL_CLKCROSS_INST_n_1;
  wire NVAL_CLKCROSS_INST_n_10;
  wire NVAL_CLKCROSS_INST_n_100;
  wire NVAL_CLKCROSS_INST_n_101;
  wire NVAL_CLKCROSS_INST_n_102;
  wire NVAL_CLKCROSS_INST_n_103;
  wire NVAL_CLKCROSS_INST_n_104;
  wire NVAL_CLKCROSS_INST_n_105;
  wire NVAL_CLKCROSS_INST_n_106;
  wire NVAL_CLKCROSS_INST_n_107;
  wire NVAL_CLKCROSS_INST_n_108;
  wire NVAL_CLKCROSS_INST_n_109;
  wire NVAL_CLKCROSS_INST_n_11;
  wire NVAL_CLKCROSS_INST_n_110;
  wire NVAL_CLKCROSS_INST_n_111;
  wire NVAL_CLKCROSS_INST_n_112;
  wire NVAL_CLKCROSS_INST_n_113;
  wire NVAL_CLKCROSS_INST_n_114;
  wire NVAL_CLKCROSS_INST_n_115;
  wire NVAL_CLKCROSS_INST_n_116;
  wire NVAL_CLKCROSS_INST_n_117;
  wire NVAL_CLKCROSS_INST_n_118;
  wire NVAL_CLKCROSS_INST_n_119;
  wire NVAL_CLKCROSS_INST_n_12;
  wire NVAL_CLKCROSS_INST_n_120;
  wire NVAL_CLKCROSS_INST_n_121;
  wire NVAL_CLKCROSS_INST_n_122;
  wire NVAL_CLKCROSS_INST_n_123;
  wire NVAL_CLKCROSS_INST_n_124;
  wire NVAL_CLKCROSS_INST_n_13;
  wire NVAL_CLKCROSS_INST_n_14;
  wire NVAL_CLKCROSS_INST_n_15;
  wire NVAL_CLKCROSS_INST_n_16;
  wire NVAL_CLKCROSS_INST_n_17;
  wire NVAL_CLKCROSS_INST_n_18;
  wire NVAL_CLKCROSS_INST_n_19;
  wire NVAL_CLKCROSS_INST_n_2;
  wire NVAL_CLKCROSS_INST_n_20;
  wire NVAL_CLKCROSS_INST_n_21;
  wire NVAL_CLKCROSS_INST_n_22;
  wire NVAL_CLKCROSS_INST_n_23;
  wire NVAL_CLKCROSS_INST_n_24;
  wire NVAL_CLKCROSS_INST_n_25;
  wire NVAL_CLKCROSS_INST_n_26;
  wire NVAL_CLKCROSS_INST_n_27;
  wire NVAL_CLKCROSS_INST_n_28;
  wire NVAL_CLKCROSS_INST_n_29;
  wire NVAL_CLKCROSS_INST_n_3;
  wire NVAL_CLKCROSS_INST_n_30;
  wire NVAL_CLKCROSS_INST_n_31;
  wire NVAL_CLKCROSS_INST_n_33;
  wire NVAL_CLKCROSS_INST_n_34;
  wire NVAL_CLKCROSS_INST_n_35;
  wire NVAL_CLKCROSS_INST_n_36;
  wire NVAL_CLKCROSS_INST_n_37;
  wire NVAL_CLKCROSS_INST_n_38;
  wire NVAL_CLKCROSS_INST_n_39;
  wire NVAL_CLKCROSS_INST_n_4;
  wire NVAL_CLKCROSS_INST_n_5;
  wire NVAL_CLKCROSS_INST_n_6;
  wire NVAL_CLKCROSS_INST_n_7;
  wire NVAL_CLKCROSS_INST_n_71;
  wire NVAL_CLKCROSS_INST_n_72;
  wire NVAL_CLKCROSS_INST_n_73;
  wire NVAL_CLKCROSS_INST_n_74;
  wire NVAL_CLKCROSS_INST_n_75;
  wire NVAL_CLKCROSS_INST_n_76;
  wire NVAL_CLKCROSS_INST_n_77;
  wire NVAL_CLKCROSS_INST_n_78;
  wire NVAL_CLKCROSS_INST_n_79;
  wire NVAL_CLKCROSS_INST_n_8;
  wire NVAL_CLKCROSS_INST_n_80;
  wire NVAL_CLKCROSS_INST_n_81;
  wire NVAL_CLKCROSS_INST_n_82;
  wire NVAL_CLKCROSS_INST_n_83;
  wire NVAL_CLKCROSS_INST_n_84;
  wire NVAL_CLKCROSS_INST_n_85;
  wire NVAL_CLKCROSS_INST_n_86;
  wire NVAL_CLKCROSS_INST_n_87;
  wire NVAL_CLKCROSS_INST_n_88;
  wire NVAL_CLKCROSS_INST_n_89;
  wire NVAL_CLKCROSS_INST_n_9;
  wire NVAL_CLKCROSS_INST_n_90;
  wire NVAL_CLKCROSS_INST_n_91;
  wire NVAL_CLKCROSS_INST_n_92;
  wire NVAL_CLKCROSS_INST_n_93;
  wire NVAL_CLKCROSS_INST_n_94;
  wire NVAL_CLKCROSS_INST_n_95;
  wire NVAL_CLKCROSS_INST_n_96;
  wire NVAL_CLKCROSS_INST_n_97;
  wire NVAL_CLKCROSS_INST_n_98;
  wire NVAL_CLKCROSS_INST_n_99;
  wire S_AXI_WREADY_reg;
  wire [19:0]aud_acr_cts_in;
  wire [19:0]aud_acr_cts_out;
  wire [19:0]aud_acr_n_in;
  wire [19:0]aud_acr_n_out;
  wire [1:1]aud_acr_sel_sync;
  wire \aud_acr_sel_sync_reg_n_0_[0] ;
  wire aud_acr_valid0_out;
  wire aud_acr_valid_in;
  wire aud_acr_valid_out;
  wire aud_cke;
  wire aud_clk;
  wire \aud_enab_acr_sync_reg_n_0_[0] ;
  wire aud_rCKECounter1_n_0;
  wire \aud_rCKECounter_reg_n_0_[0] ;
  wire \aud_rCKECounter_reg_n_0_[1] ;
  wire \aud_rCKECounter_reg_n_0_[2] ;
  wire [31:0]aud_rCycleCnt_reg;
  wire aud_rPulse;
  wire aud_rPulse0;
  wire aud_rPulse0_carry__0_i_13_n_0;
  wire aud_rPulse0_carry__0_i_14_n_0;
  wire aud_rPulse0_carry__0_i_15_n_0;
  wire aud_rPulse0_carry__0_i_16_n_0;
  wire aud_rPulse0_carry__0_i_5_n_0;
  wire aud_rPulse0_carry__0_i_6_n_0;
  wire aud_rPulse0_carry__0_i_7_n_0;
  wire aud_rPulse0_carry__0_i_8_n_0;
  wire aud_rPulse0_carry__0_n_1;
  wire aud_rPulse0_carry__0_n_2;
  wire aud_rPulse0_carry__0_n_3;
  wire aud_rPulse0_carry__0_n_4;
  wire aud_rPulse0_carry__0_n_5;
  wire aud_rPulse0_carry__0_n_6;
  wire aud_rPulse0_carry__0_n_7;
  wire aud_rPulse0_carry_i_10_n_0;
  wire aud_rPulse0_carry_i_11_n_0;
  wire aud_rPulse0_carry_i_12_n_0;
  wire aud_rPulse0_carry_i_13_n_0;
  wire aud_rPulse0_carry_i_14_n_0;
  wire aud_rPulse0_carry_i_15_n_0;
  wire aud_rPulse0_carry_i_1_n_0;
  wire aud_rPulse0_carry_i_2_n_0;
  wire aud_rPulse0_carry_i_3_n_0;
  wire aud_rPulse0_carry_i_4_n_0;
  wire aud_rPulse0_carry_i_5_n_0;
  wire aud_rPulse0_carry_i_6_n_0;
  wire aud_rPulse0_carry_i_7_n_0;
  wire aud_rPulse0_carry_i_9_n_0;
  wire aud_rPulse0_carry_n_0;
  wire aud_rPulse0_carry_n_1;
  wire aud_rPulse0_carry_n_2;
  wire aud_rPulse0_carry_n_3;
  wire aud_rPulse0_carry_n_4;
  wire aud_rPulse0_carry_n_5;
  wire aud_rPulse0_carry_n_6;
  wire aud_rPulse0_carry_n_7;
  wire [31:1]aud_rPulse1;
  wire aud_rPulse1_carry__0_n_0;
  wire aud_rPulse1_carry__0_n_1;
  wire aud_rPulse1_carry__0_n_2;
  wire aud_rPulse1_carry__0_n_3;
  wire aud_rPulse1_carry__0_n_4;
  wire aud_rPulse1_carry__0_n_5;
  wire aud_rPulse1_carry__0_n_6;
  wire aud_rPulse1_carry__0_n_7;
  wire aud_rPulse1_carry__1_n_0;
  wire aud_rPulse1_carry__1_n_1;
  wire aud_rPulse1_carry__1_n_2;
  wire aud_rPulse1_carry__1_n_3;
  wire aud_rPulse1_carry__1_n_4;
  wire aud_rPulse1_carry__1_n_5;
  wire aud_rPulse1_carry__1_n_6;
  wire aud_rPulse1_carry__1_n_7;
  wire aud_rPulse1_carry__2_n_2;
  wire aud_rPulse1_carry__2_n_3;
  wire aud_rPulse1_carry__2_n_4;
  wire aud_rPulse1_carry__2_n_5;
  wire aud_rPulse1_carry__2_n_6;
  wire aud_rPulse1_carry__2_n_7;
  wire aud_rPulse1_carry_n_0;
  wire aud_rPulse1_carry_n_1;
  wire aud_rPulse1_carry_n_2;
  wire aud_rPulse1_carry_n_3;
  wire aud_rPulse1_carry_n_4;
  wire aud_rPulse1_carry_n_5;
  wire aud_rPulse1_carry_n_6;
  wire aud_rPulse1_carry_n_7;
  wire aud_rPulse_reg_n_0;
  wire aud_reset;
  wire aud_reset_i_1_n_0;
  wire aud_reset_i_2_n_0;
  wire aud_reset_i_3_n_0;
  wire aud_reset_out;
  wire aud_resetn_out;
  (* async_reg = "true" *) wire [2:0]aud_rst_chain;
  wire \aud_rst_cnt[7]_i_1_n_0 ;
  wire [7:0]aud_rst_cnt_reg;
  wire [1:0]aud_tmdsclkratio_sync;
  wire axi_aclk;
  wire [7:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [7:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire [0:0]axi_bresp;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire [0:0]axi_rresp;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire axi_wvalid;
  wire [3:0]data1;
  wire hdmi_clk;
  wire [31:0]hdmi_rCTS_Val;
  wire \hdmi_rCycleTimeCnt[0]_i_2_n_0 ;
  wire [31:0]hdmi_rCycleTimeCnt_reg;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_0 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_1 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_10 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_11 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_12 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_13 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_14 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_15 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_2 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_3 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_4 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_5 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_6 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_7 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_8 ;
  wire \hdmi_rCycleTimeCnt_reg[0]_i_1_n_9 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_0 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_1 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_10 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_11 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_12 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_13 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_14 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_15 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_2 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_3 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_4 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_5 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_6 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_7 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_8 ;
  wire \hdmi_rCycleTimeCnt_reg[16]_i_1_n_9 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_1 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_10 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_11 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_12 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_13 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_14 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_15 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_2 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_3 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_4 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_5 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_6 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_7 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_8 ;
  wire \hdmi_rCycleTimeCnt_reg[24]_i_1_n_9 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_0 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_1 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_10 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_11 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_12 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_13 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_14 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_15 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_2 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_3 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_4 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_5 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_6 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_7 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_8 ;
  wire \hdmi_rCycleTimeCnt_reg[8]_i_1_n_9 ;
  wire [7:0]p_0_in;
  wire p_1_in;
  wire pll_lock_in;
  wire [2:0]rCKEDivVal;
  wire [31:0]rNValue;
  wire [30:0]rOut_Data;
  wire rOut_Pulse;
  wire [7:0]NLW_aud_rPulse0_carry_O_UNCONNECTED;
  wire [7:0]NLW_aud_rPulse0_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_aud_rPulse1_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_aud_rPulse1_carry__2_O_UNCONNECTED;
  wire [7:7]\NLW_hdmi_rCycleTimeCnt_reg[24]_i_1_CO_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross CTS_CLKCROSS_ACLK_INST
       (.Q(hdmi_rCTS_Val),
        .axi_aclk(axi_aclk),
        .hdmi_clk(hdmi_clk),
        .\rOut_Data_reg[31]_0 ({CTS_CLKCROSS_ACLK_INST_n_0,CTS_CLKCROSS_ACLK_INST_n_1,CTS_CLKCROSS_ACLK_INST_n_2,CTS_CLKCROSS_ACLK_INST_n_3,CTS_CLKCROSS_ACLK_INST_n_4,CTS_CLKCROSS_ACLK_INST_n_5,CTS_CLKCROSS_ACLK_INST_n_6,CTS_CLKCROSS_ACLK_INST_n_7,CTS_CLKCROSS_ACLK_INST_n_8,CTS_CLKCROSS_ACLK_INST_n_9,CTS_CLKCROSS_ACLK_INST_n_10,CTS_CLKCROSS_ACLK_INST_n_11,CTS_CLKCROSS_ACLK_INST_n_12,CTS_CLKCROSS_ACLK_INST_n_13,CTS_CLKCROSS_ACLK_INST_n_14,CTS_CLKCROSS_ACLK_INST_n_15,CTS_CLKCROSS_ACLK_INST_n_16,CTS_CLKCROSS_ACLK_INST_n_17,CTS_CLKCROSS_ACLK_INST_n_18,CTS_CLKCROSS_ACLK_INST_n_19,CTS_CLKCROSS_ACLK_INST_n_20,CTS_CLKCROSS_ACLK_INST_n_21,CTS_CLKCROSS_ACLK_INST_n_22,CTS_CLKCROSS_ACLK_INST_n_23,CTS_CLKCROSS_ACLK_INST_n_24,CTS_CLKCROSS_ACLK_INST_n_25,CTS_CLKCROSS_ACLK_INST_n_26,CTS_CLKCROSS_ACLK_INST_n_27,CTS_CLKCROSS_ACLK_INST_n_28,CTS_CLKCROSS_ACLK_INST_n_29,CTS_CLKCROSS_ACLK_INST_n_30,CTS_CLKCROSS_ACLK_INST_n_31}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_0 CTS_CLKCROSS_AUD_INST
       (.D({CTS_CLKCROSS_AUD_INST_n_0,CTS_CLKCROSS_AUD_INST_n_1,CTS_CLKCROSS_AUD_INST_n_2,CTS_CLKCROSS_AUD_INST_n_3,CTS_CLKCROSS_AUD_INST_n_4,CTS_CLKCROSS_AUD_INST_n_5,CTS_CLKCROSS_AUD_INST_n_6,CTS_CLKCROSS_AUD_INST_n_7,CTS_CLKCROSS_AUD_INST_n_8,CTS_CLKCROSS_AUD_INST_n_9,CTS_CLKCROSS_AUD_INST_n_10,CTS_CLKCROSS_AUD_INST_n_11,CTS_CLKCROSS_AUD_INST_n_12,CTS_CLKCROSS_AUD_INST_n_13,CTS_CLKCROSS_AUD_INST_n_14,CTS_CLKCROSS_AUD_INST_n_15,CTS_CLKCROSS_AUD_INST_n_16,CTS_CLKCROSS_AUD_INST_n_17,CTS_CLKCROSS_AUD_INST_n_18,CTS_CLKCROSS_AUD_INST_n_19}),
        .Q(aud_tmdsclkratio_sync[1]),
        .aud_acr_cts_in(aud_acr_cts_in),
        .aud_clk(aud_clk),
        .\aud_cts_val_reg[2] (aud_acr_sel_sync),
        .hdmi_clk(hdmi_clk),
        .\rIn_Data_reg[19]_0 (hdmi_rCTS_Val[19:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross__parameterized0 DIVVAL_CLKCROSS_INST
       (.D({DIVVAL_CLKCROSS_INST_n_0,DIVVAL_CLKCROSS_INST_n_1,DIVVAL_CLKCROSS_INST_n_2}),
        .Q({\aud_rCKECounter_reg_n_0_[2] ,\aud_rCKECounter_reg_n_0_[1] ,\aud_rCKECounter_reg_n_0_[0] }),
        .aud_clk(aud_clk),
        .axi_aclk(axi_aclk),
        .\rIn_Data_reg[2]_0 (rCKEDivVal),
        .\rOut_Data_reg[2]_0 ({DIVVAL_CLKCROSS_INST_n_3,DIVVAL_CLKCROSS_INST_n_4,DIVVAL_CLKCROSS_INST_n_5}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14_axi HDMI_ACR_CTRL_AXI_INST
       (.D({CTS_CLKCROSS_ACLK_INST_n_0,CTS_CLKCROSS_ACLK_INST_n_1,CTS_CLKCROSS_ACLK_INST_n_2,CTS_CLKCROSS_ACLK_INST_n_3,CTS_CLKCROSS_ACLK_INST_n_4,CTS_CLKCROSS_ACLK_INST_n_5,CTS_CLKCROSS_ACLK_INST_n_6,CTS_CLKCROSS_ACLK_INST_n_7,CTS_CLKCROSS_ACLK_INST_n_8,CTS_CLKCROSS_ACLK_INST_n_9,CTS_CLKCROSS_ACLK_INST_n_10,CTS_CLKCROSS_ACLK_INST_n_11,CTS_CLKCROSS_ACLK_INST_n_12,CTS_CLKCROSS_ACLK_INST_n_13,CTS_CLKCROSS_ACLK_INST_n_14,CTS_CLKCROSS_ACLK_INST_n_15,CTS_CLKCROSS_ACLK_INST_n_16,CTS_CLKCROSS_ACLK_INST_n_17,CTS_CLKCROSS_ACLK_INST_n_18,CTS_CLKCROSS_ACLK_INST_n_19,CTS_CLKCROSS_ACLK_INST_n_20,CTS_CLKCROSS_ACLK_INST_n_21,CTS_CLKCROSS_ACLK_INST_n_22,CTS_CLKCROSS_ACLK_INST_n_23,CTS_CLKCROSS_ACLK_INST_n_24,CTS_CLKCROSS_ACLK_INST_n_25,CTS_CLKCROSS_ACLK_INST_n_26,CTS_CLKCROSS_ACLK_INST_n_27,CTS_CLKCROSS_ACLK_INST_n_28,CTS_CLKCROSS_ACLK_INST_n_29,CTS_CLKCROSS_ACLK_INST_n_30,CTS_CLKCROSS_ACLK_INST_n_31}),
        .Q(rNValue),
        .S_AXI_WREADY_reg_0(S_AXI_WREADY_reg),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr),
        .axi_aresetn(axi_aresetn),
        .axi_arready(axi_arready),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr),
        .axi_awready(axi_awready),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bresp(axi_bresp),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .axi_rready(axi_rready),
        .axi_rresp(axi_rresp),
        .axi_rvalid(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wvalid(axi_wvalid),
        .data1(data1),
        .\rCKEDivVal_reg[2]_0 (rCKEDivVal));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_1 NVAL_CLKCROSS_INST
       (.CO(aud_rPulse0),
        .D({NVAL_CLKCROSS_INST_n_105,NVAL_CLKCROSS_INST_n_106,NVAL_CLKCROSS_INST_n_107,NVAL_CLKCROSS_INST_n_108,NVAL_CLKCROSS_INST_n_109,NVAL_CLKCROSS_INST_n_110,NVAL_CLKCROSS_INST_n_111,NVAL_CLKCROSS_INST_n_112,NVAL_CLKCROSS_INST_n_113,NVAL_CLKCROSS_INST_n_114,NVAL_CLKCROSS_INST_n_115,NVAL_CLKCROSS_INST_n_116,NVAL_CLKCROSS_INST_n_117,NVAL_CLKCROSS_INST_n_118,NVAL_CLKCROSS_INST_n_119,NVAL_CLKCROSS_INST_n_120,NVAL_CLKCROSS_INST_n_121,NVAL_CLKCROSS_INST_n_122,NVAL_CLKCROSS_INST_n_123,NVAL_CLKCROSS_INST_n_124}),
        .DI(NVAL_CLKCROSS_INST_n_95),
        .O({NVAL_CLKCROSS_INST_n_0,NVAL_CLKCROSS_INST_n_1,NVAL_CLKCROSS_INST_n_2,NVAL_CLKCROSS_INST_n_3,NVAL_CLKCROSS_INST_n_4,NVAL_CLKCROSS_INST_n_5,NVAL_CLKCROSS_INST_n_6,NVAL_CLKCROSS_INST_n_7}),
        .Q(rOut_Data),
        .S({NVAL_CLKCROSS_INST_n_33,NVAL_CLKCROSS_INST_n_34,NVAL_CLKCROSS_INST_n_35,NVAL_CLKCROSS_INST_n_36,NVAL_CLKCROSS_INST_n_37,NVAL_CLKCROSS_INST_n_38,NVAL_CLKCROSS_INST_n_39}),
        .aud_acr_n_in(aud_acr_n_in),
        .aud_cke(aud_cke),
        .aud_clk(aud_clk),
        .\aud_n_val_reg[19] (aud_acr_sel_sync),
        .aud_rCycleCnt_reg(aud_rCycleCnt_reg),
        .\aud_rCycleCnt_reg[0] (NVAL_CLKCROSS_INST_n_96),
        .\aud_rCycleCnt_reg[15] ({NVAL_CLKCROSS_INST_n_8,NVAL_CLKCROSS_INST_n_9,NVAL_CLKCROSS_INST_n_10,NVAL_CLKCROSS_INST_n_11,NVAL_CLKCROSS_INST_n_12,NVAL_CLKCROSS_INST_n_13,NVAL_CLKCROSS_INST_n_14,NVAL_CLKCROSS_INST_n_15}),
        .\aud_rCycleCnt_reg[23] ({NVAL_CLKCROSS_INST_n_16,NVAL_CLKCROSS_INST_n_17,NVAL_CLKCROSS_INST_n_18,NVAL_CLKCROSS_INST_n_19,NVAL_CLKCROSS_INST_n_20,NVAL_CLKCROSS_INST_n_21,NVAL_CLKCROSS_INST_n_22,NVAL_CLKCROSS_INST_n_23}),
        .\aud_rCycleCnt_reg[31] ({NVAL_CLKCROSS_INST_n_24,NVAL_CLKCROSS_INST_n_25,NVAL_CLKCROSS_INST_n_26,NVAL_CLKCROSS_INST_n_27,NVAL_CLKCROSS_INST_n_28,NVAL_CLKCROSS_INST_n_29,NVAL_CLKCROSS_INST_n_30,NVAL_CLKCROSS_INST_n_31}),
        .\aud_rCycleCnt_reg[31]_0 ({NVAL_CLKCROSS_INST_n_97,NVAL_CLKCROSS_INST_n_98,NVAL_CLKCROSS_INST_n_99,NVAL_CLKCROSS_INST_n_100}),
        .\aud_rCycleCnt_reg[31]_1 ({NVAL_CLKCROSS_INST_n_101,NVAL_CLKCROSS_INST_n_102,NVAL_CLKCROSS_INST_n_103,NVAL_CLKCROSS_INST_n_104}),
        .aud_rPulse(aud_rPulse),
        .aud_rPulse1({aud_rPulse1[31:24],aud_rPulse1[1]}),
        .axi_aclk(axi_aclk),
        .\rIn_Data_reg[31]_0 (rNValue),
        .\rOut_Data_reg[16]_0 ({NVAL_CLKCROSS_INST_n_79,NVAL_CLKCROSS_INST_n_80,NVAL_CLKCROSS_INST_n_81,NVAL_CLKCROSS_INST_n_82,NVAL_CLKCROSS_INST_n_83,NVAL_CLKCROSS_INST_n_84,NVAL_CLKCROSS_INST_n_85,NVAL_CLKCROSS_INST_n_86}),
        .\rOut_Data_reg[24]_0 ({NVAL_CLKCROSS_INST_n_71,NVAL_CLKCROSS_INST_n_72,NVAL_CLKCROSS_INST_n_73,NVAL_CLKCROSS_INST_n_74,NVAL_CLKCROSS_INST_n_75,NVAL_CLKCROSS_INST_n_76,NVAL_CLKCROSS_INST_n_77,NVAL_CLKCROSS_INST_n_78}),
        .\rOut_Data_reg[8]_0 ({NVAL_CLKCROSS_INST_n_87,NVAL_CLKCROSS_INST_n_88,NVAL_CLKCROSS_INST_n_89,NVAL_CLKCROSS_INST_n_90,NVAL_CLKCROSS_INST_n_91,NVAL_CLKCROSS_INST_n_92,NVAL_CLKCROSS_INST_n_93,NVAL_CLKCROSS_INST_n_94}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_pulse_clkcross PULSE_CLKCROSS_INST
       (.aud_clk(aud_clk),
        .hdmi_clk(hdmi_clk),
        .rIn_PulseCap_reg_0(aud_rPulse_reg_n_0),
        .rOut_Pulse(rOut_Pulse));
  FDRE \aud_acr_sel_sync_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(data1[1]),
        .Q(\aud_acr_sel_sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \aud_acr_sel_sync_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(\aud_acr_sel_sync_reg_n_0_[0] ),
        .Q(aud_acr_sel_sync),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hC808)) 
    aud_acr_valid_i_1
       (.I0(aud_acr_valid_in),
        .I1(p_1_in),
        .I2(aud_acr_sel_sync),
        .I3(aud_rPulse_reg_n_0),
        .O(aud_acr_valid0_out));
  FDRE aud_acr_valid_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(aud_acr_valid0_out),
        .Q(aud_acr_valid_out),
        .R(1'b0));
  FDCE aud_cke_reg
       (.C(aud_clk),
        .CE(1'b1),
        .CLR(aud_reset_out),
        .D(aud_rCKECounter1_n_0),
        .Q(aud_cke));
  FDRE \aud_cts_val_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_19),
        .Q(aud_acr_cts_out[0]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[10] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_9),
        .Q(aud_acr_cts_out[10]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[11] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_8),
        .Q(aud_acr_cts_out[11]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[12] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_7),
        .Q(aud_acr_cts_out[12]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[13] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_6),
        .Q(aud_acr_cts_out[13]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[14] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_5),
        .Q(aud_acr_cts_out[14]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[15] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_4),
        .Q(aud_acr_cts_out[15]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[16] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_3),
        .Q(aud_acr_cts_out[16]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[17] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_2),
        .Q(aud_acr_cts_out[17]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[18] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_1),
        .Q(aud_acr_cts_out[18]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[19] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_0),
        .Q(aud_acr_cts_out[19]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_18),
        .Q(aud_acr_cts_out[1]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[2] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_17),
        .Q(aud_acr_cts_out[2]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[3] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_16),
        .Q(aud_acr_cts_out[3]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[4] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_15),
        .Q(aud_acr_cts_out[4]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[5] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_14),
        .Q(aud_acr_cts_out[5]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[6] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_13),
        .Q(aud_acr_cts_out[6]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[7] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_12),
        .Q(aud_acr_cts_out[7]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[8] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_11),
        .Q(aud_acr_cts_out[8]),
        .R(1'b0));
  FDRE \aud_cts_val_reg[9] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(CTS_CLKCROSS_AUD_INST_n_10),
        .Q(aud_acr_cts_out[9]),
        .R(1'b0));
  FDRE \aud_enab_acr_sync_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(data1[0]),
        .Q(\aud_enab_acr_sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \aud_enab_acr_sync_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(\aud_enab_acr_sync_reg_n_0_[0] ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \aud_n_val_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_124),
        .Q(aud_acr_n_out[0]),
        .R(1'b0));
  FDRE \aud_n_val_reg[10] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_114),
        .Q(aud_acr_n_out[10]),
        .R(1'b0));
  FDRE \aud_n_val_reg[11] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_113),
        .Q(aud_acr_n_out[11]),
        .R(1'b0));
  FDRE \aud_n_val_reg[12] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_112),
        .Q(aud_acr_n_out[12]),
        .R(1'b0));
  FDRE \aud_n_val_reg[13] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_111),
        .Q(aud_acr_n_out[13]),
        .R(1'b0));
  FDRE \aud_n_val_reg[14] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_110),
        .Q(aud_acr_n_out[14]),
        .R(1'b0));
  FDRE \aud_n_val_reg[15] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_109),
        .Q(aud_acr_n_out[15]),
        .R(1'b0));
  FDRE \aud_n_val_reg[16] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_108),
        .Q(aud_acr_n_out[16]),
        .R(1'b0));
  FDRE \aud_n_val_reg[17] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_107),
        .Q(aud_acr_n_out[17]),
        .R(1'b0));
  FDRE \aud_n_val_reg[18] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_106),
        .Q(aud_acr_n_out[18]),
        .R(1'b0));
  FDRE \aud_n_val_reg[19] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_105),
        .Q(aud_acr_n_out[19]),
        .R(1'b0));
  FDRE \aud_n_val_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_123),
        .Q(aud_acr_n_out[1]),
        .R(1'b0));
  FDRE \aud_n_val_reg[2] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_122),
        .Q(aud_acr_n_out[2]),
        .R(1'b0));
  FDRE \aud_n_val_reg[3] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_121),
        .Q(aud_acr_n_out[3]),
        .R(1'b0));
  FDRE \aud_n_val_reg[4] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_120),
        .Q(aud_acr_n_out[4]),
        .R(1'b0));
  FDRE \aud_n_val_reg[5] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_119),
        .Q(aud_acr_n_out[5]),
        .R(1'b0));
  FDRE \aud_n_val_reg[6] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_118),
        .Q(aud_acr_n_out[6]),
        .R(1'b0));
  FDRE \aud_n_val_reg[7] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_117),
        .Q(aud_acr_n_out[7]),
        .R(1'b0));
  FDRE \aud_n_val_reg[8] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_116),
        .Q(aud_acr_n_out[8]),
        .R(1'b0));
  FDRE \aud_n_val_reg[9] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(NVAL_CLKCROSS_INST_n_115),
        .Q(aud_acr_n_out[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    aud_rCKECounter1
       (.I0(\aud_rCKECounter_reg_n_0_[0] ),
        .I1(DIVVAL_CLKCROSS_INST_n_5),
        .I2(DIVVAL_CLKCROSS_INST_n_3),
        .I3(\aud_rCKECounter_reg_n_0_[2] ),
        .I4(DIVVAL_CLKCROSS_INST_n_4),
        .I5(\aud_rCKECounter_reg_n_0_[1] ),
        .O(aud_rCKECounter1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCKECounter_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .CLR(aud_reset_out),
        .D(DIVVAL_CLKCROSS_INST_n_2),
        .Q(\aud_rCKECounter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCKECounter_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .CLR(aud_reset_out),
        .D(DIVVAL_CLKCROSS_INST_n_1),
        .Q(\aud_rCKECounter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCKECounter_reg[2] 
       (.C(aud_clk),
        .CE(1'b1),
        .CLR(aud_reset_out),
        .D(DIVVAL_CLKCROSS_INST_n_0),
        .Q(\aud_rCKECounter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[0] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_7),
        .Q(aud_rCycleCnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[10] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_13),
        .Q(aud_rCycleCnt_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[11] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_12),
        .Q(aud_rCycleCnt_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[12] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_11),
        .Q(aud_rCycleCnt_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[13] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_10),
        .Q(aud_rCycleCnt_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[14] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_9),
        .Q(aud_rCycleCnt_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[15] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_8),
        .Q(aud_rCycleCnt_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[16] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_23),
        .Q(aud_rCycleCnt_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[17] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_22),
        .Q(aud_rCycleCnt_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[18] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_21),
        .Q(aud_rCycleCnt_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[19] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_20),
        .Q(aud_rCycleCnt_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[1] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_6),
        .Q(aud_rCycleCnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[20] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_19),
        .Q(aud_rCycleCnt_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[21] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_18),
        .Q(aud_rCycleCnt_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[22] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_17),
        .Q(aud_rCycleCnt_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[23] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_16),
        .Q(aud_rCycleCnt_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[24] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_31),
        .Q(aud_rCycleCnt_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[25] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_30),
        .Q(aud_rCycleCnt_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[26] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_29),
        .Q(aud_rCycleCnt_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[27] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_28),
        .Q(aud_rCycleCnt_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[28] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_27),
        .Q(aud_rCycleCnt_reg[28]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[29] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_26),
        .Q(aud_rCycleCnt_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[2] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_5),
        .Q(aud_rCycleCnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[30] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_25),
        .Q(aud_rCycleCnt_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[31] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_24),
        .Q(aud_rCycleCnt_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[3] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_4),
        .Q(aud_rCycleCnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[4] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_3),
        .Q(aud_rCycleCnt_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[5] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_2),
        .Q(aud_rCycleCnt_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[6] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_1),
        .Q(aud_rCycleCnt_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[7] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_0),
        .Q(aud_rCycleCnt_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[8] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_15),
        .Q(aud_rCycleCnt_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \aud_rCycleCnt_reg[9] 
       (.C(aud_clk),
        .CE(aud_cke),
        .CLR(aud_reset_out),
        .D(NVAL_CLKCROSS_INST_n_14),
        .Q(aud_rCycleCnt_reg[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 aud_rPulse0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({aud_rPulse0_carry_n_0,aud_rPulse0_carry_n_1,aud_rPulse0_carry_n_2,aud_rPulse0_carry_n_3,aud_rPulse0_carry_n_4,aud_rPulse0_carry_n_5,aud_rPulse0_carry_n_6,aud_rPulse0_carry_n_7}),
        .DI({aud_rPulse0_carry_i_1_n_0,aud_rPulse0_carry_i_2_n_0,aud_rPulse0_carry_i_3_n_0,aud_rPulse0_carry_i_4_n_0,aud_rPulse0_carry_i_5_n_0,aud_rPulse0_carry_i_6_n_0,aud_rPulse0_carry_i_7_n_0,NVAL_CLKCROSS_INST_n_95}),
        .O(NLW_aud_rPulse0_carry_O_UNCONNECTED[7:0]),
        .S({aud_rPulse0_carry_i_9_n_0,aud_rPulse0_carry_i_10_n_0,aud_rPulse0_carry_i_11_n_0,aud_rPulse0_carry_i_12_n_0,aud_rPulse0_carry_i_13_n_0,aud_rPulse0_carry_i_14_n_0,aud_rPulse0_carry_i_15_n_0,NVAL_CLKCROSS_INST_n_96}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 aud_rPulse0_carry__0
       (.CI(aud_rPulse0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({aud_rPulse0,aud_rPulse0_carry__0_n_1,aud_rPulse0_carry__0_n_2,aud_rPulse0_carry__0_n_3,aud_rPulse0_carry__0_n_4,aud_rPulse0_carry__0_n_5,aud_rPulse0_carry__0_n_6,aud_rPulse0_carry__0_n_7}),
        .DI({NVAL_CLKCROSS_INST_n_97,NVAL_CLKCROSS_INST_n_98,NVAL_CLKCROSS_INST_n_99,NVAL_CLKCROSS_INST_n_100,aud_rPulse0_carry__0_i_5_n_0,aud_rPulse0_carry__0_i_6_n_0,aud_rPulse0_carry__0_i_7_n_0,aud_rPulse0_carry__0_i_8_n_0}),
        .O(NLW_aud_rPulse0_carry__0_O_UNCONNECTED[7:0]),
        .S({NVAL_CLKCROSS_INST_n_101,NVAL_CLKCROSS_INST_n_102,NVAL_CLKCROSS_INST_n_103,NVAL_CLKCROSS_INST_n_104,aud_rPulse0_carry__0_i_13_n_0,aud_rPulse0_carry__0_i_14_n_0,aud_rPulse0_carry__0_i_15_n_0,aud_rPulse0_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__0_i_13
       (.I0(aud_rPulse1[23]),
        .I1(aud_rCycleCnt_reg[23]),
        .I2(aud_rPulse1[22]),
        .I3(aud_rCycleCnt_reg[22]),
        .O(aud_rPulse0_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__0_i_14
       (.I0(aud_rPulse1[21]),
        .I1(aud_rCycleCnt_reg[21]),
        .I2(aud_rPulse1[20]),
        .I3(aud_rCycleCnt_reg[20]),
        .O(aud_rPulse0_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__0_i_15
       (.I0(aud_rPulse1[19]),
        .I1(aud_rCycleCnt_reg[19]),
        .I2(aud_rPulse1[18]),
        .I3(aud_rCycleCnt_reg[18]),
        .O(aud_rPulse0_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__0_i_16
       (.I0(aud_rPulse1[17]),
        .I1(aud_rCycleCnt_reg[17]),
        .I2(aud_rPulse1[16]),
        .I3(aud_rCycleCnt_reg[16]),
        .O(aud_rPulse0_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__0_i_5
       (.I0(aud_rCycleCnt_reg[23]),
        .I1(aud_rPulse1[23]),
        .I2(aud_rCycleCnt_reg[22]),
        .I3(aud_rPulse1[22]),
        .O(aud_rPulse0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__0_i_6
       (.I0(aud_rCycleCnt_reg[21]),
        .I1(aud_rPulse1[21]),
        .I2(aud_rCycleCnt_reg[20]),
        .I3(aud_rPulse1[20]),
        .O(aud_rPulse0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__0_i_7
       (.I0(aud_rCycleCnt_reg[19]),
        .I1(aud_rPulse1[19]),
        .I2(aud_rCycleCnt_reg[18]),
        .I3(aud_rPulse1[18]),
        .O(aud_rPulse0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__0_i_8
       (.I0(aud_rCycleCnt_reg[17]),
        .I1(aud_rPulse1[17]),
        .I2(aud_rCycleCnt_reg[16]),
        .I3(aud_rPulse1[16]),
        .O(aud_rPulse0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry_i_1
       (.I0(aud_rCycleCnt_reg[15]),
        .I1(aud_rPulse1[15]),
        .I2(aud_rCycleCnt_reg[14]),
        .I3(aud_rPulse1[14]),
        .O(aud_rPulse0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry_i_10
       (.I0(aud_rPulse1[13]),
        .I1(aud_rCycleCnt_reg[13]),
        .I2(aud_rPulse1[12]),
        .I3(aud_rCycleCnt_reg[12]),
        .O(aud_rPulse0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry_i_11
       (.I0(aud_rPulse1[11]),
        .I1(aud_rCycleCnt_reg[11]),
        .I2(aud_rPulse1[10]),
        .I3(aud_rCycleCnt_reg[10]),
        .O(aud_rPulse0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry_i_12
       (.I0(aud_rPulse1[9]),
        .I1(aud_rCycleCnt_reg[9]),
        .I2(aud_rPulse1[8]),
        .I3(aud_rCycleCnt_reg[8]),
        .O(aud_rPulse0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry_i_13
       (.I0(aud_rPulse1[7]),
        .I1(aud_rCycleCnt_reg[7]),
        .I2(aud_rPulse1[6]),
        .I3(aud_rCycleCnt_reg[6]),
        .O(aud_rPulse0_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry_i_14
       (.I0(aud_rPulse1[5]),
        .I1(aud_rCycleCnt_reg[5]),
        .I2(aud_rPulse1[4]),
        .I3(aud_rCycleCnt_reg[4]),
        .O(aud_rPulse0_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry_i_15
       (.I0(aud_rPulse1[3]),
        .I1(aud_rCycleCnt_reg[3]),
        .I2(aud_rPulse1[2]),
        .I3(aud_rCycleCnt_reg[2]),
        .O(aud_rPulse0_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry_i_2
       (.I0(aud_rCycleCnt_reg[13]),
        .I1(aud_rPulse1[13]),
        .I2(aud_rCycleCnt_reg[12]),
        .I3(aud_rPulse1[12]),
        .O(aud_rPulse0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry_i_3
       (.I0(aud_rCycleCnt_reg[11]),
        .I1(aud_rPulse1[11]),
        .I2(aud_rCycleCnt_reg[10]),
        .I3(aud_rPulse1[10]),
        .O(aud_rPulse0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry_i_4
       (.I0(aud_rCycleCnt_reg[9]),
        .I1(aud_rPulse1[9]),
        .I2(aud_rCycleCnt_reg[8]),
        .I3(aud_rPulse1[8]),
        .O(aud_rPulse0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry_i_5
       (.I0(aud_rCycleCnt_reg[7]),
        .I1(aud_rPulse1[7]),
        .I2(aud_rCycleCnt_reg[6]),
        .I3(aud_rPulse1[6]),
        .O(aud_rPulse0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry_i_6
       (.I0(aud_rCycleCnt_reg[5]),
        .I1(aud_rPulse1[5]),
        .I2(aud_rCycleCnt_reg[4]),
        .I3(aud_rPulse1[4]),
        .O(aud_rPulse0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry_i_7
       (.I0(aud_rCycleCnt_reg[3]),
        .I1(aud_rPulse1[3]),
        .I2(aud_rCycleCnt_reg[2]),
        .I3(aud_rPulse1[2]),
        .O(aud_rPulse0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry_i_9
       (.I0(aud_rPulse1[15]),
        .I1(aud_rCycleCnt_reg[15]),
        .I2(aud_rPulse1[14]),
        .I3(aud_rCycleCnt_reg[14]),
        .O(aud_rPulse0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 aud_rPulse1_carry
       (.CI(rOut_Data[0]),
        .CI_TOP(1'b0),
        .CO({aud_rPulse1_carry_n_0,aud_rPulse1_carry_n_1,aud_rPulse1_carry_n_2,aud_rPulse1_carry_n_3,aud_rPulse1_carry_n_4,aud_rPulse1_carry_n_5,aud_rPulse1_carry_n_6,aud_rPulse1_carry_n_7}),
        .DI(rOut_Data[8:1]),
        .O(aud_rPulse1[8:1]),
        .S({NVAL_CLKCROSS_INST_n_87,NVAL_CLKCROSS_INST_n_88,NVAL_CLKCROSS_INST_n_89,NVAL_CLKCROSS_INST_n_90,NVAL_CLKCROSS_INST_n_91,NVAL_CLKCROSS_INST_n_92,NVAL_CLKCROSS_INST_n_93,NVAL_CLKCROSS_INST_n_94}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 aud_rPulse1_carry__0
       (.CI(aud_rPulse1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({aud_rPulse1_carry__0_n_0,aud_rPulse1_carry__0_n_1,aud_rPulse1_carry__0_n_2,aud_rPulse1_carry__0_n_3,aud_rPulse1_carry__0_n_4,aud_rPulse1_carry__0_n_5,aud_rPulse1_carry__0_n_6,aud_rPulse1_carry__0_n_7}),
        .DI(rOut_Data[16:9]),
        .O(aud_rPulse1[16:9]),
        .S({NVAL_CLKCROSS_INST_n_79,NVAL_CLKCROSS_INST_n_80,NVAL_CLKCROSS_INST_n_81,NVAL_CLKCROSS_INST_n_82,NVAL_CLKCROSS_INST_n_83,NVAL_CLKCROSS_INST_n_84,NVAL_CLKCROSS_INST_n_85,NVAL_CLKCROSS_INST_n_86}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 aud_rPulse1_carry__1
       (.CI(aud_rPulse1_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({aud_rPulse1_carry__1_n_0,aud_rPulse1_carry__1_n_1,aud_rPulse1_carry__1_n_2,aud_rPulse1_carry__1_n_3,aud_rPulse1_carry__1_n_4,aud_rPulse1_carry__1_n_5,aud_rPulse1_carry__1_n_6,aud_rPulse1_carry__1_n_7}),
        .DI(rOut_Data[24:17]),
        .O(aud_rPulse1[24:17]),
        .S({NVAL_CLKCROSS_INST_n_71,NVAL_CLKCROSS_INST_n_72,NVAL_CLKCROSS_INST_n_73,NVAL_CLKCROSS_INST_n_74,NVAL_CLKCROSS_INST_n_75,NVAL_CLKCROSS_INST_n_76,NVAL_CLKCROSS_INST_n_77,NVAL_CLKCROSS_INST_n_78}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 aud_rPulse1_carry__2
       (.CI(aud_rPulse1_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_aud_rPulse1_carry__2_CO_UNCONNECTED[7:6],aud_rPulse1_carry__2_n_2,aud_rPulse1_carry__2_n_3,aud_rPulse1_carry__2_n_4,aud_rPulse1_carry__2_n_5,aud_rPulse1_carry__2_n_6,aud_rPulse1_carry__2_n_7}),
        .DI({1'b0,1'b0,rOut_Data[30:25]}),
        .O({NLW_aud_rPulse1_carry__2_O_UNCONNECTED[7],aud_rPulse1[31:25]}),
        .S({1'b0,NVAL_CLKCROSS_INST_n_33,NVAL_CLKCROSS_INST_n_34,NVAL_CLKCROSS_INST_n_35,NVAL_CLKCROSS_INST_n_36,NVAL_CLKCROSS_INST_n_37,NVAL_CLKCROSS_INST_n_38,NVAL_CLKCROSS_INST_n_39}));
  LUT2 #(
    .INIT(4'hE)) 
    aud_rPulse_i_2
       (.I0(aud_rst_chain[2]),
        .I1(aud_reset),
        .O(aud_reset_out));
  FDCE #(
    .INIT(1'b0)) 
    aud_rPulse_reg
       (.C(aud_clk),
        .CE(1'b1),
        .CLR(aud_reset_out),
        .D(aud_rPulse),
        .Q(aud_rPulse_reg_n_0));
  LUT4 #(
    .INIT(16'h8AAA)) 
    aud_reset_i_1
       (.I0(aud_reset),
        .I1(aud_reset_i_3_n_0),
        .I2(aud_rst_cnt_reg[6]),
        .I3(aud_rst_cnt_reg[7]),
        .O(aud_reset_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aud_reset_i_2
       (.I0(pll_lock_in),
        .O(aud_reset_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    aud_reset_i_3
       (.I0(aud_rst_cnt_reg[4]),
        .I1(aud_rst_cnt_reg[2]),
        .I2(aud_rst_cnt_reg[0]),
        .I3(aud_rst_cnt_reg[1]),
        .I4(aud_rst_cnt_reg[3]),
        .I5(aud_rst_cnt_reg[5]),
        .O(aud_reset_i_3_n_0));
  FDPE aud_reset_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(aud_reset_i_1_n_0),
        .PRE(aud_reset_i_2_n_0),
        .Q(aud_reset));
  LUT2 #(
    .INIT(4'h1)) 
    aud_resetn_out_INST_0
       (.I0(aud_reset),
        .I1(aud_rst_chain[2]),
        .O(aud_resetn_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \aud_rst_chain_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(data1[2]),
        .Q(aud_rst_chain[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \aud_rst_chain_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(aud_rst_chain[0]),
        .PRE(data1[2]),
        .Q(aud_rst_chain[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \aud_rst_chain_reg[2] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(aud_rst_chain[1]),
        .PRE(data1[2]),
        .Q(aud_rst_chain[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \aud_rst_cnt[0]_i_1 
       (.I0(aud_rst_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \aud_rst_cnt[1]_i_1 
       (.I0(aud_rst_cnt_reg[0]),
        .I1(aud_rst_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \aud_rst_cnt[2]_i_1 
       (.I0(aud_rst_cnt_reg[1]),
        .I1(aud_rst_cnt_reg[0]),
        .I2(aud_rst_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \aud_rst_cnt[3]_i_1 
       (.I0(aud_rst_cnt_reg[2]),
        .I1(aud_rst_cnt_reg[0]),
        .I2(aud_rst_cnt_reg[1]),
        .I3(aud_rst_cnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \aud_rst_cnt[4]_i_1 
       (.I0(aud_rst_cnt_reg[3]),
        .I1(aud_rst_cnt_reg[1]),
        .I2(aud_rst_cnt_reg[0]),
        .I3(aud_rst_cnt_reg[2]),
        .I4(aud_rst_cnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \aud_rst_cnt[5]_i_1 
       (.I0(aud_rst_cnt_reg[4]),
        .I1(aud_rst_cnt_reg[2]),
        .I2(aud_rst_cnt_reg[0]),
        .I3(aud_rst_cnt_reg[1]),
        .I4(aud_rst_cnt_reg[3]),
        .I5(aud_rst_cnt_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \aud_rst_cnt[6]_i_1 
       (.I0(aud_reset_i_3_n_0),
        .I1(aud_rst_cnt_reg[6]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'hBF)) 
    \aud_rst_cnt[7]_i_1 
       (.I0(aud_reset_i_3_n_0),
        .I1(aud_rst_cnt_reg[6]),
        .I2(aud_rst_cnt_reg[7]),
        .O(\aud_rst_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \aud_rst_cnt[7]_i_2 
       (.I0(aud_rst_cnt_reg[6]),
        .I1(aud_reset_i_3_n_0),
        .I2(aud_rst_cnt_reg[7]),
        .O(p_0_in[7]));
  FDCE \aud_rst_cnt_reg[0] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[0]),
        .Q(aud_rst_cnt_reg[0]));
  FDCE \aud_rst_cnt_reg[1] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[1]),
        .Q(aud_rst_cnt_reg[1]));
  FDCE \aud_rst_cnt_reg[2] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[2]),
        .Q(aud_rst_cnt_reg[2]));
  FDCE \aud_rst_cnt_reg[3] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[3]),
        .Q(aud_rst_cnt_reg[3]));
  FDCE \aud_rst_cnt_reg[4] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[4]),
        .Q(aud_rst_cnt_reg[4]));
  FDCE \aud_rst_cnt_reg[5] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[5]),
        .Q(aud_rst_cnt_reg[5]));
  FDCE \aud_rst_cnt_reg[6] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[6]),
        .Q(aud_rst_cnt_reg[6]));
  FDCE \aud_rst_cnt_reg[7] 
       (.C(aud_clk),
        .CE(\aud_rst_cnt[7]_i_1_n_0 ),
        .CLR(aud_reset_i_2_n_0),
        .D(p_0_in[7]),
        .Q(aud_rst_cnt_reg[7]));
  FDRE \aud_tmdsclkratio_sync_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(data1[3]),
        .Q(aud_tmdsclkratio_sync[0]),
        .R(1'b0));
  FDRE \aud_tmdsclkratio_sync_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(aud_tmdsclkratio_sync[0]),
        .Q(aud_tmdsclkratio_sync[1]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[0] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[0]),
        .Q(hdmi_rCTS_Val[0]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[10] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[10]),
        .Q(hdmi_rCTS_Val[10]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[11] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[11]),
        .Q(hdmi_rCTS_Val[11]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[12] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[12]),
        .Q(hdmi_rCTS_Val[12]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[13] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[13]),
        .Q(hdmi_rCTS_Val[13]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[14] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[14]),
        .Q(hdmi_rCTS_Val[14]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[15] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[15]),
        .Q(hdmi_rCTS_Val[15]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[16] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[16]),
        .Q(hdmi_rCTS_Val[16]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[17] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[17]),
        .Q(hdmi_rCTS_Val[17]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[18] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[18]),
        .Q(hdmi_rCTS_Val[18]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[19] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[19]),
        .Q(hdmi_rCTS_Val[19]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[1] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[1]),
        .Q(hdmi_rCTS_Val[1]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[20] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[20]),
        .Q(hdmi_rCTS_Val[20]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[21] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[21]),
        .Q(hdmi_rCTS_Val[21]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[22] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[22]),
        .Q(hdmi_rCTS_Val[22]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[23] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[23]),
        .Q(hdmi_rCTS_Val[23]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[24] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[24]),
        .Q(hdmi_rCTS_Val[24]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[25] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[25]),
        .Q(hdmi_rCTS_Val[25]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[26] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[26]),
        .Q(hdmi_rCTS_Val[26]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[27] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[27]),
        .Q(hdmi_rCTS_Val[27]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[28] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[28]),
        .Q(hdmi_rCTS_Val[28]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[29] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[29]),
        .Q(hdmi_rCTS_Val[29]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[2] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[2]),
        .Q(hdmi_rCTS_Val[2]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[30] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[30]),
        .Q(hdmi_rCTS_Val[30]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[31] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[31]),
        .Q(hdmi_rCTS_Val[31]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[3] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[3]),
        .Q(hdmi_rCTS_Val[3]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[4] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[4]),
        .Q(hdmi_rCTS_Val[4]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[5] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[5]),
        .Q(hdmi_rCTS_Val[5]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[6] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[6]),
        .Q(hdmi_rCTS_Val[6]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[7] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[7]),
        .Q(hdmi_rCTS_Val[7]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[8] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[8]),
        .Q(hdmi_rCTS_Val[8]),
        .R(1'b0));
  FDRE \hdmi_rCTS_Val_reg[9] 
       (.C(hdmi_clk),
        .CE(rOut_Pulse),
        .D(hdmi_rCycleTimeCnt_reg[9]),
        .Q(hdmi_rCTS_Val[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \hdmi_rCycleTimeCnt[0]_i_2 
       (.I0(hdmi_rCycleTimeCnt_reg[0]),
        .O(\hdmi_rCycleTimeCnt[0]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_15 ),
        .Q(hdmi_rCycleTimeCnt_reg[0]),
        .S(rOut_Pulse));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \hdmi_rCycleTimeCnt_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\hdmi_rCycleTimeCnt_reg[0]_i_1_n_0 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_1 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_2 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_3 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_4 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_5 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_6 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\hdmi_rCycleTimeCnt_reg[0]_i_1_n_8 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_9 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_10 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_11 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_12 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_13 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_14 ,\hdmi_rCycleTimeCnt_reg[0]_i_1_n_15 }),
        .S({hdmi_rCycleTimeCnt_reg[7:1],\hdmi_rCycleTimeCnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[10] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_13 ),
        .Q(hdmi_rCycleTimeCnt_reg[10]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[11] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_12 ),
        .Q(hdmi_rCycleTimeCnt_reg[11]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[12] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_11 ),
        .Q(hdmi_rCycleTimeCnt_reg[12]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[13] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_10 ),
        .Q(hdmi_rCycleTimeCnt_reg[13]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[14] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_9 ),
        .Q(hdmi_rCycleTimeCnt_reg[14]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[15] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_8 ),
        .Q(hdmi_rCycleTimeCnt_reg[15]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[16] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_15 ),
        .Q(hdmi_rCycleTimeCnt_reg[16]),
        .R(rOut_Pulse));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \hdmi_rCycleTimeCnt_reg[16]_i_1 
       (.CI(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\hdmi_rCycleTimeCnt_reg[16]_i_1_n_0 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_1 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_2 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_3 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_4 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_5 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_6 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_rCycleTimeCnt_reg[16]_i_1_n_8 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_9 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_10 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_11 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_12 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_13 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_14 ,\hdmi_rCycleTimeCnt_reg[16]_i_1_n_15 }),
        .S(hdmi_rCycleTimeCnt_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[17] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_14 ),
        .Q(hdmi_rCycleTimeCnt_reg[17]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[18] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_13 ),
        .Q(hdmi_rCycleTimeCnt_reg[18]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[19] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_12 ),
        .Q(hdmi_rCycleTimeCnt_reg[19]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_14 ),
        .Q(hdmi_rCycleTimeCnt_reg[1]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[20] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_11 ),
        .Q(hdmi_rCycleTimeCnt_reg[20]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[21] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_10 ),
        .Q(hdmi_rCycleTimeCnt_reg[21]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[22] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_9 ),
        .Q(hdmi_rCycleTimeCnt_reg[22]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[23] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_8 ),
        .Q(hdmi_rCycleTimeCnt_reg[23]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[24] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_15 ),
        .Q(hdmi_rCycleTimeCnt_reg[24]),
        .R(rOut_Pulse));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \hdmi_rCycleTimeCnt_reg[24]_i_1 
       (.CI(\hdmi_rCycleTimeCnt_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_hdmi_rCycleTimeCnt_reg[24]_i_1_CO_UNCONNECTED [7],\hdmi_rCycleTimeCnt_reg[24]_i_1_n_1 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_2 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_3 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_4 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_5 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_6 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_rCycleTimeCnt_reg[24]_i_1_n_8 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_9 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_10 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_11 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_12 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_13 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_14 ,\hdmi_rCycleTimeCnt_reg[24]_i_1_n_15 }),
        .S(hdmi_rCycleTimeCnt_reg[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[25] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_14 ),
        .Q(hdmi_rCycleTimeCnt_reg[25]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[26] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_13 ),
        .Q(hdmi_rCycleTimeCnt_reg[26]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[27] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_12 ),
        .Q(hdmi_rCycleTimeCnt_reg[27]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[28] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_11 ),
        .Q(hdmi_rCycleTimeCnt_reg[28]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[29] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_10 ),
        .Q(hdmi_rCycleTimeCnt_reg[29]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_13 ),
        .Q(hdmi_rCycleTimeCnt_reg[2]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[30] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_9 ),
        .Q(hdmi_rCycleTimeCnt_reg[30]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[31] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[24]_i_1_n_8 ),
        .Q(hdmi_rCycleTimeCnt_reg[31]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[3] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_12 ),
        .Q(hdmi_rCycleTimeCnt_reg[3]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[4] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_11 ),
        .Q(hdmi_rCycleTimeCnt_reg[4]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[5] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_10 ),
        .Q(hdmi_rCycleTimeCnt_reg[5]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[6] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_9 ),
        .Q(hdmi_rCycleTimeCnt_reg[6]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[7] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_8 ),
        .Q(hdmi_rCycleTimeCnt_reg[7]),
        .R(rOut_Pulse));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[8] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_15 ),
        .Q(hdmi_rCycleTimeCnt_reg[8]),
        .R(rOut_Pulse));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \hdmi_rCycleTimeCnt_reg[8]_i_1 
       (.CI(\hdmi_rCycleTimeCnt_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\hdmi_rCycleTimeCnt_reg[8]_i_1_n_0 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_1 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_2 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_3 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_4 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_5 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_6 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\hdmi_rCycleTimeCnt_reg[8]_i_1_n_8 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_9 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_10 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_11 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_12 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_13 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_14 ,\hdmi_rCycleTimeCnt_reg[8]_i_1_n_15 }),
        .S(hdmi_rCycleTimeCnt_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi_rCycleTimeCnt_reg[9] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\hdmi_rCycleTimeCnt_reg[8]_i_1_n_14 ),
        .Q(hdmi_rCycleTimeCnt_reg[9]),
        .R(rOut_Pulse));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross
   (\rOut_Data_reg[31]_0 ,
    axi_aclk,
    hdmi_clk,
    Q);
  output [31:0]\rOut_Data_reg[31]_0 ;
  input axi_aclk;
  input hdmi_clk;
  input [31:0]Q;

  wire [31:0]Q;
  wire axi_aclk;
  wire hdmi_clk;
  wire p_0_in;
  wire p_0_in0_in;
  wire \rIn_ACK_Sync_reg_n_0_[0] ;
  wire rIn_DValid;
  wire rIn_DValid_i_1__1_n_0;
  wire rIn_Data0;
  wire \rIn_Data_reg_n_0_[0] ;
  wire \rIn_Data_reg_n_0_[10] ;
  wire \rIn_Data_reg_n_0_[11] ;
  wire \rIn_Data_reg_n_0_[12] ;
  wire \rIn_Data_reg_n_0_[13] ;
  wire \rIn_Data_reg_n_0_[14] ;
  wire \rIn_Data_reg_n_0_[15] ;
  wire \rIn_Data_reg_n_0_[16] ;
  wire \rIn_Data_reg_n_0_[17] ;
  wire \rIn_Data_reg_n_0_[18] ;
  wire \rIn_Data_reg_n_0_[19] ;
  wire \rIn_Data_reg_n_0_[1] ;
  wire \rIn_Data_reg_n_0_[20] ;
  wire \rIn_Data_reg_n_0_[21] ;
  wire \rIn_Data_reg_n_0_[22] ;
  wire \rIn_Data_reg_n_0_[23] ;
  wire \rIn_Data_reg_n_0_[24] ;
  wire \rIn_Data_reg_n_0_[25] ;
  wire \rIn_Data_reg_n_0_[26] ;
  wire \rIn_Data_reg_n_0_[27] ;
  wire \rIn_Data_reg_n_0_[28] ;
  wire \rIn_Data_reg_n_0_[29] ;
  wire \rIn_Data_reg_n_0_[2] ;
  wire \rIn_Data_reg_n_0_[30] ;
  wire \rIn_Data_reg_n_0_[31] ;
  wire \rIn_Data_reg_n_0_[3] ;
  wire \rIn_Data_reg_n_0_[4] ;
  wire \rIn_Data_reg_n_0_[5] ;
  wire \rIn_Data_reg_n_0_[6] ;
  wire \rIn_Data_reg_n_0_[7] ;
  wire \rIn_Data_reg_n_0_[8] ;
  wire \rIn_Data_reg_n_0_[9] ;
  wire rOut_ACK;
  wire \rOut_DValid_Sync_reg_n_0_[0] ;
  wire rOut_Data0;
  wire [31:0]\rOut_Data_reg[31]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rOut_ACK),
        .Q(\rIn_ACK_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\rIn_ACK_Sync_reg_n_0_[0] ),
        .Q(p_0_in0_in),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    rIn_DValid_i_1__1
       (.I0(p_0_in0_in),
        .O(rIn_DValid_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rIn_DValid_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rIn_DValid_i_1__1_n_0),
        .Q(rIn_DValid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \rIn_Data[31]_i_1__0 
       (.I0(p_0_in0_in),
        .I1(rIn_DValid),
        .O(rIn_Data0));
  FDRE \rIn_Data_reg[0] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[0]),
        .Q(\rIn_Data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[10] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[10]),
        .Q(\rIn_Data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[11] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[11]),
        .Q(\rIn_Data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[12] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[12]),
        .Q(\rIn_Data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[13] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[13]),
        .Q(\rIn_Data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[14] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[14]),
        .Q(\rIn_Data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[15] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[15]),
        .Q(\rIn_Data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[16] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[16]),
        .Q(\rIn_Data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[17] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[17]),
        .Q(\rIn_Data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[18] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[18]),
        .Q(\rIn_Data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[19] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[19]),
        .Q(\rIn_Data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[1] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[1]),
        .Q(\rIn_Data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[20] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[20]),
        .Q(\rIn_Data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[21] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[21]),
        .Q(\rIn_Data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[22] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[22]),
        .Q(\rIn_Data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[23] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[23]),
        .Q(\rIn_Data_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[24] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[24]),
        .Q(\rIn_Data_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[25] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[25]),
        .Q(\rIn_Data_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[26] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[26]),
        .Q(\rIn_Data_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[27] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[27]),
        .Q(\rIn_Data_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[28] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[28]),
        .Q(\rIn_Data_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[29] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[29]),
        .Q(\rIn_Data_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[2] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[2]),
        .Q(\rIn_Data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[30] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[30]),
        .Q(\rIn_Data_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[31] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[31]),
        .Q(\rIn_Data_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[3] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[3]),
        .Q(\rIn_Data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[4] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[4]),
        .Q(\rIn_Data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[5] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[5]),
        .Q(\rIn_Data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[6] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[6]),
        .Q(\rIn_Data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[7] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[7]),
        .Q(\rIn_Data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[8] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[8]),
        .Q(\rIn_Data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[9] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(Q[9]),
        .Q(\rIn_Data_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rOut_ACK_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rOut_ACK),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(rIn_DValid),
        .Q(\rOut_DValid_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\rOut_DValid_Sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \rOut_Data[31]_i_1__0 
       (.I0(p_0_in),
        .I1(rOut_ACK),
        .O(rOut_Data0));
  FDRE \rOut_Data_reg[0] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[0] ),
        .Q(\rOut_Data_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \rOut_Data_reg[10] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[10] ),
        .Q(\rOut_Data_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \rOut_Data_reg[11] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[11] ),
        .Q(\rOut_Data_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \rOut_Data_reg[12] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[12] ),
        .Q(\rOut_Data_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \rOut_Data_reg[13] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[13] ),
        .Q(\rOut_Data_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \rOut_Data_reg[14] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[14] ),
        .Q(\rOut_Data_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \rOut_Data_reg[15] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[15] ),
        .Q(\rOut_Data_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \rOut_Data_reg[16] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[16] ),
        .Q(\rOut_Data_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \rOut_Data_reg[17] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[17] ),
        .Q(\rOut_Data_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \rOut_Data_reg[18] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[18] ),
        .Q(\rOut_Data_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \rOut_Data_reg[19] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[19] ),
        .Q(\rOut_Data_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \rOut_Data_reg[1] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[1] ),
        .Q(\rOut_Data_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \rOut_Data_reg[20] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[20] ),
        .Q(\rOut_Data_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \rOut_Data_reg[21] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[21] ),
        .Q(\rOut_Data_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \rOut_Data_reg[22] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[22] ),
        .Q(\rOut_Data_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \rOut_Data_reg[23] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[23] ),
        .Q(\rOut_Data_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \rOut_Data_reg[24] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[24] ),
        .Q(\rOut_Data_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \rOut_Data_reg[25] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[25] ),
        .Q(\rOut_Data_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \rOut_Data_reg[26] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[26] ),
        .Q(\rOut_Data_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \rOut_Data_reg[27] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[27] ),
        .Q(\rOut_Data_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \rOut_Data_reg[28] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[28] ),
        .Q(\rOut_Data_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \rOut_Data_reg[29] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[29] ),
        .Q(\rOut_Data_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \rOut_Data_reg[2] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[2] ),
        .Q(\rOut_Data_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \rOut_Data_reg[30] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[30] ),
        .Q(\rOut_Data_reg[31]_0 [30]),
        .R(1'b0));
  FDRE \rOut_Data_reg[31] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[31] ),
        .Q(\rOut_Data_reg[31]_0 [31]),
        .R(1'b0));
  FDRE \rOut_Data_reg[3] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[3] ),
        .Q(\rOut_Data_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \rOut_Data_reg[4] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[4] ),
        .Q(\rOut_Data_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \rOut_Data_reg[5] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[5] ),
        .Q(\rOut_Data_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \rOut_Data_reg[6] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[6] ),
        .Q(\rOut_Data_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \rOut_Data_reg[7] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[7] ),
        .Q(\rOut_Data_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \rOut_Data_reg[8] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[8] ),
        .Q(\rOut_Data_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \rOut_Data_reg[9] 
       (.C(axi_aclk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[9] ),
        .Q(\rOut_Data_reg[31]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hdmi_acr_ctrl_v1_0_1_lib_data_clkcross" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_0
   (D,
    aud_clk,
    hdmi_clk,
    aud_acr_cts_in,
    Q,
    \aud_cts_val_reg[2] ,
    \rIn_Data_reg[19]_0 );
  output [19:0]D;
  input aud_clk;
  input hdmi_clk;
  input [19:0]aud_acr_cts_in;
  input [0:0]Q;
  input [0:0]\aud_cts_val_reg[2] ;
  input [19:0]\rIn_Data_reg[19]_0 ;

  wire [19:0]D;
  wire [0:0]Q;
  wire [19:0]aud_acr_cts_in;
  wire aud_clk;
  wire [0:0]\aud_cts_val_reg[2] ;
  wire hdmi_clk;
  wire p_0_in;
  wire p_0_in0_in;
  wire \rIn_ACK_Sync_reg_n_0_[0] ;
  wire rIn_DValid;
  wire rIn_DValid_i_1__2_n_0;
  wire rIn_Data0;
  wire [19:0]\rIn_Data_reg[19]_0 ;
  wire \rIn_Data_reg_n_0_[0] ;
  wire \rIn_Data_reg_n_0_[10] ;
  wire \rIn_Data_reg_n_0_[11] ;
  wire \rIn_Data_reg_n_0_[12] ;
  wire \rIn_Data_reg_n_0_[13] ;
  wire \rIn_Data_reg_n_0_[14] ;
  wire \rIn_Data_reg_n_0_[15] ;
  wire \rIn_Data_reg_n_0_[16] ;
  wire \rIn_Data_reg_n_0_[17] ;
  wire \rIn_Data_reg_n_0_[18] ;
  wire \rIn_Data_reg_n_0_[19] ;
  wire \rIn_Data_reg_n_0_[1] ;
  wire \rIn_Data_reg_n_0_[2] ;
  wire \rIn_Data_reg_n_0_[3] ;
  wire \rIn_Data_reg_n_0_[4] ;
  wire \rIn_Data_reg_n_0_[5] ;
  wire \rIn_Data_reg_n_0_[6] ;
  wire \rIn_Data_reg_n_0_[7] ;
  wire \rIn_Data_reg_n_0_[8] ;
  wire \rIn_Data_reg_n_0_[9] ;
  wire rOut_ACK;
  wire \rOut_DValid_Sync_reg_n_0_[0] ;
  wire rOut_Data0;
  wire \rOut_Data_reg_n_0_[0] ;
  wire \rOut_Data_reg_n_0_[10] ;
  wire \rOut_Data_reg_n_0_[11] ;
  wire \rOut_Data_reg_n_0_[12] ;
  wire \rOut_Data_reg_n_0_[13] ;
  wire \rOut_Data_reg_n_0_[14] ;
  wire \rOut_Data_reg_n_0_[15] ;
  wire \rOut_Data_reg_n_0_[16] ;
  wire \rOut_Data_reg_n_0_[17] ;
  wire \rOut_Data_reg_n_0_[18] ;
  wire \rOut_Data_reg_n_0_[19] ;
  wire \rOut_Data_reg_n_0_[1] ;
  wire \rOut_Data_reg_n_0_[2] ;
  wire \rOut_Data_reg_n_0_[3] ;
  wire \rOut_Data_reg_n_0_[4] ;
  wire \rOut_Data_reg_n_0_[5] ;
  wire \rOut_Data_reg_n_0_[6] ;
  wire \rOut_Data_reg_n_0_[7] ;
  wire \rOut_Data_reg_n_0_[8] ;
  wire \rOut_Data_reg_n_0_[9] ;

  LUT4 #(
    .INIT(16'h2F20)) 
    \aud_cts_val[0]_i_1 
       (.I0(\rOut_Data_reg_n_0_[0] ),
        .I1(Q),
        .I2(\aud_cts_val_reg[2] ),
        .I3(aud_acr_cts_in[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[10]_i_1 
       (.I0(aud_acr_cts_in[10]),
        .I1(\rOut_Data_reg_n_0_[10] ),
        .I2(\rOut_Data_reg_n_0_[8] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[11]_i_1 
       (.I0(aud_acr_cts_in[11]),
        .I1(\rOut_Data_reg_n_0_[11] ),
        .I2(\rOut_Data_reg_n_0_[9] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[12]_i_1 
       (.I0(aud_acr_cts_in[12]),
        .I1(\rOut_Data_reg_n_0_[12] ),
        .I2(\rOut_Data_reg_n_0_[10] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[13]_i_1 
       (.I0(aud_acr_cts_in[13]),
        .I1(\rOut_Data_reg_n_0_[13] ),
        .I2(\rOut_Data_reg_n_0_[11] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[14]_i_1 
       (.I0(aud_acr_cts_in[14]),
        .I1(\rOut_Data_reg_n_0_[14] ),
        .I2(\rOut_Data_reg_n_0_[12] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[15]_i_1 
       (.I0(aud_acr_cts_in[15]),
        .I1(\rOut_Data_reg_n_0_[15] ),
        .I2(\rOut_Data_reg_n_0_[13] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[16]_i_1 
       (.I0(aud_acr_cts_in[16]),
        .I1(\rOut_Data_reg_n_0_[16] ),
        .I2(\rOut_Data_reg_n_0_[14] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[17]_i_1 
       (.I0(aud_acr_cts_in[17]),
        .I1(\rOut_Data_reg_n_0_[17] ),
        .I2(\rOut_Data_reg_n_0_[15] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[18]_i_1 
       (.I0(aud_acr_cts_in[18]),
        .I1(\rOut_Data_reg_n_0_[18] ),
        .I2(\rOut_Data_reg_n_0_[16] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[19]_i_1 
       (.I0(aud_acr_cts_in[19]),
        .I1(\rOut_Data_reg_n_0_[19] ),
        .I2(\rOut_Data_reg_n_0_[17] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[19]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \aud_cts_val[1]_i_1 
       (.I0(\rOut_Data_reg_n_0_[1] ),
        .I1(Q),
        .I2(\aud_cts_val_reg[2] ),
        .I3(aud_acr_cts_in[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[2]_i_1 
       (.I0(aud_acr_cts_in[2]),
        .I1(\rOut_Data_reg_n_0_[2] ),
        .I2(\rOut_Data_reg_n_0_[0] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[3]_i_1 
       (.I0(aud_acr_cts_in[3]),
        .I1(\rOut_Data_reg_n_0_[3] ),
        .I2(\rOut_Data_reg_n_0_[1] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[4]_i_1 
       (.I0(aud_acr_cts_in[4]),
        .I1(\rOut_Data_reg_n_0_[4] ),
        .I2(\rOut_Data_reg_n_0_[2] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[5]_i_1 
       (.I0(aud_acr_cts_in[5]),
        .I1(\rOut_Data_reg_n_0_[5] ),
        .I2(\rOut_Data_reg_n_0_[3] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[6]_i_1 
       (.I0(aud_acr_cts_in[6]),
        .I1(\rOut_Data_reg_n_0_[6] ),
        .I2(\rOut_Data_reg_n_0_[4] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[7]_i_1 
       (.I0(aud_acr_cts_in[7]),
        .I1(\rOut_Data_reg_n_0_[7] ),
        .I2(\rOut_Data_reg_n_0_[5] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[8]_i_1 
       (.I0(aud_acr_cts_in[8]),
        .I1(\rOut_Data_reg_n_0_[8] ),
        .I2(\rOut_Data_reg_n_0_[6] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aud_cts_val[9]_i_1 
       (.I0(aud_acr_cts_in[9]),
        .I1(\rOut_Data_reg_n_0_[9] ),
        .I2(\rOut_Data_reg_n_0_[7] ),
        .I3(Q),
        .I4(\aud_cts_val_reg[2] ),
        .O(D[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rOut_ACK),
        .Q(\rIn_ACK_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\rIn_ACK_Sync_reg_n_0_[0] ),
        .Q(p_0_in0_in),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    rIn_DValid_i_1__2
       (.I0(p_0_in0_in),
        .O(rIn_DValid_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rIn_DValid_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rIn_DValid_i_1__2_n_0),
        .Q(rIn_DValid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \rIn_Data[19]_i_1 
       (.I0(p_0_in0_in),
        .I1(rIn_DValid),
        .O(rIn_Data0));
  FDRE \rIn_Data_reg[0] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [0]),
        .Q(\rIn_Data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[10] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [10]),
        .Q(\rIn_Data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[11] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [11]),
        .Q(\rIn_Data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[12] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [12]),
        .Q(\rIn_Data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[13] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [13]),
        .Q(\rIn_Data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[14] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [14]),
        .Q(\rIn_Data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[15] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [15]),
        .Q(\rIn_Data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[16] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [16]),
        .Q(\rIn_Data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[17] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [17]),
        .Q(\rIn_Data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[18] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [18]),
        .Q(\rIn_Data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[19] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [19]),
        .Q(\rIn_Data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[1] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [1]),
        .Q(\rIn_Data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[2] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [2]),
        .Q(\rIn_Data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[3] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [3]),
        .Q(\rIn_Data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[4] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [4]),
        .Q(\rIn_Data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[5] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [5]),
        .Q(\rIn_Data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[6] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [6]),
        .Q(\rIn_Data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[7] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [7]),
        .Q(\rIn_Data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[8] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [8]),
        .Q(\rIn_Data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[9] 
       (.C(hdmi_clk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[19]_0 [9]),
        .Q(\rIn_Data_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rOut_ACK_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rOut_ACK),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(rIn_DValid),
        .Q(\rOut_DValid_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(\rOut_DValid_Sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \rOut_Data[19]_i_1 
       (.I0(p_0_in),
        .I1(rOut_ACK),
        .O(rOut_Data0));
  FDRE \rOut_Data_reg[0] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[0] ),
        .Q(\rOut_Data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[10] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[10] ),
        .Q(\rOut_Data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[11] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[11] ),
        .Q(\rOut_Data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[12] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[12] ),
        .Q(\rOut_Data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[13] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[13] ),
        .Q(\rOut_Data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[14] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[14] ),
        .Q(\rOut_Data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[15] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[15] ),
        .Q(\rOut_Data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[16] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[16] ),
        .Q(\rOut_Data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[17] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[17] ),
        .Q(\rOut_Data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[18] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[18] ),
        .Q(\rOut_Data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[19] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[19] ),
        .Q(\rOut_Data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[1] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[1] ),
        .Q(\rOut_Data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[2] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[2] ),
        .Q(\rOut_Data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[3] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[3] ),
        .Q(\rOut_Data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[4] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[4] ),
        .Q(\rOut_Data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[5] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[5] ),
        .Q(\rOut_Data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[6] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[6] ),
        .Q(\rOut_Data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[7] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[7] ),
        .Q(\rOut_Data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[8] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[8] ),
        .Q(\rOut_Data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rOut_Data_reg[9] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[9] ),
        .Q(\rOut_Data_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hdmi_acr_ctrl_v1_0_1_lib_data_clkcross" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_1
   (O,
    \aud_rCycleCnt_reg[15] ,
    \aud_rCycleCnt_reg[23] ,
    \aud_rCycleCnt_reg[31] ,
    aud_rPulse,
    S,
    Q,
    \rOut_Data_reg[24]_0 ,
    \rOut_Data_reg[16]_0 ,
    \rOut_Data_reg[8]_0 ,
    DI,
    \aud_rCycleCnt_reg[0] ,
    \aud_rCycleCnt_reg[31]_0 ,
    \aud_rCycleCnt_reg[31]_1 ,
    D,
    aud_clk,
    axi_aclk,
    aud_rCycleCnt_reg,
    CO,
    aud_cke,
    aud_rPulse1,
    \aud_n_val_reg[19] ,
    aud_acr_n_in,
    \rIn_Data_reg[31]_0 );
  output [7:0]O;
  output [7:0]\aud_rCycleCnt_reg[15] ;
  output [7:0]\aud_rCycleCnt_reg[23] ;
  output [7:0]\aud_rCycleCnt_reg[31] ;
  output aud_rPulse;
  output [6:0]S;
  output [30:0]Q;
  output [7:0]\rOut_Data_reg[24]_0 ;
  output [7:0]\rOut_Data_reg[16]_0 ;
  output [7:0]\rOut_Data_reg[8]_0 ;
  output [0:0]DI;
  output [0:0]\aud_rCycleCnt_reg[0] ;
  output [3:0]\aud_rCycleCnt_reg[31]_0 ;
  output [3:0]\aud_rCycleCnt_reg[31]_1 ;
  output [19:0]D;
  input aud_clk;
  input axi_aclk;
  input [31:0]aud_rCycleCnt_reg;
  input [0:0]CO;
  input aud_cke;
  input [8:0]aud_rPulse1;
  input [0:0]\aud_n_val_reg[19] ;
  input [19:0]aud_acr_n_in;
  input [31:0]\rIn_Data_reg[31]_0 ;

  wire [0:0]CO;
  wire [19:0]D;
  wire [0:0]DI;
  wire [7:0]O;
  wire [30:0]Q;
  wire [6:0]S;
  wire [19:0]aud_acr_n_in;
  wire aud_cke;
  wire aud_clk;
  wire [0:0]\aud_n_val_reg[19] ;
  wire \aud_rCycleCnt[0]_i_10_n_0 ;
  wire \aud_rCycleCnt[0]_i_2_n_0 ;
  wire \aud_rCycleCnt[0]_i_3_n_0 ;
  wire \aud_rCycleCnt[0]_i_4_n_0 ;
  wire \aud_rCycleCnt[0]_i_5_n_0 ;
  wire \aud_rCycleCnt[0]_i_6_n_0 ;
  wire \aud_rCycleCnt[0]_i_7_n_0 ;
  wire \aud_rCycleCnt[0]_i_8_n_0 ;
  wire \aud_rCycleCnt[0]_i_9_n_0 ;
  wire \aud_rCycleCnt[16]_i_2_n_0 ;
  wire \aud_rCycleCnt[16]_i_3_n_0 ;
  wire \aud_rCycleCnt[16]_i_4_n_0 ;
  wire \aud_rCycleCnt[16]_i_5_n_0 ;
  wire \aud_rCycleCnt[16]_i_6_n_0 ;
  wire \aud_rCycleCnt[16]_i_7_n_0 ;
  wire \aud_rCycleCnt[16]_i_8_n_0 ;
  wire \aud_rCycleCnt[16]_i_9_n_0 ;
  wire \aud_rCycleCnt[24]_i_2_n_0 ;
  wire \aud_rCycleCnt[24]_i_3_n_0 ;
  wire \aud_rCycleCnt[24]_i_4_n_0 ;
  wire \aud_rCycleCnt[24]_i_5_n_0 ;
  wire \aud_rCycleCnt[24]_i_6_n_0 ;
  wire \aud_rCycleCnt[24]_i_7_n_0 ;
  wire \aud_rCycleCnt[24]_i_8_n_0 ;
  wire \aud_rCycleCnt[24]_i_9_n_0 ;
  wire \aud_rCycleCnt[8]_i_2_n_0 ;
  wire \aud_rCycleCnt[8]_i_3_n_0 ;
  wire \aud_rCycleCnt[8]_i_4_n_0 ;
  wire \aud_rCycleCnt[8]_i_5_n_0 ;
  wire \aud_rCycleCnt[8]_i_6_n_0 ;
  wire \aud_rCycleCnt[8]_i_7_n_0 ;
  wire \aud_rCycleCnt[8]_i_8_n_0 ;
  wire \aud_rCycleCnt[8]_i_9_n_0 ;
  wire [31:0]aud_rCycleCnt_reg;
  wire [0:0]\aud_rCycleCnt_reg[0] ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_0 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_1 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_2 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_3 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_4 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_5 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_6 ;
  wire \aud_rCycleCnt_reg[0]_i_1_n_7 ;
  wire [7:0]\aud_rCycleCnt_reg[15] ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_0 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_1 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_2 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_3 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_4 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_5 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_6 ;
  wire \aud_rCycleCnt_reg[16]_i_1_n_7 ;
  wire [7:0]\aud_rCycleCnt_reg[23] ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_1 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_2 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_3 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_4 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_5 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_6 ;
  wire \aud_rCycleCnt_reg[24]_i_1_n_7 ;
  wire [7:0]\aud_rCycleCnt_reg[31] ;
  wire [3:0]\aud_rCycleCnt_reg[31]_0 ;
  wire [3:0]\aud_rCycleCnt_reg[31]_1 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_0 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_1 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_2 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_3 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_4 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_5 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_6 ;
  wire \aud_rCycleCnt_reg[8]_i_1_n_7 ;
  wire aud_rPulse;
  wire [8:0]aud_rPulse1;
  wire axi_aclk;
  wire p_0_in;
  wire p_0_in0_in;
  wire \rIn_ACK_Sync_reg_n_0_[0] ;
  wire rIn_DValid;
  wire rIn_DValid_i_1_n_0;
  wire [31:0]rIn_Data;
  wire rIn_Data0;
  wire [31:0]\rIn_Data_reg[31]_0 ;
  wire rOut_ACK;
  wire \rOut_DValid_Sync_reg_n_0_[0] ;
  wire [31:31]rOut_Data;
  wire rOut_Data0;
  wire [7:0]\rOut_Data_reg[16]_0 ;
  wire [7:0]\rOut_Data_reg[24]_0 ;
  wire [7:0]\rOut_Data_reg[8]_0 ;
  wire [7:7]\NLW_aud_rCycleCnt_reg[24]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[0]_i_1 
       (.I0(Q[0]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[10]_i_1 
       (.I0(Q[10]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[11]_i_1 
       (.I0(Q[11]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[12]_i_1 
       (.I0(Q[12]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[13]_i_1 
       (.I0(Q[13]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[14]_i_1 
       (.I0(Q[14]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[15]_i_1 
       (.I0(Q[15]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[16]_i_1 
       (.I0(Q[16]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[17]_i_1 
       (.I0(Q[17]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[18]_i_1 
       (.I0(Q[18]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[19]_i_1 
       (.I0(Q[19]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[1]_i_1 
       (.I0(Q[1]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[2]_i_1 
       (.I0(Q[2]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[3]_i_1 
       (.I0(Q[3]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[4]_i_1 
       (.I0(Q[4]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[5]_i_1 
       (.I0(Q[5]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[6]_i_1 
       (.I0(Q[6]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[7]_i_1 
       (.I0(Q[7]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[8]_i_1 
       (.I0(Q[8]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aud_n_val[9]_i_1 
       (.I0(Q[9]),
        .I1(\aud_n_val_reg[19] ),
        .I2(aud_acr_n_in[9]),
        .O(D[9]));
  LUT2 #(
    .INIT(4'h1)) 
    \aud_rCycleCnt[0]_i_10 
       (.I0(aud_rCycleCnt_reg[0]),
        .I1(CO),
        .O(\aud_rCycleCnt[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \aud_rCycleCnt[0]_i_2 
       (.I0(CO),
        .O(\aud_rCycleCnt[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[0]_i_3 
       (.I0(aud_rCycleCnt_reg[7]),
        .I1(CO),
        .O(\aud_rCycleCnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[0]_i_4 
       (.I0(aud_rCycleCnt_reg[6]),
        .I1(CO),
        .O(\aud_rCycleCnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[0]_i_5 
       (.I0(aud_rCycleCnt_reg[5]),
        .I1(CO),
        .O(\aud_rCycleCnt[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[0]_i_6 
       (.I0(aud_rCycleCnt_reg[4]),
        .I1(CO),
        .O(\aud_rCycleCnt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[0]_i_7 
       (.I0(aud_rCycleCnt_reg[3]),
        .I1(CO),
        .O(\aud_rCycleCnt[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[0]_i_8 
       (.I0(aud_rCycleCnt_reg[2]),
        .I1(CO),
        .O(\aud_rCycleCnt[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[0]_i_9 
       (.I0(aud_rCycleCnt_reg[1]),
        .I1(CO),
        .O(\aud_rCycleCnt[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[16]_i_2 
       (.I0(aud_rCycleCnt_reg[23]),
        .I1(CO),
        .O(\aud_rCycleCnt[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[16]_i_3 
       (.I0(aud_rCycleCnt_reg[22]),
        .I1(CO),
        .O(\aud_rCycleCnt[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[16]_i_4 
       (.I0(aud_rCycleCnt_reg[21]),
        .I1(CO),
        .O(\aud_rCycleCnt[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[16]_i_5 
       (.I0(aud_rCycleCnt_reg[20]),
        .I1(CO),
        .O(\aud_rCycleCnt[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[16]_i_6 
       (.I0(aud_rCycleCnt_reg[19]),
        .I1(CO),
        .O(\aud_rCycleCnt[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[16]_i_7 
       (.I0(aud_rCycleCnt_reg[18]),
        .I1(CO),
        .O(\aud_rCycleCnt[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[16]_i_8 
       (.I0(aud_rCycleCnt_reg[17]),
        .I1(CO),
        .O(\aud_rCycleCnt[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[16]_i_9 
       (.I0(aud_rCycleCnt_reg[16]),
        .I1(CO),
        .O(\aud_rCycleCnt[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[24]_i_2 
       (.I0(aud_rCycleCnt_reg[31]),
        .I1(CO),
        .O(\aud_rCycleCnt[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[24]_i_3 
       (.I0(aud_rCycleCnt_reg[30]),
        .I1(CO),
        .O(\aud_rCycleCnt[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[24]_i_4 
       (.I0(aud_rCycleCnt_reg[29]),
        .I1(CO),
        .O(\aud_rCycleCnt[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[24]_i_5 
       (.I0(aud_rCycleCnt_reg[28]),
        .I1(CO),
        .O(\aud_rCycleCnt[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[24]_i_6 
       (.I0(aud_rCycleCnt_reg[27]),
        .I1(CO),
        .O(\aud_rCycleCnt[24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[24]_i_7 
       (.I0(aud_rCycleCnt_reg[26]),
        .I1(CO),
        .O(\aud_rCycleCnt[24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[24]_i_8 
       (.I0(aud_rCycleCnt_reg[25]),
        .I1(CO),
        .O(\aud_rCycleCnt[24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[24]_i_9 
       (.I0(aud_rCycleCnt_reg[24]),
        .I1(CO),
        .O(\aud_rCycleCnt[24]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[8]_i_2 
       (.I0(aud_rCycleCnt_reg[15]),
        .I1(CO),
        .O(\aud_rCycleCnt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[8]_i_3 
       (.I0(aud_rCycleCnt_reg[14]),
        .I1(CO),
        .O(\aud_rCycleCnt[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[8]_i_4 
       (.I0(aud_rCycleCnt_reg[13]),
        .I1(CO),
        .O(\aud_rCycleCnt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[8]_i_5 
       (.I0(aud_rCycleCnt_reg[12]),
        .I1(CO),
        .O(\aud_rCycleCnt[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[8]_i_6 
       (.I0(aud_rCycleCnt_reg[11]),
        .I1(CO),
        .O(\aud_rCycleCnt[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[8]_i_7 
       (.I0(aud_rCycleCnt_reg[10]),
        .I1(CO),
        .O(\aud_rCycleCnt[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[8]_i_8 
       (.I0(aud_rCycleCnt_reg[9]),
        .I1(CO),
        .O(\aud_rCycleCnt[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aud_rCycleCnt[8]_i_9 
       (.I0(aud_rCycleCnt_reg[8]),
        .I1(CO),
        .O(\aud_rCycleCnt[8]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \aud_rCycleCnt_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\aud_rCycleCnt_reg[0]_i_1_n_0 ,\aud_rCycleCnt_reg[0]_i_1_n_1 ,\aud_rCycleCnt_reg[0]_i_1_n_2 ,\aud_rCycleCnt_reg[0]_i_1_n_3 ,\aud_rCycleCnt_reg[0]_i_1_n_4 ,\aud_rCycleCnt_reg[0]_i_1_n_5 ,\aud_rCycleCnt_reg[0]_i_1_n_6 ,\aud_rCycleCnt_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\aud_rCycleCnt[0]_i_2_n_0 }),
        .O(O),
        .S({\aud_rCycleCnt[0]_i_3_n_0 ,\aud_rCycleCnt[0]_i_4_n_0 ,\aud_rCycleCnt[0]_i_5_n_0 ,\aud_rCycleCnt[0]_i_6_n_0 ,\aud_rCycleCnt[0]_i_7_n_0 ,\aud_rCycleCnt[0]_i_8_n_0 ,\aud_rCycleCnt[0]_i_9_n_0 ,\aud_rCycleCnt[0]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \aud_rCycleCnt_reg[16]_i_1 
       (.CI(\aud_rCycleCnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\aud_rCycleCnt_reg[16]_i_1_n_0 ,\aud_rCycleCnt_reg[16]_i_1_n_1 ,\aud_rCycleCnt_reg[16]_i_1_n_2 ,\aud_rCycleCnt_reg[16]_i_1_n_3 ,\aud_rCycleCnt_reg[16]_i_1_n_4 ,\aud_rCycleCnt_reg[16]_i_1_n_5 ,\aud_rCycleCnt_reg[16]_i_1_n_6 ,\aud_rCycleCnt_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\aud_rCycleCnt_reg[23] ),
        .S({\aud_rCycleCnt[16]_i_2_n_0 ,\aud_rCycleCnt[16]_i_3_n_0 ,\aud_rCycleCnt[16]_i_4_n_0 ,\aud_rCycleCnt[16]_i_5_n_0 ,\aud_rCycleCnt[16]_i_6_n_0 ,\aud_rCycleCnt[16]_i_7_n_0 ,\aud_rCycleCnt[16]_i_8_n_0 ,\aud_rCycleCnt[16]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \aud_rCycleCnt_reg[24]_i_1 
       (.CI(\aud_rCycleCnt_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_aud_rCycleCnt_reg[24]_i_1_CO_UNCONNECTED [7],\aud_rCycleCnt_reg[24]_i_1_n_1 ,\aud_rCycleCnt_reg[24]_i_1_n_2 ,\aud_rCycleCnt_reg[24]_i_1_n_3 ,\aud_rCycleCnt_reg[24]_i_1_n_4 ,\aud_rCycleCnt_reg[24]_i_1_n_5 ,\aud_rCycleCnt_reg[24]_i_1_n_6 ,\aud_rCycleCnt_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\aud_rCycleCnt_reg[31] ),
        .S({\aud_rCycleCnt[24]_i_2_n_0 ,\aud_rCycleCnt[24]_i_3_n_0 ,\aud_rCycleCnt[24]_i_4_n_0 ,\aud_rCycleCnt[24]_i_5_n_0 ,\aud_rCycleCnt[24]_i_6_n_0 ,\aud_rCycleCnt[24]_i_7_n_0 ,\aud_rCycleCnt[24]_i_8_n_0 ,\aud_rCycleCnt[24]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \aud_rCycleCnt_reg[8]_i_1 
       (.CI(\aud_rCycleCnt_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\aud_rCycleCnt_reg[8]_i_1_n_0 ,\aud_rCycleCnt_reg[8]_i_1_n_1 ,\aud_rCycleCnt_reg[8]_i_1_n_2 ,\aud_rCycleCnt_reg[8]_i_1_n_3 ,\aud_rCycleCnt_reg[8]_i_1_n_4 ,\aud_rCycleCnt_reg[8]_i_1_n_5 ,\aud_rCycleCnt_reg[8]_i_1_n_6 ,\aud_rCycleCnt_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\aud_rCycleCnt_reg[15] ),
        .S({\aud_rCycleCnt[8]_i_2_n_0 ,\aud_rCycleCnt[8]_i_3_n_0 ,\aud_rCycleCnt[8]_i_4_n_0 ,\aud_rCycleCnt[8]_i_5_n_0 ,\aud_rCycleCnt[8]_i_6_n_0 ,\aud_rCycleCnt[8]_i_7_n_0 ,\aud_rCycleCnt[8]_i_8_n_0 ,\aud_rCycleCnt[8]_i_9_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__0_i_1
       (.I0(aud_rCycleCnt_reg[31]),
        .I1(aud_rPulse1[8]),
        .I2(aud_rCycleCnt_reg[30]),
        .I3(aud_rPulse1[7]),
        .O(\aud_rCycleCnt_reg[31]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__0_i_10
       (.I0(aud_rPulse1[6]),
        .I1(aud_rCycleCnt_reg[29]),
        .I2(aud_rPulse1[5]),
        .I3(aud_rCycleCnt_reg[28]),
        .O(\aud_rCycleCnt_reg[31]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__0_i_11
       (.I0(aud_rPulse1[4]),
        .I1(aud_rCycleCnt_reg[27]),
        .I2(aud_rPulse1[3]),
        .I3(aud_rCycleCnt_reg[26]),
        .O(\aud_rCycleCnt_reg[31]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__0_i_12
       (.I0(aud_rPulse1[2]),
        .I1(aud_rCycleCnt_reg[25]),
        .I2(aud_rPulse1[1]),
        .I3(aud_rCycleCnt_reg[24]),
        .O(\aud_rCycleCnt_reg[31]_1 [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__0_i_2
       (.I0(aud_rCycleCnt_reg[29]),
        .I1(aud_rPulse1[6]),
        .I2(aud_rCycleCnt_reg[28]),
        .I3(aud_rPulse1[5]),
        .O(\aud_rCycleCnt_reg[31]_0 [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__0_i_3
       (.I0(aud_rCycleCnt_reg[27]),
        .I1(aud_rPulse1[4]),
        .I2(aud_rCycleCnt_reg[26]),
        .I3(aud_rPulse1[3]),
        .O(\aud_rCycleCnt_reg[31]_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    aud_rPulse0_carry__0_i_4
       (.I0(aud_rCycleCnt_reg[25]),
        .I1(aud_rPulse1[2]),
        .I2(aud_rCycleCnt_reg[24]),
        .I3(aud_rPulse1[1]),
        .O(\aud_rCycleCnt_reg[31]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    aud_rPulse0_carry__0_i_9
       (.I0(aud_rPulse1[8]),
        .I1(aud_rCycleCnt_reg[31]),
        .I2(aud_rPulse1[7]),
        .I3(aud_rCycleCnt_reg[30]),
        .O(\aud_rCycleCnt_reg[31]_1 [3]));
  LUT4 #(
    .INIT(16'h6006)) 
    aud_rPulse0_carry_i_16
       (.I0(aud_rCycleCnt_reg[0]),
        .I1(Q[0]),
        .I2(aud_rPulse1[0]),
        .I3(aud_rCycleCnt_reg[1]),
        .O(\aud_rCycleCnt_reg[0] ));
  LUT4 #(
    .INIT(16'hB222)) 
    aud_rPulse0_carry_i_8
       (.I0(aud_rCycleCnt_reg[1]),
        .I1(aud_rPulse1[0]),
        .I2(aud_rCycleCnt_reg[0]),
        .I3(Q[0]),
        .O(DI));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__0_i_1
       (.I0(Q[16]),
        .O(\rOut_Data_reg[16]_0 [7]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__0_i_2
       (.I0(Q[15]),
        .O(\rOut_Data_reg[16]_0 [6]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__0_i_3
       (.I0(Q[14]),
        .O(\rOut_Data_reg[16]_0 [5]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__0_i_4
       (.I0(Q[13]),
        .O(\rOut_Data_reg[16]_0 [4]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__0_i_5
       (.I0(Q[12]),
        .O(\rOut_Data_reg[16]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__0_i_6
       (.I0(Q[11]),
        .O(\rOut_Data_reg[16]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__0_i_7
       (.I0(Q[10]),
        .O(\rOut_Data_reg[16]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__0_i_8
       (.I0(Q[9]),
        .O(\rOut_Data_reg[16]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__1_i_1
       (.I0(Q[24]),
        .O(\rOut_Data_reg[24]_0 [7]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__1_i_2
       (.I0(Q[23]),
        .O(\rOut_Data_reg[24]_0 [6]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__1_i_3
       (.I0(Q[22]),
        .O(\rOut_Data_reg[24]_0 [5]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__1_i_4
       (.I0(Q[21]),
        .O(\rOut_Data_reg[24]_0 [4]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__1_i_5
       (.I0(Q[20]),
        .O(\rOut_Data_reg[24]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__1_i_6
       (.I0(Q[19]),
        .O(\rOut_Data_reg[24]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__1_i_7
       (.I0(Q[18]),
        .O(\rOut_Data_reg[24]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__1_i_8
       (.I0(Q[17]),
        .O(\rOut_Data_reg[24]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__2_i_1
       (.I0(rOut_Data),
        .O(S[6]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__2_i_2
       (.I0(Q[30]),
        .O(S[5]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__2_i_3
       (.I0(Q[29]),
        .O(S[4]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__2_i_4
       (.I0(Q[28]),
        .O(S[3]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__2_i_5
       (.I0(Q[27]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__2_i_6
       (.I0(Q[26]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry__2_i_7
       (.I0(Q[25]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry_i_1
       (.I0(Q[8]),
        .O(\rOut_Data_reg[8]_0 [7]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry_i_2
       (.I0(Q[7]),
        .O(\rOut_Data_reg[8]_0 [6]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry_i_3
       (.I0(Q[6]),
        .O(\rOut_Data_reg[8]_0 [5]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry_i_4
       (.I0(Q[5]),
        .O(\rOut_Data_reg[8]_0 [4]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry_i_5
       (.I0(Q[4]),
        .O(\rOut_Data_reg[8]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry_i_6
       (.I0(Q[3]),
        .O(\rOut_Data_reg[8]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry_i_7
       (.I0(Q[2]),
        .O(\rOut_Data_reg[8]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    aud_rPulse1_carry_i_8
       (.I0(Q[1]),
        .O(\rOut_Data_reg[8]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    aud_rPulse_i_1
       (.I0(aud_cke),
        .I1(CO),
        .O(aud_rPulse));
  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(rOut_ACK),
        .Q(\rIn_ACK_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\rIn_ACK_Sync_reg_n_0_[0] ),
        .Q(p_0_in0_in),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    rIn_DValid_i_1
       (.I0(p_0_in0_in),
        .O(rIn_DValid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rIn_DValid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(rIn_DValid_i_1_n_0),
        .Q(rIn_DValid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \rIn_Data[31]_i_1 
       (.I0(p_0_in0_in),
        .I1(rIn_DValid),
        .O(rIn_Data0));
  FDRE \rIn_Data_reg[0] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [0]),
        .Q(rIn_Data[0]),
        .R(1'b0));
  FDRE \rIn_Data_reg[10] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [10]),
        .Q(rIn_Data[10]),
        .R(1'b0));
  FDRE \rIn_Data_reg[11] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [11]),
        .Q(rIn_Data[11]),
        .R(1'b0));
  FDRE \rIn_Data_reg[12] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [12]),
        .Q(rIn_Data[12]),
        .R(1'b0));
  FDRE \rIn_Data_reg[13] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [13]),
        .Q(rIn_Data[13]),
        .R(1'b0));
  FDRE \rIn_Data_reg[14] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [14]),
        .Q(rIn_Data[14]),
        .R(1'b0));
  FDRE \rIn_Data_reg[15] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [15]),
        .Q(rIn_Data[15]),
        .R(1'b0));
  FDRE \rIn_Data_reg[16] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [16]),
        .Q(rIn_Data[16]),
        .R(1'b0));
  FDRE \rIn_Data_reg[17] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [17]),
        .Q(rIn_Data[17]),
        .R(1'b0));
  FDRE \rIn_Data_reg[18] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [18]),
        .Q(rIn_Data[18]),
        .R(1'b0));
  FDRE \rIn_Data_reg[19] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [19]),
        .Q(rIn_Data[19]),
        .R(1'b0));
  FDRE \rIn_Data_reg[1] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [1]),
        .Q(rIn_Data[1]),
        .R(1'b0));
  FDRE \rIn_Data_reg[20] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [20]),
        .Q(rIn_Data[20]),
        .R(1'b0));
  FDRE \rIn_Data_reg[21] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [21]),
        .Q(rIn_Data[21]),
        .R(1'b0));
  FDRE \rIn_Data_reg[22] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [22]),
        .Q(rIn_Data[22]),
        .R(1'b0));
  FDRE \rIn_Data_reg[23] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [23]),
        .Q(rIn_Data[23]),
        .R(1'b0));
  FDRE \rIn_Data_reg[24] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [24]),
        .Q(rIn_Data[24]),
        .R(1'b0));
  FDRE \rIn_Data_reg[25] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [25]),
        .Q(rIn_Data[25]),
        .R(1'b0));
  FDRE \rIn_Data_reg[26] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [26]),
        .Q(rIn_Data[26]),
        .R(1'b0));
  FDRE \rIn_Data_reg[27] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [27]),
        .Q(rIn_Data[27]),
        .R(1'b0));
  FDRE \rIn_Data_reg[28] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [28]),
        .Q(rIn_Data[28]),
        .R(1'b0));
  FDRE \rIn_Data_reg[29] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [29]),
        .Q(rIn_Data[29]),
        .R(1'b0));
  FDRE \rIn_Data_reg[2] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [2]),
        .Q(rIn_Data[2]),
        .R(1'b0));
  FDRE \rIn_Data_reg[30] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [30]),
        .Q(rIn_Data[30]),
        .R(1'b0));
  FDRE \rIn_Data_reg[31] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [31]),
        .Q(rIn_Data[31]),
        .R(1'b0));
  FDRE \rIn_Data_reg[3] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [3]),
        .Q(rIn_Data[3]),
        .R(1'b0));
  FDRE \rIn_Data_reg[4] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [4]),
        .Q(rIn_Data[4]),
        .R(1'b0));
  FDRE \rIn_Data_reg[5] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [5]),
        .Q(rIn_Data[5]),
        .R(1'b0));
  FDRE \rIn_Data_reg[6] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [6]),
        .Q(rIn_Data[6]),
        .R(1'b0));
  FDRE \rIn_Data_reg[7] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [7]),
        .Q(rIn_Data[7]),
        .R(1'b0));
  FDRE \rIn_Data_reg[8] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [8]),
        .Q(rIn_Data[8]),
        .R(1'b0));
  FDRE \rIn_Data_reg[9] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[31]_0 [9]),
        .Q(rIn_Data[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rOut_ACK_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rOut_ACK),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(rIn_DValid),
        .Q(\rOut_DValid_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(\rOut_DValid_Sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \rOut_Data[31]_i_1 
       (.I0(p_0_in),
        .I1(rOut_ACK),
        .O(rOut_Data0));
  FDRE \rOut_Data_reg[0] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \rOut_Data_reg[10] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \rOut_Data_reg[11] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \rOut_Data_reg[12] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \rOut_Data_reg[13] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \rOut_Data_reg[14] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \rOut_Data_reg[15] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \rOut_Data_reg[16] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \rOut_Data_reg[17] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \rOut_Data_reg[18] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \rOut_Data_reg[19] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \rOut_Data_reg[1] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \rOut_Data_reg[20] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \rOut_Data_reg[21] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \rOut_Data_reg[22] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \rOut_Data_reg[23] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \rOut_Data_reg[24] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \rOut_Data_reg[25] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \rOut_Data_reg[26] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \rOut_Data_reg[27] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \rOut_Data_reg[28] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \rOut_Data_reg[29] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \rOut_Data_reg[2] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \rOut_Data_reg[30] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \rOut_Data_reg[31] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[31]),
        .Q(rOut_Data),
        .R(1'b0));
  FDRE \rOut_Data_reg[3] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \rOut_Data_reg[4] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \rOut_Data_reg[5] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \rOut_Data_reg[6] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \rOut_Data_reg[7] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \rOut_Data_reg[8] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \rOut_Data_reg[9] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(rIn_Data[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hdmi_acr_ctrl_v1_0_1_lib_data_clkcross" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross__parameterized0
   (D,
    \rOut_Data_reg[2]_0 ,
    aud_clk,
    axi_aclk,
    Q,
    \rIn_Data_reg[2]_0 );
  output [2:0]D;
  output [2:0]\rOut_Data_reg[2]_0 ;
  input aud_clk;
  input axi_aclk;
  input [2:0]Q;
  input [2:0]\rIn_Data_reg[2]_0 ;

  wire [2:0]D;
  wire [2:0]Q;
  wire aud_clk;
  wire axi_aclk;
  wire p_0_in;
  wire p_0_in0_in;
  wire \rIn_ACK_Sync_reg_n_0_[0] ;
  wire rIn_DValid;
  wire rIn_DValid_i_1__0_n_0;
  wire rIn_Data0;
  wire [2:0]\rIn_Data_reg[2]_0 ;
  wire \rIn_Data_reg_n_0_[0] ;
  wire \rIn_Data_reg_n_0_[1] ;
  wire \rIn_Data_reg_n_0_[2] ;
  wire rOut_ACK;
  wire \rOut_DValid_Sync_reg_n_0_[0] ;
  wire rOut_Data0;
  wire [2:0]\rOut_Data_reg[2]_0 ;

  LUT6 #(
    .INIT(64'h00000000FFFF6FF6)) 
    \aud_rCKECounter[0]_i_1 
       (.I0(Q[1]),
        .I1(\rOut_Data_reg[2]_0 [1]),
        .I2(Q[2]),
        .I3(\rOut_Data_reg[2]_0 [2]),
        .I4(\rOut_Data_reg[2]_0 [0]),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h45545555AAAA2AA2)) 
    \aud_rCKECounter[1]_i_1 
       (.I0(Q[1]),
        .I1(\rOut_Data_reg[2]_0 [1]),
        .I2(Q[2]),
        .I3(\rOut_Data_reg[2]_0 [2]),
        .I4(\rOut_Data_reg[2]_0 [0]),
        .I5(Q[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h4A525A5AF0F060F0)) 
    \aud_rCKECounter[2]_i_1 
       (.I0(Q[1]),
        .I1(\rOut_Data_reg[2]_0 [1]),
        .I2(Q[2]),
        .I3(\rOut_Data_reg[2]_0 [2]),
        .I4(\rOut_Data_reg[2]_0 [0]),
        .I5(Q[0]),
        .O(D[2]));
  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(rOut_ACK),
        .Q(\rIn_ACK_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rIn_ACK_Sync_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\rIn_ACK_Sync_reg_n_0_[0] ),
        .Q(p_0_in0_in),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    rIn_DValid_i_1__0
       (.I0(p_0_in0_in),
        .O(rIn_DValid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rIn_DValid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(rIn_DValid_i_1__0_n_0),
        .Q(rIn_DValid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \rIn_Data[2]_i_1 
       (.I0(p_0_in0_in),
        .I1(rIn_DValid),
        .O(rIn_Data0));
  FDRE \rIn_Data_reg[0] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[2]_0 [0]),
        .Q(\rIn_Data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[1] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[2]_0 [1]),
        .Q(\rIn_Data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rIn_Data_reg[2] 
       (.C(axi_aclk),
        .CE(rIn_Data0),
        .D(\rIn_Data_reg[2]_0 [2]),
        .Q(\rIn_Data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rOut_ACK_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rOut_ACK),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[0] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(rIn_DValid),
        .Q(\rOut_DValid_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_DValid_Sync_reg[1] 
       (.C(aud_clk),
        .CE(1'b1),
        .D(\rOut_DValid_Sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \rOut_Data[2]_i_1 
       (.I0(p_0_in),
        .I1(rOut_ACK),
        .O(rOut_Data0));
  FDRE \rOut_Data_reg[0] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[0] ),
        .Q(\rOut_Data_reg[2]_0 [0]),
        .R(1'b0));
  FDRE \rOut_Data_reg[1] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[1] ),
        .Q(\rOut_Data_reg[2]_0 [1]),
        .R(1'b0));
  FDRE \rOut_Data_reg[2] 
       (.C(aud_clk),
        .CE(rOut_Data0),
        .D(\rIn_Data_reg_n_0_[2] ),
        .Q(\rOut_Data_reg[2]_0 [2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_pulse_clkcross
   (rOut_Pulse,
    hdmi_clk,
    rIn_PulseCap_reg_0,
    aud_clk);
  output rOut_Pulse;
  input hdmi_clk;
  input rIn_PulseCap_reg_0;
  input aud_clk;

  wire aud_clk;
  wire hdmi_clk;
  wire p_0_in;
  wire rIn_PulseCap;
  wire rIn_PulseCap_reg_0;
  wire rIn_Toggle;
  wire rIn_Toggle_i_1_n_0;
  wire rOut_Pulse;
  wire rOut_Pulse_i_1_n_0;
  wire \rOut_Sync_reg_n_0_[0] ;
  wire \rOut_Sync_reg_n_0_[2] ;

  FDRE #(
    .INIT(1'b0)) 
    rIn_PulseCap_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(rIn_PulseCap_reg_0),
        .Q(rIn_PulseCap),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    rIn_Toggle_i_1
       (.I0(rIn_PulseCap),
        .I1(rIn_PulseCap_reg_0),
        .I2(rIn_Toggle),
        .O(rIn_Toggle_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rIn_Toggle_reg
       (.C(aud_clk),
        .CE(1'b1),
        .D(rIn_Toggle_i_1_n_0),
        .Q(rIn_Toggle),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    rOut_Pulse_i_1
       (.I0(p_0_in),
        .I1(\rOut_Sync_reg_n_0_[2] ),
        .O(rOut_Pulse_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rOut_Pulse_reg
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rOut_Pulse_i_1_n_0),
        .Q(rOut_Pulse),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_Sync_reg[0] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(rIn_Toggle),
        .Q(\rOut_Sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_Sync_reg[1] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(\rOut_Sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rOut_Sync_reg[2] 
       (.C(hdmi_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\rOut_Sync_reg_n_0_[2] ),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WBKwBUt/cxKvlhhAGvb3GM2roRNnFSE9jIjvYkQYA6WHriU4vq770ETPrWgVBHyauw/5MWv53xYK
E6DJcQb+yeEj1vrC6QfpPRdpGNt5j+KjR4QaPMuZ+8cfrQpZVBoiC6CxW1HvKbJcac0ie3zf+X4g
sfsg/QuMTQ1tiRWaVEQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZKz4kYHH94AWdO3QuJrUYx99ckxw5LBFLZileKhSOiWXSJyh+p6Fug+QmX35l6EwG4GTuAX26fl0
IR8wbSQvfd86ZSACTNZRaIP9ODUgw8n3mEUkWqpTfOc9Rk4PGg8uEbp0k9krmqVV/CnZTUj5Puks
YSGR8W7QT9pfLRELZkMxAAbGLdkfW1CXoSFnkBcGFcsQARcO/0dGP5Hhffk1dE4JQ6xkp2RDPu+w
LNeMM8tAB4FQjgjHWvITSEpnvguxxdZoJR2RaDzZG4rilm6nmnTF/CXJUNeqUyHCjKhSkdmNwuSD
vT7owFXiZNd9yXW1NCVi80m0jkpfnoMJjlf9Uw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bWOqQltCMPK7MDypw0ID2PQSmMHUVPw9vygNDOKkUr7826sn1M2VHgRn1UwMHxyLODguofYGoLXN
Bp4qY54VxGQE1Vys1FAnE9ziI8goko4FahbdotMxkZY+4qHdnBhkA/L75wKTa8Srd+dPcGD3nKSZ
LcxmrEwfZIfmhk+mwmc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
odGvtZIrYYfo3lXTg+xbs0leXH41XAesV5jO4zN0sI/6XI+mEWgvqzdD/4X9UkLz+W39NE3iMgLd
jliRCmj0uuRC44uvh2DTDsppRyFLB8a8TXRF9W6pRXLbAqSwdwDn/3i+XH6iRnMajgGfl5Eff6K+
zVqd2C1PqEiww967imF7aA1yo5bAzmI8fXrYdl+Su9AMF6EM2oihPYdOdpI18K8s1D4YYjt51eRg
IEzPquhADKu4viAjl9Vd0434mBeJ38XKBRD0no6k9E/KxR3yS6CgqXhfGHu51HAZFVpi4TJwxdug
yoA2dqwWvYQHY3/Cgvw+ilA0JsDTB5LFbzCRSA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OgyKp0gm5duXaoc7bD89zpMLchix5Wmfx65urqcXalTFmdH0BAtzZO2NtKC7dxajR8EEXQUx9wS2
ljzFGEb/FJ9j1mfA04zk6nhvQPr1Uk8ug6DCMi7HZyvNEKyx6duxNcBU4jC3Ory5Z9Km2YVhH8So
YRNhAWblEpDRjnq2VkLas8hiZ0njX/QVX3Eg/avHXJ8PSYwTGKPqAifkLScnDDU43RIZHw0KmSIw
qTvftzUrB91kFcv44bYJob68zG7Bb15PBZx0mJGEvvKo25m84LS1gilIWUXlnjlEPRmW9JftcXxU
P0SOBraHb11AgfRLJzUeSUjCxJeEYNaiIS+dmQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gelAjdqYUlc8H76i+kLSFBGpFibVdc1dL79oNwE8XjL1YV9c6+gJ5voaW6hQm2tyR1uB18MDYfmX
oob5ia8/rowSNgtlMDp5b5L43AIGzG+zQ9NPFUbFBexWEFV5QvMx4pnmUgOF3HZYwb7ufRnbaqmJ
ftesHfsgPWvk5HCOP/YmGheYguxyLHQkws26Qk6tVANhoJXsGv6JeugzpII6+w0y5JeFBnrrQRQc
B+62PApgdnQhVatPCqh5QGT/esBVA/kKsXFhsowttsr/eXdK5ZxUeknJ/Sno4edLgNSie7MVmbw/
PTxBgNYmcZwX9w4EMEFA+Sh8viClg8SmGfYgsw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sxcBolWYgljp5QuGfhegMLhytmPHuY7abie7aWFh5GmxyZwQKfJlOKkLlwgp51nIJQN64gvYa6kn
L0xU8QyxqBwt73PbkLSY2R8qyIQhCdUfdNmuUDVNF872XPZ//X09XijbKECuOCdlbLtB1HN4K1Jj
d8gTYNhw+KuHZve1e8qFFFw+QMunA90Bi+5mPOEYhR3NFyfPfC/fcQ5BIYOgfDFrvKS9S8PQVYlx
BnhX7c8ReOAKHXNjpXYOCmdlIcQpnsWwcz8ly8XDp+mUW8s1kVGjxF0NwI5ugIMqfzm1ouBFI6/7
Go3WKHc20JPGy/vf6qrxpEIS5DP1sVLjZmYy5w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
AXRaywyE/u6cboM0pObIzo6ahfwwiAIIMgnGiP+Z9wa9DAT+Y4HjMaNkHd5/G0VtLxN1NHp/Kesh
7l9aKTikuXLlB4eZNJmUxjpdgHRXccqUL9uI3YtLmB8niFTyXOwxb22O+fvd+z9l6bx+Fsd1J+51
ZjfJPwbX850eB4zwtsB7KXhHR46HaHxfOnu0KejEn5ah1qmpTtFx89bO/QwGCy0EhXSdz08jFHh9
eIS820yioZ6U2FPnUQbGWX23qI+5OpJh8xM8H5yvLwXZyNZWZB87IyRBcA2MuzV1Y7tfEy0ypAGk
SEGWP3vxFNbXupf0VtyqJqTvUVYRP/wNqISd756AmEzSexsmUTF+xctuZqgfimslvJFANu/ZJfmo
dhU3WgMC4mTT6KKvfeA4tavSRQ3453wyKlOsg1NN6yzeOMwPyAGfDQ1kjcOl3vOjj8ZPBd4r9cbg
R1+FDujDhTdf6ieLbVkWAZore0HsWCZVtfQokOiXk3Ot3My01hK3MAGg

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qVq1QMqQNTOfFiW/c2yg1dvK4XzAsnihD9rwUxq3rKDkfcM77wqkDK5hKx40zleOrbLPS6/Go9+G
GYWJIPckqqWf+/zOt+img2/EL4Qt2wsPKnwGlvCf9SLAziKvnbGoIf70CA2lVH7Tgvf5EPS2k44L
mwBIUQD5/laZjoOB2UeiCMOKngah3ITFqp//l294rHvRV8iAQqYGzjz8Hh7JbBE+sTc4hZAe8pmc
XjVALj6DMrjKiNuDubg9snVr9MTuVYlo42IIhpQprour3788S+YlTaedvACUSq0gjHEN0w2xiQnZ
65AxGnh/6T3V9mfAQ7etHvJBixmS8t6FLp7JDA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10032)
`pragma protect data_block
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
`pragma protect end_protected
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
