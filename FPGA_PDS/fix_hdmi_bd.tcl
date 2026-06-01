set project_file [file normalize "FPGA_PDS/FPGA_PDS.xpr"]
set bd_file [file normalize "FPGA_PDS/FPGA_PDS.srcs/sources_1/bd/hdmi_tx_bd/hdmi_tx_bd.bd"]

open_project $project_file
open_bd_design $bd_file

proc connect_intf_if_needed {left right} {
    set left_pin [get_bd_intf_pins -quiet $left]
    set right_pin [get_bd_intf_pins -quiet $right]
    if {[llength $left_pin] == 0} {
        error "Missing BD interface pin: $left"
    }
    if {[llength $right_pin] == 0} {
        error "Missing BD interface pin: $right"
    }

    set left_net [get_bd_intf_nets -quiet -of_objects $left_pin]
    set right_net [get_bd_intf_nets -quiet -of_objects $right_pin]

    if {[llength $left_net] == 0 && [llength $right_net] == 0} {
        connect_bd_intf_net $left_pin $right_pin
    } elseif {[llength $left_net] != 0 && [llength $right_net] == 0} {
        connect_bd_intf_net $left_net $right_pin
    } elseif {[llength $left_net] == 0 && [llength $right_net] != 0} {
        connect_bd_intf_net $left_pin $right_net
    } elseif {[get_property NAME $left_net] ne [get_property NAME $right_net]} {
        error "Interface pins are already connected to different nets: $left and $right"
    }
}

connect_intf_if_needed v_hdmi_tx_ss_0/LINK_DATA0_OUT vid_phy_controller_0/vid_phy_tx_axi4s_ch0
connect_intf_if_needed v_hdmi_tx_ss_0/LINK_DATA1_OUT vid_phy_controller_0/vid_phy_tx_axi4s_ch1
connect_intf_if_needed v_hdmi_tx_ss_0/LINK_DATA2_OUT vid_phy_controller_0/vid_phy_tx_axi4s_ch2

if {[llength [get_bd_intf_ports -quiet TX_DDC_OUT]] == 0} {
    make_bd_intf_pins_external [get_bd_intf_pins v_hdmi_tx_ss_0/DDC_OUT]
    set ddc_port [get_bd_intf_ports -quiet DDC_OUT_0]
    if {[llength $ddc_port] == 0} {
        set ddc_port [get_bd_intf_ports -quiet *DDC_OUT*]
    }
    if {[llength $ddc_port] == 0} {
        error "Failed to create external DDC_OUT interface"
    }
    set_property name TX_DDC_OUT $ddc_port
}

set gpio [get_bd_cells axi_gpio_0]
set_property -dict [list \
    CONFIG.C_IS_DUAL {1} \
    CONFIG.C_ALL_INPUTS_2 {1} \
    CONFIG.C_ALL_OUTPUTS_2 {0} \
    CONFIG.C_GPIO2_WIDTH {1} \
] $gpio

if {[llength [get_bd_ports -quiet HDMI_8T49N241_LOL]] == 0} {
    create_bd_port -dir I HDMI_8T49N241_LOL
}

set lol_port [get_bd_ports HDMI_8T49N241_LOL]
set lol_pin [get_bd_pins axi_gpio_0/gpio2_io_i]
set lol_port_net [get_bd_nets -quiet -of_objects $lol_port]
set lol_pin_net [get_bd_nets -quiet -of_objects $lol_pin]
if {[llength $lol_port_net] == 0 && [llength $lol_pin_net] == 0} {
    connect_bd_net $lol_port $lol_pin
} elseif {[llength $lol_port_net] != 0 && [llength $lol_pin_net] == 0} {
    connect_bd_net $lol_port_net $lol_pin
} elseif {[llength $lol_port_net] == 0 && [llength $lol_pin_net] != 0} {
    connect_bd_net $lol_port $lol_pin_net
}

validate_bd_design
save_bd_design

set wrapper [make_wrapper -files [get_files $bd_file] -top -force]
if {[llength $wrapper] != 0} {
    add_files -norecurse $wrapper
}
update_compile_order -fileset sources_1
close_project
