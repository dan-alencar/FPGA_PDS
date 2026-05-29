//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Mon Aug 12 17:27:51 2024
//Host        : HP-Z4-G4-027564 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target exdes_wrapper.bd
//Design      : exdes_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module exdes_wrapper
   (GTH_CLK_IIC_scl_io,
    GTH_CLK_IIC_sda_io,
    HDMI_CLK_IIC_scl_io,
    HDMI_CLK_IIC_sda_io,
    HDMI_RX_CLK_N_IN,
    HDMI_RX_CLK_P_IN,
    HDMI_RX_DAT_N_IN,
    HDMI_RX_DAT_P_IN,
    HDMI_TX_CLK_N_OUT,
    HDMI_TX_CLK_P_OUT,
    HDMI_TX_DAT_N_OUT,
    HDMI_TX_DAT_P_OUT,
    IDT_8T49N241_LOL_IN,
    IDT_8T49N241_RST_OUT,
    LED0,
    LED1,
    LED2,
    RS232_UART_rxd,
    RS232_UART_txd,
    RX_DDC_OUT_scl_io,
    RX_DDC_OUT_sda_io,
    RX_DET_IN,
    RX_HPD_OUT,
    RX_REFCLK_N_OUT,
    RX_REFCLK_P_OUT,
    TX_CLKSEL_OUT,
    TX_DDC_OUT_scl_io,
    TX_DDC_OUT_sda_io,
    TX_EN_OUT,
    TX_HPD_IN,
    TX_REFCLK_N_IN,
    TX_REFCLK_P_IN,
    reset,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  inout GTH_CLK_IIC_scl_io;
  inout GTH_CLK_IIC_sda_io;
  inout HDMI_CLK_IIC_scl_io;
  inout HDMI_CLK_IIC_sda_io;
  input HDMI_RX_CLK_N_IN;
  input HDMI_RX_CLK_P_IN;
  input [2:0]HDMI_RX_DAT_N_IN;
  input [2:0]HDMI_RX_DAT_P_IN;
  output HDMI_TX_CLK_N_OUT;
  output HDMI_TX_CLK_P_OUT;
  output [2:0]HDMI_TX_DAT_N_OUT;
  output [2:0]HDMI_TX_DAT_P_OUT;
  input IDT_8T49N241_LOL_IN;
  output [0:0]IDT_8T49N241_RST_OUT;
  output LED0;
  output [0:0]LED1;
  output LED2;
  input RS232_UART_rxd;
  output RS232_UART_txd;
  inout RX_DDC_OUT_scl_io;
  inout RX_DDC_OUT_sda_io;
  input RX_DET_IN;
  output [0:0]RX_HPD_OUT;
  output RX_REFCLK_N_OUT;
  output RX_REFCLK_P_OUT;
  output [0:0]TX_CLKSEL_OUT;
  inout TX_DDC_OUT_scl_io;
  inout TX_DDC_OUT_sda_io;
  output [0:0]TX_EN_OUT;
  input TX_HPD_IN;
  input TX_REFCLK_N_IN;
  input TX_REFCLK_P_IN;
  input reset;
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;

  wire GTH_CLK_IIC_scl_i;
  wire GTH_CLK_IIC_scl_io;
  wire GTH_CLK_IIC_scl_o;
  wire GTH_CLK_IIC_scl_t;
  wire GTH_CLK_IIC_sda_i;
  wire GTH_CLK_IIC_sda_io;
  wire GTH_CLK_IIC_sda_o;
  wire GTH_CLK_IIC_sda_t;
  wire HDMI_CLK_IIC_scl_i;
  wire HDMI_CLK_IIC_scl_io;
  wire HDMI_CLK_IIC_scl_o;
  wire HDMI_CLK_IIC_scl_t;
  wire HDMI_CLK_IIC_sda_i;
  wire HDMI_CLK_IIC_sda_io;
  wire HDMI_CLK_IIC_sda_o;
  wire HDMI_CLK_IIC_sda_t;
  wire HDMI_RX_CLK_N_IN;
  wire HDMI_RX_CLK_P_IN;
  wire [2:0]HDMI_RX_DAT_N_IN;
  wire [2:0]HDMI_RX_DAT_P_IN;
  wire HDMI_TX_CLK_N_OUT;
  wire HDMI_TX_CLK_P_OUT;
  wire [2:0]HDMI_TX_DAT_N_OUT;
  wire [2:0]HDMI_TX_DAT_P_OUT;
  wire IDT_8T49N241_LOL_IN;
  wire [0:0]IDT_8T49N241_RST_OUT;
  wire LED0;
  wire [0:0]LED1;
  wire LED2;
  wire RS232_UART_rxd;
  wire RS232_UART_txd;
  wire RX_DDC_OUT_scl_i;
  wire RX_DDC_OUT_scl_io;
  wire RX_DDC_OUT_scl_o;
  wire RX_DDC_OUT_scl_t;
  wire RX_DDC_OUT_sda_i;
  wire RX_DDC_OUT_sda_io;
  wire RX_DDC_OUT_sda_o;
  wire RX_DDC_OUT_sda_t;
  wire RX_DET_IN;
  wire [0:0]RX_HPD_OUT;
  wire RX_REFCLK_N_OUT;
  wire RX_REFCLK_P_OUT;
  wire [0:0]TX_CLKSEL_OUT;
  wire TX_DDC_OUT_scl_i;
  wire TX_DDC_OUT_scl_io;
  wire TX_DDC_OUT_scl_o;
  wire TX_DDC_OUT_scl_t;
  wire TX_DDC_OUT_sda_i;
  wire TX_DDC_OUT_sda_io;
  wire TX_DDC_OUT_sda_o;
  wire TX_DDC_OUT_sda_t;
  wire [0:0]TX_EN_OUT;
  wire TX_HPD_IN;
  wire TX_REFCLK_N_IN;
  wire TX_REFCLK_P_IN;
  wire reset;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;

  IOBUF GTH_CLK_IIC_scl_iobuf
       (.I(GTH_CLK_IIC_scl_o),
        .IO(GTH_CLK_IIC_scl_io),
        .O(GTH_CLK_IIC_scl_i),
        .T(GTH_CLK_IIC_scl_t));
  IOBUF GTH_CLK_IIC_sda_iobuf
       (.I(GTH_CLK_IIC_sda_o),
        .IO(GTH_CLK_IIC_sda_io),
        .O(GTH_CLK_IIC_sda_i),
        .T(GTH_CLK_IIC_sda_t));
  IOBUF HDMI_CLK_IIC_scl_iobuf
       (.I(HDMI_CLK_IIC_scl_o),
        .IO(HDMI_CLK_IIC_scl_io),
        .O(HDMI_CLK_IIC_scl_i),
        .T(HDMI_CLK_IIC_scl_t));
  IOBUF HDMI_CLK_IIC_sda_iobuf
       (.I(HDMI_CLK_IIC_sda_o),
        .IO(HDMI_CLK_IIC_sda_io),
        .O(HDMI_CLK_IIC_sda_i),
        .T(HDMI_CLK_IIC_sda_t));
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
  exdes exdes_i
       (.GTH_CLK_IIC_scl_i(GTH_CLK_IIC_scl_i),
        .GTH_CLK_IIC_scl_o(GTH_CLK_IIC_scl_o),
        .GTH_CLK_IIC_scl_t(GTH_CLK_IIC_scl_t),
        .GTH_CLK_IIC_sda_i(GTH_CLK_IIC_sda_i),
        .GTH_CLK_IIC_sda_o(GTH_CLK_IIC_sda_o),
        .GTH_CLK_IIC_sda_t(GTH_CLK_IIC_sda_t),
        .HDMI_CLK_IIC_scl_i(HDMI_CLK_IIC_scl_i),
        .HDMI_CLK_IIC_scl_o(HDMI_CLK_IIC_scl_o),
        .HDMI_CLK_IIC_scl_t(HDMI_CLK_IIC_scl_t),
        .HDMI_CLK_IIC_sda_i(HDMI_CLK_IIC_sda_i),
        .HDMI_CLK_IIC_sda_o(HDMI_CLK_IIC_sda_o),
        .HDMI_CLK_IIC_sda_t(HDMI_CLK_IIC_sda_t),
        .HDMI_RX_CLK_N_IN(HDMI_RX_CLK_N_IN),
        .HDMI_RX_CLK_P_IN(HDMI_RX_CLK_P_IN),
        .HDMI_RX_DAT_N_IN(HDMI_RX_DAT_N_IN),
        .HDMI_RX_DAT_P_IN(HDMI_RX_DAT_P_IN),
        .HDMI_TX_CLK_N_OUT(HDMI_TX_CLK_N_OUT),
        .HDMI_TX_CLK_P_OUT(HDMI_TX_CLK_P_OUT),
        .HDMI_TX_DAT_N_OUT(HDMI_TX_DAT_N_OUT),
        .HDMI_TX_DAT_P_OUT(HDMI_TX_DAT_P_OUT),
        .IDT_8T49N241_LOL_IN(IDT_8T49N241_LOL_IN),
        .IDT_8T49N241_RST_OUT(IDT_8T49N241_RST_OUT),
        .LED0(LED0),
        .LED1(LED1),
        .LED2(LED2),
        .RS232_UART_rxd(RS232_UART_rxd),
        .RS232_UART_txd(RS232_UART_txd),
        .RX_DDC_OUT_scl_i(RX_DDC_OUT_scl_i),
        .RX_DDC_OUT_scl_o(RX_DDC_OUT_scl_o),
        .RX_DDC_OUT_scl_t(RX_DDC_OUT_scl_t),
        .RX_DDC_OUT_sda_i(RX_DDC_OUT_sda_i),
        .RX_DDC_OUT_sda_o(RX_DDC_OUT_sda_o),
        .RX_DDC_OUT_sda_t(RX_DDC_OUT_sda_t),
        .RX_DET_IN(RX_DET_IN),
        .RX_HPD_OUT(RX_HPD_OUT),
        .RX_REFCLK_N_OUT(RX_REFCLK_N_OUT),
        .RX_REFCLK_P_OUT(RX_REFCLK_P_OUT),
        .TX_CLKSEL_OUT(TX_CLKSEL_OUT),
        .TX_DDC_OUT_scl_i(TX_DDC_OUT_scl_i),
        .TX_DDC_OUT_scl_o(TX_DDC_OUT_scl_o),
        .TX_DDC_OUT_scl_t(TX_DDC_OUT_scl_t),
        .TX_DDC_OUT_sda_i(TX_DDC_OUT_sda_i),
        .TX_DDC_OUT_sda_o(TX_DDC_OUT_sda_o),
        .TX_DDC_OUT_sda_t(TX_DDC_OUT_sda_t),
        .TX_EN_OUT(TX_EN_OUT),
        .TX_HPD_IN(TX_HPD_IN),
        .TX_REFCLK_N_IN(TX_REFCLK_N_IN),
        .TX_REFCLK_P_IN(TX_REFCLK_P_IN),
        .reset(reset),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p));
endmodule
