set SynModuleInfo {
  {SRCNAME {reg<unsigned short>} MODELNAME reg_unsigned_short_s RTLNAME hdmi_tx_bd_v_tpg_0_0_reg_unsigned_short_s}
  {SRCNAME {reg<unsigned short>6} MODELNAME reg_unsigned_short_6 RTLNAME hdmi_tx_bd_v_tpg_0_0_reg_unsigned_short_6}
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start RTLNAME hdmi_tx_bd_v_tpg_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start
    SUBMODULES {
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_flow_control_loop_pipe_sequential_init RTLNAME hdmi_tx_bd_v_tpg_0_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME hdmi_tx_bd_v_tpg_0_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_width MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_width RTLNAME hdmi_tx_bd_v_tpg_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width
    SUBMODULES {
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_sparsemux_5_8_8_1_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_sparsemux_5_8_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_realdef}
    }
  }
  {SRCNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol MODELNAME AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol RTLNAME hdmi_tx_bd_v_tpg_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol}
  {SRCNAME AXIvideo2MultiPixStream MODELNAME AXIvideo2MultiPixStream RTLNAME hdmi_tx_bd_v_tpg_0_0_AXIvideo2MultiPixStream}
  {SRCNAME {reg<ap_uint<10> >} MODELNAME reg_ap_uint_10_s RTLNAME hdmi_tx_bd_v_tpg_0_0_reg_ap_uint_10_s}
  {SRCNAME reg<int> MODELNAME reg_int_s RTLNAME hdmi_tx_bd_v_tpg_0_0_reg_int_s}
  {SRCNAME tpgBackground_Pipeline_VITIS_LOOP_565_2 MODELNAME tpgBackground_Pipeline_VITIS_LOOP_565_2 RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2
    SUBMODULES {
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_urem_11ns_3ns_2_15_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_urem_11ns_3ns_2_15_1 BINDTYPE op TYPE urem IMPL auto LATENCY 14 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_mul_11ns_13ns_23_1_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_mul_11ns_13ns_23_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_sparsemux_7_2_9_1_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_sparsemux_7_2_9_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_sparsemux_9_3_8_1_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_sparsemux_9_3_8_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_sparsemux_7_16_8_1_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_sparsemux_7_16_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_realdef}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_mul_20s_9ns_28_1_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_mul_20s_9ns_28_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_am_addmul_16ns_1s_16ns_17_4_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_am_addmul_16ns_1s_16ns_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_16ns_16s_16s_16_4_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_16ns_16s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_16s_16s_16s_16_4_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_16s_16s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_7ns_13ns_15_4_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_7ns_13ns_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_7s_16s_16_4_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_7s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_8s_16s_16_4_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_8s_16s_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_6s_15ns_16_4_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_6s_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_8ns_15ns_16_4_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_8ns_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_5ns_16ns_17_4_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_mac_muladd_8ns_5ns_16ns_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_y_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_y_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_u_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_u_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_v_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelYuv_v_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_r_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_r_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_g_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_g_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_b_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgBarSelRgb_b_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgTartanBarArray_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgTartanBarArray_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_0_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_1_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_2_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgSinTableArray_9bit_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgCheckerBoardArray_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_tpgCheckerBoardArray_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_y_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_y_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_u_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_u_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_v_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_709_v_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarArray_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarArray_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_r_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_r_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_g_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_g_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_b_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelRgb_CEA_b_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_y_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_y_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_u_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_u_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_v_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_565_2_DPtpgBarSelYuv_601_v_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tpgBackground MODELNAME tpgBackground RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground
    SUBMODULES {
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_redYuv_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_redYuv_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_grnYuv_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_grnYuv_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_bluYuv_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_bluYuv_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_blkYuv_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_blkYuv_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_whiYuv_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgBackground_whiYuv_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tpgForeground_Pipeline_VITIS_LOOP_774_2 MODELNAME tpgForeground_Pipeline_VITIS_LOOP_774_2 RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgForeground_Pipeline_VITIS_LOOP_774_2}
  {SRCNAME tpgForeground MODELNAME tpgForeground RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgForeground
    SUBMODULES {
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_tpgForeground_whiYuv_2_ROM_AUTO_1R RTLNAME hdmi_tx_bd_v_tpg_0_0_tpgForeground_whiYuv_2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2 MODELNAME MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2 RTLNAME hdmi_tx_bd_v_tpg_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_981_2
    SUBMODULES {
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_sparsemux_7_2_48_1_1 RTLNAME hdmi_tx_bd_v_tpg_0_0_sparsemux_7_2_48_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME MultiPixStream2AXIvideo MODELNAME MultiPixStream2AXIvideo RTLNAME hdmi_tx_bd_v_tpg_0_0_MultiPixStream2AXIvideo}
  {SRCNAME v_tpgHlsDataFlow MODELNAME v_tpgHlsDataFlow RTLNAME hdmi_tx_bd_v_tpg_0_0_v_tpgHlsDataFlow
    SUBMODULES {
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_fifo_w48_d16_S RTLNAME hdmi_tx_bd_v_tpg_0_0_fifo_w48_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME srcYUV_U}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_fifo_w48_d16_S RTLNAME hdmi_tx_bd_v_tpg_0_0_fifo_w48_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME bckgndYUV_U}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_fifo_w48_d16_S RTLNAME hdmi_tx_bd_v_tpg_0_0_fifo_w48_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ovrlayYUV_U}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_start_for_tpgForeground_U0 RTLNAME hdmi_tx_bd_v_tpg_0_0_start_for_tpgForeground_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_tpgForeground_U0_U}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_start_for_MultiPixStream2AXIvideo_U0 RTLNAME hdmi_tx_bd_v_tpg_0_0_start_for_MultiPixStream2AXIvideo_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_MultiPixStream2AXIvideo_U0_U}
    }
  }
  {SRCNAME v_tpg MODELNAME v_tpg RTLNAME hdmi_tx_bd_v_tpg_0_0_v_tpg IS_TOP 1
    SUBMODULES {
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_CTRL_s_axi RTLNAME hdmi_tx_bd_v_tpg_0_0_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME hdmi_tx_bd_v_tpg_0_0_regslice_both RTLNAME hdmi_tx_bd_v_tpg_0_0_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
