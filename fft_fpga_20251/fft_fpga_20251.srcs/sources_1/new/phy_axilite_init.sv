`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: phy_axilite_init
// Description:
//   Initializes the Video PHY Controller via AXI-Lite
//   VERSÃO CORRIGIDA - FSM sem conflitos de set/reset
//////////////////////////////////////////////////////////////////////////////////

module phy_axilite_init (
    input  logic        clk,
    input  logic        rst,

    // AXI-Lite Master Interface
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

    // =========================================================
    // FSM States
    // =========================================================
    typedef enum logic [4:0] {
        S_IDLE          = 5'b00000,
        S_WAIT_RESET    = 5'b00001,
        
        // Write TX_REFCLK_SEL
        S_WR_REFCLK_AW  = 5'b00010,
        S_WR_REFCLK_W   = 5'b00011,
        S_WR_REFCLK_B   = 5'b00100,
        
        // Write TX_PLL_RESET (assert)
        S_WR_PLL_RST_AW = 5'b00101,
        S_WR_PLL_RST_W  = 5'b00110,
        S_WR_PLL_RST_B  = 5'b00111,
        
        // Write TX_PLL_RESET (deassert)
        S_WR_PLL_REL_AW = 5'b01000,
        S_WR_PLL_REL_W  = 5'b01001,
        S_WR_PLL_REL_B  = 5'b01010,
        
        // Poll PLL_LOCK
        S_POLL_PLL_AR   = 5'b01011,
        S_POLL_PLL_R    = 5'b01100,
        
        // Write TX_INIT
        S_WR_TX_INIT_AW = 5'b01101,
        S_WR_TX_INIT_W  = 5'b01110,
        S_WR_TX_INIT_B  = 5'b01111,
        
        // Poll TX_READY
        S_POLL_TX_AR    = 5'b10000,
        S_POLL_TX_R     = 5'b10001,
        
        // Write TX_ENABLE
        S_WR_TX_EN_AW   = 5'b10010,
        S_WR_TX_EN_W    = 5'b10011,
        S_WR_TX_EN_B    = 5'b10100,
        
        // Write TMDS_ENABLE  
        S_WR_TMDS_AW    = 5'b10101,
        S_WR_TMDS_W     = 5'b10110,
        S_WR_TMDS_B     = 5'b10111,
        
        S_DONE          = 5'b11111
    } state_t;

    state_t state, next_state;

    // =========================================================
    // Video PHY Controller Register Map
    // (Verificar no PG230 - Video PHY Controller Product Guide)
    // =========================================================
    localparam ADDR_TX_REFCLK_SEL = 10'h010;
    localparam ADDR_TX_PLL_RESET  = 10'h014;
    localparam ADDR_TX_PLL_LOCK   = 10'h018;
    localparam ADDR_TX_INIT       = 10'h01C;
    localparam ADDR_TX_READY      = 10'h020;
    localparam ADDR_TX_ENABLE     = 10'h070;
    localparam ADDR_TMDS_ENABLE   = 10'h340;

    // =========================================================
    // Timeout counter for polling
    // =========================================================
    logic [19:0] timeout_cnt;
    logic timeout;
    
    always_ff @(posedge clk) begin
        if (rst || (state != next_state))
            timeout_cnt <= '0;
        else if (!timeout)
            timeout_cnt <= timeout_cnt + 1'b1;
    end
    
    assign timeout = (timeout_cnt == 20'hFFFFF);  // ~10ms @ 100MHz

    // =========================================================
    // FSM Sequential Logic
    // =========================================================
    always_ff @(posedge clk) begin
        if (rst)
            state <= S_IDLE;
        else
            state <= next_state;
    end

    // =========================================================
    // FSM Combinational Logic
    // =========================================================
    always_comb begin
        next_state = state;
        
        case (state)
            S_IDLE:          next_state = S_WAIT_RESET;
            S_WAIT_RESET:    next_state = S_WR_REFCLK_AW;  // Small delay after reset
            
            // Write TX_REFCLK_SEL = 1
            S_WR_REFCLK_AW:  if (m_axi_awready) next_state = S_WR_REFCLK_W;
            S_WR_REFCLK_W:   if (m_axi_wready)  next_state = S_WR_REFCLK_B;
            S_WR_REFCLK_B:   if (m_axi_bvalid)  next_state = S_WR_PLL_RST_AW;
            
            // Write TX_PLL_RESET = 1 (assert)
            S_WR_PLL_RST_AW: if (m_axi_awready) next_state = S_WR_PLL_RST_W;
            S_WR_PLL_RST_W:  if (m_axi_wready)  next_state = S_WR_PLL_RST_B;
            S_WR_PLL_RST_B:  if (m_axi_bvalid)  next_state = S_WR_PLL_REL_AW;
            
            // Write TX_PLL_RESET = 0 (deassert)
            S_WR_PLL_REL_AW: if (m_axi_awready) next_state = S_WR_PLL_REL_W;
            S_WR_PLL_REL_W:  if (m_axi_wready)  next_state = S_WR_PLL_REL_B;
            S_WR_PLL_REL_B:  if (m_axi_bvalid)  next_state = S_POLL_PLL_AR;
            
            // Poll TX_PLL_LOCK until bit[0] = 1
            S_POLL_PLL_AR:   if (m_axi_arready) next_state = S_POLL_PLL_R;
            S_POLL_PLL_R: begin
                if (m_axi_rvalid) begin
                    if (m_axi_rdata[0])
                        next_state = S_WR_TX_INIT_AW;
                    else if (timeout)
                        next_state = S_DONE;  // Timeout - falha
                    else
                        next_state = S_POLL_PLL_AR;  // Retry
                end
            end
            
            // Write TX_INIT = 1
            S_WR_TX_INIT_AW: if (m_axi_awready) next_state = S_WR_TX_INIT_W;
            S_WR_TX_INIT_W:  if (m_axi_wready)  next_state = S_WR_TX_INIT_B;
            S_WR_TX_INIT_B:  if (m_axi_bvalid)  next_state = S_POLL_TX_AR;
            
            // Poll TX_READY until bit[0] = 1
            S_POLL_TX_AR:    if (m_axi_arready) next_state = S_POLL_TX_R;
            S_POLL_TX_R: begin
                if (m_axi_rvalid) begin
                    if (m_axi_rdata[0])
                        next_state = S_WR_TX_EN_AW;
                    else if (timeout)
                        next_state = S_DONE;  // Timeout - falha
                    else
                        next_state = S_POLL_TX_AR;  // Retry
                end
            end
            
            // Write TX_ENABLE = 1
            S_WR_TX_EN_AW:   if (m_axi_awready) next_state = S_WR_TX_EN_W;
            S_WR_TX_EN_W:    if (m_axi_wready)  next_state = S_WR_TX_EN_B;
            S_WR_TX_EN_B:    if (m_axi_bvalid)  next_state = S_WR_TMDS_AW;
            
            // Write TMDS_ENABLE = 1
            S_WR_TMDS_AW:    if (m_axi_awready) next_state = S_WR_TMDS_W;
            S_WR_TMDS_W:     if (m_axi_wready)  next_state = S_WR_TMDS_B;
            S_WR_TMDS_B:     if (m_axi_bvalid)  next_state = S_DONE;
            
            S_DONE:          next_state = S_DONE;
            
            default:         next_state = S_IDLE;
        endcase
    end

    // =========================================================
    // Output Logic
    // =========================================================
    
    // Write Strobe sempre ativo
    assign m_axi_wstrb = 4'hF;
    
    // Sempre aceitar responses
    assign m_axi_bready = 1'b1;
    assign m_axi_rready = 1'b1;
    
    // Status
    assign init_done   = (state == S_DONE);
    assign debug_state = state[3:0];
    
    // AXI-Lite Write Address Channel
    always_comb begin
        m_axi_awvalid = 1'b0;
        m_axi_awaddr  = '0;
        
        case (state)
            S_WR_REFCLK_AW:  begin m_axi_awvalid = 1'b1; m_axi_awaddr = ADDR_TX_REFCLK_SEL; end
            S_WR_PLL_RST_AW: begin m_axi_awvalid = 1'b1; m_axi_awaddr = ADDR_TX_PLL_RESET;  end
            S_WR_PLL_REL_AW: begin m_axi_awvalid = 1'b1; m_axi_awaddr = ADDR_TX_PLL_RESET;  end
            S_WR_TX_INIT_AW: begin m_axi_awvalid = 1'b1; m_axi_awaddr = ADDR_TX_INIT;       end
            S_WR_TX_EN_AW:   begin m_axi_awvalid = 1'b1; m_axi_awaddr = ADDR_TX_ENABLE;     end
            S_WR_TMDS_AW:    begin m_axi_awvalid = 1'b1; m_axi_awaddr = ADDR_TMDS_ENABLE;   end
            default: ;
        endcase
    end
    
    // AXI-Lite Write Data Channel
    always_comb begin
        m_axi_wvalid = 1'b0;
        m_axi_wdata  = '0;
        
        case (state)
            S_WR_REFCLK_W:  begin m_axi_wvalid = 1'b1; m_axi_wdata = 32'h1; end
            S_WR_PLL_RST_W: begin m_axi_wvalid = 1'b1; m_axi_wdata = 32'h1; end  // Assert
            S_WR_PLL_REL_W: begin m_axi_wvalid = 1'b1; m_axi_wdata = 32'h0; end  // Deassert
            S_WR_TX_INIT_W: begin m_axi_wvalid = 1'b1; m_axi_wdata = 32'h1; end
            S_WR_TX_EN_W:   begin m_axi_wvalid = 1'b1; m_axi_wdata = 32'h1; end
            S_WR_TMDS_W:    begin m_axi_wvalid = 1'b1; m_axi_wdata = 32'h1; end
            default: ;
        endcase
    end
    
    // AXI-Lite Read Address Channel
    always_comb begin
        m_axi_arvalid = 1'b0;
        m_axi_araddr  = '0;
        
        case (state)
            S_POLL_PLL_AR: begin m_axi_arvalid = 1'b1; m_axi_araddr = ADDR_TX_PLL_LOCK; end
            S_POLL_TX_AR:  begin m_axi_arvalid = 1'b1; m_axi_araddr = ADDR_TX_READY;    end
            default: ;
        endcase
    end

endmodule