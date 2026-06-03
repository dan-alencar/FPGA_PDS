//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Tue Jun  2 22:46:15 2026
//Host        : pop-os running 64-bit Pop!_OS 24.04 LTS
//Command     : generate_target hdmi_tx_bd_wrapper.bd
//Design      : hdmi_tx_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hdmi_tx_bd_wrapper
   (HDMI_8T49N241_LOL,
    HDMI_8T49N241_RST_N,
    HDMI_CLK_8T49N241_N,
    HDMI_CLK_8T49N241_P,
    HDMI_RCLKOUT_N,
    HDMI_RCLKOUT_P,
    HDMI_RX_HPD,
    HDMI_RX_PWR_DET,
    HDMI_TX_CLK_N,
    HDMI_TX_CLK_P,
    HDMI_TX_EN,
    HDMI_TX_HPD,
    RX_DDC_OUT_scl_io,
    RX_DDC_OUT_sda_io,
    SYS_CLK_N,
    SYS_CLK_P,
    SYS_RST_N,
    TX_DDC_OUT_scl_io,
    TX_DDC_OUT_sda_io,
    gpo_0,
    hdmi_rx_n,
    hdmi_rx_p,
    hdmi_tx_n,
    hdmi_tx_p,
    iic_clkgen_scl_io,
    iic_clkgen_sda_io);
  input HDMI_8T49N241_LOL;
  output [0:0]HDMI_8T49N241_RST_N;
  input HDMI_CLK_8T49N241_N;
  input HDMI_CLK_8T49N241_P;
  input HDMI_RCLKOUT_N;
  input HDMI_RCLKOUT_P;
  output HDMI_RX_HPD;
  input HDMI_RX_PWR_DET;
  output HDMI_TX_CLK_N;
  output HDMI_TX_CLK_P;
  output [0:0]HDMI_TX_EN;
  input HDMI_TX_HPD;
  inout RX_DDC_OUT_scl_io;
  inout RX_DDC_OUT_sda_io;
  input SYS_CLK_N;
  input SYS_CLK_P;
  input SYS_RST_N;
  inout TX_DDC_OUT_scl_io;
  inout TX_DDC_OUT_sda_io;
  output [0:0]gpo_0;
  input [2:0]hdmi_rx_n;
  input [2:0]hdmi_rx_p;
  output [2:0]hdmi_tx_n;
  output [2:0]hdmi_tx_p;
  inout iic_clkgen_scl_io;
  inout iic_clkgen_sda_io;

  wire HDMI_8T49N241_LOL;
  wire [0:0]HDMI_8T49N241_RST_N;
  wire HDMI_CLK_8T49N241_N;
  wire HDMI_CLK_8T49N241_P;
  wire HDMI_RCLKOUT_N;
  wire HDMI_RCLKOUT_P;
  wire HDMI_RX_HPD;
  wire HDMI_RX_PWR_DET;
  wire HDMI_TX_CLK_N;
  wire HDMI_TX_CLK_P;
  wire [0:0]HDMI_TX_EN;
  wire HDMI_TX_HPD;
  wire RX_DDC_OUT_scl_i;
  wire RX_DDC_OUT_scl_io;
  wire RX_DDC_OUT_scl_o;
  wire RX_DDC_OUT_scl_t;
  wire RX_DDC_OUT_sda_i;
  wire RX_DDC_OUT_sda_io;
  wire RX_DDC_OUT_sda_o;
  wire RX_DDC_OUT_sda_t;
  wire SYS_CLK_N;
  wire SYS_CLK_P;
  wire SYS_RST_N;
  wire TX_DDC_OUT_scl_i;
  wire TX_DDC_OUT_scl_io;
  wire TX_DDC_OUT_scl_o;
  wire TX_DDC_OUT_scl_t;
  wire TX_DDC_OUT_sda_i;
  wire TX_DDC_OUT_sda_io;
  wire TX_DDC_OUT_sda_o;
  wire TX_DDC_OUT_sda_t;
  wire [0:0]gpo_0;
  wire [2:0]hdmi_rx_n;
  wire [2:0]hdmi_rx_p;
  wire [2:0]hdmi_tx_n;
  wire [2:0]hdmi_tx_p;
  wire iic_clkgen_scl_i;
  wire iic_clkgen_scl_io;
  wire iic_clkgen_scl_o;
  wire iic_clkgen_scl_t;
  wire iic_clkgen_sda_i;
  wire iic_clkgen_sda_io;
  wire iic_clkgen_sda_o;
  wire iic_clkgen_sda_t;

  IOBUF RX_DDC_OUT_scl_iobuf
       (.I(RX_DDC_OUT_scl_o),
        .IO(RX_DDC_OUT_scl_io),
        .O(RX_DDC_OUT_scl_i),
        .T(RX_DDC_OUT_scl_t));
  IOBUF RX_DDC_OUT_sda_iobuf
       (.I(RX_DDC_OUT_sda_o),
        .IO(RX_DDC_OUT_sda_io),
        .O(RX_DDC_OUT_sda_i),
        .T(RX_DDC_OUT_sda_t));
  IOBUF TX_DDC_OUT_scl_iobuf
       (.I(TX_DDC_OUT_scl_o),
        .IO(TX_DDC_OUT_scl_io),
        .O(TX_DDC_OUT_scl_i),
        .T(TX_DDC_OUT_scl_t));
  IOBUF TX_DDC_OUT_sda_iobuf
       (.I(TX_DDC_OUT_sda_o),
        .IO(TX_DDC_OUT_sda_io),
        .O(TX_DDC_OUT_sda_i),
        .T(TX_DDC_OUT_sda_t));
  hdmi_tx_bd hdmi_tx_bd_i
       (.HDMI_8T49N241_LOL(HDMI_8T49N241_LOL),
        .HDMI_8T49N241_RST_N(HDMI_8T49N241_RST_N),
        .HDMI_CLK_8T49N241_N(HDMI_CLK_8T49N241_N),
        .HDMI_CLK_8T49N241_P(HDMI_CLK_8T49N241_P),
        .HDMI_RCLKOUT_N(HDMI_RCLKOUT_N),
        .HDMI_RCLKOUT_P(HDMI_RCLKOUT_P),
        .HDMI_RX_HPD(HDMI_RX_HPD),
        .HDMI_RX_PWR_DET(HDMI_RX_PWR_DET),
        .HDMI_TX_CLK_N(HDMI_TX_CLK_N),
        .HDMI_TX_CLK_P(HDMI_TX_CLK_P),
        .HDMI_TX_EN(HDMI_TX_EN),
        .HDMI_TX_HPD(HDMI_TX_HPD),
        .RX_DDC_OUT_scl_i(RX_DDC_OUT_scl_i),
        .RX_DDC_OUT_scl_o(RX_DDC_OUT_scl_o),
        .RX_DDC_OUT_scl_t(RX_DDC_OUT_scl_t),
        .RX_DDC_OUT_sda_i(RX_DDC_OUT_sda_i),
        .RX_DDC_OUT_sda_o(RX_DDC_OUT_sda_o),
        .RX_DDC_OUT_sda_t(RX_DDC_OUT_sda_t),
        .SYS_CLK_N(SYS_CLK_N),
        .SYS_CLK_P(SYS_CLK_P),
        .SYS_RST_N(SYS_RST_N),
        .TX_DDC_OUT_scl_i(TX_DDC_OUT_scl_i),
        .TX_DDC_OUT_scl_o(TX_DDC_OUT_scl_o),
        .TX_DDC_OUT_scl_t(TX_DDC_OUT_scl_t),
        .TX_DDC_OUT_sda_i(TX_DDC_OUT_sda_i),
        .TX_DDC_OUT_sda_o(TX_DDC_OUT_sda_o),
        .TX_DDC_OUT_sda_t(TX_DDC_OUT_sda_t),
        .gpo_0(gpo_0),
        .hdmi_rx_n(hdmi_rx_n),
        .hdmi_rx_p(hdmi_rx_p),
        .hdmi_tx_n(hdmi_tx_n),
        .hdmi_tx_p(hdmi_tx_p),
        .iic_clkgen_scl_i(iic_clkgen_scl_i),
        .iic_clkgen_scl_o(iic_clkgen_scl_o),
        .iic_clkgen_scl_t(iic_clkgen_scl_t),
        .iic_clkgen_sda_i(iic_clkgen_sda_i),
        .iic_clkgen_sda_o(iic_clkgen_sda_o),
        .iic_clkgen_sda_t(iic_clkgen_sda_t));
  IOBUF iic_clkgen_scl_iobuf
       (.I(iic_clkgen_scl_o),
        .IO(iic_clkgen_scl_io),
        .O(iic_clkgen_scl_i),
        .T(iic_clkgen_scl_t));
  IOBUF iic_clkgen_sda_iobuf
       (.I(iic_clkgen_sda_o),
        .IO(iic_clkgen_sda_io),
        .O(iic_clkgen_sda_i),
        .T(iic_clkgen_sda_t));
endmodule
