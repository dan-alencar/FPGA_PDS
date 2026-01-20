`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: hdmi_phy_wrapper
// Description:
//   HDMI 1.4 TX top-level
//   - TMDS fully generated in RTL
//   - Video PHY Controller used only as serializer / clocking
//   - 4th GTH lane used as TMDS clock
//////////////////////////////////////////////////////////////////////////////////

module hdmi_phy_wrapper (
    // GTH reference clock (300 MHz differential)
    input  logic clk_ref_p,
    input  logic clk_ref_n,

    // External reset (active high)
    input  logic rst,

    // HDMI TMDS outputs (GTH lanes)
    // [0] Blue, [1] Green, [2] Red, [3] Clock
    output logic [3:0] hdmi_tx_p,
    output logic [3:0] hdmi_tx_n,
    
    // LEDs de Debug para o Bring-up do HDMI
    output logic [3:0] led_debug
);

    // =========================================================
    // PHY clocks & reset
    // =========================================================
    logic clk_pixel;
    logic clk_tmds;
    logic phy_rst_n;
    logic tx_refclk_rdy;
    assign tx_refclk_rdy = 1'b1;

    // PHY reset only released when reference clock is ready
    assign phy_rst_n = tx_refclk_rdy & ~rst;

    // =========================================================
    // Video pipeline (1 pixel per clock)
    // =========================================================
    logic [9:0] tmds_r;
    logic [9:0] tmds_g;
    logic [9:0] tmds_b;
    logic       hsync;
    logic       vsync;
    logic       de;

    video_pipeline_top video_pipe (
        .clk_video (clk_pixel),
        .rst       (rst),
        .tmds_r    (tmds_r),
        .tmds_g    (tmds_g),
        .tmds_b    (tmds_b),
        .hsync     (hsync),
        .vsync     (vsync),
        .de        (de)
    );

    // =========================================================
    // TMDS packers (4 pixels per beat)
    // =========================================================
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

    // =========================================================
    // Video PHY Controller
    // =========================================================
    vid_phy_controller_0 phy_inst (
        // Reference clock
        .mgtrefclk0_pad_p_in (clk_ref_p),
        .mgtrefclk0_pad_n_in (clk_ref_n),

        // Generated clocks
        .tx_video_clk        (clk_pixel),
        .tx_tmds_clk         (),

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

        // TMDS outputs (4 GTH lanes, lane 3 = clock)
        .phy_txp_out (hdmi_tx_p),
        .phy_txn_out (hdmi_tx_n),

        // Sideband / status
        .vid_phy_sb_aclk    (clk_pixel),
        .vid_phy_sb_aresetn (phy_rst_n),
        .tx_refclk_rdy      (tx_refclk_rdy),
        .drpclk             (clk_pixel)
    );

    // =========================================================
    // PHY AXI-Lite Initializer
    // =========================================================
    logic phy_init_done;
    logic [3:0] phy_init_state;
    
    phy_axilite_init phy_init (
        .clk    (clk_pixel),
        .rst    (~phy_rst_n),
    
        // AXI-Lite master -> PHY
        .m_axi_awaddr  (phy_inst.vid_phy_axi4lite_awaddr),
        .m_axi_awvalid (phy_inst.vid_phy_axi4lite_awvalid),
        .m_axi_awready (phy_inst.vid_phy_axi4lite_awready),
    
        .m_axi_wdata   (phy_inst.vid_phy_axi4lite_wdata),
        .m_axi_wstrb   (phy_inst.vid_phy_axi4lite_wstrb),
        .m_axi_wvalid  (phy_inst.vid_phy_axi4lite_wvalid),
        .m_axi_wready  (phy_inst.vid_phy_axi4lite_wready),
    
        .m_axi_bvalid  (phy_inst.vid_phy_axi4lite_bvalid),
        .m_axi_bready  (phy_inst.vid_phy_axi4lite_bready),
    
        .m_axi_araddr  (phy_inst.vid_phy_axi4lite_araddr),
        .m_axi_arvalid (phy_inst.vid_phy_axi4lite_arvalid),
        .m_axi_arready (phy_inst.vid_phy_axi4lite_arready),
    
        .m_axi_rdata   (phy_inst.vid_phy_axi4lite_rdata),
        .m_axi_rvalid  (phy_inst.vid_phy_axi4lite_rvalid),
        .m_axi_rready  (phy_inst.vid_phy_axi4lite_rready),
    
        .init_done     (phy_init_done),
        .debug_state   (phy_init_state)
    );
    
    assign led_debug[0] = phy_rst_n;        // PHY fora do reset
    assign led_debug[1] = phy_init_done;    // PHY configurado
    assign led_debug[2] = tvalid_4px;       // TMDS ativo
    assign led_debug[3] = de_4px;           // Vídeo ativo
    
endmodule
