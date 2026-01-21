# aclk {FREQ_HZ 100000000 CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1 PHASE 0.0} aclk1 {FREQ_HZ 297000000 CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk PHASE 0.0}
# Clock Domain: hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1
create_clock -name aclk -period 10.000 [get_ports aclk]
# Clock Domain: hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk
create_clock -name aclk1 -period 3.367 [get_ports aclk1]
# Generated clocks
