`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: tmds_packer_4px
// Description:
//   Packs 4 consecutive 10-bit TMDS symbols into a 40-bit word.
//   Used to feed the Video PHY AXI4-Stream interface.
//////////////////////////////////////////////////////////////////////////////////

module tmds_packer_4px (
    input  logic        clk,
    input  logic        rst,

    input  logic        de_in,
    input  logic [9:0]  tmds_in,

    output logic [39:0] tmds_out,
    output logic        de_out,
    output logic        valid_out
);

    logic [1:0] px_cnt;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            px_cnt    <= 2'd0;
            tmds_out  <= 40'd0;
            valid_out <= 1'b0;
            de_out    <= 1'b0;
        end else begin
            valid_out <= 1'b0;

            tmds_out <= {tmds_out[29:0], tmds_in};

            if (px_cnt == 2'd3) begin
                px_cnt    <= 2'd0;
                valid_out <= 1'b1;
                de_out    <= de_in;
            end else begin
                px_cnt <= px_cnt + 1'b1;
            end
        end
    end

endmodule
