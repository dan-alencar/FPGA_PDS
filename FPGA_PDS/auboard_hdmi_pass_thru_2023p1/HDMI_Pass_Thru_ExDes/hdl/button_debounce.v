`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  AVNET
// Engineer: David Fu
//
// Create Date: 04/18/2024 10:56:53 AM
// Design Name:
// Module Name: button_debounce
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


module button_debounce #(
	parameter DEBOUNCE_DELAY = 24'd500_000 // 10ms when clk=20ns/50MHz
)
(
    input clk,
    input rst_n,
    input key_in_n,
    output reg key_out
);

parameter IDLE     = 2'b00;
parameter DEBOUNCE = 2'b01;
parameter STABLE   = 2'b10;

reg [1:0] current_state, next_state;
reg [23:0] debounce_cnt;

wire key_in;
assign key_in = !key_in_n;

always @ (posedge clk or negedge rst_n) begin
    if (!rst_n)
        current_state <= IDLE;
    else
        current_state <= next_state;
end

always @ (*) begin
    case (current_state)
        IDLE: begin
            if (key_in)
                next_state = DEBOUNCE;
            else
                next_state = IDLE;
        end
        DEBOUNCE: begin
            if (key_in) begin
                if (debounce_cnt == DEBOUNCE_DELAY)
                    next_state = STABLE;
                else
                    next_state = DEBOUNCE;
            end else begin
                next_state = IDLE;
            end
        end
        STABLE: begin
            if (key_in)
                next_state = STABLE;
            else
                next_state = IDLE;
        end
        default: next_state = IDLE;
    endcase
end

always @ (posedge clk or negedge rst_n) begin
    if (!rst_n)
        key_out <= 1'b0;
    else if (next_state == STABLE)
        key_out <= 1'b1;
    else
        key_out <= 1'b0;
end

always @ (posedge clk or negedge rst_n) begin
    if (!rst_n)
        debounce_cnt <= 24'd0;
    else if (current_state == DEBOUNCE && key_in)
        debounce_cnt <= debounce_cnt + 1'b1;
    else
        debounce_cnt <= 24'd0;
end

endmodule