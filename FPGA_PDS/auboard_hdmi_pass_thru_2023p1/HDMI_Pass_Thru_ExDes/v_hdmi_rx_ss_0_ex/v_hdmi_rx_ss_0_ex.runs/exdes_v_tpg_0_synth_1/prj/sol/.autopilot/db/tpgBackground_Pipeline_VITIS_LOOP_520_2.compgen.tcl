# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler exdes_v_tpg_0_tpgBackground_Pipeline_VITIS_LOOP_520_2_blkYuv_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler exdes_v_tpg_0_tpgBackground_Pipeline_VITIS_LOOP_520_2_tpgBarSelYuv_y_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler exdes_v_tpg_0_tpgBackground_Pipeline_VITIS_LOOP_520_2_tpgBarSelYuv_u_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler exdes_v_tpg_0_tpgBackground_Pipeline_VITIS_LOOP_520_2_tpgBarSelYuv_v_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler exdes_v_tpg_0_tpgBackground_Pipeline_VITIS_LOOP_520_2_tpgBarSelRgb_r_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler exdes_v_tpg_0_tpgBackground_Pipeline_VITIS_LOOP_520_2_tpgBarSelRgb_g_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler exdes_v_tpg_0_tpgBackground_Pipeline_VITIS_LOOP_520_2_tpgBarSelRgb_b_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler exdes_v_tpg_0_tpgBackground_Pipeline_VITIS_LOOP_520_2_tpgTartanBarArray_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler exdes_v_tpg_0_tpgBackground_Pipeline_VITIS_LOOP_520_2_whiYuv_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler exdes_v_tpg_0_tpgBackground_Pipeline_VITIS_LOOP_520_2_tpgCheckerBoardArray_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 64 \
    name outpix_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_5 \
    op interface \
    ports { outpix_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name outpix_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_4 \
    op interface \
    ports { outpix_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name outpix_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_3 \
    op interface \
    ports { outpix_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name outpix_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_2 \
    op interface \
    ports { outpix_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name outpix_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_1 \
    op interface \
    ports { outpix_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name outpix \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix \
    op interface \
    ports { outpix { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name loopWidth \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_loopWidth \
    op interface \
    ports { loopWidth { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name ovrlayYUV \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ovrlayYUV \
    op interface \
    ports { ovrlayYUV_din { O 48 vector } ovrlayYUV_num_data_valid { I 5 vector } ovrlayYUV_fifo_cap { I 5 vector } ovrlayYUV_full_n { I 1 bit } ovrlayYUV_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name cmp8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp8 \
    op interface \
    ports { cmp8 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name bckgndId_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bckgndId_load \
    op interface \
    ports { bckgndId_load { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name srcYUV \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_srcYUV \
    op interface \
    ports { srcYUV_dout { I 48 vector } srcYUV_num_data_valid { I 5 vector } srcYUV_fifo_cap { I 5 vector } srcYUV_empty_n { I 1 bit } srcYUV_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name empty_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_44 \
    op interface \
    ports { empty_44 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name trunc_ln1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln1 \
    op interface \
    ports { trunc_ln1 { I 14 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name trunc_ln \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln \
    op interface \
    ports { trunc_ln { I 14 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
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
    id 80 \
    name zext_ln1212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln1212 \
    op interface \
    ports { zext_ln1212 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name zext_ln1196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln1196 \
    op interface \
    ports { zext_ln1196 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name zext_ln518_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln518_1 \
    op interface \
    ports { zext_ln518_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name cmp35_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp35_i \
    op interface \
    ports { cmp35_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name passthruStartX_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_passthruStartX_load \
    op interface \
    ports { passthruStartX_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name passthruEndX_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_passthruEndX_load \
    op interface \
    ports { passthruEndX_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name cmp59_not \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp59_not \
    op interface \
    ports { cmp59_not { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name cmp68_not \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp68_not \
    op interface \
    ports { cmp68_not { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
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
    id 89 \
    name tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out \
    op interface \
    ports { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out_i { I 8 vector } tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out_o { O 8 vector } tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_3_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
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
    id 91 \
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
    id 92 \
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
    id 93 \
    name vBarSel_1_loc_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel_1_loc_1_out \
    op interface \
    ports { vBarSel_1_loc_1_out_i { I 8 vector } vBarSel_1_loc_1_out_o { O 8 vector } vBarSel_1_loc_1_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
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
    id 95 \
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
    id 96 \
    name outpix_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_11_out \
    op interface \
    ports { outpix_11_out { O 8 vector } outpix_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name outpix_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_10_out \
    op interface \
    ports { outpix_10_out { O 8 vector } outpix_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name outpix_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_9_out \
    op interface \
    ports { outpix_9_out { O 8 vector } outpix_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name outpix_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_8_out \
    op interface \
    ports { outpix_8_out { O 8 vector } outpix_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name outpix_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_7_out \
    op interface \
    ports { outpix_7_out { O 8 vector } outpix_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name outpix_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outpix_6_out \
    op interface \
    ports { outpix_6_out { O 8 vector } outpix_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name p_0_5_0_0_0253383_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_5_0_0_0253383_out \
    op interface \
    ports { p_0_5_0_0_0253383_out_i { I 8 vector } p_0_5_0_0_0253383_out_o { O 8 vector } p_0_5_0_0_0253383_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name p_0_4_0_0_0251381_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_4_0_0_0251381_out \
    op interface \
    ports { p_0_4_0_0_0251381_out_i { I 8 vector } p_0_4_0_0_0251381_out_o { O 8 vector } p_0_4_0_0_0251381_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name p_0_3_0_0_0249379_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_3_0_0_0249379_out \
    op interface \
    ports { p_0_3_0_0_0249379_out_i { I 8 vector } p_0_3_0_0_0249379_out_o { O 8 vector } p_0_3_0_0_0249379_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name p_0_2_0_0_0247377_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_2_0_0_0247377_out \
    op interface \
    ports { p_0_2_0_0_0247377_out_i { I 8 vector } p_0_2_0_0_0247377_out_o { O 8 vector } p_0_2_0_0_0247377_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name p_0_1_0_0_0245375_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_1_0_0_0245375_out \
    op interface \
    ports { p_0_1_0_0_0245375_out_i { I 8 vector } p_0_1_0_0_0245375_out_o { O 8 vector } p_0_1_0_0_0245375_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name p_0_0_0_0_0243373_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0_0_0243373_out \
    op interface \
    ports { p_0_0_0_0_0243373_out_i { I 8 vector } p_0_0_0_0_0243373_out_o { O 8 vector } p_0_0_0_0_0243373_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7 \
    op interface \
    ports { tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7 { O 8 vector } tpgPatternColorBars_unsigned_short_unsigned_short_unsigned_char_int_hBarSel_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
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
    id 110 \
    name s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s \
    op interface \
    ports { s { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
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
    id 112 \
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
    id 113 \
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
    id 114 \
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
    id 115 \
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
    id 116 \
    name vBarSel_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vBarSel_1 \
    op interface \
    ports { vBarSel_1 { O 8 vector } vBarSel_1_ap_vld { O 1 bit } } \
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
set InstName exdes_v_tpg_0_flow_control_loop_pipe_sequential_init_U
set CompName exdes_v_tpg_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix exdes_v_tpg_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


