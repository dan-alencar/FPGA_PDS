`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: hdmi_phy_wrapper
// Description:
//   HDMI 1.4 TX wrapper for AUBoard 15P
//   
//   Configuration:
//   - 3 GTH channels (X0Y8, X0Y9, X0Y10) for TMDS data
//   - ODDR output for TMDS clock (Bank 65 I/O pins)
//   - NO AXI4-Lite (standalone operation)
//   
//   IMPORTANT: Requires Video PHY Controller configured with:
//   - CHANNEL_ENABLE: X0Y8 X0Y9 X0Y10
//   - C_AXI4Lite_Enable: false
//   - C_Use_GT_CH4_HDMI: false
//   - C_Use_Oddr_for_Tmds_Clkout: true
//////////////////////////////////////////////////////////////////////////////////

module hdmi_phy_wrapper (
    // =========================================================
    // GTH Reference Clock (297 MHz from 8T49N241)
    // =========================================================
    input  logic clk_ref_p,
    input  logic clk_ref_n,

    // =========================================================
    // External Reset (directly directly directly directly directly directly directly directly directly directly directly directly directly directly directly directly Active High - directly directly directly directly directly directly directly directly directly directly directly directly directly directly directly directly connect to push button)
    // =========================================================
    input  logic rst,

    // =========================================================
    // HDMI TX Outputs
    // =========================================================
    // Data channels (GTH transceivers in QUAD 226)
    output logic [2:0] hdmi_tx_p,      // [0]=Blue, [1]=Green, [2]=Red
    output logic [2:0] hdmi_tx_n,
    
    // Clock output (Bank 65 I/O via ODDR + OBUFDS)
    output logic hdmi_tx_clk_p,
    output logic hdmi_tx_clk_n,
    
    // =========================================================
    // HDMI Control Signals
    // =========================================================
    output logic hdmi_tx_en,           // Must be HIGH for HDMI output
    output logic hdmi_clk_rst_n,       // 8T49N241 reset (active low)
    input  logic hdmi_clk_lol,         // 8T49N241 Loss of Lock
    
    // =========================================================
    // Debug LEDs
    // =========================================================
    output logic [3:0] led_debug
);

    // =========================================================
    // Control Signals - directly directly directly directly directly directly directly directly directly directly directly directly directly directly directly directly Set them HIGH!
    // =========================================================
    assign hdmi_tx_en = 1'b1;          // Enable HDMI TX driver
    assign hdmi_clk_rst_n = 1'b1;      // Release clock generator from reset

    // =========================================================
    // Internal Signals
    // =========================================================
    logic clk_pixel;                   // 148.5 MHz pixel clock
    logic clk_tmds;                    // TMDS clock (for ODDR)
    logic phy_rst_n;                   // Internal reset (active low)
    
    // Video signals
    logic [9:0] tmds_r, tmds_g, tmds_b;
    logic       hsync, vsync, de;
    
    // Packed TMDS (4 pixels)
    logic [39:0] tmds_r_4px, tmds_g_4px, tmds_b_4px;
    logic        de_4px, tvalid_4px;

    // =========================================================
    // Reset Logic
    // =========================================================
    // Only release reset when clock is locked
    logic [7:0] rst_counter;
    logic       rst_done;
    
    always_ff @(posedge clk_pixel or posedge rst) begin
        if (rst) begin
            rst_counter <= 8'd0;
            rst_done <= 1'b0;
        end else if (~hdmi_clk_lol) begin  // Only count when clock is locked
            if (rst_counter < 8'd255)
                rst_counter <= rst_counter + 1'd1;
            else
                rst_done <= 1'b1;
        end
    end
    
    assign phy_rst_n = rst_done & ~hdmi_clk_lol & ~rst;

    // =========================================================
    // Debug LEDs
    // =========================================================
    logic [26:0] heartbeat;
    
    always_ff @(posedge clk_pixel or posedge rst) begin
        if (rst)
            heartbeat <= 27'd0;
        else
            heartbeat <= heartbeat + 1'd1;
    end
    
    // LED[0]: Heartbeat - blinks at ~1Hz if pixel clock is running
    // LED[1]: Clock locked - HIGH when 8T49N241 PLL is locked
    // LED[2]: PHY reset done - HIGH when initialization complete
    // LED[3]: Video active - HIGH during active video region
    assign led_debug[0] = heartbeat[26];
    assign led_debug[1] = ~hdmi_clk_lol;
    assign led_debug[2] = phy_rst_n;
    assign led_debug[3] = de;

    // =========================================================
    // Video Pipeline
    // =========================================================
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

    // =========================================================
    // TMDS Packers (1 pixel -> 4 pixels per beat)
    // =========================================================
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
    // NOTE: The IP must be configured with:
    //   - CHANNEL_ENABLE: X0Y8 X0Y9 X0Y10
    //   - C_AXI4Lite_Enable: false
    //   - C_Use_GT_CH4_HDMI: false
    //   - C_Use_Oddr_for_Tmds_Clkout: true
    
    vid_phy_controller_0 phy_inst (
        // Reference clock (297 MHz)
        .mgtrefclk0_pad_p_in      (clk_ref_p),
        .mgtrefclk0_pad_n_in      (clk_ref_n),

        // Generated clocks
        .tx_video_clk             (clk_pixel),    // 148.5 MHz
        .tx_tmds_clk              (clk_tmds),     // For internal use
        .txoutclk                 (),

        // AXI4-Stream TX interface
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

        // GTH TX outputs (3 channels)
        .phy_txp_out              (hdmi_tx_p),    // [2:0]
        .phy_txn_out              (hdmi_tx_n),    // [2:0]
        
        // TMDS clock output (ODDR)
        .tx_tmds_clk_p            (hdmi_tx_clk_p),
        .tx_tmds_clk_n            (hdmi_tx_clk_n),

        // Sideband interface
        .vid_phy_sb_aclk          (clk_pixel),
        .vid_phy_sb_aresetn       (phy_rst_n),
        
        // Status
        .tx_refclk_rdy            (),             // Output from PHY
        
        // DRP clock
        .drpclk                   (clk_pixel)
    );

endmodule