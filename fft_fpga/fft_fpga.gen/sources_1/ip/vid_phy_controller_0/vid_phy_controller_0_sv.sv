// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// DO NOT MODIFY THIS FILE.

// MODULE VLNV: xilinx.com:ip:vid_phy_controller:2.2

`timescale 1ps / 1ps

`include "vivado_interfaces.svh"

module vid_phy_controller_0_sv (
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 vid_phy_axi4lite" *)
  (* X_INTERFACE_MODE = "slave vid_phy_axi4lite" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_axi4lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_axi4_lite_v1_0.slave vid_phy_axi4lite,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch0" *)
  (* X_INTERFACE_MODE = "slave vid_phy_tx_axi4s_ch0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_tx_axi4s_ch0, WIZ.DATA_WIDTH 32, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
  vivado_axis_v1_0.slave vid_phy_tx_axi4s_ch0,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch1" *)
  (* X_INTERFACE_MODE = "slave vid_phy_tx_axi4s_ch1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_tx_axi4s_ch1, WIZ.DATA_WIDTH 32, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
  vivado_axis_v1_0.slave vid_phy_tx_axi4s_ch1,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_tx_axi4s_ch2" *)
  (* X_INTERFACE_MODE = "slave vid_phy_tx_axi4s_ch2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_tx_axi4s_ch2, WIZ.DATA_WIDTH 32, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
  vivado_axis_v1_0.slave vid_phy_tx_axi4s_ch2,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vid_phy_status_sb_tx" *)
  (* X_INTERFACE_MODE = "master vid_phy_status_sb_tx" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_phy_status_sb_tx, WIZ.DATA_WIDTH 32, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
  vivado_axis_v1_0.master vid_phy_status_sb_tx,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire tx_refclk_rdy,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire tx_tmds_clk,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire tx_video_clk,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire mgtrefclk1_pad_p_in,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire mgtrefclk1_pad_n_in,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [3:0] phy_txn_out,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [3:0] phy_txp_out,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire txoutclk,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire vid_phy_tx_axi4s_aclk,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire vid_phy_tx_axi4s_aresetn,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire irq,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire vid_phy_sb_aclk,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire vid_phy_sb_aresetn,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire vid_phy_axi4lite_aclk,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire vid_phy_axi4lite_aresetn,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire drpclk
);

  // interface wire assignments
  assign vid_phy_status_sb_tx.TDEST = 0;
  assign vid_phy_status_sb_tx.TID = 0;
  assign vid_phy_status_sb_tx.TKEEP = 0;
  assign vid_phy_status_sb_tx.TLAST = 0;
  assign vid_phy_status_sb_tx.TSTRB = 0;
  assign vid_phy_status_sb_tx.TUSER = 0;

  vid_phy_controller_0 inst (
    .tx_refclk_rdy(tx_refclk_rdy),
    .tx_tmds_clk(tx_tmds_clk),
    .tx_video_clk(tx_video_clk),
    .mgtrefclk1_pad_p_in(mgtrefclk1_pad_p_in),
    .mgtrefclk1_pad_n_in(mgtrefclk1_pad_n_in),
    .phy_txn_out(phy_txn_out),
    .phy_txp_out(phy_txp_out),
    .txoutclk(txoutclk),
    .vid_phy_tx_axi4s_aclk(vid_phy_tx_axi4s_aclk),
    .vid_phy_tx_axi4s_aresetn(vid_phy_tx_axi4s_aresetn),
    .vid_phy_tx_axi4s_ch0_tdata(vid_phy_tx_axi4s_ch0.TDATA),
    .vid_phy_tx_axi4s_ch0_tuser(vid_phy_tx_axi4s_ch0.TUSER),
    .vid_phy_tx_axi4s_ch0_tvalid(vid_phy_tx_axi4s_ch0.TVALID),
    .vid_phy_tx_axi4s_ch0_tready(vid_phy_tx_axi4s_ch0.TREADY),
    .vid_phy_tx_axi4s_ch1_tdata(vid_phy_tx_axi4s_ch1.TDATA),
    .vid_phy_tx_axi4s_ch1_tuser(vid_phy_tx_axi4s_ch1.TUSER),
    .vid_phy_tx_axi4s_ch1_tvalid(vid_phy_tx_axi4s_ch1.TVALID),
    .vid_phy_tx_axi4s_ch1_tready(vid_phy_tx_axi4s_ch1.TREADY),
    .vid_phy_tx_axi4s_ch2_tdata(vid_phy_tx_axi4s_ch2.TDATA),
    .vid_phy_tx_axi4s_ch2_tuser(vid_phy_tx_axi4s_ch2.TUSER),
    .vid_phy_tx_axi4s_ch2_tvalid(vid_phy_tx_axi4s_ch2.TVALID),
    .vid_phy_tx_axi4s_ch2_tready(vid_phy_tx_axi4s_ch2.TREADY),
    .irq(irq),
    .vid_phy_sb_aclk(vid_phy_sb_aclk),
    .vid_phy_sb_aresetn(vid_phy_sb_aresetn),
    .vid_phy_status_sb_tx_tdata(vid_phy_status_sb_tx.TDATA),
    .vid_phy_status_sb_tx_tvalid(vid_phy_status_sb_tx.TVALID),
    .vid_phy_status_sb_tx_tready(vid_phy_status_sb_tx.TREADY),
    .vid_phy_axi4lite_awaddr(vid_phy_axi4lite.AWADDR),
    .vid_phy_axi4lite_awprot(vid_phy_axi4lite.AWPROT),
    .vid_phy_axi4lite_awvalid(vid_phy_axi4lite.AWVALID),
    .vid_phy_axi4lite_awready(vid_phy_axi4lite.AWREADY),
    .vid_phy_axi4lite_wdata(vid_phy_axi4lite.WDATA),
    .vid_phy_axi4lite_wstrb(vid_phy_axi4lite.WSTRB),
    .vid_phy_axi4lite_wvalid(vid_phy_axi4lite.WVALID),
    .vid_phy_axi4lite_wready(vid_phy_axi4lite.WREADY),
    .vid_phy_axi4lite_bresp(vid_phy_axi4lite.BRESP),
    .vid_phy_axi4lite_bvalid(vid_phy_axi4lite.BVALID),
    .vid_phy_axi4lite_bready(vid_phy_axi4lite.BREADY),
    .vid_phy_axi4lite_araddr(vid_phy_axi4lite.ARADDR),
    .vid_phy_axi4lite_arprot(vid_phy_axi4lite.ARPROT),
    .vid_phy_axi4lite_arvalid(vid_phy_axi4lite.ARVALID),
    .vid_phy_axi4lite_arready(vid_phy_axi4lite.ARREADY),
    .vid_phy_axi4lite_rdata(vid_phy_axi4lite.RDATA),
    .vid_phy_axi4lite_rresp(vid_phy_axi4lite.RRESP),
    .vid_phy_axi4lite_rvalid(vid_phy_axi4lite.RVALID),
    .vid_phy_axi4lite_rready(vid_phy_axi4lite.RREADY),
    .vid_phy_axi4lite_aclk(vid_phy_axi4lite_aclk),
    .vid_phy_axi4lite_aresetn(vid_phy_axi4lite_aresetn),
    .drpclk(drpclk)
  );

endmodule
