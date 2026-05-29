// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue May  7 16:46:09 2024
// Host        : HP-Z4-G4-027564 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ exdes_hdmi_acr_ctrl_0_stub.v
// Design      : exdes_hdmi_acr_ctrl_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcau15p-ffvb676-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hdmi_acr_ctrl_v1_0_1_wrapper,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(hdmi_clk, aud_clk, axi_aclk, axi_aresetn, 
  axi_awvalid, axi_awready, axi_awaddr, axi_wvalid, axi_wready, axi_wdata, axi_wstrb, axi_bvalid, 
  axi_bready, axi_bresp, axi_arvalid, axi_arready, axi_araddr, axi_rvalid, axi_rready, axi_rdata, 
  axi_rresp, pll_lock_in, aud_resetn_out, aud_acr_valid_in, aud_acr_cts_in, aud_acr_n_in, 
  aud_acr_valid_out, aud_acr_cts_out, aud_acr_n_out)
/* synthesis syn_black_box black_box_pad_pin="axi_aresetn,axi_awvalid,axi_awready,axi_awaddr[31:0],axi_wvalid,axi_wready,axi_wdata[31:0],axi_wstrb[3:0],axi_bvalid,axi_bready,axi_bresp[1:0],axi_arvalid,axi_arready,axi_araddr[31:0],axi_rvalid,axi_rready,axi_rdata[31:0],axi_rresp[1:0],pll_lock_in,aud_resetn_out,aud_acr_valid_in,aud_acr_cts_in[19:0],aud_acr_n_in[19:0],aud_acr_valid_out,aud_acr_cts_out[19:0],aud_acr_n_out[19:0]" */
/* synthesis syn_force_seq_prim="hdmi_clk" */
/* synthesis syn_force_seq_prim="aud_clk" */
/* synthesis syn_force_seq_prim="axi_aclk" */;
  input hdmi_clk /* synthesis syn_isclock = 1 */;
  input aud_clk /* synthesis syn_isclock = 1 */;
  input axi_aclk /* synthesis syn_isclock = 1 */;
  input axi_aresetn;
  input axi_awvalid;
  output axi_awready;
  input [31:0]axi_awaddr;
  input axi_wvalid;
  output axi_wready;
  input [31:0]axi_wdata;
  input [3:0]axi_wstrb;
  output axi_bvalid;
  input axi_bready;
  output [1:0]axi_bresp;
  input axi_arvalid;
  output axi_arready;
  input [31:0]axi_araddr;
  output axi_rvalid;
  input axi_rready;
  output [31:0]axi_rdata;
  output [1:0]axi_rresp;
  input pll_lock_in;
  output aud_resetn_out;
  input aud_acr_valid_in;
  input [19:0]aud_acr_cts_in;
  input [19:0]aud_acr_n_in;
  output aud_acr_valid_out;
  output [19:0]aud_acr_cts_out;
  output [19:0]aud_acr_n_out;
endmodule
