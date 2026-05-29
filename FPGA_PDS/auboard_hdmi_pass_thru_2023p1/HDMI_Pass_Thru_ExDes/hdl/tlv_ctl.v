`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  AVNET
// Engineer: David Fu
//
// Create Date: 04/18/2024 10:56:53 AM
// Design Name:
// Module Name: tlv_ctl
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

module tlv_ctl #(
	parameter [7:0] DEVICE_ADDR = 8'h12, // for RC31008AQ
	parameter  [15:0] PKT_DELAY_TH = 16'd2000
)
(
	clk,
	rst_n,
	cfg_start,
	// to rom
	rom_addr,
	rom_data,
	// to i2c_tx
	go_flag,
	data,
	cmd,
	busy
);
input clk;
input rst_n;
input cfg_start;
output reg [9:0]rom_addr;
input [7:0]rom_data;
output reg go_flag;
output reg[7:0]data;
output reg[1:0]cmd;
input busy;

// Inner logic
// get the start signal for configure
reg cfg_start_prev;
reg start_trig;
always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		cfg_start_prev <= 1'b0;
	end else begin
		cfg_start_prev <= cfg_start;
	end
end
always @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		start_trig <= 1'b0;
	end else begin
		if (cfg_start && !cfg_start_prev)
			start_trig <= 1'b1;
		else
			start_trig <= 1'b0;
	end
end

// delay cnt between I2C packet/transactions
reg [15:0]packet_inter_cnt;

reg [7:0] tran_cnt;
reg [7:0] len_cnt;

// I2C commands
parameter  [1:0] I2C_CMD_IDLE  = 2'b00,
                 I2C_CMD_START = 2'b01,
		         I2C_CMD_STOP  = 2'b10,
		         I2C_CMD_DATA  = 2'b11;

// State machine for read ROM and feeding I2C
reg [15:0]state;

parameter [15:0]
	IDLE          = 16'h00_00,
	INIT_ROM      = 16'h00_01,
	SET_TCNT      = 16'h00_02,
	READ_TCNT     = 16'h00_04,
	SET_LEN       = 16'h00_08,
	READ_LEN      = 16'h00_10,
	IIC_START     = 16'h00_20,
	WAIT_BUSY     = 16'h00_40,
	SEND_SLAVE    = 16'h00_80,
	SEND_SLAVE_P  = 16'h01_00,
	WAIT_DATA     = 16'h02_00,
	READ_DATA     = 16'h04_00,
	SEND_DATA     = 16'h08_00,
	IIC_STOP      = 16'h10_00,
	PKT_DELAY     = 16'h20_00;

always @(posedge clk or negedge rst_n)
begin :FSM_2
	if(~rst_n) begin
		state <= IDLE;
	end
	else
	case(state)
		IDLE:begin
			if (start_trig)
				state <= INIT_ROM;
			else  begin
				state <= IDLE;
			end
		end
		INIT_ROM:begin
			rom_addr <= 10'd0;
			state <= SET_TCNT;
		end
		SET_TCNT:begin
			state <= READ_TCNT;
		end
		READ_TCNT:begin
			tran_cnt <= rom_data;
			rom_addr <= rom_addr + 1'b1;
			state <= SET_LEN;
		end
		SET_LEN:begin
			state <= READ_LEN;
		end
		READ_LEN:begin
			len_cnt <= rom_data;
			go_flag <= 1'b0;
			state <= IIC_START;
		end
		IIC_START:begin
			cmd <= I2C_CMD_START;
			go_flag <= 1'b1;
			state <= WAIT_BUSY;
		end
		WAIT_BUSY:begin
			state <= SEND_SLAVE;
		end
		SEND_SLAVE:begin
			data <= DEVICE_ADDR;
			if(busy)
				state <= SEND_SLAVE;
			else begin
				state <= SEND_SLAVE_P;
			end
		end
		SEND_SLAVE_P:begin
			cmd <= I2C_CMD_DATA;
			go_flag <= 1'b1;
			if(busy)
				state <= SEND_SLAVE_P;
			else begin
				state <= WAIT_DATA;
				rom_addr <= rom_addr + 1'b1;
			end
		end
		WAIT_DATA:begin
			state <= READ_DATA;
		end
		READ_DATA:begin
			data <= rom_data;
			state <= SEND_DATA;
		end
		SEND_DATA:begin
			cmd <= I2C_CMD_DATA;
			if(busy)
				state <= SEND_DATA;
			else begin
				len_cnt <= len_cnt - 1'b1;
				if (len_cnt == 8'd1)
					state <= IIC_STOP;
				else begin
					rom_addr <= rom_addr + 1'b1;
					state <= WAIT_DATA;
				end
			end
		end
		IIC_STOP:begin
			cmd <= I2C_CMD_STOP;
			if(busy)
				state <= IIC_STOP;
			else begin
				tran_cnt <= tran_cnt - 1'b1;
				if(tran_cnt == 8'd1)begin
					state <= IDLE;
					go_flag <= 1'b0;
				end
				else begin
					state <= PKT_DELAY;
					go_flag <= 1'b0;
					packet_inter_cnt <= 8'd0;
					rom_addr <= rom_addr + 1'b1;
				end
			end
		end
		PKT_DELAY:begin
			if(packet_inter_cnt <= PKT_DELAY_TH)begin
				packet_inter_cnt <= packet_inter_cnt + 1'b1;
				state <= PKT_DELAY;
			end
			else
				state <= SET_LEN;
		end
	default:;
	endcase
end

endmodule