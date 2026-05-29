`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AVNET
// Engineer: David Fu
//
// Create Date: 04/17/2024 02:37:15 PM
// Design Name:
// Module Name: rc310xxa_cfg
// Project Name:
// Target Devices:
// Tool Versions:
// Description: Initialize the clock generator RC31008AQ. This module read data form
//                 ROM, and write them to RC3100AQ via I2C
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module rc310xxa_cfg(
	clk_p,
	clk_n,
	rst_n,
	start_bt,
	cfg_sel,
	scl,
	sda
);
input clk_p;
input clk_n;
input rst_n;
input start_bt;
input [3:0]cfg_sel;

output scl;
inout  sda;

wire clk50; // the inside 50Mhz clock
wire start;

clk_wiz_0 clk50_inst
(
    // Clock out ports
    .clk_out1(clk50),     // output clk_out1
    // Status and control signals
    .resetn(rst_n), // input resetn
   // Clock in ports
    .clk_in1_p(clk_p),    // input clk_in1_p
    .clk_in1_n(clk_n)    // input clk_in1_n
);

button_debounce  #(
	.DEBOUNCE_DELAY(24'd500_000) // 10ms when clk=20ns/50MHz
)
button_debounce_inst(
    .clk(clk50),
    .rst_n(rst_n),
    .key_in_n(~start_bt),
    .key_out(start)
);

i2c_cfg   #(
	.DEVICE_ADDR(8'h12) // for RC31008AQ
)
i2c_cfg_inst(
	.clk(clk50),
	.rst_n(rst_n),
	.cfg_sel(cfg_sel),
	.cfg_start(start),
	.scl(scl),
	.sda(sda)
);

endmodule
