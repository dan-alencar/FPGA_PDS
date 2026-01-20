`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: hdmi_phy_wrapper
// Description:
//   Top-level HDMI TX wrapper using Xilinx Video PHY Controller.
//   - HDMI 1.4
//   - 1080p60
//   - 8 bits per color
//   - TMDS generated in RTL
//////////////////////////////////////////////////////////////////////////////////

module hdmi_phy_wrapper (
    // Differential reference clock (300 MHz from board)
    input  logic clk_ref_p,
    input  logic clk_ref_n,

    // External reset (active high)
    input  logic rst,

    // HDMI differential outputs
    output logic [3:0] hdmi_tx_p,
    output logic [3:0] hdmi_tx_n
);

    // -------------------------------------------------
    // Clocks & Reset (from PHY)
    // -------------------------------------------------
    logic clk_pixel;
    logic phy_rst_n;

    assign phy_rst_n = ~rst;

    // -------------------------------------------------
    // Video Pipeline (1 pixel / clock)
    // -------------------------------------------------
    logic [9:0] tmds_r;
    logic [9:0] tmds_g;
    logic [9:0] tmds_b;
    logic       hsync;
    logic       vsync;
    logic       de;

    video_pipeline_top video_pipe (
        .clk_video (clk_pixel),
        .rst       (~phy_rst_n),
        .tmds_r    (tmds_r),
        .tmds_g    (tmds_g),
        .tmds_b    (tmds_b),
        .hsync     (hsync),
        .vsync     (vsync),
        .de        (de)
    );

    // -------------------------------------------------
    // TMDS Packers (4 pixels per beat)
    // -------------------------------------------------
    logic [39:0] tmds_r_4px;
    logic [39:0] tmds_g_4px;
    logic [39:0] tmds_b_4px;
    logic        de_4px;
    logic        tvalid_4px;

    tmds_packer_4px packer_r (
        .clk       (clk_pixel),
        .rst       (~phy_rst_n),
        .de_in     (de),
        .tmds_in   (tmds_r),
        .tmds_out  (tmds_r_4px),
        .de_out    (),
        .valid_out ()
    );

    tmds_packer_4px packer_g (
        .clk       (clk_pixel),
        .rst       (~phy_rst_n),
        .de_in     (de),
        .tmds_in   (tmds_g),
        .tmds_out  (tmds_g_4px),
        .de_out    (),
        .valid_out ()
    );

    tmds_packer_4px packer_b (
        .clk       (clk_pixel),
        .rst       (~phy_rst_n),
        .de_in     (de),
        .tmds_in   (tmds_b),
        .tmds_out  (tmds_b_4px),
        .de_out    (de_4px),
        .valid_out (tvalid_4px)
    );

    // -------------------------------------------------
    // Video PHY Controller
    // -------------------------------------------------
    vid_phy_controller_0 phy_inst (
        // Reference clock (GTH)
        .mgtrefclk0_pad_p_in (clk_ref_p),
        .mgtrefclk0_pad_n_in (clk_ref_n),

        // Generated video clocks
        .tx_video_clk        (clk_pixel),
        .tx_tmds_clk         (),
        .txoutclk            (),

        // AXI4-Stream TX clock & reset
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
        .phy_txp_out    (hdmi_tx_p[2:0]),
        .phy_txn_out    (hdmi_tx_n[2:0]),
        .tx_tmds_clk_p  (hdmi_tx_p[3]),
        .tx_tmds_clk_n  (hdmi_tx_n[3]),

        // Sideband / DRP
        .vid_phy_sb_aclk    (clk_pixel),
        .vid_phy_sb_aresetn (phy_rst_n),
        .tx_refclk_rdy      (1'b1),
        .drpclk             (clk_pixel)
    );

endmodule
