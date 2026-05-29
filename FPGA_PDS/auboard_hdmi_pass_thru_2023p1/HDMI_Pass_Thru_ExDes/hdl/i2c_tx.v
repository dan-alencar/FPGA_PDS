`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  AVNET
// Engineer: David Fu
//
// Create Date: 04/18/2024 10:56:53 AM
// Design Name:
// Module Name: i2c_tx
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

module i2c_tx (
	clk,
	rst_n,
	go_flag,    // sync with clk and last at least for 1 clk
	data,
	cmd,        // 00:idle  01: start   10: stop   11:data
	busy,

	// for i2c
	scl,
	sda_o,
	sda_i,
	sda_t
);

input clk;
input rst_n;
input go_flag;
input [7:0]data;
input [1:0]cmd;
output busy;
output reg scl;
output reg sda_o;
input sda_i;
output reg sda_t; // 1 out, 0 in

// Inner logic
// baudrate control
parameter DELAY_COUNT = 8'hff; //  0xf just for debug,  ff for 100kHz SCL when clk=50Mhz
parameter SCL_LEAD_SDA  = 200; // The number of clock cycles by which SCL leads SDA, 55*20=1100ns@50Mhz

// Delay counter
reg [7:0] delay_counter;

// FSM for I2C send
// I2C commands
parameter  [1:0] I2C_CMD_IDLE  = 2'b00,
                 I2C_CMD_START = 2'b01,
		         I2C_CMD_STOP  = 2'b10,
		         I2C_CMD_DATA  = 2'b11;

reg [7:0]i2c_data;
reg [3:0]i2c_bit_cnt;

reg sda_in;
reg i2c_ack;

reg   [11:0] state;
reg   [11:0] next_state;

parameter IDLE           = 12'b0000_0000_0000;
parameter START_PRE      = 12'b0000_0000_0010;
parameter START_POST     = 12'b0000_0000_0100;
parameter DATA_PRE       = 12'b0000_0000_1000;
parameter DATA_POST      = 12'b0000_0001_0000;
parameter ACK_PRE        = 12'b0000_0010_0000;
parameter ACK_POST       = 12'b0000_0100_0000;
parameter STOP_PP        = 12'b0000_1000_0000;
parameter STOP_PRE       = 12'b0001_0000_0000;
parameter STOP_POST      = 12'b0010_0000_0000;

always @(posedge clk or negedge rst_n)
begin :FSM_1
	if(!rst_n)
		state <= IDLE;
	else
		state <= next_state;
end

always @(*)
begin :FSM_2
	case(state)
	IDLE:   if (go_flag) begin
				if (cmd == I2C_CMD_START)    next_state = START_PRE;
				else if (cmd == I2C_CMD_STOP)next_state = STOP_PP;
				else if (cmd == I2C_CMD_DATA)next_state = DATA_PRE;
				else next_state = IDLE;
			end
			else next_state = IDLE;
	START_PRE:  if (delay_counter == DELAY_COUNT) next_state = START_POST; else next_state = START_PRE;
	START_POST: if (delay_counter == DELAY_COUNT) next_state = IDLE; else next_state = START_POST;
	DATA_PRE:   if (delay_counter == DELAY_COUNT) next_state = DATA_POST; else next_state = DATA_PRE;
	DATA_POST:  if (delay_counter == DELAY_COUNT)
					if (i2c_bit_cnt == 4'd0) next_state = ACK_PRE;  else next_state = DATA_PRE;
				else
					next_state = DATA_POST;
	ACK_PRE:    if (delay_counter == DELAY_COUNT) next_state = ACK_POST; else next_state = ACK_PRE;
	ACK_POST:   if (delay_counter == DELAY_COUNT) next_state = IDLE; else next_state = ACK_POST;
	STOP_PP:    if (delay_counter == DELAY_COUNT) next_state = STOP_PRE; else next_state =  STOP_PP;
	STOP_PRE:   if (delay_counter == DELAY_COUNT) next_state = STOP_POST; else next_state = STOP_PRE;
	STOP_POST:  if (delay_counter == DELAY_COUNT) next_state = IDLE; else next_state = STOP_POST;
	default:   ;//next_state = IDLE;
	endcase
end

always @(posedge clk or negedge rst_n)
begin :FSM_3
	if(!rst_n)	begin
		i2c_data <= 8'h0;
		i2c_bit_cnt <= 8'd0;
		// i2c bus
		scl <= 1'b1;
		sda_o <= 1'b1;
		sda_t <= 1'b1;// 1:out, 0:in
		delay_counter <= 8'd0;
	end
	else begin
		case(state)
		IDLE:	begin
			i2c_data <= 8'h0;
			i2c_bit_cnt <= 8'd0;

			i2c_bit_cnt <= 4'd8;
			i2c_data <= data;  // <= data; get data from control block
			delay_counter <= 8'd0;
		end
		START_PRE:  begin
			sda_o <= 1'b0; // pull low sda when scl is high
			sda_t <= 1'b1;
			delay_counter <= delay_counter +1'b1;
		end
		START_POST:  begin
			scl <= 1'b0; // pull low scl
			delay_counter <= DELAY_COUNT;// do not wait
		end
		DATA_PRE: begin
			if (delay_counter == DELAY_COUNT) begin
				sda_o <= i2c_data[7];
				i2c_bit_cnt <= i2c_bit_cnt - 1'b1;
				i2c_data <= i2c_data << 1;
				sda_t <= 1'b1;
			end
			if (delay_counter == SCL_LEAD_SDA)
				scl <= 1'b0;
			delay_counter <= delay_counter +1'b1;
		end
		DATA_POST: begin
			if (delay_counter == SCL_LEAD_SDA)
				scl <= 1'b1;
			delay_counter <= delay_counter +1'b1;
		end
		ACK_PRE:  begin
			if (delay_counter == DELAY_COUNT) begin
				sda_o <= 1'b0; // set 0 to allow input ACK low
				sda_t <= 1'b0; // turn to input
			end
			if (delay_counter == SCL_LEAD_SDA)
				scl <= 1'b0;
			delay_counter <= delay_counter +1'b1;
		end
		ACK_POST:  begin
			if (delay_counter == DELAY_COUNT) begin
				sda_in <= sda_i;
			end
			if (delay_counter == SCL_LEAD_SDA)
				scl <= 1'b1;
			delay_counter <= delay_counter +1'b1;
		end
		STOP_PP: begin
			if (delay_counter == DELAY_COUNT) begin
				sda_t <= 1'b1; // turn to output after ACK
			end
			if (delay_counter == SCL_LEAD_SDA) begin
				scl <= 1'b0;
			end
			delay_counter <= delay_counter +1'b1;
		end
		STOP_PRE:  begin
			if (delay_counter == DELAY_COUNT) begin
				sda_o <= 1'b0;
				scl <= 1'b1;
			end
			delay_counter <= delay_counter +1'b1;
		end
		STOP_POST:  begin
			if (delay_counter == DELAY_COUNT)
				sda_o <= 1'b1;
			delay_counter <= delay_counter +1'b1;
		end
		default: ;
		endcase
	end
end

// i2c busy signal
assign busy = (state == IDLE) ? 1'b0: 1'b1;

endmodule