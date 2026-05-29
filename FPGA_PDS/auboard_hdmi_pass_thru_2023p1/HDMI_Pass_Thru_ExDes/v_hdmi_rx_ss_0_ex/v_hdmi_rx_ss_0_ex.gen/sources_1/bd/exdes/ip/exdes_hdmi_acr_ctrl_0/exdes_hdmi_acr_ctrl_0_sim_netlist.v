// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Aug  1 13:02:16 2024
// Host        : HP-Z4-G4-027564 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/v_hdmi_rx_ss_0_ex.gen/sources_1/bd/exdes/ip/exdes_hdmi_acr_ctrl_0/exdes_hdmi_acr_ctrl_0_sim_netlist.v
// Design      : exdes_hdmi_acr_ctrl_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcau15p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "exdes_hdmi_acr_ctrl_0,hdmi_acr_ctrl_v1_0_1_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "hdmi_acr_ctrl_v1_0_1_wrapper,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module exdes_hdmi_acr_ctrl_0
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
  exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_wrapper inst
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

(* ORIG_REF_NAME = "hdmi_acr_ctrl_v1_0_1_14" *) 
module exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_14
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

  exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_14_top hdmi_acr_ctrl_top_inst
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

(* ORIG_REF_NAME = "hdmi_acr_ctrl_v1_0_1_14_axi" *) 
module exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_14_axi
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

(* ORIG_REF_NAME = "hdmi_acr_ctrl_v1_0_1_14_top" *) 
module exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_14_top
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

  exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross CTS_CLKCROSS_ACLK_INST
       (.Q(hdmi_rCTS_Val),
        .axi_aclk(axi_aclk),
        .hdmi_clk(hdmi_clk),
        .\rOut_Data_reg[31]_0 ({CTS_CLKCROSS_ACLK_INST_n_0,CTS_CLKCROSS_ACLK_INST_n_1,CTS_CLKCROSS_ACLK_INST_n_2,CTS_CLKCROSS_ACLK_INST_n_3,CTS_CLKCROSS_ACLK_INST_n_4,CTS_CLKCROSS_ACLK_INST_n_5,CTS_CLKCROSS_ACLK_INST_n_6,CTS_CLKCROSS_ACLK_INST_n_7,CTS_CLKCROSS_ACLK_INST_n_8,CTS_CLKCROSS_ACLK_INST_n_9,CTS_CLKCROSS_ACLK_INST_n_10,CTS_CLKCROSS_ACLK_INST_n_11,CTS_CLKCROSS_ACLK_INST_n_12,CTS_CLKCROSS_ACLK_INST_n_13,CTS_CLKCROSS_ACLK_INST_n_14,CTS_CLKCROSS_ACLK_INST_n_15,CTS_CLKCROSS_ACLK_INST_n_16,CTS_CLKCROSS_ACLK_INST_n_17,CTS_CLKCROSS_ACLK_INST_n_18,CTS_CLKCROSS_ACLK_INST_n_19,CTS_CLKCROSS_ACLK_INST_n_20,CTS_CLKCROSS_ACLK_INST_n_21,CTS_CLKCROSS_ACLK_INST_n_22,CTS_CLKCROSS_ACLK_INST_n_23,CTS_CLKCROSS_ACLK_INST_n_24,CTS_CLKCROSS_ACLK_INST_n_25,CTS_CLKCROSS_ACLK_INST_n_26,CTS_CLKCROSS_ACLK_INST_n_27,CTS_CLKCROSS_ACLK_INST_n_28,CTS_CLKCROSS_ACLK_INST_n_29,CTS_CLKCROSS_ACLK_INST_n_30,CTS_CLKCROSS_ACLK_INST_n_31}));
  exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_0 CTS_CLKCROSS_AUD_INST
       (.D({CTS_CLKCROSS_AUD_INST_n_0,CTS_CLKCROSS_AUD_INST_n_1,CTS_CLKCROSS_AUD_INST_n_2,CTS_CLKCROSS_AUD_INST_n_3,CTS_CLKCROSS_AUD_INST_n_4,CTS_CLKCROSS_AUD_INST_n_5,CTS_CLKCROSS_AUD_INST_n_6,CTS_CLKCROSS_AUD_INST_n_7,CTS_CLKCROSS_AUD_INST_n_8,CTS_CLKCROSS_AUD_INST_n_9,CTS_CLKCROSS_AUD_INST_n_10,CTS_CLKCROSS_AUD_INST_n_11,CTS_CLKCROSS_AUD_INST_n_12,CTS_CLKCROSS_AUD_INST_n_13,CTS_CLKCROSS_AUD_INST_n_14,CTS_CLKCROSS_AUD_INST_n_15,CTS_CLKCROSS_AUD_INST_n_16,CTS_CLKCROSS_AUD_INST_n_17,CTS_CLKCROSS_AUD_INST_n_18,CTS_CLKCROSS_AUD_INST_n_19}),
        .Q(aud_tmdsclkratio_sync[1]),
        .aud_acr_cts_in(aud_acr_cts_in),
        .aud_clk(aud_clk),
        .\aud_cts_val_reg[2] (aud_acr_sel_sync),
        .hdmi_clk(hdmi_clk),
        .\rIn_Data_reg[19]_0 (hdmi_rCTS_Val[19:0]));
  exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross__parameterized0 DIVVAL_CLKCROSS_INST
       (.D({DIVVAL_CLKCROSS_INST_n_0,DIVVAL_CLKCROSS_INST_n_1,DIVVAL_CLKCROSS_INST_n_2}),
        .Q({\aud_rCKECounter_reg_n_0_[2] ,\aud_rCKECounter_reg_n_0_[1] ,\aud_rCKECounter_reg_n_0_[0] }),
        .aud_clk(aud_clk),
        .axi_aclk(axi_aclk),
        .\rIn_Data_reg[2]_0 (rCKEDivVal),
        .\rOut_Data_reg[2]_0 ({DIVVAL_CLKCROSS_INST_n_3,DIVVAL_CLKCROSS_INST_n_4,DIVVAL_CLKCROSS_INST_n_5}));
  exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_14_axi HDMI_ACR_CTRL_AXI_INST
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
  exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_1 NVAL_CLKCROSS_INST
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
  exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_lib_pulse_clkcross PULSE_CLKCROSS_INST
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

(* ORIG_REF_NAME = "hdmi_acr_ctrl_v1_0_1_lib_data_clkcross" *) 
module exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross
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
module exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_0
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
module exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_1
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
module exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross__parameterized0
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

(* ORIG_REF_NAME = "hdmi_acr_ctrl_v1_0_1_lib_pulse_clkcross" *) 
module exdes_hdmi_acr_ctrl_0_hdmi_acr_ctrl_v1_0_1_lib_pulse_clkcross
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10048)
`pragma protect data_block
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
3e0sMS4LmesJkj1No7EHmw==
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
