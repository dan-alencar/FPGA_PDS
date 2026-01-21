####################################################################################################
# HDMI TX Constraints - AUBoard 15P - VERSÃO 5 (ARQUITETURA CORRETA)
#
# Baseado na documentação:
# - 3 canais GTH para dados TMDS
# - 1 saída LVDS para clock TMDS (T25/U25)
# - 8T49N241 gera clock de referência via I2C config
####################################################################################################

####################################################################################################
# DEVICE CONFIGURATION
####################################################################################################
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 51.0 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

####################################################################################################
# GT REFERENCE CLOCK (do 8T49N241 via MGTREFCLK0_226)
####################################################################################################
create_clock -period 3.367 -name gt_refclk [get_ports mgtrefclk_p]

####################################################################################################
# LOC para IBUFDS_GTE4
####################################################################################################
set_property LOC GTHE4_COMMON_X0Y2 [get_cells -hierarchical -filter {REF_NAME == IBUFDS_GTE4}]

####################################################################################################
# RESET
####################################################################################################
set_property PACKAGE_PIN K10 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PULLDOWN true [get_ports rst]

####################################################################################################
# HDMI TMDS CLOCK OUTPUT (LVDS - vai para retimer U34)
# Este é o clock que acompanha os dados TMDS
####################################################################################################
set_property PACKAGE_PIN T25 [get_ports hdmi_tx_clk_p]
set_property PACKAGE_PIN U25 [get_ports hdmi_tx_clk_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports hdmi_tx_clk_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports hdmi_tx_clk_n]

####################################################################################################
# I2C PARA 8T49N241 (Bank 65 - LVCMOS12)
####################################################################################################
set_property PACKAGE_PIN R23 [get_ports hdmi_ctl_sda]
set_property PACKAGE_PIN R22 [get_ports hdmi_ctl_scl]
set_property IOSTANDARD LVCMOS12 [get_ports hdmi_ctl_sda]
set_property IOSTANDARD LVCMOS12 [get_ports hdmi_ctl_scl]
set_property PULLUP true [get_ports hdmi_ctl_sda]
set_property PULLUP true [get_ports hdmi_ctl_scl]

####################################################################################################
# HDMI CONTROL SIGNALS (Bank 65 - LVCMOS12)
####################################################################################################
set_property PACKAGE_PIN Y23 [get_ports hdmi_tx_en]
set_property IOSTANDARD LVCMOS12 [get_ports hdmi_tx_en]

set_property PACKAGE_PIN W21 [get_ports hdmi_tx_hpd]
set_property IOSTANDARD LVCMOS12 [get_ports hdmi_tx_hpd]

####################################################################################################
# 8T49N241 CLOCK GENERATOR CONTROL (Bank 66 - LVCMOS18)
####################################################################################################
set_property PACKAGE_PIN G22 [get_ports clk_8t49_rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports clk_8t49_rst_n]

set_property PACKAGE_PIN F22 [get_ports clk_8t49_lol]
set_property IOSTANDARD LVCMOS18 [get_ports clk_8t49_lol]

####################################################################################################
# DEBUG LEDs (Bank 85 - LVCMOS33)
####################################################################################################
set_property PACKAGE_PIN A10 [get_ports {led_debug[0]}]
set_property PACKAGE_PIN B10 [get_ports {led_debug[1]}]
set_property PACKAGE_PIN B11 [get_ports {led_debug[2]}]
set_property PACKAGE_PIN C11 [get_ports {led_debug[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {led_debug[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_debug[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_debug[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_debug[3]}]

####################################################################################################
# TIMING
####################################################################################################
set_false_path -from [get_ports rst]
set_false_path -from [get_ports hdmi_tx_hpd]
set_false_path -from [get_ports clk_8t49_lol]
set_false_path -to [get_ports led_debug*]
set_false_path -to [get_ports hdmi_tx_en]
set_false_path -to [get_ports clk_8t49_rst_n]
set_false_path -to [get_ports hdmi_ctl_*]
set_false_path -from [get_ports hdmi_ctl_*]

# STARTUPE3 clock
create_clock -period 15.385 -name cfg_clk [get_pins startupe3_inst/CFGCLK]
set_false_path -from [get_clocks cfg_clk] -to [get_clocks -of_objects [get_pins -hierarchical -filter {NAME =~ *TXOUTCLK*}]]
set_false_path -from [get_clocks -of_objects [get_pins -hierarchical -filter {NAME =~ *TXOUTCLK*}]] -to [get_clocks cfg_clk]

####################################################################################################
# NOTAS:
# 
# 1. GTH lanes para dados TMDS (gerenciados pelo IP):
#    - HDMI_TX0: N5/N4 (Blue)
#    - HDMI_TX1: L5/L4 (Green)  
#    - HDMI_TX2: J5/J4 (Red)
#
# 2. Clock TMDS via LVDS (NÃO GTH):
#    - HDMI_TX_CLK: T25/U25
#
# 3. O IP deve ser configurado para 3 CANAIS, não 4!
#    - C_Tx_No_Of_Channels = 3
#    - CHANNEL_ENABLE = "X0Y8 X0Y9 X0Y10" (sem X0Y11)
#    - C_Use_GT_CH4_HDMI = false
#
####################################################################################################