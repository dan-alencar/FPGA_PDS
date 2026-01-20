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

####################################################################################################
# LEDs de Debug para o Bring-up do HDMI
####################################################################################################

set_property PACKAGE_PIN A10        [get_ports {led_debug[0]}] ;    # Bank 85 - VCCO_85 - IO_L11N_AD9N_85 - RED LED D31
set_property PACKAGE_PIN AE15       [get_ports {led_debug[1]}] ;    # Bank 85 - VCCO_85 - IO_L3N_AD9N_84  - RGB LED D35 (RED)
set_property PACKAGE_PIN AD15       [get_ports {led_debug[2]}] ;    # Bank 85 - VCCO_85 - IO_L3P_AD9P_84  - RGB LED D35 (GREEN)
set_property PACKAGE_PIN AF13       [get_ports {led_debug[3]}] ;    # Bank 85 - VCCO_85 - IO_L2N_AD10N_84 - RGB LED D35 (BLUE)

set_property IOSTANDARD LVCMOS33    [get_ports {led_debug[0]}] ;    # Bank 85 - VCCO_85 - IO_L11N_AD9N_85 - RED LED D31
set_property IOSTANDARD LVCMOS18    [get_ports {led_debug[1]}] ;    # Bank 85 - VCCO_85 - IO_L3N_AD9N_84  - RGB LED D35 (RED)
set_property IOSTANDARD LVCMOS18    [get_ports {led_debug[2]}] ;    # Bank 85 - VCCO_85 - IO_L3P_AD9P_84  - RGB LED D35 (GREEN)
set_property IOSTANDARD LVCMOS18    [get_ports {led_debug[3]}] ;    # Bank 85 - VCCO_85 - IO_L2N_AD10N_84 - RGB LED D35 (BLUE)