`timescale 1ns / 1ps

module packet_decoder(
    input  logic clk,
    input  logic rst,
    input  logic [7:0] rx_byte,
    input  logic rx_valid,
    
    // Interface Interna
    output logic note_on_pulse,
    output logic [7:0] note_number,
    output logic [7:0] velocity,
    output logic led_toggle // Debug visual
);

    typedef enum logic [2:0] {WAIT_HEADER, GET_CMD, GET_D1, GET_D2} state_t;
    state_t state;

    logic [7:0] cmd_reg;
    logic [7:0] d1_reg;
    
    // Constantes do App.py
    localparam logic [7:0] HEADER = 8'hAA;
    localparam logic [7:0] CMD_NOTE_ON = 8'h01;
    localparam logic [7:0] CMD_NOTE_OFF = 8'h02;

    always_ff @(posedge clk) begin
        if (rst) begin
            state <= WAIT_HEADER;
            note_on_pulse <= 0;
            note_number <= 0;
            velocity <= 0;
            led_toggle <= 0;
        end else begin
            note_on_pulse <= 0; // Default: 0

            if (rx_valid) begin
                case (state)
                    WAIT_HEADER: begin
                        if (rx_byte == HEADER) state <= GET_CMD;
                    end
                    GET_CMD: begin
                        cmd_reg <= rx_byte;
                        state <= GET_D1;
                    end
                    GET_D1: begin
                        d1_reg <= rx_byte;
                        state <= GET_D2;
                    end
                    GET_D2: begin
                        // Byte D2 recebido, processar comando
                        if (cmd_reg == CMD_NOTE_ON) begin
                            note_number <= d1_reg;
                            velocity <= rx_byte; // D2 is velocity
                            note_on_pulse <= 1;
                            led_toggle <= ~led_toggle;
                        end 
                        else if (cmd_reg == CMD_NOTE_OFF) begin
                            note_number <= d1_reg;
                            velocity <= 0;
                            note_on_pulse <= 1;
                        end
                        // Adicionar outros comandos (Cutoff, ADSR) aqui no futuro
                        
                        state <= WAIT_HEADER;
                    end
                    default: state <= WAIT_HEADER;
                endcase
            end
        end
    end
endmodule