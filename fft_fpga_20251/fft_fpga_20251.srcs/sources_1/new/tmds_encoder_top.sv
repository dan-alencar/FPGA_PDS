`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2026 06:51:00 PM
// Design Name: 
// Module Name: tmds_encoder_top
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


module tmds_encoder_top(
    input  logic pclk,
    input  logic rst,
    input  logic de,
    input  logic hsync,
    input  logic vsync,
    input  logic [7:0] r,
    input  logic [7:0] g,
    input  logic [7:0] b,
    
    output logic [9:0] tmds_r,
    output logic [9:0] tmds_g,
    output logic [9:0] tmds_b
    );
    
    // Blue channel (control channel)
    tmds_encoder enc_b (
        .pclk      (pclk),
        .rst      (rst),
        .data_in (b),
        .c_in    ({vsync, hsync}),
        .de      (de),
        .tmds_out(tmds_b)
    );

    // Green channel
    tmds_encoder enc_g (
        .pclk      (pclk),
        .rst      (rst),
        .data_in (g),
        .c_in    (2'b00),
        .de      (de),
        .tmds_out(tmds_g)
    );

    // Red channel
    tmds_encoder enc_r (
        .pclk      (pclk),
        .rst      (rst),
        .data_in (r),
        .c_in    (2'b00),
        .de      (de),
        .tmds_out(tmds_r)
    );    
    
endmodule
