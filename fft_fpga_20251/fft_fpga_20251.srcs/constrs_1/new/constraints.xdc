# --- SYSTEM CLOCK (300 MHz Differential - Bank 64) ---

set_property PACKAGE_PIN AE21       [get_ports "SYS_CLK_N"]
set_property PACKAGE_PIN AD21       [get_ports "SYS_CLK_P"]
set_property IOSTANDARD DIFF_SSTL12 [get_ports "SYS_CLK_N"]
set_property IOSTANDARD DIFF_SSTL12 [get_ports "SYS_CLK_P"]

# Cria a constraint de clock para o Vivado saber a frequência (300MHz = 3.333ns)
create_clock -period 3.333 -name sys_clk_p [get_ports SYS_CLK_P]

# --- SYSTEM RESET (Active Low - PB3 - Bank 65) ---

set_property PACKAGE_PIN V19        [get_ports "SYS_RST_N"]
set_property IOSTANDARD LVCMOS12    [get_ports "SYS_RST_N"]

# --- UART (Bank 84 - 1.8V) ---

set_property PACKAGE_PIN AF15       [get_ports "UART_TX"]
set_property PACKAGE_PIN AF14       [get_ports "UART_RX"]
set_property IOSTANDARD LVCMOS18    [get_ports "UART_TX"]
set_property IOSTANDARD LVCMOS18    [get_ports "UART_RX"]

# --- RGB LED 1 (Bank 84 - 1.8V) ---

set_property PACKAGE_PIN AE15       [get_ports "LED_RGB_R1"]
set_property PACKAGE_PIN AD15       [get_ports "LED_RGB_G1"]
set_property PACKAGE_PIN AF13       [get_ports "LED_RGB_B1"]
set_property IOSTANDARD LVCMOS18    [get_ports "LED_RGB_R1"]
set_property IOSTANDARD LVCMOS18    [get_ports "LED_RGB_G1"]
set_property IOSTANDARD LVCMOS18    [get_ports "LED_RGB_B1"]

# Configuração de Bitstream (Opcional, mas recomendado para QSPI boot)
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]