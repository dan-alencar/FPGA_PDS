module phy_axilite_init (
    input  logic clk,
    input  logic rst,

    output logic [9:0]  m_axi_awaddr,
    output logic        m_axi_awvalid,
    input  logic        m_axi_awready,

    output logic [31:0] m_axi_wdata,
    output logic [3:0]  m_axi_wstrb,
    output logic        m_axi_wvalid,
    input  logic        m_axi_wready,

    input  logic        m_axi_bvalid,
    output logic        m_axi_bready,

    output logic [9:0]  m_axi_araddr,
    output logic        m_axi_arvalid,
    input  logic        m_axi_arready,

    input  logic [31:0] m_axi_rdata,
    input  logic        m_axi_rvalid,
    output logic        m_axi_rready,

    output logic        init_done,
    output logic [3:0]  debug_state
);

    typedef enum logic [3:0] {
        S_IDLE,
        S_REFCLK,
        S_PLL_RST,
        S_PLL_REL,
        S_PLL_WAIT,
        S_TX_INIT,
        S_TX_WAIT,
        S_TX_EN,
        S_TMDS_EN,
        S_DONE
    } state_t;

    state_t state;

    assign m_axi_wstrb  = 4'hF;
    assign m_axi_bready = 1'b1;
    assign m_axi_rready = 1'b1;
    assign init_done    = (state == S_DONE);
    assign debug_state  = state;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= S_IDLE;
            m_axi_awvalid <= 0;
            m_axi_wvalid  <= 0;
            m_axi_arvalid <= 0;
        end else begin
            case (state)

            S_IDLE: begin
                m_axi_awaddr  <= 10'h010;
                m_axi_wdata   <= 32'h1;
                m_axi_awvalid <= 1;
                m_axi_wvalid  <= 1;
                state <= S_REFCLK;
            end

            S_REFCLK: if (m_axi_awready && m_axi_wready) begin
                m_axi_awvalid <= 0;
                m_axi_wvalid  <= 0;
                m_axi_awaddr  <= 10'h014;
                m_axi_wdata   <= 32'h1;
                m_axi_awvalid <= 1;
                m_axi_wvalid  <= 1;
                state <= S_PLL_RST;
            end

            S_PLL_RST: if (m_axi_awready && m_axi_wready) begin
                m_axi_wdata <= 32'h0;
                state <= S_PLL_REL;
            end

            S_PLL_REL: begin
                m_axi_araddr  <= 10'h018;
                m_axi_arvalid <= 1;
                state <= S_PLL_WAIT;
            end

            S_PLL_WAIT: if (m_axi_rvalid && m_axi_rdata[0]) begin
                m_axi_arvalid <= 0;
                m_axi_awaddr  <= 10'h01C;
                m_axi_wdata   <= 32'h1;
                m_axi_awvalid <= 1;
                m_axi_wvalid  <= 1;
                state <= S_TX_INIT;
            end

            S_TX_INIT: begin
                m_axi_araddr  <= 10'h020;
                m_axi_arvalid <= 1;
                state <= S_TX_WAIT;
            end

            S_TX_WAIT: if (m_axi_rvalid && m_axi_rdata[0]) begin
                m_axi_arvalid <= 0;
                m_axi_awaddr  <= 10'h070;
                m_axi_wdata   <= 32'h1;
                m_axi_awvalid <= 1;
                m_axi_wvalid  <= 1;
                state <= S_TX_EN;
            end

            S_TX_EN: begin
                m_axi_awaddr  <= 10'h340;
                m_axi_wdata   <= 32'h1;
                state <= S_TMDS_EN;
            end

            S_TMDS_EN: begin
                m_axi_awvalid <= 0;
                m_axi_wvalid  <= 0;
                state <= S_DONE;
            end

            endcase
        end
    end
endmodule
