# Reset Button
set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS12} [get_ports rst_n]

# Clock
set_property -dict {PACKAGE_PIN AD21 IOSTANDARD LVDS} [get_ports clk_p]
set_property -dict {PACKAGE_PIN AE21 IOSTANDARD LVDS} [get_ports clk_n]
set_property DIFF_TERM_ADV TERM_NONE [get_ports clk_p]

# I2C connect to clock chip RC31008AQ71GL2
set_property -dict {PACKAGE_PIN B9 IOSTANDARD LVCMOS33} [get_ports scl]
set_property -dict {PACKAGE_PIN A9 IOSTANDARD LVCMOS33} [get_ports sda]

# 4 switches
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS12} [get_ports {cfg_sel[0]}]
set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVCMOS12} [get_ports {cfg_sel[1]}]
set_property -dict {PACKAGE_PIN P23 IOSTANDARD LVCMOS12} [get_ports {cfg_sel[2]}]
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS12} [get_ports {cfg_sel[3]}]

# button
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS12} [get_ports start_bt]

set_property DRIVE 4 [get_ports scl]
set_property DRIVE 4 [get_ports sda]

# QSPI Flash
#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
#set_property CONFIG_MODE   SPIx4             [current_design]
#set_property BITSTREAM.CONFIG.CONFIGRATE 50  [current_design]
#set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]