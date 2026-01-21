//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Wed Jan 21 15:12:45 2026
//Host        : dan-alencar running 64-bit Linux Mint 22.2
//Command     : generate_target hdmi_tx_bd_wrapper.bd
//Design      : hdmi_tx_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hdmi_tx_bd_wrapper
   (HDMI_8T49N241_RST_N,
    HDMI_CLK_8T49N241_N,
    HDMI_CLK_8T49N241_P,
    HDMI_TX_CLK_N,
    HDMI_TX_CLK_P,
    HDMI_TX_EN,
    HDMI_TX_HPD,
    SYS_CLK_N,
    SYS_CLK_P,
    SYS_RST_N,
    gpo_0,
    hdmi_tx_n,
    hdmi_tx_p,
    iic_clkgen_scl_io,
    iic_clkgen_sda_io);
  output [0:0]HDMI_8T49N241_RST_N;
  input HDMI_CLK_8T49N241_N;
  input HDMI_CLK_8T49N241_P;
  output HDMI_TX_CLK_N;
  output HDMI_TX_CLK_P;
  output [0:0]HDMI_TX_EN;
  input HDMI_TX_HPD;
  input SYS_CLK_N;
  input SYS_CLK_P;
  input SYS_RST_N;
  output [0:0]gpo_0;
  output [2:0]hdmi_tx_n;
  output [2:0]hdmi_tx_p;
  inout iic_clkgen_scl_io;
  inout iic_clkgen_sda_io;

  wire [0:0]HDMI_8T49N241_RST_N;
  wire HDMI_CLK_8T49N241_N;
  wire HDMI_CLK_8T49N241_P;
  wire HDMI_TX_CLK_N;
  wire HDMI_TX_CLK_P;
  wire [0:0]HDMI_TX_EN;
  wire HDMI_TX_HPD;
  wire SYS_CLK_N;
  wire SYS_CLK_P;
  wire SYS_RST_N;
  wire [0:0]gpo_0;
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

  hdmi_tx_bd hdmi_tx_bd_i
       (.HDMI_8T49N241_RST_N(HDMI_8T49N241_RST_N),
        .HDMI_CLK_8T49N241_N(HDMI_CLK_8T49N241_N),
        .HDMI_CLK_8T49N241_P(HDMI_CLK_8T49N241_P),
        .HDMI_TX_CLK_N(HDMI_TX_CLK_N),
        .HDMI_TX_CLK_P(HDMI_TX_CLK_P),
        .HDMI_TX_EN(HDMI_TX_EN),
        .HDMI_TX_HPD(HDMI_TX_HPD),
        .SYS_CLK_N(SYS_CLK_N),
        .SYS_CLK_P(SYS_CLK_P),
        .SYS_RST_N(SYS_RST_N),
        .gpo_0(gpo_0),
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
