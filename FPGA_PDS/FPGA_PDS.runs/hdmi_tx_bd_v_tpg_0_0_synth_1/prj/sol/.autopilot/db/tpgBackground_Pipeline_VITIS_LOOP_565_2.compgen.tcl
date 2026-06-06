# This script segment is generated automatically by AutoPilot

set name hdmi_tx_bd_v_tpg_0_0_urem_11ns_3ns_2_15_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 14 ALLOW_PRAGMA 1
}


set name hdmi_tx_bd_v_tpg_0_0_mul_11ns_13ns_23_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_sparsemux_7_2_9_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_sparsemux_9_3_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_sparsemux_7_16_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_realdef}
}


set name hdmi_tx_bd_v_tpg_0_0_mul_20s_9ns_28_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_am_addmul_16ns_1s_16ns_17_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_mac_muladd_16ns_16s_16s_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_mac_muladd_16s_16s_16s_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_7ns_13ns_15_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_7s_16s_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_8s_16s_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_6s_15ns_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_8ns_15ns_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_5ns_16ns_17_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_y_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_u_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_v_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_r_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_g_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_b_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgTartanBarArray_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_0_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_1_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_2_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgCheckerBoardArray_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_y_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_u_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_v_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarArray_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_r_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_g_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_b_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_y_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_u_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_v_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name rampVal_3_flag_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_3_flag_0 \
    op interface \
    ports { rampVal_3_flag_0 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name hdata_flag_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hdata_flag_0 \
    op interface \
    ports { hdata_flag_0 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name rampVal_2_flag_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_2_flag_0 \
    op interface \
    ports { rampVal_2_flag_0 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name dpDynamicRange_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dpDynamicRange_val \
    op interface \
    ports { dpDynamicRange_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
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
    id 144 \
    name dpYUVCoef_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dpYUVCoef_val \
    op interface \
    ports { dpYUVCoef_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name empty_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_46 \
    op interface \
    ports { empty_46 { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name Sel \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Sel \
    op interface \
    ports { Sel { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
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
    id 148 \
    name barWidth \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_barWidth \
    op interface \
    ports { barWidth { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name enableInput_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_enableInput_val \
    op interface \
    ports { enableInput_val { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
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
    id 151 \
    name outpix_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_24 \
    op interface \
    ports { outpix_24 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name select_ln1518 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln1518 \
    op interface \
    ports { select_ln1518 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name select_ln1503 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln1503 \
    op interface \
    ports { select_ln1503 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name rampStart_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rampStart_1 \
    op interface \
    ports { rampStart_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name zext_ln736 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln736 \
    op interface \
    ports { zext_ln736 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name zext_ln563 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln563 \
    op interface \
    ports { zext_ln563 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name rev \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rev \
    op interface \
    ports { rev { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name icmp_ln736 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln736 \
    op interface \
    ports { icmp_ln736 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name passthruStartX_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_passthruStartX_val \
    op interface \
    ports { passthruStartX_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name passthruEndX_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_passthruEndX_val \
    op interface \
    ports { passthruEndX_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name bckgndYUV \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bckgndYUV \
    op interface \
    ports { bckgndYUV_din { O 48 vector } bckgndYUV_full_n { I 1 bit } bckgndYUV_write { O 1 bit } bckgndYUV_num_data_valid { I 5 vector } bckgndYUV_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
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
    id 163 \
    name srcYUV \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_srcYUV \
    op interface \
    ports { srcYUV_dout { I 48 vector } srcYUV_empty_n { I 1 bit } srcYUV_read { O 1 bit } srcYUV_num_data_valid { I 5 vector } srcYUV_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name zext_ln1120_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln1120_1 \
    op interface \
    ports { zext_ln1120_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name redYuv_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_redYuv_load \
    op interface \
    ports { redYuv_load { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name grnYuv_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_grnYuv_load \
    op interface \
    ports { grnYuv_load { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name bluYuv_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bluYuv_load \
    op interface \
    ports { bluYuv_load { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name blkYuv_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blkYuv_load \
    op interface \
    ports { blkYuv_load { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name whiYuv_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_whiYuv_load \
    op interface \
    ports { whiYuv_load { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name shl_ln \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln \
    op interface \
    ports { shl_ln { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name ZplateHorContStart_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ZplateHorContStart_val \
    op interface \
    ports { ZplateHorContStart_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name ZplateHorContDelta_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ZplateHorContDelta_val \
    op interface \
    ports { ZplateHorContDelta_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name ZplateVerContStart_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ZplateVerContStart_val \
    op interface \
    ports { ZplateVerContStart_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name icmp_ln1337 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln1337 \
    op interface \
    ports { icmp_ln1337 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name ZplateVerContDelta_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ZplateVerContDelta_val \
    op interface \
    ports { ZplateVerContDelta_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name barWidthMinSamples \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_barWidthMinSamples \
    op interface \
    ports { barWidthMinSamples { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name add_ln1386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln1386 \
    op interface \
    ports { add_ln1386 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name blkYuv_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blkYuv_1_load \
    op interface \
    ports { blkYuv_1_load { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name add_ln1473 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln1473 \
    op interface \
    ports { add_ln1473 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name icmp_ln1449_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln1449_1 \
    op interface \
    ports { icmp_ln1449_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name whiYuv_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_whiYuv_3_load \
    op interface \
    ports { whiYuv_3_load { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name add_ln1533 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln1533 \
    op interface \
    ports { add_ln1533 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name rampVal_3_flag_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_3_flag_1_out \
    op interface \
    ports { rampVal_3_flag_1_out { O 1 vector } rampVal_3_flag_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name rampVal_3_new_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_3_new_1_out \
    op interface \
    ports { rampVal_3_new_1_out { O 16 vector } rampVal_3_new_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name rampVal_3_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_3_loc_1_out \
    op interface \
    ports { rampVal_3_loc_1_out_i { I 16 vector } rampVal_3_loc_1_out_o { O 16 vector } rampVal_3_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name rampVal_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_loc_1_out \
    op interface \
    ports { rampVal_loc_1_out_i { I 16 vector } rampVal_loc_1_out_o { O 16 vector } rampVal_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out \
    op interface \
    ports { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_i { I 8 vector } tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o { O 8 vector } tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_l_2_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out \
    op interface \
    ports { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out_i { I 8 vector } tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out_o { O 8 vector } tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_3_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name zonePlateVAddr_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_zonePlateVAddr_loc_1_out \
    op interface \
    ports { zonePlateVAddr_loc_1_out_i { I 16 vector } zonePlateVAddr_loc_1_out_o { O 16 vector } zonePlateVAddr_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name vBarSel_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel_loc_1_out \
    op interface \
    ports { vBarSel_loc_1_out_i { I 8 vector } vBarSel_loc_1_out_o { O 8 vector } vBarSel_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out \
    op interface \
    ports { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_i { I 8 vector } tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o { O 8 vector } tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_8_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out \
    op interface \
    ports { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_i { I 8 vector } tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o { O 8 vector } tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_9_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name hdata_flag_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_hdata_flag_1_out \
    op interface \
    ports { hdata_flag_1_out { O 1 vector } hdata_flag_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name hdata_new_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_hdata_new_1_out \
    op interface \
    ports { hdata_new_1_out { O 16 vector } hdata_new_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name hdata_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_hdata_loc_1_out \
    op interface \
    ports { hdata_loc_1_out_i { I 16 vector } hdata_loc_1_out_o { O 16 vector } hdata_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name vBarSel_2_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel_2_loc_1_out \
    op interface \
    ports { vBarSel_2_loc_1_out_i { I 8 vector } vBarSel_2_loc_1_out_o { O 8 vector } vBarSel_2_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out \
    op interface \
    ports { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_i { I 8 vector } tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o { O 8 vector } tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_8_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out \
    op interface \
    ports { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_i { I 8 vector } tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o { O 8 vector } tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_9_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name rampVal_2_flag_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_2_flag_1_out \
    op interface \
    ports { rampVal_2_flag_1_out { O 1 vector } rampVal_2_flag_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name rampVal_2_new_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_2_new_1_out \
    op interface \
    ports { rampVal_2_new_1_out { O 16 vector } rampVal_2_new_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name rampVal_2_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal_2_loc_1_out \
    op interface \
    ports { rampVal_2_loc_1_out_i { I 16 vector } rampVal_2_loc_1_out_o { O 16 vector } rampVal_2_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name vBarSel_3_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel_3_loc_1_out \
    op interface \
    ports { vBarSel_3_loc_1_out_i { I 8 vector } vBarSel_3_loc_1_out_o { O 8 vector } vBarSel_3_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out \
    op interface \
    ports { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out_i { I 8 vector } tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out_o { O 8 vector } tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_8_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out \
    op interface \
    ports { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out_i { I 8 vector } tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out_o { O 8 vector } tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_9_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name outpix_11_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_11_out \
    op interface \
    ports { outpix_11_out_i { I 8 vector } outpix_11_out_o { O 8 vector } outpix_11_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name outpix_10_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_10_out \
    op interface \
    ports { outpix_10_out_i { I 8 vector } outpix_10_out_o { O 8 vector } outpix_10_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name outpix_9_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_9_out \
    op interface \
    ports { outpix_9_out_i { I 8 vector } outpix_9_out_o { O 8 vector } outpix_9_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name outpix_8_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_8_out \
    op interface \
    ports { outpix_8_out_i { I 8 vector } outpix_8_out_o { O 8 vector } outpix_8_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name outpix_7_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_7_out \
    op interface \
    ports { outpix_7_out_i { I 8 vector } outpix_7_out_o { O 8 vector } outpix_7_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name outpix_6_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_6_out \
    op interface \
    ports { outpix_6_out_i { I 8 vector } outpix_6_out_o { O 8 vector } outpix_6_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name p_0_0_0_1378_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_1378_out \
    op interface \
    ports { p_0_0_0_1378_out_i { I 8 vector } p_0_0_0_1378_out_o { O 8 vector } p_0_0_0_1378_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name p_0_0_09_1376_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_09_1376_out \
    op interface \
    ports { p_0_0_09_1376_out_i { I 8 vector } p_0_0_09_1376_out_o { O 8 vector } p_0_0_09_1376_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name p_0_0_010_1374_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_010_1374_out \
    op interface \
    ports { p_0_0_010_1374_out_i { I 8 vector } p_0_0_010_1374_out_o { O 8 vector } p_0_0_010_1374_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name p_0_0_0372_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0372_out \
    op interface \
    ports { p_0_0_0372_out_i { I 8 vector } p_0_0_0372_out_o { O 8 vector } p_0_0_0372_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name p_0_0_09370_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_09370_out \
    op interface \
    ports { p_0_0_09370_out_i { I 8 vector } p_0_0_09370_out_o { O 8 vector } p_0_0_09370_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name p_0_0_010368_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_010368_out \
    op interface \
    ports { p_0_0_010368_out_i { I 8 vector } p_0_0_010368_out_o { O 8 vector } p_0_0_010368_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name rampVal \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rampVal \
    op interface \
    ports { rampVal { O 8 vector } rampVal_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8 \
    op interface \
    ports { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8 { O 8 vector } tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel \
    op interface \
    ports { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel { O 8 vector } tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name zonePlateVAddr \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_zonePlateVAddr \
    op interface \
    ports { zonePlateVAddr { O 16 vector } zonePlateVAddr_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 \
    op interface \
    ports { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2 { O 3 vector } tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 \
    op interface \
    ports { tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3 { O 3 vector } tpgPatternTartanColorBars_unsigned_short_unsigned_short_unsigned_short_unsign_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name vBarSel \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel \
    op interface \
    ports { vBarSel { O 3 vector } vBarSel_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 \
    op interface \
    ports { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2 { O 3 vector } tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 \
    op interface \
    ports { tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3 { O 3 vector } tpgPatternCheckerBoard_unsigned_short_unsigned_short_unsigned_short_unsigned_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name vBarSel_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel_2 \
    op interface \
    ports { vBarSel_2 { O 8 vector } vBarSel_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2 \
    op interface \
    ports { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2 { O 3 vector } tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3 \
    op interface \
    ports { tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3 { O 3 vector } tpgPatternDPColorSquare_unsigned_short_unsigned_short_unsigned_char_unsigned_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name vBarSel_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel_1 \
    op interface \
    ports { vBarSel_1 { O 1 vector } vBarSel_1_ap_vld { O 1 bit } } \
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


