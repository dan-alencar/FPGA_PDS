`timescale 1ns / 1ps

module tmds_encoder (
    input  logic pclk,
    input  logic rst,
    input  logic [7:0] data_in,  // 8-bit Color
    input  logic [1:0] c_in,     // Control Signals (Hsync, Vsync) - Só usado no Canal BLUE
    input  logic de,             // Data Enable (Active Video)
    output logic [9:0] tmds_out  // 10-bit Symbol
);

    // 1. Lógica Combinacional: Minimizar Transições (XOR/XNOR)
    logic [3:0] n1_d;
    always_comb begin
        n1_d = 0;
        for(int i=0; i<8; i++) n1_d += data_in[i];
    end

    logic [8:0] q_m;
    always_comb begin
        q_m[0] = data_in[0];
        if ((n1_d > 4) || ((n1_d == 4) && (data_in[0] == 0))) begin
            for (int i=1; i<8; i++) q_m[i] = ~(q_m[i-1] ^ data_in[i]);
            q_m[8] = 0; // Option 2 (XNOR)
        end else begin
            for (int i=1; i<8; i++) q_m[i] = q_m[i-1] ^ data_in[i];
            q_m[8] = 1; // Option 1 (XOR)
        end
    end

    // 2. Lógica Sequencial: DC Balancing
    // Este bloco decide se inverte o q_m para manter o saldo de 0s e 1s neutro
    
    // Contagem de 1s e 0s no q_m (excluindo bit 8)
    logic [3:0] n1_q_m, n0_q_m;
    always_comb begin
        n1_q_m = 0;
        for(int i=0; i<8; i++) n1_q_m += q_m[i];
        n0_q_m = 8 - n1_q_m;
    end

    logic signed [5:0] cnt; // Disparity Counter
    logic signed [5:0] diff_q_m;
    
    always_comb diff_q_m = signed'({2'b0, n1_q_m}) - signed'({2'b0, n0_q_m});

    always_ff @(posedge pclk) begin
        if (rst) begin
            cnt <= 0;
            tmds_out <= 0;
        end else begin
            if (de) begin
                if ((cnt == 0) || (n1_q_m == n0_q_m)) begin
                    tmds_out[9]   <= ~q_m[8];
                    tmds_out[8]   <= q_m[8];
                    tmds_out[7:0] <= (q_m[8]) ? q_m[7:0] : ~q_m[7:0];
                    if (q_m[8] == 0) cnt <= cnt - diff_q_m;
                    else             cnt <= cnt + diff_q_m;
                end else begin
                    if (((cnt > 0) && (n1_q_m > n0_q_m)) || ((cnt < 0) && (n0_q_m > n1_q_m))) begin
                        tmds_out[9]   <= 1;
                        tmds_out[8]   <= q_m[8];
                        tmds_out[7:0] <= ~q_m[7:0];
                        cnt <= cnt + (signed'({q_m[8], 1'b0}) + (n0_q_m - n1_q_m));
                    end else begin
                        tmds_out[9]   <= 0;
                        tmds_out[8]   <= q_m[8];
                        tmds_out[7:0] <= q_m[7:0];
                        cnt <= cnt - (signed'({ ~q_m[8], 1'b0}) + (n1_q_m - n0_q_m));
                    end
                end
            end else begin
                // Control Period (Blanking)
                cnt <= 0;
                case (c_in)
                    2'b00: tmds_out <= 10'b1101010100;
                    2'b01: tmds_out <= 10'b0010101011;
                    2'b10: tmds_out <= 10'b0101010100;
                    2'b11: tmds_out <= 10'b1010101011;
                endcase
            end
        end
    end

endmodule