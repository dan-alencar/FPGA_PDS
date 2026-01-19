`timescale 1ns / 1ps

module tb_video_pipeline;

    // Clock
    logic clk_video;
    logic rst;

    // Sinais do timing
    logic [11:0] x;
    logic [10:0] y;
    logic active_video;
    logic hsync;
    logic vsync;
    logic sof;

    // RGB
    logic [7:0] r;
    logic [7:0] g;
    logic [7:0] b;

    // -------------------------------------------------
    // Clock generation
    // Pixel clock = 148.5 MHz → período ≈ 6.734 ns
    // Para simulação, podemos usar algo mais lento (ex: 100 MHz)
    // -------------------------------------------------
    initial clk_video = 0;
    always #5 clk_video = ~clk_video; // 100 MHz (ok para simulação)

    // -------------------------------------------------
    // Reset
    // -------------------------------------------------
    initial begin
        rst = 1;
        #50;
        rst = 0;
    end

    // -------------------------------------------------
    // DUT: Video Timing Generator
    // -------------------------------------------------
    video_timing_gen dut_timing (
        .clk_video     (clk_video),
        .rst           (rst),
        .x             (x),
        .y             (y),
        .active_video  (active_video),
        .hsync         (hsync),
        .vsync         (vsync),
        .sof           (sof)
    );

    // -------------------------------------------------
    // DUT: Video Pattern Generator
    // -------------------------------------------------
    video_pattern_gen dut_pattern (
        .clk_video     (clk_video),
        .x             (x),
        .y             (y),
        .active_video  (active_video),
        .r             (r),
        .g             (g),
        .b             (b)
    );

    // -------------------------------------------------
    // Simulation control
    // -------------------------------------------------
    initial begin
        // Rodar tempo suficiente para alguns frames
        #5_000_000;
        $finish;
    end

endmodule
