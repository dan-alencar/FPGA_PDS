
#####
## Constraints for AVNET ARTIX ULTRASCALE PLUS PCI BOARD - HDMI 2.0
## Version 1.0
#####


#####
## Pins
#####

# HDMI RX

#HDMI_RCLKOUT_P/N - MGTREFCLK1P/N - M7/M6
set_property PACKAGE_PIN P7 [get_ports HDMI_RX_CLK_P_IN]
create_clock -period 3.367 -name rx_mgt_refclk [get_ports HDMI_RX_CLK_P_IN]

#HDMI_RX_HPD - BANK65 T24
set_property PACKAGE_PIN T24 [get_ports {RX_HPD_OUT[0]}]
set_property IOSTANDARD LVCMOS12 [get_ports {RX_HPD_OUT[0]}]

#HDMI_RX_SNK_SCL = BANK65 N26
set_property PACKAGE_PIN N26 [get_ports RX_DDC_OUT_scl_io]
set_property IOSTANDARD LVCMOS12 [get_ports RX_DDC_OUT_scl_io]
set_property DRIVE 8 [get_ports RX_DDC_OUT_scl_io]

#HDMI_CTL_SDA = BANK65 T19
set_property PACKAGE_PIN T19 [get_ports RX_DDC_OUT_sda_io]
set_property IOSTANDARD LVCMOS12 [get_ports RX_DDC_OUT_sda_io]
set_property DRIVE 8 [get_ports RX_DDC_OUT_sda_io]

#HDMI_REC_CLK_P/N - BANK66 L18/K18 (FMC CONNECTOR FOR EXPERIMENT)
set_property PACKAGE_PIN L18 [get_ports RX_REFCLK_P_OUT]
set_property IOSTANDARD DIFF_HSUL_12 [get_ports RX_REFCLK_P_OUT]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports RX_REFCLK_P_OUT]
set_property SLEW SLOW [get_ports RX_REFCLK_P_OUT]
set_property SLEW SLOW [get_ports RX_REFCLK_N_OUT]

#HDMI_REC_CLK_P/N - BANK65 P25/P26
set_property PACKAGE_PIN P25 [get_ports {CLK300_clk_p[0]}]
set_property IOSTANDARD DIFF_HSUL_12 [get_ports {CLK300_clk_p[0]}]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {CLK300_clk_p[0]}]
set_property SLEW SLOW [get_ports {CLK300_clk_p[0]}]

#HDMI_RX_PWR_DET - BANK65 U24
set_property PACKAGE_PIN U24 [get_ports RX_DET_IN]
set_property IOSTANDARD LVCMOS12 [get_ports RX_DET_IN]

# HDMI TX

#CLK_297M_P/N - MGTREFCLK0P/N - P7/P6
set_property PACKAGE_PIN M7 [get_ports TX_REFCLK_P_IN]
create_clock -period 3.367 -name tx_mgt_refclk [get_ports TX_REFCLK_P_IN]

#HDMI_TX_CLK_P/N - BANK65 - T25/U25
set_property PACKAGE_PIN T25 [get_ports HDMI_TX_CLK_P_OUT]
set_property IOSTANDARD DIFF_HSUL_12 [get_ports HDMI_TX_CLK_P_OUT]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports HDMI_TX_CLK_P_OUT]
set_property SLEW SLOW [get_ports HDMI_TX_CLK_P_OUT]
set_property SLEW SLOW [get_ports HDMI_TX_CLK_N_OUT]

#HDMI_TX_HPD - BANK65 - W21
set_property PACKAGE_PIN W21 [get_ports TX_HPD_IN]
set_property IOSTANDARD LVCMOS12 [get_ports TX_HPD_IN]

#HDMI_TX_SRC_SCL - BANK65 - R25
set_property PACKAGE_PIN R25 [get_ports TX_DDC_OUT_scl_io]
set_property IOSTANDARD LVCMOS12 [get_ports TX_DDC_OUT_scl_io]
set_property DRIVE 8 [get_ports TX_DDC_OUT_scl_io]

#HDMI_TX_SRC_SDA - BANK65 - R26
set_property PACKAGE_PIN R26 [get_ports TX_DDC_OUT_sda_io]
set_property IOSTANDARD LVCMOS12 [get_ports TX_DDC_OUT_sda_io]
set_property DRIVE 8 [get_ports TX_DDC_OUT_sda_io]

# UART

#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
#UART_TX - BANK84 - AF15 (SWAPPED AT TRANSLATOR U23 - MAY NEED CROSSING)
#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
set_property PACKAGE_PIN AF15 [get_ports rs232_uart_txd]
set_property IOSTANDARD LVCMOS18 [get_ports rs232_uart_txd]

