`timescale 1ns / 1ps

module video_pipeline_top (
    input  logic clk_video,
    input  logic rst,

    output logic hsync,
    output logic vsync,
    output logic de,

    output logic [9:0] tmds_r,
    output logic [9:0] tmds_g,
    output logic [9:0] tmds_b
);

    // Coordenadas internas
    logic [11:0] x;
    logic [10:0] y;
    logic active_video;
    logic sof;
    logic [7:0] r;
    logic [7:0] g;
    logic [7:0] b;

    // -------------------------
    // Video Timing Generator
    // -------------------------
    video_timing_gen timing_gen (
        .clk_video    (clk_video),
        .rst          (rst),
        .x            (x),
        .y            (y),
        .active_video (active_video),
        .hsync        (hsync),
        .vsync        (vsync),
        .sof          (sof)
    );

    // -------------------------
    // Video Pattern Generator
    // -------------------------
    video_pattern_gen pattern_gen (
        .clk_video    (clk_video),
        .x            (x),
        .y            (y),
        .active_video (active_video),
        .r            (r),
        .g            (g),
        .b            (b)
    );
    
    tmds_encoder_top tmds_encoder_rgb(
        .pclk         (clk_video),
        .rst          (rst),
        .de           (de),
        .hsync        (hsync),
        .vsync        (vsync),
        .r            (r),
        .g            (g),
        .b            (b),
        .tmds_r       (tmds_r),
        .tmds_g       (tmds_g),
        .tmds_b       (tmds_b)
    );

    // Data Enable é simplesmente active_video
    assign de = active_video;

endmodule
