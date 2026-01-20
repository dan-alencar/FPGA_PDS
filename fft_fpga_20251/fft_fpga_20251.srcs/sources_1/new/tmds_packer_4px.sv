module tmds_packer_4px (
    input  logic        clk,
    input  logic        rst,

    input  logic        de_in,

    input  logic [9:0]  tmds_r_in,
    input  logic [9:0]  tmds_g_in,
    input  logic [9:0]  tmds_b_in,

    output logic [39:0] tmds_r_out,
    output logic [39:0] tmds_g_out,
    output logic [39:0] tmds_b_out,

    output logic        de_out,
    output logic        valid_out
);

    logic [1:0] px_cnt;
    logic       de_acc;

    always_ff @(posedge clk) begin
        if (rst) begin
            px_cnt     <= 2'd0;
            valid_out  <= 1'b0;
            de_out     <= 1'b0;
            de_acc     <= 1'b1;

            tmds_r_out <= 40'd0;
            tmds_g_out <= 40'd0;
            tmds_b_out <= 40'd0;
        end else begin
            valid_out <= 1'b0;

            // Acumula DE dos 4 pixels
            de_acc <= de_acc & de_in;

            // Shift somente durante pixels válidos
            tmds_r_out <= {tmds_r_out[29:0], tmds_r_in};
            tmds_g_out <= {tmds_g_out[29:0], tmds_g_in};
            tmds_b_out <= {tmds_b_out[29:0], tmds_b_in};

            if (px_cnt == 2'd3) begin
                px_cnt    <= 2'd0;
                valid_out <= 1'b1;
                de_out    <= de_acc;
                de_acc    <= 1'b1; // reinicia para o próximo grupo
            end else begin
                px_cnt <= px_cnt + 1'b1;
            end
        end
    end

endmodule