#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
#UART_RX - BANK84 - AF14 (SWAPPED AT TRANSLATOR U23 - MAY NEED CROSSING)
#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
set_property PACKAGE_PIN AF14 [get_ports rs232_uart_rxd]
set_property IOSTANDARD LVCMOS18 [get_ports rs232_uart_rxd]

# I2C

#HDMI_CTL_SCL - BANK65 - R22
set_property PACKAGE_PIN R22 [get_ports fmch_iic_scl_io]
set_property IOSTANDARD LVCMOS12 [get_ports fmch_iic_scl_io]
set_property DRIVE 8 [get_ports fmch_iic_scl_io]

#HDMI_CTL_SDA - BANK65 -R23
set_property PACKAGE_PIN R23 [get_ports fmch_iic_sda_io]
set_property IOSTANDARD LVCMOS12 [get_ports fmch_iic_sda_io]
set_property DRIVE 8 [get_ports fmch_iic_sda_io]

#CLK_IIC_SCL - BANK85 - B9
#set_property PACKAGE_PIN B9 [get_ports CLK_IIC_scl_io]
#set_property IOSTANDARD LVCMOS33 [get_ports CLK_IIC_scl_io]
#set_property DRIVE 8 [get_ports CLK_IIC_scl_io]

#CLK_IIC_SDA - BANK85 -A9
#set_property PACKAGE_PIN A9 [get_ports CLK_IIC_sda_io]
#set_property IOSTANDARD LVCMOS33 [get_ports CLK_IIC_sda_io]
#set_property DRIVE 8 [get_ports CLK_IIC_sda_io]

# Misc

#LED1 - BANK85 - A10
set_property PACKAGE_PIN A10 [get_ports LED0]
set_property IOSTANDARD LVCMOS33 [get_ports LED0]

#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
#RST_CLOCK_N - BANK85 - B10 (TIED TO LED1 LISTED AS ACTIVE LOW - MAY NEED TO SWAP POLARITY?)
#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
set_property PACKAGE_PIN B10 [get_ports {SI5324_RST_OUT[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SI5324_RST_OUT[0]}]

#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
#PLL_LOCKED - NO CONNECTION POINT TO THE FPGA - TIE TO TESTPOINT - PULL UP / PULLDOWN??
#BANK65 - GPIO_SW2 - N19
#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
set_property PACKAGE_PIN N19 [get_ports SI5324_LOL_IN]
set_property IOSTANDARD LVCMOS12 [get_ports SI5324_LOL_IN]

#HDMI_TX_EN - BANK65 - Y23
set_property PACKAGE_PIN Y23 [get_ports {TX_EN_OUT[0]}]
set_property IOSTANDARD LVCMOS12 [get_ports {TX_EN_OUT[0]}]

#HDMI_TX_CEC - BANK65 - AA23
set_property PACKAGE_PIN AA23 [get_ports {TX_CLKSEL_OUT[0]}]
set_property IOSTANDARD LVCMOS12 [get_ports {TX_CLKSEL_OUT[0]}]

#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
#NO I2C ENABLE ON - NO CONNECTION POINT TO THE FPGA - TIE TO TESTPOINT
#BANK84 HEADER J27 PIN2 - IO_BANK84_AD14 - AD14
#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
set_property PACKAGE_PIN AD14 [get_ports {RX_I2C_EN_N_OUT[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {RX_I2C_EN_N_OUT[0]}]

#sys_diff_clock_clk_p/n - SYSCLK_P/N - Bank64 - AD21 / AE21
set_property PACKAGE_PIN AD21 [get_ports sys_diff_clock_clk_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_diff_clock_clk_p]

#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
#reset - SRESET - BANK65 - P19 (GPIO_SW1 - ACTIVE HIGH)
#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
set_property PACKAGE_PIN P19 [get_ports reset]
set_property IOSTANDARD LVCMOS12 [get_ports reset]

#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
#START_BT - P20 (GPIO_PB4 [PB7] - ACTIVE HIGH)
#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
set_property PACKAGE_PIN P20 [get_ports start_bt]
set_property IOSTANDARD LVCMOS12 [get_ports start_bt]

#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
#CLK IIC
#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
set_property PACKAGE_PIN B9 [get_ports scl]
set_property PACKAGE_PIN A9 [get_ports sda]

set_property IOSTANDARD LVCMOS33 [get_ports scl]
set_property IOSTANDARD LVCMOS33 [get_ports sda]

#####
## End
#####


set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 31.9 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
