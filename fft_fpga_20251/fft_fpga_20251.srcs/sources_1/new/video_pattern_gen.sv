module video_pattern_gen #(
    parameter int H_ACTIVE = 1920,
    parameter int V_ACTIVE = 1080
)(
    input  logic        clk_video,
    input  logic [11:0] x,
    input  logic [10:0] y,
    input  logic        active_video,

    output logic [7:0] r,
    output logic [7:0] g,
    output logic [7:0] b
);

    always_ff @(posedge clk_video) begin
        if (!active_video) begin
            // Está fora da região ativa: tela preta
            r <= 8'd0;
            g <= 8'd0;
            b <= 8'd0;
        end else begin
            // Está na região ativa, desenhar barras
            if (x < H_ACTIVE/3) begin
                r <= 8'hFF;
                g <= 8'h00;
                b <= 8'h00;
            end 
            else if (x < (H_ACTIVE*2)/3) begin                
                r <= 8'h00;
                g <= 8'hFF;
                b <= 8'h00;
            end
            else begin                
                r <= 8'h00;
                g <= 8'h00;
                b <= 8'hFF;
            end
            
            if (x == 0 || y == 0 || x == H_ACTIVE-1 || y == V_ACTIVE-1) begin
                r <= 8'hFF;
                g <= 8'hFF;
                b <= 8'hFF;
            end
        end
    end

endmodule
