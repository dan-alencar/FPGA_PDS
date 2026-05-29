`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  AVNET
// Engineer: David Fu
//
// Create Date: 04/18/2024 10:56:53 AM
// Design Name:
// Module Name: i2c_cfg
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module i2c_cfg #(
	parameter [7:0] DEVICE_ADDR = 8'h12 // for RC31008AQ
)
(
	clk,
	rst_n,
	cfg_sel,
	cfg_start,
	// for i2c
	scl,
	sda
);
input clk;
input rst_n;
input [3:0] cfg_sel;
input cfg_start;
output scl;
inout sda;

// inner
wire [9:0]rom_addr;
wire [7:0]rom_data;
wire go_flag;
wire [7:0]data;
wire [1:0]cmd;
wire busy;

tlv_ctl #(
	.DEVICE_ADDR(8'h12), // for RC31008AQ
	.PKT_DELAY_TH(16'd2000) // 40us between STOP and START when clk=10Mhz
)
tlv_ctl
(
	.clk(clk),
	.rst_n(rst_n),
	.cfg_start(cfg_start),
	// to rom
	.rom_addr(rom_addr),
	.rom_data(rom_data),
	// to i2c_tx
	.go_flag(go_flag),
	.data(data),
	.cmd(cmd),
	.busy(busy)
);

wire sda_i;
wire sda_t;

// tri-state
wire sda_o;
// Instantiate the I2C tx module
i2c_tx i2c_tx (
	.clk(clk),
	.rst_n(rst_n),
	.go_flag(go_flag),
	.data(data),
	.cmd(cmd),
	.busy(busy),
	.scl(scl),
	.sda_o(sda_o),
	.sda_i(sda_i),
	.sda_t(sda_t)
);
assign sda = sda_t? sda_o :1'bz;
assign sda_i = sda_t? 1'bz :sda;

// Instantiate the ROM module
ROM rom (
	.clka(clk),
	.addra(rom_addr),
	.douta(rom_data)
);

endmodule