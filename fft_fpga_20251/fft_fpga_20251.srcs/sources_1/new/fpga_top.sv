`timescale 1ns / 1ps

module fpga_top (
    input  wire SYS_CLK_P,
    input  wire SYS_CLK_N,
    
    input  wire SYS_RST_N,
    
    input  wire UART_RX,
    output wire UART_TX,
    
    output wire LED_RGB_R1, // Red LED
    output wire LED_RGB_G1, // Green LED
    output wire LED_RGB_B1  // Blue LED
);

    logic clk_sys; 
    logic locked; // Sinal crítico: indica que o PLL está estável

    // Instanciação do IP Clock Wizard
    // IMPORTANTE: No Vivado, verifique se o "Reset Type" está como "Active Low"
    // para usar .resetn. Se estiver "Active High", a porta será .reset.
    clk_wiz_0 clock_manager (
        .clk_out1(clk_sys),     // Saída configurada para 100 MHz
        .resetn(SYS_RST_N),     // Reset Active Low vindo do botão
        .locked(locked),        // Conectado para segurar o reset
        .clk_in1_p(SYS_CLK_P),  // Entrada 300 MHz
        .clk_in1_n(SYS_CLK_N)   // Entrada 300 MHz
    );
    
    // --- Reset Logic ---
    // O sistema fica em Reset se:
    // 1. O botão for apertado (~SYS_RST_N)
    // 2. OU o PLL ainda não travou a frequência (~locked)
    wire rst;
    assign rst = ~SYS_RST_N || ~locked;

    // --- 2. Geração de Strobe de Áudio (44.1 kHz) ---
    // Cálculo para 100 MHz:
    // 100.000.000 / 44.100 ≈ 2267.57 -> Usamos 2267
    logic [11:0] audio_tick_cnt; // 12 bits é suficiente para contar até 2267 (max 4095)
    logic audio_tick;
    
    always_ff @(posedge clk_sys) begin
        if (rst) begin
            audio_tick_cnt <= 0;
            audio_tick <= 0;
        end else begin
            if (audio_tick_cnt >= 2267) begin // CORRIGIDO PARA 100MHz
                audio_tick_cnt <= 0;
                audio_tick <= 1;
            end else begin
                audio_tick_cnt <= audio_tick_cnt + 1;
                audio_tick <= 0;
            end
        end
    end

    // --- 3. Heartbeat LED (Verde) ---
    // Pisca para mostrar que o clock está vivo
    // Em 100 MHz, bit 26 alterna a cada ~0.67 segundos (2^26 / 100e6)
    logic [26:0] hb_cnt; 
    always_ff @(posedge clk_sys) begin
        if (rst) hb_cnt <= 0;
        else hb_cnt <= hb_cnt + 1;
    end
    assign LED_RGB_G1 = hb_cnt[26]; 

    // --- 4. UART Rx & Decoder ---
    wire [7:0] rx_byte;
    wire rx_ready;
    wire note_pulse;
    wire [7:0] note_val;
    wire [7:0] velocity;
    wire toggle_led;

    uart_rx #(
        .CLK_FREQ(100000000), // CORRIGIDO: Parâmetro crucial para 115200 funcionar
        .BAUD_RATE(115200)
    ) u_rx (
        .clk(clk_sys),
        .rst(rst),
        .rx_pin(UART_RX),
        .rx_data(rx_byte),
        .rx_ready(rx_ready)
    );

    packet_decoder u_dec (
        .clk(clk_sys),
        .rst(rst),
        .rx_byte(rx_byte),
        .rx_valid(rx_ready),
        .note_on_pulse(note_pulse),
        .note_number(note_val),
        .velocity(velocity),
        .led_toggle(toggle_led)
    );

    // Feedback Visual: Vermelho alterna estado ao receber Nota On válida
    assign LED_RGB_R1 = toggle_led;
    assign LED_RGB_B1 = 0; // Desligado

    // --- 5. Oscilador (Motor de Áudio) ---
    wire signed [15:0] audio_sample;
    
    dds_oscillator u_dds (
        .clk(clk_sys),
        .rst(rst),
        .audio_tick(audio_tick),
        .note_in(note_val),
        .note_valid(note_pulse),
        .audio_out(audio_sample)
    );

    // --- 6. Loopback / Saída ---
    // Loopback para teste: O que chega no RX sai no TX
    assign UART_TX = UART_RX; 

endmodule