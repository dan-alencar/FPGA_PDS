####################################################################################################
# HDMI TX Constraints - AUBoard 15P (Artix UltraScale+)
# HDMI 1.4 / TMDS
# TMDS clock transmitted on 4th GTH lane
####################################################################################################

###################################
# USER RESET
###################################
set_property PACKAGE_PIN R21 [get_ports rst]
set_property IOSTANDARD LVCMOS12 [get_ports rst]

###################################
# GTH REFERENCE CLOCK (ONLY REFCLK)
###################################
set_property PACKAGE_PIN P7 [get_ports clk_ref_p]
set_property PACKAGE_PIN P6 [get_ports clk_ref_n]

###################################
# HDMI TMDS - GTH DATA LANES
###################################

# Lane 0 - Blue
set_property PACKAGE_PIN N5 [get_ports {hdmi_tx_p[0]}]
set_property PACKAGE_PIN N4 [get_ports {hdmi_tx_n[0]}]

# Lane 1 - Green
set_property PACKAGE_PIN L5 [get_ports {hdmi_tx_p[1]}]
set_property PACKAGE_PIN L4 [get_ports {hdmi_tx_n[1]}]

# Lane 2 - Red
set_property PACKAGE_PIN J5 [get_ports {hdmi_tx_p[2]}]
set_property PACKAGE_PIN J4 [get_ports {hdmi_tx_n[2]}]

# Lane 3 - TMDS Clock  ❗ NÃO É REFCLK ❗
set_property PACKAGE_PIN H5 [get_ports {hdmi_tx_p[3]}]
set_property PACKAGE_PIN H4 [get_ports {hdmi_tx_n[3]}]

###################################
# LEDs
###################################
set_property PACKAGE_PIN A10  [get_ports {led_debug[0]}]
set_property PACKAGE_PIN AE15 [get_ports {led_debug[1]}]
set_property PACKAGE_PIN AD15 [get_ports {led_debug[2]}]
set_property PACKAGE_PIN AF13 [get_ports {led_debug[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports led_debug[0]]
set_property IOSTANDARD LVCMOS18 [get_ports led_debug[1]]
set_property IOSTANDARD LVCMOS18 [get_ports led_debug[2]]
set_property IOSTANDARD LVCMOS18 [get_ports led_debug[3]]
