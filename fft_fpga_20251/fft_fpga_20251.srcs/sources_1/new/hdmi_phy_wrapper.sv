`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: hdmi_phy_wrapper_simple
// Description: Versão SIMPLIFICADA para testar se o 8T49N241 já gera clock
//              SEM configuração I2C - apenas tira do reset
//////////////////////////////////////////////////////////////////////////////////

module hdmi_phy_wrapper (
    // GTH reference clock do 8T49N241
    input  logic mgtrefclk_p,
    input  logic mgtrefclk_n,

    // Reset externo
    input  logic rst,

    // HDMI TMDS Data outputs (3 GTH lanes)
    output logic [2:0] hdmi_tx_p,
    output logic [2:0] hdmi_tx_n,
    
    // HDMI TMDS Clock output (LVDS)
    output logic hdmi_tx_clk_p,
    output logic hdmi_tx_clk_n,
    
    // HDMI Control
    output logic hdmi_tx_en,
    input  logic hdmi_tx_hpd,
    
    // 8T49N241 Control
    output logic clk_8t49_rst_n,
    input  logic clk_8t49_lol,
    
    // I2C (não usado nesta versão, mas mantemos para compatibilidade)
    inout  wire  hdmi_ctl_sda,
    inout  wire  hdmi_ctl_scl,
    
    // Debug LEDs
    output logic [3:0] led_debug
);

    // =========================================================
    // I2C - deixar como entrada (não drive)
    // =========================================================
    assign hdmi_ctl_sda = 1'bz;
    assign hdmi_ctl_scl = 1'bz;

    // =========================================================
    // 8T49N241 - apenas tirar do reset e ver se funciona
    // =========================================================
    logic [23:0] rst_cnt;
    logic        clk_gen_ready;
    
    // Usar um clock qualquer para o contador de reset
    // Como não temos clock ainda, usamos o STARTUPE3
    logic cfg_clk;
    
    STARTUPE3 #(.PROG_USR("FALSE")) startupe3_inst (
        .CFGCLK(cfg_clk), .CFGMCLK(), .EOS(), .PREQ(),
        .DO(4'b0), .DI(), .DTS(4'b1111),
        .FCSBO(1'b1), .FCSBTS(1'b1),
        .GSR(1'b0), .GTS(1'b0), .KEYCLEARB(1'b1), .PACK(1'b0),
        .USRCCLKO(1'b0), .USRCCLKTS(1'b1), .USRDONEO(1'b1), .USRDONETS(1'b1)
    );
    
    // Sequência simples: reset → wait → ready
    always_ff @(posedge cfg_clk or posedge rst) begin
        if (rst) begin
            rst_cnt <= 0;
            clk_8t49_rst_n <= 0;
            clk_gen_ready <= 0;
        end else begin
            if (rst_cnt < 24'd650_000) begin
                // 10ms em reset
                rst_cnt <= rst_cnt + 1;
                clk_8t49_rst_n <= 0;
            end else if (rst_cnt < 24'd7_150_000) begin
                // 100ms esperando estabilizar
                rst_cnt <= rst_cnt + 1;
                clk_8t49_rst_n <= 1;
            end else begin
                clk_gen_ready <= ~clk_8t49_lol;
            end
        end
    end

    // =========================================================
    // Clocks
    // =========================================================
    logic clk_pixel;
    logic clk_tmds;
    logic tx_mmcm_lock;
    
    // =========================================================
    // PHY Reset
    // =========================================================
    logic phy_rst_n;
    logic [7:0] phy_rst_cnt;
    
    always_ff @(posedge clk_pixel or negedge tx_mmcm_lock) begin
        if (!tx_mmcm_lock) begin
            phy_rst_cnt <= 0;
            phy_rst_n <= 0;
        end else begin
            if (phy_rst_cnt < 8'hFF)
                phy_rst_cnt <= phy_rst_cnt + 1;
            else
                phy_rst_n <= 1;
        end
    end

    // =========================================================
    // HDMI TX Enable
    // =========================================================
    assign hdmi_tx_en = phy_rst_n & clk_gen_ready;

    // =========================================================
    // Video Pipeline
    // =========================================================
    logic [9:0] tmds_r, tmds_g, tmds_b;
    logic       hsync, vsync, de;

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
    // TMDS Packers
    // =========================================================
    logic [39:0] tmds_r_4px, tmds_g_4px, tmds_b_4px;
    logic        de_4px, tvalid_4px;

    tmds_packer_4px packer_r (
        .clk(clk_pixel), .rst(~phy_rst_n), .de_in(de),
        .tmds_in(tmds_r), .tmds_out(tmds_r_4px), .de_out(), .valid_out()
    );

    tmds_packer_4px packer_g (
        .clk(clk_pixel), .rst(~phy_rst_n), .de_in(de),
        .tmds_in(tmds_g), .tmds_out(tmds_g_4px), .de_out(), .valid_out()
    );

    tmds_packer_4px packer_b (
        .clk(clk_pixel), .rst(~phy_rst_n), .de_in(de),
        .tmds_in(tmds_b), .tmds_out(tmds_b_4px), .de_out(de_4px), .valid_out(tvalid_4px)
    );

    // =========================================================
    // TMDS Clock Output (LVDS)
    // =========================================================
    OBUFDS #(.IOSTANDARD("DIFF_SSTL12")) obufds_tmds_clk (
        .I(clk_tmds), .O(hdmi_tx_clk_p), .OB(hdmi_tx_clk_n)
    );

    // =========================================================
    // AXI-Lite
    // =========================================================
    logic [9:0]  axi_awaddr, axi_araddr;
    logic        axi_awvalid, axi_awready;
    logic [31:0] axi_wdata, axi_rdata;
    logic [3:0]  axi_wstrb;
    logic        axi_wvalid, axi_wready;
    logic [1:0]  axi_bresp, axi_rresp;
    logic        axi_bvalid, axi_bready;
    logic        axi_arvalid, axi_arready;
    logic        axi_rvalid, axi_rready;

    // =========================================================
    // Video PHY Controller (3 canais)
    // =========================================================
    vid_phy_controller_0 phy_inst (
        .mgtrefclk0_pad_p_in (mgtrefclk_p),
        .mgtrefclk0_pad_n_in (mgtrefclk_n),

        .tx_video_clk        (clk_pixel),
        .tx_tmds_clk         (clk_tmds),
        //.tx_mmcm_lock_out    (tx_mmcm_lock),

        .vid_phy_tx_axi4s_aclk    (clk_pixel),
        .vid_phy_tx_axi4s_aresetn (phy_rst_n),

        .vid_phy_tx_axi4s_ch0_tdata  (tmds_b_4px),
        .vid_phy_tx_axi4s_ch0_tvalid (tvalid_4px),
        .vid_phy_tx_axi4s_ch0_tuser  (de_4px),
        .vid_phy_tx_axi4s_ch0_tready (),

        .vid_phy_tx_axi4s_ch1_tdata  (tmds_g_4px),
        .vid_phy_tx_axi4s_ch1_tvalid (tvalid_4px),
        .vid_phy_tx_axi4s_ch1_tuser  (de_4px),
        .vid_phy_tx_axi4s_ch1_tready (),

        .vid_phy_tx_axi4s_ch2_tdata  (tmds_r_4px),
        .vid_phy_tx_axi4s_ch2_tvalid (tvalid_4px),
        .vid_phy_tx_axi4s_ch2_tuser  (de_4px),
        .vid_phy_tx_axi4s_ch2_tready (),

        .phy_txp_out (hdmi_tx_p),
        .phy_txn_out (hdmi_tx_n),

        .vid_phy_sb_aclk    (clk_pixel),
        .vid_phy_sb_aresetn (phy_rst_n),
        .tx_refclk_rdy      (~clk_8t49_lol),
        
        .drpclk             (clk_pixel),

        .vid_phy_axi4lite_aclk    (clk_pixel),
        .vid_phy_axi4lite_aresetn (phy_rst_n),
        
        .vid_phy_axi4lite_awaddr  (axi_awaddr),
        .vid_phy_axi4lite_awprot  (3'b000),
        .vid_phy_axi4lite_awvalid (axi_awvalid),
        .vid_phy_axi4lite_awready (axi_awready),
        
        .vid_phy_axi4lite_wdata   (axi_wdata),
        .vid_phy_axi4lite_wstrb   (axi_wstrb),
        .vid_phy_axi4lite_wvalid  (axi_wvalid),
        .vid_phy_axi4lite_wready  (axi_wready),
        
        .vid_phy_axi4lite_bresp   (axi_bresp),
        .vid_phy_axi4lite_bvalid  (axi_bvalid),
        .vid_phy_axi4lite_bready  (axi_bready),
        
        .vid_phy_axi4lite_araddr  (axi_araddr),
        .vid_phy_axi4lite_arprot  (3'b000),
        .vid_phy_axi4lite_arvalid (axi_arvalid),
        .vid_phy_axi4lite_arready (axi_arready),
        
        .vid_phy_axi4lite_rdata   (axi_rdata),
        .vid_phy_axi4lite_rresp   (axi_rresp),
        .vid_phy_axi4lite_rvalid  (axi_rvalid),
        .vid_phy_axi4lite_rready  (axi_rready)
    );

    // =========================================================
    // PHY Initializer
    // =========================================================
    logic phy_init_done;
    
    phy_axilite_init phy_init_inst (
        .clk (clk_pixel),
        .rst (~phy_rst_n),
        .m_axi_awaddr  (axi_awaddr),
        .m_axi_awvalid (axi_awvalid),
        .m_axi_awready (axi_awready),
        .m_axi_wdata   (axi_wdata),
        .m_axi_wstrb   (axi_wstrb),
        .m_axi_wvalid  (axi_wvalid),
        .m_axi_wready  (axi_wready),
        .m_axi_bvalid  (axi_bvalid),
        .m_axi_bready  (axi_bready),
        .m_axi_araddr  (axi_araddr),
        .m_axi_arvalid (axi_arvalid),
        .m_axi_arready (axi_arready),
        .m_axi_rdata   (axi_rdata),
        .m_axi_rvalid  (axi_rvalid),
        .m_axi_rready  (axi_rready),
        .init_done     (phy_init_done),
        .debug_state   ()
    );
    
    // =========================================================
    // Debug LEDs
    // =========================================================
    logic [23:0] blink;
    always_ff @(posedge cfg_clk) blink <= blink + 1;
    
    assign led_debug[0] = clk_gen_ready ? 1'b1 : blink[22];  // Solid when ready
    assign led_debug[1] = ~clk_8t49_lol;   // Clock generator locked (KEY!)
    assign led_debug[2] = tx_mmcm_lock;     // PHY MMCM locked
    assign led_debug[3] = hdmi_tx_hpd;      // Monitor connected

endmodule