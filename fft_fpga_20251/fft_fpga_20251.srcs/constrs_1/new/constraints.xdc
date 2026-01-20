####################################################################################################
# HDMI TX Constraints - AUBoard 15P (Artix UltraScale+)
# HDMI 1.4 / TMDS
# TMDS clock transmitted on 4th GTH lane
####################################################################################################

####################################################################################################
# USER RESET - Push Button PB1 (Active High)
####################################################################################################
set_property PACKAGE_PIN R21 [get_ports rst]
set_property IOSTANDARD LVCMOS12 [get_ports rst]

####################################################################################################
# HDMI Reference Clock (from 8T49N241)
# GTH REFCLK - DO NOT set IOSTANDARD
####################################################################################################
set_property PACKAGE_PIN P7 [get_ports clk_ref_p]
set_property PACKAGE_PIN P6 [get_ports clk_ref_n]

####################################################################################################
# HDMI TMDS OUTPUTS - GTH QUAD 226
# Lane mapping:
#   Lane 0 → Blue
#   Lane 1 → Green
#   Lane 2 → Red
#   Lane 3 → TMDS Clock
####################################################################################################

# Lane 0 - Blue
set_property PACKAGE_PIN N5 [get_ports {hdmi_tx_p[0]}]
set_property PACKAGE_PIN N4 [get_ports {hdmi_tx_n[0]}]

# Lane 1 - Green
set_property PACKAGE_PIN L5 [get_ports {hdmi_tx_p[1]}]
set_property PACKAGE_PIN L4 [get_ports {hdmi_tx_n[1]}]

# Lane 2 - Red
set_property PACKAGE_PIN J5 [get_ports {hdmi_tx_p[2]}]
set_property PACKAGE_PIN J4 [get_ports {hdmi_tx_n[2]}]

# Lane 3 - TMDS Clock
set_property PACKAGE_PIN P7 [get_ports {hdmi_tx_p[3]}]
set_property PACKAGE_PIN P6 [get_ports {hdmi_tx_n[3]}]

####################################################################################################
# IMPORTANT NOTES:
# - Do NOT define IOSTANDARD for any GTH pin
# - Do NOT use OBUFDS for TMDS clock
# - Clock is serialized and driven by the PHY
####################################################################################################
