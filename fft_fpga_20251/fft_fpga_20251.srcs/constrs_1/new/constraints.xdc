############################################################
# HDMI TX - AUBoard 15P
# HDMI 1.4 / TMDS via GTH
############################################################

# ----------------------------------------------------------
# TMDS DATA CHANNELS (GTH TX)
# ----------------------------------------------------------

# Blue (Lane 0)
set_property PACKAGE_PIN N5 [get_ports hdmi_tx_p[0]]
set_property PACKAGE_PIN N4 [get_ports hdmi_tx_n[0]]

# Green (Lane 1)
set_property PACKAGE_PIN L5 [get_ports hdmi_tx_p[1]]
set_property PACKAGE_PIN L4 [get_ports hdmi_tx_n[1]]

# Red (Lane 2)
set_property PACKAGE_PIN J5 [get_ports hdmi_tx_p[2]]
set_property PACKAGE_PIN J4 [get_ports hdmi_tx_n[2]]

# ----------------------------------------------------------
# TMDS CLOCK (Lane 3 - GTH TX)
# ----------------------------------------------------------

set_property PACKAGE_PIN P7 [get_ports hdmi_tx_p[3]]
set_property PACKAGE_PIN P6 [get_ports hdmi_tx_n[3]]

# ----------------------------------------------------------
# GTH Reference Clock (300 MHz)
# ----------------------------------------------------------

set_property PACKAGE_PIN P7 [get_ports clk_ref_p]
set_property PACKAGE_PIN P6 [get_ports clk_ref_n]
set_property DIFF_TERM TRUE [get_ports {clk_ref_p clk_ref_n}]

# ----------------------------------------------------------
# Reset (GPIO)
# ----------------------------------------------------------

set_property PACKAGE_PIN H17 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PULLUP TRUE [get_ports rst]
