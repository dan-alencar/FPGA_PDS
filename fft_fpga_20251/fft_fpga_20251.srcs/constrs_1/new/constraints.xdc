####################################################################################################################################################################################
# HDMI TX Constraints for AUBoard 15P
# Configuration: 3 GTH channels (data) + ODDR (clock)
# Video PHY Controller: X0Y8, X0Y9, X0Y10 in QUAD 226
####################################################################################################################################################################################

####################################################################################################################################################################################
# Part Selection
####################################################################################################################################################################################
# set_property PART xcau15p-ffvb676-2-e [current_project]

####################################################################################################################################################################################
# Reset - Push Button PB1 (Active High when pressed)
####################################################################################################################################################################################
set_property PACKAGE_PIN R21        [get_ports rst]
set_property IOSTANDARD LVCMOS12    [get_ports rst]

####################################################################################################################################################################################
# GTH Reference Clock (297 MHz from 8T49N241)
# MGTREFCLK0 of QUAD 226
# Note: GTH REFCLK pins do not need IOSTANDARD
####################################################################################################################################################################################
set_property PACKAGE_PIN P7         [get_ports clk_ref_p]
set_property PACKAGE_PIN P6         [get_ports clk_ref_n]

####################################################################################################################################################################################
# HDMI TX Data - GTH Transceivers in QUAD 226
# These are directly driven by the Video PHY Controller
# Note: GTH TX pins do not need IOSTANDARD
####################################################################################################################################################################################
# Channel 0 - Blue (X0Y8)
set_property PACKAGE_PIN N5         [get_ports {hdmi_tx_p[0]}]
set_property PACKAGE_PIN N4         [get_ports {hdmi_tx_n[0]}]

# Channel 1 - Green (X0Y9)
set_property PACKAGE_PIN L5         [get_ports {hdmi_tx_p[1]}]
set_property PACKAGE_PIN L4         [get_ports {hdmi_tx_n[1]}]

# Channel 2 - Red (X0Y10)
set_property PACKAGE_PIN J5         [get_ports {hdmi_tx_p[2]}]
set_property PACKAGE_PIN J4         [get_ports {hdmi_tx_n[2]}]

####################################################################################################################################################################################
# HDMI TX Clock - Bank 65 I/O (via ODDR + OBUFDS)
# This is NOT a GTH channel - it's regular fabric I/O
####################################################################################################################################################################################
set_property PACKAGE_PIN T25        [get_ports hdmi_tx_clk_p]
set_property PACKAGE_PIN U25        [get_ports hdmi_tx_clk_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports hdmi_tx_clk_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports hdmi_tx_clk_n]

####################################################################################################################################################################################
# HDMI TX Enable - MUST BE HIGH for output to work
####################################################################################################################################################################################
set_property PACKAGE_PIN Y23        [get_ports hdmi_tx_en]
set_property IOSTANDARD LVCMOS12    [get_ports hdmi_tx_en]

####################################################################################################################################################################################
# 8T49N241 Clock Generator Control
####################################################################################################################################################################################
# Reset (active low) - must be HIGH for normal operation
set_property PACKAGE_PIN G22        [get_ports hdmi_clk_rst_n]
set_property IOSTANDARD LVCMOS18    [get_ports hdmi_clk_rst_n]

# Loss of Lock - LOW when PLL is locked
set_property PACKAGE_PIN F22        [get_ports hdmi_clk_lol]
set_property IOSTANDARD LVCMOS18    [get_ports hdmi_clk_lol]

####################################################################################################################################################################################
# Debug LEDs (Active High)
####################################################################################################################################################################################
set_property PACKAGE_PIN A10        [get_ports {led_debug[0]}]
set_property PACKAGE_PIN B10        [get_ports {led_debug[1]}]
set_property PACKAGE_PIN B11        [get_ports {led_debug[2]}]
set_property PACKAGE_PIN C11        [get_ports {led_debug[3]}]

set_property IOSTANDARD LVCMOS33    [get_ports {led_debug[0]}]
set_property IOSTANDARD LVCMOS33    [get_ports {led_debug[1]}]
set_property IOSTANDARD LVCMOS33    [get_ports {led_debug[2]}]
set_property IOSTANDARD LVCMOS33    [get_ports {led_debug[3]}]

####################################################################################################################################################################################
# Timing Constraints
####################################################################################################################################################################################
# Reference clock (297 MHz)
create_clock -period 3.367 -name clk_ref [get_ports clk_ref_p]

####################################################################################################################################################################################
# Async/False Paths
####################################################################################################################################################################################
set_false_path -from [get_ports rst]
set_false_path -from [get_ports hdmi_clk_lol]
set_false_path -to [get_ports hdmi_tx_en]
set_false_path -to [get_ports hdmi_clk_rst_n]
set_false_path -to [get_ports {led_debug[*]}]

####################################################################################################################################################################################
# OPTIONAL: Additional HDMI Control Signals
####################################################################################################################################################################################
# Hot Plug Detect (input)
# set_property PACKAGE_PIN W21        [get_ports hdmi_tx_hpd]
# set_property IOSTANDARD LVCMOS12    [get_ports hdmi_tx_hpd]

# CEC (bidirectional)
# set_property PACKAGE_PIN AA23       [get_ports hdmi_tx_cec]
# set_property IOSTANDARD LVCMOS12    [get_ports hdmi_tx_cec]

# DDC I2C (for EDID)
# set_property PACKAGE_PIN R26        [get_ports hdmi_tx_sda]
# set_property PACKAGE_PIN R25        [get_ports hdmi_tx_scl]
# set_property IOSTANDARD LVCMOS12    [get_ports hdmi_tx_sda]
# set_property IOSTANDARD LVCMOS12    [get_ports hdmi_tx_scl]