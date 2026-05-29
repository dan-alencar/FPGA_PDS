################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name TX_REFCLK_P_IN -period 10 [get_ports TX_REFCLK_P_IN]
create_clock -name TX_REFCLK_N_IN -period 10 [get_ports TX_REFCLK_N_IN]
create_clock -name HDMI_RX_CLK_P_IN -period 10 [get_ports HDMI_RX_CLK_P_IN]
create_clock -name HDMI_RX_CLK_N_IN -period 10 [get_ports HDMI_RX_CLK_N_IN]
create_clock -name sys_diff_clock_clk_p -period 3.333 [get_ports sys_diff_clock_clk_p]

################################################################################