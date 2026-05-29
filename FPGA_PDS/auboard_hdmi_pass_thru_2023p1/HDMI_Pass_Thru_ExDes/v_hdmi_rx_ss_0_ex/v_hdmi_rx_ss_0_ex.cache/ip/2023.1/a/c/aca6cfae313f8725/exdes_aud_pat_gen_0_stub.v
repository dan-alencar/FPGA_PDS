// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue May  7 16:37:48 2024
// Host        : HP-Z4-G4-027564 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ exdes_aud_pat_gen_0_stub.v
// Design      : exdes_aud_pat_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcau15p-ffvb676-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "aud_pat_gen_v1_0_0,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(axi_aclk, axi_aresetn, aud_clk, axis_clk, 
  axis_resetn, axi_awvalid, axi_awready, axi_awaddr, axi_awprot, axi_wdata, axi_wstrb, 
  axi_wvalid, axi_wready, axi_bresp, axi_bvalid, axi_bready, axi_araddr, axi_arprot, axi_arvalid, 
  axi_arready, axi_rdata, axi_rresp, axi_rvalid, axi_rready, axis_aud_pattern_tdata_in, 
  axis_aud_pattern_tid_in, axis_aud_pattern_tvalid_in, axis_aud_pattern_tready_out, 
  axis_aud_pattern_tvalid_out, axis_aud_pattern_tready_in, axis_aud_pattern_tdata_out, 
  axis_aud_pattern_tid_out)
/* synthesis syn_black_box black_box_pad_pin="axi_aresetn,axis_resetn,axi_awvalid,axi_awready,axi_awaddr[31:0],axi_awprot[2:0],axi_wdata[31:0],axi_wstrb[3:0],axi_wvalid,axi_wready,axi_bresp[1:0],axi_bvalid,axi_bready,axi_araddr[31:0],axi_arprot[2:0],axi_arvalid,axi_arready,axi_rdata[31:0],axi_rresp[1:0],axi_rvalid,axi_rready,axis_aud_pattern_tdata_in[31:0],axis_aud_pattern_tid_in[2:0],axis_aud_pattern_tvalid_in,axis_aud_pattern_tready_out,axis_aud_pattern_tvalid_out,axis_aud_pattern_tready_in,axis_aud_pattern_tdata_out[31:0],axis_aud_pattern_tid_out[2:0]" */
/* synthesis syn_force_seq_prim="axi_aclk" */
/* synthesis syn_force_seq_prim="aud_clk" */
/* synthesis syn_force_seq_prim="axis_clk" */;
  input axi_aclk /* synthesis syn_isclock = 1 */;
  input axi_aresetn;
  input aud_clk /* synthesis syn_isclock = 1 */;
  input axis_clk /* synthesis syn_isclock = 1 */;
  input axis_resetn;
  input axi_awvalid;
  output axi_awready;
  input [31:0]axi_awaddr;
  input [2:0]axi_awprot;
  input [31:0]axi_wdata;
  input [3:0]axi_wstrb;
  input axi_wvalid;
  output axi_wready;
  output [1:0]axi_bresp;
  output axi_bvalid;
  input axi_bready;
  input [31:0]axi_araddr;
  input [2:0]axi_arprot;
  input axi_arvalid;
  output axi_arready;
  output [31:0]axi_rdata;
  output [1:0]axi_rresp;
  output axi_rvalid;
  input axi_rready;
  input [31:0]axis_aud_pattern_tdata_in;
  input [2:0]axis_aud_pattern_tid_in;
  input axis_aud_pattern_tvalid_in;
  output axis_aud_pattern_tready_out;
  output axis_aud_pattern_tvalid_out;
  input axis_aud_pattern_tready_in;
  output [31:0]axis_aud_pattern_tdata_out;
  output [2:0]axis_aud_pattern_tid_out;
endmodule
