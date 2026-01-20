`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2026 07:17:31 PM
// Design Name: 
// Module Name: hdmi_phy_wrapper
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


module hdmi_phy_wrapper (
    input  logic clk_ref_p,
    input  logic clk_ref_n,
    input  logic rst,

    output logic [3:0] hdmi_tx_p,
    output logic [3:0] hdmi_tx_n
);

    // -------------------------------------------------
    // Clocks
    // -------------------------------------------------
    
    logic clk_pixel, clk_dbg;
    logic pll_locked;
    
    clk_wiz_0 clk_video(
        .clk_video  (clk_pixel),     // Saída configurada para 100 MHz
        .clk_out2   (clk_dbg),       // Clock de Debug
        .resetn     (1'b1),          // Reset Active Low vindo do botão
        .locked     (pll_locked),        // Conectado para segurar o reset
        .clk_in1_p  (clk_ref_p),     // Entrada 300 MHz
        .clk_in1_n  (clk_ref_n)      // Entrada 300 MHz
    );
    
    // -------------------------------------------------
    // Video Pipeline
    // -------------------------------------------------
    
    logic [9:0] tmds_r, tmds_g, tmds_b;
    logic       hsync, vsync, de;
    
     video_pipeline_top video_pipe (
        .clk_video (clk_pixel),
        .rst       (~pll_locked | rst),
        .tmds_r    (tmds_r),
        .tmds_g    (tmds_g),
        .tmds_b    (tmds_b),
        .hsync     (hsync),
        .vsync     (vsync),
        .de        (de)
    );
    

    // -------------------------------------------------
    // Video PHY Controller
    // -------------------------------------------------
    // Os sinais abaixo dependem exatamente da configuração
    // do IP no Vivado (nomes podem variar)
    
    logic [39:0] tmds_r_4px;
    logic [39:0] tmds_g_4px;
    logic [39:0] tmds_b_4px;
    logic        de_4px;
    logic        tvalid_4px;
    
    tmds_packer_4px packer (
        .clk        (clk_pixel),
        .rst        (~pll_locked | rst),
    
        .de_in      (de_1px),
    
        .tmds_r_in  (tmds_r_1px),
        .tmds_g_in  (tmds_g_1px),
        .tmds_b_in  (tmds_b_1px),
    
        .tmds_r_out (tmds_r_4px),
        .tmds_g_out (tmds_g_4px),
        .tmds_b_out (tmds_b_4px),
    
        .de_out     (de_4px),
        .valid_out  (tvalid_4px)
    );
    
    logic [59:0] txdata;   // 3 canais × 20 bits
    logic        tx_ready;

    // Mapeamento TMDS → PHY
    assign txdata = {
        tmds_r, 10'b0,
        tmds_g, 10'b0,
        tmds_b, 10'b0
    };
    
    // AXI4-Stream TX
    assign phy_rst_n = pll_locked & ~rst;
    
    vid_phy_controller_0 phy_inst (
    // GT reference clock
    .mgtrefclk0_pad_p_in (clk_ref_p),
    .mgtrefclk0_pad_n_in (clk_ref_n),

    // Video clocks out
    .tx_video_clk        (clk_pixel),
    .tx_tmds_clk         (),
    .txoutclk            (),

    // AXI4-Stream TX clocks & reset
    .vid_phy_tx_axi4s_aclk    (clk_pixel),
    .vid_phy_tx_axi4s_aresetn (phy_rst_n),
    
    // Channel 0 - Blue
    .vid_phy_tx_axi4s_ch0_tdata  (tmds_b_4px),
    .vid_phy_tx_axi4s_ch0_tvalid (tvalid_4px),
    .vid_phy_tx_axi4s_ch0_tuser  (de_4px),
    .vid_phy_tx_axi4s_ch0_tready (),
    
    // Channel 1 - Green
    .vid_phy_tx_axi4s_ch1_tdata  (tmds_g_4px),
    .vid_phy_tx_axi4s_ch1_tvalid (tvalid_4px),
    .vid_phy_tx_axi4s_ch1_tuser  (de_4px),
    .vid_phy_tx_axi4s_ch1_tready (),
    
    // Channel 2 - Red
    .vid_phy_tx_axi4s_ch2_tdata  (tmds_r_4px),
    .vid_phy_tx_axi4s_ch2_tvalid (tvalid_4px),
    .vid_phy_tx_axi4s_ch2_tuser  (de_4px),
    .vid_phy_tx_axi4s_ch2_tready (),

    // HDMI outputs
    .phy_txp_out        (hdmi_tx_p[2:0]),
    .phy_txn_out        (hdmi_tx_n[2:0]),
    .tx_tmds_clk_p      (hdmi_tx_p[3]),
    .tx_tmds_clk_n      (hdmi_tx_n[3]),

    // Sideband / AXI Lite ignored
    .vid_phy_sb_aclk    (clk_pixel),
    .vid_phy_sb_aresetn (phy_rst_n),
    .tx_refclk_rdy      (1'b1),
    .drpclk             (clk_pixel)
    );
    

endmodule
