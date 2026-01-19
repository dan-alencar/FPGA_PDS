module video_timing_gen #(
    // 1920x1080 @ 60 Hz (CEA-861)
    parameter int H_ACTIVE = 1920,
    parameter int H_FP     = 88,
    parameter int H_SYNC   = 44,
    parameter int H_BP     = 148,

    parameter int V_ACTIVE = 1080,
    parameter int V_FP     = 4,
    parameter int V_SYNC   = 5,
    parameter int V_BP     = 36
)(
    input  logic clk_video,
    input  logic rst,

    output logic [11:0] x,   // até 2200
    output logic [10:0] y,   // até 1125

    output logic active_video,
    output logic hsync,
    output logic vsync,
    output logic sof
);

    localparam int H_TOTAL = H_ACTIVE + H_FP + H_SYNC + H_BP;
    localparam int V_TOTAL = V_ACTIVE + V_FP + V_SYNC + V_BP;
    
    always_ff @(posedge clk_video) begin
        if (rst) begin
            x <= 0;
            y <= 0;
        end else begin
            if (x == H_TOTAL-1) begin
                x <= 0;
                if (y == V_TOTAL-1)
                    y <= 0;
                else
                    y <= y + 1;
            end else begin
                x <= x + 1;
            end
        end
    end
    
    // O vídeo (em transmissão) está na área visível:
    assign active_video = (x < H_ACTIVE) && (y < V_ACTIVE);
    
    // O vídeo está na região de sincronização horizontal (ativo baixo):
    assign hsync = ~((x >= H_ACTIVE + H_FP) && (x <  H_ACTIVE + H_FP + H_SYNC));
    
    // O vídeo está na região de sincronização vertical (ativo baixo):
    assign vsync = ~((y >= V_ACTIVE + V_FP) && (y <  V_ACTIVE + V_FP + V_SYNC));
    
    // Start of frame
    assign sof = (x == 0) && (y == 0);

endmodule