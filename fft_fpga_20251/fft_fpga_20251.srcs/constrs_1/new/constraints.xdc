####################################################################################################################################################################################
# HDMI TX Constraints for AUBoard 15P (Artix UltraScale+)
# Based on AUB-15P-DK-1-01-01-Master.xdc
####################################################################################################################################################################################

####################################################################################################################################################################################
# USER RESET - Using Push Button PB1 (Active-High) - ACTIVE-HIGH with BUTTON PRESS
####################################################################################################################################################################################
set_property PACKAGE_PIN R21        [get_ports rst]
set_property IOSTANDARD LVCMOS12    [get_ports rst]

####################################################################################################################################################################################
# HDMI TX TMDS CLOCK OUTPUT - ACTIVE-HIGH ACTIVE-LOW
# These are regular I/O pins (Bank 65), NOT GTH pins
# The Video PHY Controller outputs the TMDS clock through these pins via OBUFDS
####################################################################################################################################################################################
set_property PACKAGE_PIN T25        [get_ports {hdmi_tx_clk_p}]
set_property PACKAGE_PIN U25        [get_ports {hdmi_tx_clk_n}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {hdmi_tx_clk_p}]
set_property IOSTANDARD DIFF_SSTL12 [get_ports {hdmi_tx_clk_n}]

####################################################################################################################################################################################
# HDMI Reference Clock from 8T49N241 Clock Generator
# These are GTH REFCLK pins - no IOSTANDARD needed
####################################################################################################################################################################################
set_property PACKAGE_PIN P7         [get_ports clk_ref_p]
set_property PACKAGE_PIN P6         [get_ports clk_ref_n]

####################################################################################################################################################################################
# HDMI TX DATA Channels (GTH Transceivers - QUAD 226)
# These pins are typically managed by the Video PHY Controller IP
# Only uncomment if your design requires explicit constraints
####################################################################################################################################################################################
# Channel 0 - Blue
set_property PACKAGE_PIN N5         [get_ports {hdmi_tx_p[0]}]
set_property PACKAGE_PIN N4         [get_ports {hdmi_tx_n[0]}]

# Channel 1 - Green  
set_property PACKAGE_PIN L5         [get_ports {hdmi_tx_p[1]}]
set_property PACKAGE_PIN L4         [get_ports {hdmi_tx_n[1]}]

# Channel 2 - Red
set_property PACKAGE_PIN J5         [get_ports {hdmi_tx_p[2]}]
set_property PACKAGE_PIN J4         [get_ports {hdmi_tx_n[2]}]

####################################################################################################################################################################################
# HDMI Control Signals (Optional - for full HDMI functionality)
####################################################################################################################################################################################
# HDMI TX Enable
# set_property PACKAGE_PIN Y23        [get_ports hdmi_tx_en]
# set_property IOSTANDARD LVCMOS12    [get_ports hdmi_tx_en]

# HDMI TX Hot Plug Detect
# set_property PACKAGE_PIN W21        [get_ports hdmi_tx_hpd]
# set_property IOSTANDARD LVCMOS12    [get_ports hdmi_tx_hpd]

# HDMI TX CEC
# set_property PACKAGE_PIN AA23       [get_ports hdmi_tx_cec]
# set_property IOSTANDARD LVCMOS12    [get_ports hdmi_tx_cec]

# HDMI TX I2C (DDC)
# set_property PACKAGE_PIN R26        [get_ports hdmi_tx_sda]
# set_property PACKAGE_PIN R25        [get_ports hdmi_tx_scl]
# set_property IOSTANDARD LVCMOS12    [get_ports hdmi_tx_sda]
# set_property IOSTANDARD LVCMOS12    [get_ports hdmi_tx_scl]

####################################################################################################################################################################################
# Clock Generator Control (8T49N241)
####################################################################################################################################################################################
# Reset for clock generator (directly directly directly directly directly directly directly directly directly directly Active-Low)
# set_property PACKAGE_PIN G22        [get_ports hdmi_clk_rst_n]
# set_property IOSTANDARD LVCMOS18    [get_ports hdmi_clk_rst_n]

# Loss of Lock indicator
# set_property PACKAGE_PIN F22        [get_ports hdmi_clk_lol]
# set_property IOSTANDARD LVCMOS18    [get_ports hdmi_clk_lol]

####################################################################################################################################################################################
# Debug LEDs (Optional)
####################################################################################################################################################################################
# set_property PACKAGE_PIN A10        [get_ports led_debug[0]]
# set_property PACKAGE_PIN B10        [get_ports led_debug[1]]
# set_property PACKAGE_PIN B11        [get_ports led_debug[2]]
# set_property PACKAGE_PIN C11        [get_ports led_debug[3]]
# set_property IOSTANDARD LVCMOS33    [get_ports led_debug[*]]