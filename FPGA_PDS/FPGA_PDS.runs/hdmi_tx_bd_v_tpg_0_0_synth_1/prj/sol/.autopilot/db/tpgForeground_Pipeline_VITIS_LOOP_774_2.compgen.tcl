# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name colorFormat_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_colorFormat_val \
    op interface \
    ports { colorFormat_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name shl_ln \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln \
    op interface \
    ports { shl_ln { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name maskId_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_maskId_val \
    op interface \
    ports { maskId_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name width_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_width_val \
    op interface \
    ports { width_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name select_ln1977 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln1977 \
    op interface \
    ports { select_ln1977 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name and_ln1989 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_and_ln1989 \
    op interface \
    ports { and_ln1989 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name and_ln1993 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_and_ln1993 \
    op interface \
    ports { and_ln1993 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name and_ln1991 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_and_ln1991 \
    op interface \
    ports { and_ln1991 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name ovrlayYUV \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ovrlayYUV \
    op interface \
    ports { ovrlayYUV_din { O 48 vector } ovrlayYUV_full_n { I 1 bit } ovrlayYUV_write { O 1 bit } ovrlayYUV_num_data_valid { I 32 vector } ovrlayYUV_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name bckgndYUV \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bckgndYUV \
    op interface \
    ports { bckgndYUV_dout { I 48 vector } bckgndYUV_empty_n { I 1 bit } bckgndYUV_read { O 1 bit } bckgndYUV_num_data_valid { I 5 vector } bckgndYUV_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name patternId_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_patternId_val \
    op interface \
    ports { patternId_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name boxSize_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boxSize_val \
    op interface \
    ports { boxSize_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y \
    op interface \
    ports { y { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name boxColorB_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boxColorB_val \
    op interface \
    ports { boxColorB_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name boxColorG_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boxColorG_val \
    op interface \
    ports { boxColorG_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name boxColorR_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_boxColorR_val \
    op interface \
    ports { boxColorR_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name pixOut_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pixOut_17 \
    op interface \
    ports { pixOut_17 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name vMax \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vMax \
    op interface \
    ports { vMax { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name zext_ln789 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln789 \
    op interface \
    ports { zext_ln789 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name hMax \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hMax \
    op interface \
    ports { hMax { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name zext_ln1977 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln1977 \
    op interface \
    ports { zext_ln1977 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name icmp_ln1963 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln1963 \
    op interface \
    ports { icmp_ln1963 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name crossHairX_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_crossHairX_val \
    op interface \
    ports { crossHairX_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name whiYuv_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_whiYuv_2_load \
    op interface \
    ports { whiYuv_2_load { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name boxHCoord_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_boxHCoord_loc_1_out \
    op interface \
    ports { boxHCoord_loc_1_out_i { I 16 vector } boxHCoord_loc_1_out_o { O 16 vector } boxHCoord_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name boxVCoord_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_boxVCoord_loc_1_out \
    op interface \
    ports { boxVCoord_loc_1_out_i { I 16 vector } boxVCoord_loc_1_out_o { O 16 vector } boxVCoord_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name boxVCoord \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_boxVCoord \
    op interface \
    ports { boxVCoord { O 16 vector } boxVCoord_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name boxHCoord \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_boxHCoord \
    op interface \
    ports { boxHCoord { O 16 vector } boxHCoord_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName hdmi_tx_bd_v_tpg_0_0_flow_control_loop_pipe_sequential_init_U
set CompName hdmi_tx_bd_v_tpg_0_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix hdmi_tx_bd_v_tpg_0_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


