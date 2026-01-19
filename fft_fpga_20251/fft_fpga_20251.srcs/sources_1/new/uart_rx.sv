`timescale 1ns / 1ps

module uart_rx #(
    parameter int CLK_FREQ = 100000000, // Clock do sistema (será 100MHz vindo do PLL)
    parameter int BAUD_RATE = 115200
)(
    input  logic clk,
    input  logic rst,
    input  logic rx_pin,
    output logic [7:0] rx_data,
    output logic rx_ready
);

    localparam int CLKS_PER_BIT = CLK_FREQ / BAUD_RATE;
    localparam int HALF_BIT     = CLKS_PER_BIT / 2;
    
    enum logic [2:0] {IDLE, START, DATA, STOP, CLEANUP} state;
    logic [31:0] clk_count; // Aumentado para suportar clocks rápidos
    logic [2:0]  bit_index;
    logic [7:0]  shifter;
    
    // Sincronizador de 2 estágios para evitar metaestabilidade no pino RX
    logic rx_sync_1, rx_sync_2;
    always_ff @(posedge clk) begin
        rx_sync_1 <= rx_pin;
        rx_sync_2 <= rx_sync_1;
    end
    logic rx_stable;
    assign rx_stable = rx_sync_2;

    always_ff @(posedge clk) begin
        if (rst) begin
            state <= IDLE;
            rx_ready <= 0;
            clk_count <= 0;
            bit_index <= 0;
            rx_data <= 0;
        end else begin
            case (state)
                IDLE: begin
                    rx_ready <= 0;
                    clk_count <= 0;
                    if (rx_stable == 0) // Start bit (falling edge)
                        state <= START;
                end

                START: begin
                    if (clk_count == HALF_BIT) begin
                        if (rx_stable == 0) begin
                            clk_count <= 0;
                            state <= DATA;
                        end else begin
                            state <= IDLE; // Falso start
                        end
                    end else begin
                        clk_count <= clk_count + 1;
                    end
                end

                DATA: begin
                    if (clk_count == CLKS_PER_BIT) begin
                        clk_count <= 0;
                        shifter[bit_index] <= rx_stable;
                        if (bit_index < 7)
                            bit_index <= bit_index + 1;
                        else begin
                            bit_index <= 0;
                            state <= STOP;
                        end
                    end else begin
                        clk_count <= clk_count + 1;
                    end
                end

                STOP: begin
                    if (clk_count == CLKS_PER_BIT) begin
                        state <= CLEANUP;
                        rx_data <= shifter;
                        rx_ready <= 1;
                    end else begin
                        clk_count <= clk_count + 1;
                    end
                end

                CLEANUP: begin
                    state <= IDLE;
                    rx_ready <= 0;
                end
                
                default: state <= IDLE;
            endcase
        end
    end
endmodule