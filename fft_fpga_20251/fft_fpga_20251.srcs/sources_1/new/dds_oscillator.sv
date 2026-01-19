`timescale 1ns / 1ps

module dds_oscillator (
    input  logic clk,
    input  logic rst,
    input  logic audio_tick,    // Enable a 44.1 kHz
    input  logic [7:0] note_in, // Nota MIDI
    input  logic note_valid,
    output logic signed [15:0] audio_out
);

    // --- Tuning Word Calculation (Simplificado para Demo) ---
    // Formula: Inc = Freq * 2^32 / F_Sample
    // Exemplo: Note 60 (261.62 Hz) @ 44100 Hz Sample Rate
    // Inc = 261.62 * 4294967296 / 44100 = ~25,479,725
    
    logic [31:0] phase_inc;
    logic [7:0]  active_note;
    
    always_ff @(posedge clk) begin
        if (note_valid) active_note <= note_in;
    end

    // LUT simples para algumas notas (expandir depois ou usar módulo DSP)
    always_comb begin
        case(active_note)
            8'd60: phase_inc = 32'd25479725; // C4
            8'd62: phase_inc = 32'd28594248; // D4
            8'd64: phase_inc = 32'd32090289; // E4
            8'd65: phase_inc = 32'd33998631; // F4
            8'd67: phase_inc = 32'd38155554; // G4
            8'd69: phase_inc = 32'd42820573; // A4
            8'd71: phase_inc = 32'd48056469; // B4
            8'd72: phase_inc = 32'd50959451; // C5
            default: phase_inc = 32'd0;      // Silêncio
        endcase
    end

    // --- Acumulador de Fase ---
    logic [31:0] phase_acc;
    
    always_ff @(posedge clk) begin
        if (rst) begin
            phase_acc <= 0;
            audio_out <= 0;
        end else if (audio_tick) begin
            phase_acc <= phase_acc + phase_inc;
            
            // Leitura da ROM (Top 10 bits = 1024 amostras)
            audio_out <= sine_rom[phase_acc[31:22]];
        end
    end

    // --- Memória Senoidal (ROM) ---
    logic signed [15:0] sine_rom [0:1023];
    initial begin
        $readmemh("sine_lut.mem", sine_rom);
    end

endmodule