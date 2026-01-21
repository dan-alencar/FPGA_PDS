################################################################################
# CONFIGURAÇÕES GERAIS E BITSTREAM
################################################################################
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 51.0 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]

################################################################################
# CLOCK DO SISTEMA (300 MHz Differential) - Bank 64
################################################################################
set_property PACKAGE_PIN AD21 [get_ports SYS_CLK_P]
set_property PACKAGE_PIN AE21 [get_ports SYS_CLK_N]
set_property IOSTANDARD DIFF_SSTL12 [get_ports SYS_CLK_P]
set_property IOSTANDARD DIFF_SSTL12 [get_ports SYS_CLK_N]

#create_clock -period 3.333 -name sys_clk_p [get_ports SYS_CLK_P]

################################################################################
# RESET DO SISTEMA (SYS_RST_N - Botão SW3/PB3) - Bank 65
################################################################################
# Nota: O botão é Active Low (0 = Reset). Se seu design espera Active High,
# certifique-se de ter usado um inversor no Block Design.
set_property PACKAGE_PIN V19 [get_ports SYS_RST_N]
set_property IOSTANDARD LVCMOS12 [get_ports SYS_RST_N]

################################################################################
# I2C CLOCK GENERATOR (U57/U58) - Configura 297MHz - Bank 85
################################################################################
set_property PACKAGE_PIN B9 [get_ports iic_clkgen_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports iic_clkgen_scl_io]

set_property PACKAGE_PIN A9 [get_ports iic_clkgen_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports iic_clkgen_sda_io]

################################################################################
# CONTROLE DO CHIP DE CLOCK (8T49N241) - Bank 66
################################################################################
# Erro NSTD-1 corrigido: Reset do chip gerador de clock (Ativo Baixo)
set_property PACKAGE_PIN G22 [get_ports {HDMI_8T49N241_RST_N}]
set_property IOSTANDARD LVCMOS18 [get_ports {HDMI_8T49N241_RST_N}]

################################################################################
# SINAIS DE CONTROLE HDMI - Bank 65
################################################################################
# Erro NSTD-1 corrigido: Enable do Level Shifter HDMI TX (Ativo Alto)
set_property PACKAGE_PIN Y23 [get_ports {HDMI_TX_EN[0]}]
set_property IOSTANDARD LVCMOS12 [get_ports {HDMI_TX_EN[0]}]

# Erro NSTD-1 corrigido: Hot Plug Detect (Entrada)
set_property PACKAGE_PIN W21 [get_ports HDMI_TX_HPD]
set_property IOSTANDARD LVCMOS12 [get_ports HDMI_TX_HPD]

################################################################################
# DEBUG GPIO (Mapeado para LED RGB Vermelho) - Bank 84
################################################################################
# Erro NSTD-1 corrigido: O gpo_0 foi mapeado para um LED para evitar erro
set_property PACKAGE_PIN AE15 [get_ports {gpo_0[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpo_0[0]}]

################################################################################
# HDMI PHY REFERENCE CLOCK (MGTREFCLK0) - Bank 226
################################################################################
set_property PACKAGE_PIN P7 [get_ports HDMI_CLK_8T49N241_P]
set_property PACKAGE_PIN P6 [get_ports HDMI_CLK_8T49N241_N]

create_clock -period 3.367 -name clk_ref_p [get_ports HDMI_CLK_8T49N241_P]

################################################################################
# HDMI TX DATA LANES (GTH Lanes 0, 1, 2) - Bank 226
################################################################################
# Lane 0 - Blue
set_property PACKAGE_PIN N5 [get_ports {hdmi_tx_p[0]}]
set_property PACKAGE_PIN N4 [get_ports {hdmi_tx_n[0]}]

# Lane 1 - Green
set_property PACKAGE_PIN L5 [get_ports {hdmi_tx_p[1]}]
set_property PACKAGE_PIN L4 [get_ports {hdmi_tx_n[1]}]

# Lane 2 - Red
set_property PACKAGE_PIN J5 [get_ports {hdmi_tx_p[2]}]
set_property PACKAGE_PIN J4 [get_ports {hdmi_tx_n[2]}]

################################################################################
# HDMI TX CLOCK LANE (Fabric IO - Bank 65)
################################################################################
# O Clock não sai pelo GTH nesta placa, sai por pinos diferenciais comuns.
set_property PACKAGE_PIN T25 [get_ports HDMI_TX_CLK_P]
set_property PACKAGE_PIN U25 [get_ports HDMI_TX_CLK_N]

# O Banco 65 é de 1.2V. O padrão DIFF_SSTL12 é usado para comunicar 
# com o chip retimer externo (SN65DP159 ou similar) que gera o sinal HDMI final.
set_property IOSTANDARD DIFF_SSTL12 [get_ports HDMI_TX_CLK_P]
set_property IOSTANDARD DIFF_SSTL12 [get_ports HDMI_TX_CLK_N]