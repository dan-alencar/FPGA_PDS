// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Jun  2 22:27:44 2026
// Host        : pop-os running 64-bit Pop!_OS 24.04 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_8312_v_vid_in_axi4s_0 -prefix
//               bd_8312_v_vid_in_axi4s_0_ bd_8312_v_vid_in_axi4s_0_sim_netlist.v
// Design      : bd_8312_v_vid_in_axi4s_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcau15p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_8312_v_vid_in_axi4s_0,v_vid_in_axi4s_v5_0_7,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "v_vid_in_axi4s_v5_0_7,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module bd_8312_v_vid_in_axi4s_0
   (vid_io_in_clk,
    vid_io_in_ce,
    vid_io_in_reset,
    vid_active_video,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    vid_data,
    vid_format,
    aclk,
    aclken,
    aresetn,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tuser,
    m_axis_video_tlast,
    fid,
    vtd_active_video,
    vtd_vblank,
    vtd_hblank,
    vtd_vsync,
    vtd_hsync,
    vtd_field_id,
    overflow,
    underflow,
    axis_enable,
    drop_en,
    remap_420_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_io_in_clk_intf CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_in_clk_intf, ASSOCIATED_BUSIF vid_io_in, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_rx_video_clk, INSERT_VIP 0" *) input vid_io_in_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 vid_io_in_ce_intf CE" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_in_ce_intf, POLARITY ACTIVE_HIGH" *) input vid_io_in_ce;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_io_in_reset_intf RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_in_reset_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input vid_io_in_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in ACTIVE_VIDEO" *) (* X_INTERFACE_MODE = "slave" *) input vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in VBLANK" *) input vid_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in HBLANK" *) input vid_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in VSYNC" *) input vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in HSYNC" *) input vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in FIELD" *) input vid_field_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in DATA" *) input [47:0]vid_data;
  input [1:0]vid_format;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF video_out, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_HIGH" *) input aclken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_microblaze_0_clk_wiz_1_0_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, INSERT_VIP 0" *) output [47:0]m_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TVALID" *) output m_axis_video_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input m_axis_video_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TUSER" *) output m_axis_video_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TLAST" *) output m_axis_video_tlast;
  output fid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out ACTIVE_VIDEO" *) (* X_INTERFACE_MODE = "master" *) output vtd_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out VBLANK" *) output vtd_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out HBLANK" *) output vtd_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out VSYNC" *) output vtd_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out HSYNC" *) output vtd_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out FIELD" *) output vtd_field_id;
  output overflow;
  output underflow;
  input axis_enable;
  input drop_en;
  input remap_420_en;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire axis_enable;
  wire drop_en;
  wire fid;
  wire [47:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire overflow;
  wire remap_420_en;
  wire underflow;
  wire vid_active_video;
  wire [47:0]vid_data;
  wire vid_field_id;
  wire [1:0]vid_format;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire vid_io_in_reset;
  wire vid_vblank;
  wire vid_vsync;
  wire vtd_active_video;
  wire vtd_field_id;
  wire vtd_hblank;
  wire vtd_hsync;
  wire vtd_vblank;
  wire vtd_vsync;

  (* C_ADDR_WIDTH = "10" *) 
  (* C_ADDR_WIDTH_PIXEL_REMAP_420 = "11" *) 
  (* C_COMPONENTS_PER_PIXEL = "3" *) 
  (* C_FAMILY = "kintexuplus" *) 
  (* C_HAS_ASYNC_CLK = "1" *) 
  (* C_INCLUDE_PIXEL_DROP = "1" *) 
  (* C_INCLUDE_PIXEL_REMAP_420 = "1" *) 
  (* C_M_AXIS_COMPONENT_WIDTH = "8" *) 
  (* C_M_AXIS_TDATA_WIDTH = "48" *) 
  (* C_NATIVE_COMPONENT_WIDTH = "8" *) 
  (* C_NATIVE_DATA_WIDTH = "48" *) 
  (* C_PIXELS_PER_CLOCK = "2" *) 
  (* C_VID_NATIVE_DE = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7 inst
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .axis_enable(axis_enable),
        .drop_en(drop_en),
        .fid(fid),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .overflow(overflow),
        .remap_420_en(remap_420_en),
        .underflow(underflow),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_data_arb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vid_de_arb({1'b0,1'b0}),
        .vid_field_id(vid_field_id),
        .vid_field_id_arb(1'b0),
        .vid_format(vid_format),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_hsync_arb({1'b0,1'b0}),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_io_in_clk(vid_io_in_clk),
        .vid_io_in_reset(vid_io_in_reset),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vid_vsync_arb({1'b0,1'b0}),
        .vtd_active_video(vtd_active_video),
        .vtd_field_id(vtd_field_id),
        .vtd_hblank(vtd_hblank),
        .vtd_hsync(vtd_hsync),
        .vtd_vblank(vtd_vblank),
        .vtd_vsync(vtd_vsync));
endmodule

(* C_ADDR_WIDTH = "10" *) (* C_ADDR_WIDTH_PIXEL_REMAP_420 = "11" *) (* C_COMPONENTS_PER_PIXEL = "3" *) 
(* C_FAMILY = "kintexuplus" *) (* C_HAS_ASYNC_CLK = "1" *) (* C_INCLUDE_PIXEL_DROP = "1" *) 
(* C_INCLUDE_PIXEL_REMAP_420 = "1" *) (* C_M_AXIS_COMPONENT_WIDTH = "8" *) (* C_M_AXIS_TDATA_WIDTH = "48" *) 
(* C_NATIVE_COMPONENT_WIDTH = "8" *) (* C_NATIVE_DATA_WIDTH = "48" *) (* C_PIXELS_PER_CLOCK = "2" *) 
(* C_VID_NATIVE_DE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7
   (vid_io_in_clk,
    vid_io_in_ce,
    vid_io_in_reset,
    vid_active_video,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    vid_data,
    vid_de_arb,
    vid_vsync_arb,
    vid_hsync_arb,
    vid_field_id_arb,
    vid_data_arb,
    vid_format,
    aclk,
    aclken,
    aresetn,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tuser,
    m_axis_video_tlast,
    fid,
    vtd_active_video,
    vtd_vblank,
    vtd_hblank,
    vtd_vsync,
    vtd_hsync,
    vtd_field_id,
    overflow,
    underflow,
    axis_enable,
    drop_en,
    remap_420_en);
  input vid_io_in_clk;
  input vid_io_in_ce;
  input vid_io_in_reset;
  input vid_active_video;
  input vid_vblank;
  input vid_hblank;
  input vid_vsync;
  input vid_hsync;
  input vid_field_id;
  input [47:0]vid_data;
  input [1:0]vid_de_arb;
  input [1:0]vid_vsync_arb;
  input [1:0]vid_hsync_arb;
  input vid_field_id_arb;
  input [47:0]vid_data_arb;
  input [1:0]vid_format;
  input aclk;
  input aclken;
  input aresetn;
  output [47:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tuser;
  output m_axis_video_tlast;
  output fid;
  output vtd_active_video;
  output vtd_vblank;
  output vtd_hblank;
  output vtd_vsync;
  output vtd_hsync;
  output vtd_field_id;
  output overflow;
  output underflow;
  input axis_enable;
  input drop_en;
  input remap_420_en;

  wire ARESETN0;
  wire CDC_SINGLE_RESET_PULSE_INST_n_1;
  wire COUPLER_INST_n_53;
  wire COUPLER_INST_n_54;
  wire COUPLER_INST_n_55;
  wire COUPLER_INST_n_56;
  wire COUPLER_INST_n_57;
  wire COUPLER_INST_n_58;
  wire COUPLER_INST_n_59;
  wire COUPLER_INST_n_60;
  wire COUPLER_INST_n_61;
  wire COUPLER_INST_n_62;
  wire COUPLER_INST_n_63;
  wire COUPLER_INST_n_64;
  wire COUPLER_INST_n_65;
  wire COUPLER_INST_n_66;
  wire COUPLER_INST_n_67;
  wire COUPLER_INST_n_68;
  wire COUPLER_INST_n_69;
  wire COUPLER_INST_n_70;
  wire COUPLER_INST_n_71;
  wire COUPLER_INST_n_72;
  wire COUPLER_INST_n_73;
  wire COUPLER_INST_n_74;
  wire COUPLER_INST_n_75;
  wire COUPLER_INST_n_76;
  wire COUPLER_INST_n_77;
  wire COUPLER_INST_n_78;
  wire COUPLER_INST_n_79;
  wire COUPLER_INST_n_80;
  wire COUPLER_INST_n_81;
  wire COUPLER_INST_n_82;
  wire COUPLER_INST_n_83;
  wire COUPLER_INST_n_84;
  wire COUPLER_INST_n_85;
  wire COUPLER_INST_n_86;
  wire COUPLER_INST_n_87;
  wire COUPLER_INST_n_88;
  wire COUPLER_INST_n_89;
  wire COUPLER_INST_n_90;
  wire COUPLER_INST_n_91;
  wire COUPLER_INST_n_92;
  wire FORMATTER_INST_n_58;
  wire [15:0]TDATA_IN;
  wire VID_RESET0;
  wire aclk;
  wire aclk_drop;
  wire [15:8]aclk_rd_data_from_even_chroma_fifo;
  wire [31:16]aclk_rd_data_from_luma_fifo;
  wire [15:8]aclk_rd_data_from_odd_chroma_fifo;
  wire aclk_remap;
  wire [31:0]aclk_tdata_dly;
  wire aclken;
  wire aresetn;
  wire axis_enable;
  wire [50:0]data_from_coupler;
  wire de_3;
  wire drop_en;
  wire empty_i;
  wire fid;
  wire fid_from_drop;
  wire fifo_overflow_from_remap;
  wire fifo_overflow_from_remap_sync;
  wire fifo_underflow_from_remap;
  wire \generate_drop_module.DROP_INST_n_138 ;
  wire \generate_drop_module.DROP_INST_n_2 ;
  wire \generate_drop_module.DROP_INST_n_52 ;
  wire \generate_drop_module.DROP_INST_n_53 ;
  wire \generate_drop_module.DROP_INST_n_54 ;
  wire \generate_drop_module.DROP_INST_n_55 ;
  wire \generate_drop_module.DROP_INST_n_56 ;
  wire \generate_drop_module.DROP_INST_n_57 ;
  wire \generate_drop_module.DROP_INST_n_58 ;
  wire \generate_drop_module.DROP_INST_n_59 ;
  wire \generate_drop_module.DROP_INST_n_60 ;
  wire \generate_drop_module.DROP_INST_n_61 ;
  wire \generate_drop_module.DROP_INST_n_62 ;
  wire \generate_drop_module.DROP_INST_n_63 ;
  wire \generate_drop_module.DROP_INST_n_64 ;
  wire \generate_drop_module.DROP_INST_n_65 ;
  wire \generate_drop_module.DROP_INST_n_66 ;
  wire \generate_drop_module.DROP_INST_n_67 ;
  wire \generate_drop_module.DROP_INST_n_68 ;
  wire \generate_drop_module.DROP_INST_n_69 ;
  wire \generate_drop_module.DROP_INST_n_70 ;
  wire \generate_drop_module.DROP_INST_n_71 ;
  wire \generate_drop_module.DROP_INST_n_72 ;
  wire \generate_drop_module.DROP_INST_n_73 ;
  wire \generate_drop_module.DROP_INST_n_74 ;
  wire \generate_drop_module.DROP_INST_n_75 ;
  wire \generate_drop_module.DROP_INST_n_76 ;
  wire \generate_drop_module.DROP_INST_n_77 ;
  wire \generate_drop_module.DROP_INST_n_78 ;
  wire \generate_drop_module.DROP_INST_n_79 ;
  wire \generate_drop_module.DROP_INST_n_80 ;
  wire \generate_drop_module.DROP_INST_n_81 ;
  wire \generate_drop_module.DROP_INST_n_82 ;
  wire \generate_drop_module.DROP_INST_n_83 ;
  wire \generate_drop_module.DROP_INST_n_84 ;
  wire \generate_remap_module.REMAP_420_INST_n_69 ;
  wire \generate_remap_module.REMAP_420_INST_n_72 ;
  wire \generate_remap_module.REMAP_420_INST_n_73 ;
  wire \generate_remap_module.REMAP_420_INST_n_74 ;
  wire [50:0]idf_data;
  wire [47:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire overflow;
  wire p_0_in1_in;
  wire rd_en_i;
  wire remap_420_en;
  wire [47:0]tdata_from_drop;
  wire tlast_from_drop;
  wire tready_to_drop;
  wire tuser_from_drop;
  wire tvalid_from_drop;
  wire underflow;
  wire vid_active_video;
  wire [47:0]vid_data;
  wire vid_field_id;
  wire [1:0]vid_format;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire vid_io_in_reset;
  wire vid_reset_pulse_cnt0;
  wire \vid_reset_pulse_cnt_reg_n_0_[0] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[10] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[11] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[12] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[13] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[14] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[15] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[1] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[2] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[3] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[4] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[5] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[6] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[7] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[8] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[9] ;
  wire vid_reset_pulse_from_sync;
  wire vid_vblank;
  wire vid_vsync;
  wire vid_vsync_dly;
  wire vtd_active_video;
  wire vtd_field_id;
  wire vtd_hblank;
  wire vtd_hsync;
  wire vtd_vblank;
  wire vtd_vsync;
  wire yuv422_en_sync;

  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_cdc_single CDC_SINGLE_REMAP_OVERFLOW_INST
       (.dest_out(fifo_overflow_from_remap_sync),
        .src_in(fifo_overflow_from_remap),
        .vid_io_in_clk(vid_io_in_clk));
  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_cdc_single_0 CDC_SINGLE_RESET_PULSE_INST
       (.ARESETN0(ARESETN0),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[0] ),
        .SR(CDC_SINGLE_RESET_PULSE_INST_n_1),
        .aclk(aclk),
        .aresetn(aresetn),
        .dest_out(vid_reset_pulse_from_sync));
  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_coupler COUPLER_INST
       (.D({COUPLER_INST_n_69,COUPLER_INST_n_70,COUPLER_INST_n_71,COUPLER_INST_n_72,COUPLER_INST_n_73,COUPLER_INST_n_74,COUPLER_INST_n_75,COUPLER_INST_n_76,COUPLER_INST_n_77,COUPLER_INST_n_78,COUPLER_INST_n_79,COUPLER_INST_n_80,COUPLER_INST_n_81,COUPLER_INST_n_82,COUPLER_INST_n_83,COUPLER_INST_n_84,COUPLER_INST_n_85,COUPLER_INST_n_86,COUPLER_INST_n_87,COUPLER_INST_n_88,COUPLER_INST_n_89,COUPLER_INST_n_90,COUPLER_INST_n_91,COUPLER_INST_n_92}),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[0] ),
        .VID_RESET0(VID_RESET0),
        .aclk(aclk),
        .\count_value_i_reg[9] (FORMATTER_INST_n_58),
        .de_3(de_3),
        .dest_out(yuv422_en_sync),
        .din(idf_data),
        .dout(data_from_coupler),
        .empty(empty_i),
        .fifo_underflow_from_remap(fifo_underflow_from_remap),
        .overflow(overflow),
        .overflow_0(fifo_overflow_from_remap_sync),
        .rd_en(rd_en_i),
        .underflow(underflow),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_io_in_clk(vid_io_in_clk),
        .vid_io_in_reset(vid_io_in_reset),
        .vid_reset_pulse_cnt0(vid_reset_pulse_cnt0),
        .\vid_reset_pulse_cnt_reg[0] (\vid_reset_pulse_cnt_reg_n_0_[1] ),
        .\vid_reset_pulse_cnt_reg[10] (COUPLER_INST_n_59),
        .\vid_reset_pulse_cnt_reg[10]_0 (\vid_reset_pulse_cnt_reg_n_0_[11] ),
        .\vid_reset_pulse_cnt_reg[11] (COUPLER_INST_n_58),
        .\vid_reset_pulse_cnt_reg[11]_0 (\vid_reset_pulse_cnt_reg_n_0_[12] ),
        .\vid_reset_pulse_cnt_reg[12] (COUPLER_INST_n_57),
        .\vid_reset_pulse_cnt_reg[12]_0 (\vid_reset_pulse_cnt_reg_n_0_[13] ),
        .\vid_reset_pulse_cnt_reg[13] (COUPLER_INST_n_56),
        .\vid_reset_pulse_cnt_reg[13]_0 (\vid_reset_pulse_cnt_reg_n_0_[14] ),
        .\vid_reset_pulse_cnt_reg[14] (COUPLER_INST_n_55),
        .\vid_reset_pulse_cnt_reg[14]_0 (\vid_reset_pulse_cnt_reg_n_0_[15] ),
        .\vid_reset_pulse_cnt_reg[15] (COUPLER_INST_n_54),
        .\vid_reset_pulse_cnt_reg[1] (COUPLER_INST_n_68),
        .\vid_reset_pulse_cnt_reg[1]_0 (\vid_reset_pulse_cnt_reg_n_0_[2] ),
        .\vid_reset_pulse_cnt_reg[2] (COUPLER_INST_n_67),
        .\vid_reset_pulse_cnt_reg[2]_0 (\vid_reset_pulse_cnt_reg_n_0_[3] ),
        .\vid_reset_pulse_cnt_reg[3] (COUPLER_INST_n_66),
        .\vid_reset_pulse_cnt_reg[3]_0 (\vid_reset_pulse_cnt_reg_n_0_[4] ),
        .\vid_reset_pulse_cnt_reg[4] (COUPLER_INST_n_65),
        .\vid_reset_pulse_cnt_reg[4]_0 (\vid_reset_pulse_cnt_reg_n_0_[5] ),
        .\vid_reset_pulse_cnt_reg[5] (COUPLER_INST_n_64),
        .\vid_reset_pulse_cnt_reg[5]_0 (\vid_reset_pulse_cnt_reg_n_0_[6] ),
        .\vid_reset_pulse_cnt_reg[6] (COUPLER_INST_n_63),
        .\vid_reset_pulse_cnt_reg[6]_0 (\vid_reset_pulse_cnt_reg_n_0_[7] ),
        .\vid_reset_pulse_cnt_reg[7] (COUPLER_INST_n_62),
        .\vid_reset_pulse_cnt_reg[7]_0 (\vid_reset_pulse_cnt_reg_n_0_[8] ),
        .\vid_reset_pulse_cnt_reg[8] (COUPLER_INST_n_61),
        .\vid_reset_pulse_cnt_reg[8]_0 (\vid_reset_pulse_cnt_reg_n_0_[9] ),
        .\vid_reset_pulse_cnt_reg[9] (COUPLER_INST_n_60),
        .\vid_reset_pulse_cnt_reg[9]_0 (\vid_reset_pulse_cnt_reg_n_0_[10] ),
        .vid_vsync(vid_vsync),
        .vid_vsync_0(COUPLER_INST_n_53),
        .vid_vsync_dly(vid_vsync_dly));
  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_formatter FORMATTER_INST
       (.VID_RESET0(VID_RESET0),
        .axis_enable(axis_enable),
        .de_1_reg_0(vtd_active_video),
        .de_3(de_3),
        .din(idf_data),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_io_in_clk(vid_io_in_clk),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtd_field_id(vtd_field_id),
        .vtd_hblank(vtd_hblank),
        .vtd_hsync(vtd_hsync),
        .vtd_locked_reg_0(FORMATTER_INST_n_58),
        .vtd_vblank(vtd_vblank),
        .vtd_vsync(vtd_vsync));
  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_drop \generate_drop_module.DROP_INST 
       (.D(TDATA_IN),
        .\FSM_onehot_aclk_state_reg[1]_0 (p_0_in1_in),
        .\FSM_onehot_aclk_state_reg[4]_0 (\generate_remap_module.REMAP_420_INST_n_69 ),
        .Q(aclk_tdata_dly),
        .SR(CDC_SINGLE_RESET_PULSE_INST_n_1),
        .aclk(aclk),
        .aclk_fid_dly_reg_0(vid_reset_pulse_from_sync),
        .aclk_tlast_reg_0(\generate_drop_module.DROP_INST_n_2 ),
        .aclken(aclken),
        .aresetn(aresetn),
        .dest_out(aclk_drop),
        .dout(data_from_coupler),
        .drop_en(drop_en),
        .empty(empty_i),
        .fid(fid),
        .fid_0(aclk_remap),
        .fid_1(\generate_remap_module.REMAP_420_INST_n_74 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0 (\generate_drop_module.DROP_INST_n_52 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 (\generate_drop_module.DROP_INST_n_54 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 (\generate_drop_module.DROP_INST_n_55 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 (\generate_drop_module.DROP_INST_n_64 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 (\generate_drop_module.DROP_INST_n_65 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 (\generate_drop_module.DROP_INST_n_66 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 (\generate_drop_module.DROP_INST_n_67 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 (\generate_drop_module.DROP_INST_n_68 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 (\generate_drop_module.DROP_INST_n_69 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 (\generate_drop_module.DROP_INST_n_70 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 (\generate_drop_module.DROP_INST_n_71 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 (\generate_drop_module.DROP_INST_n_72 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 (\generate_drop_module.DROP_INST_n_73 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 (\generate_drop_module.DROP_INST_n_56 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 (\generate_drop_module.DROP_INST_n_74 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 (\generate_drop_module.DROP_INST_n_75 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 (\generate_drop_module.DROP_INST_n_76 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 (\generate_drop_module.DROP_INST_n_77 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 (\generate_drop_module.DROP_INST_n_78 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_25 (\generate_drop_module.DROP_INST_n_79 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_26 (\generate_drop_module.DROP_INST_n_80 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_27 (\generate_drop_module.DROP_INST_n_81 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_28 (\generate_drop_module.DROP_INST_n_82 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_29 (\generate_drop_module.DROP_INST_n_83 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 (\generate_drop_module.DROP_INST_n_57 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_30 (\generate_drop_module.DROP_INST_n_84 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 (\generate_drop_module.DROP_INST_n_58 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 (\generate_drop_module.DROP_INST_n_59 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 (\generate_drop_module.DROP_INST_n_60 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 (\generate_drop_module.DROP_INST_n_61 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 (\generate_drop_module.DROP_INST_n_62 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 (\generate_drop_module.DROP_INST_n_63 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ({fid_from_drop,tuser_from_drop,tlast_from_drop,tdata_from_drop[47:40],tdata_from_drop[31:16],tdata_from_drop[7:0]}),
        .\generate_tdata_2ppc.aclk_tdata_reg[47]_0 ({COUPLER_INST_n_69,COUPLER_INST_n_70,COUPLER_INST_n_71,COUPLER_INST_n_72,COUPLER_INST_n_73,COUPLER_INST_n_74,COUPLER_INST_n_75,COUPLER_INST_n_76,COUPLER_INST_n_77,COUPLER_INST_n_78,COUPLER_INST_n_79,COUPLER_INST_n_80,COUPLER_INST_n_81,COUPLER_INST_n_82,COUPLER_INST_n_83,COUPLER_INST_n_84,COUPLER_INST_n_85,COUPLER_INST_n_86,COUPLER_INST_n_87,COUPLER_INST_n_88,COUPLER_INST_n_89,COUPLER_INST_n_90,COUPLER_INST_n_91,COUPLER_INST_n_92}),
        .m_axis_video_tdata(m_axis_video_tdata[47:32]),
        .\m_axis_video_tdata[15] (aclk_rd_data_from_even_chroma_fifo),
        .\m_axis_video_tdata[23] (aclk_rd_data_from_luma_fifo),
        .\m_axis_video_tdata[23]_0 (\generate_remap_module.REMAP_420_INST_n_72 ),
        .\m_axis_video_tdata[31] (\generate_remap_module.REMAP_420_INST_n_73 ),
        .\m_axis_video_tdata[31]_0 (aclk_rd_data_from_odd_chroma_fifo),
        .rd_en(rd_en_i),
        .\syncstages_ff_reg[3] (yuv422_en_sync),
        .\syncstages_ff_reg[3]_0 (\generate_drop_module.DROP_INST_n_53 ),
        .\syncstages_ff_reg[3]_1 (\generate_drop_module.DROP_INST_n_138 ),
        .tready_to_drop(tready_to_drop),
        .tvalid_from_drop(tvalid_from_drop),
        .vid_format(vid_format));
  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_remap \generate_remap_module.REMAP_420_INST 
       (.ARESETN0(ARESETN0),
        .D(aclk_rd_data_from_luma_fifo),
        .\FSM_onehot_aclk_state_reg[1]_0 (\generate_remap_module.REMAP_420_INST_n_69 ),
        .Q(aclk_tdata_dly),
        .SR(CDC_SINGLE_RESET_PULSE_INST_n_1),
        .aclk(aclk),
        .aclk_line_phase_mi_reg_0(\generate_remap_module.REMAP_420_INST_n_73 ),
        .\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 (TDATA_IN),
        .\aclk_wr_data_to_luma_fifo_reg[34]_0 ({fid_from_drop,tuser_from_drop,tlast_from_drop,tdata_from_drop[47:40],tdata_from_drop[31:16],tdata_from_drop[7:0]}),
        .aclk_wr_en_to_odd_chroma_fifo_reg_0(vid_reset_pulse_from_sync),
        .aclken(aclken),
        .aresetn(aresetn),
        .dest_out(aclk_remap),
        .dout({data_from_coupler[50],data_from_coupler[48]}),
        .fid(\generate_drop_module.DROP_INST_n_53 ),
        .fifo_underflow_from_remap(fifo_underflow_from_remap),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0 (aclk_rd_data_from_even_chroma_fifo),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 (aclk_rd_data_from_odd_chroma_fifo),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1 (\generate_remap_module.REMAP_420_INST_n_74 ),
        .m_axis_video_tdata(m_axis_video_tdata[31:0]),
        .\m_axis_video_tdata[23]_0 (\generate_drop_module.DROP_INST_n_138 ),
        .\m_axis_video_tdata[31]_0 (p_0_in1_in),
        .m_axis_video_tdata_0_sp_1(\generate_drop_module.DROP_INST_n_52 ),
        .m_axis_video_tdata_10_sp_1(\generate_drop_module.DROP_INST_n_63 ),
        .m_axis_video_tdata_11_sp_1(\generate_drop_module.DROP_INST_n_64 ),
        .m_axis_video_tdata_12_sp_1(\generate_drop_module.DROP_INST_n_65 ),
        .m_axis_video_tdata_13_sp_1(\generate_drop_module.DROP_INST_n_66 ),
        .m_axis_video_tdata_14_sp_1(\generate_drop_module.DROP_INST_n_67 ),
        .m_axis_video_tdata_15_sp_1(\generate_drop_module.DROP_INST_n_68 ),
        .m_axis_video_tdata_16_sp_1(\generate_drop_module.DROP_INST_n_69 ),
        .m_axis_video_tdata_17_sp_1(\generate_drop_module.DROP_INST_n_70 ),
        .m_axis_video_tdata_18_sp_1(\generate_drop_module.DROP_INST_n_71 ),
        .m_axis_video_tdata_19_sp_1(\generate_drop_module.DROP_INST_n_72 ),
        .m_axis_video_tdata_1_sp_1(\generate_drop_module.DROP_INST_n_54 ),
        .m_axis_video_tdata_20_sp_1(\generate_drop_module.DROP_INST_n_73 ),
        .m_axis_video_tdata_21_sp_1(\generate_drop_module.DROP_INST_n_74 ),
        .m_axis_video_tdata_22_sp_1(\generate_drop_module.DROP_INST_n_75 ),
        .m_axis_video_tdata_23_sp_1(\generate_drop_module.DROP_INST_n_76 ),
        .m_axis_video_tdata_24_sp_1(\generate_drop_module.DROP_INST_n_77 ),
        .m_axis_video_tdata_25_sp_1(\generate_drop_module.DROP_INST_n_78 ),
        .m_axis_video_tdata_26_sp_1(\generate_drop_module.DROP_INST_n_79 ),
        .m_axis_video_tdata_27_sp_1(\generate_drop_module.DROP_INST_n_80 ),
        .m_axis_video_tdata_28_sp_1(\generate_drop_module.DROP_INST_n_81 ),
        .m_axis_video_tdata_29_sp_1(\generate_drop_module.DROP_INST_n_82 ),
        .m_axis_video_tdata_2_sp_1(\generate_drop_module.DROP_INST_n_55 ),
        .m_axis_video_tdata_30_sp_1(\generate_drop_module.DROP_INST_n_83 ),
        .m_axis_video_tdata_31_sp_1(\generate_drop_module.DROP_INST_n_84 ),
        .m_axis_video_tdata_3_sp_1(\generate_drop_module.DROP_INST_n_56 ),
        .m_axis_video_tdata_4_sp_1(\generate_drop_module.DROP_INST_n_57 ),
        .m_axis_video_tdata_5_sp_1(\generate_drop_module.DROP_INST_n_58 ),
        .m_axis_video_tdata_6_sp_1(\generate_drop_module.DROP_INST_n_59 ),
        .m_axis_video_tdata_7_sp_1(\generate_drop_module.DROP_INST_n_60 ),
        .m_axis_video_tdata_8_sp_1(\generate_drop_module.DROP_INST_n_61 ),
        .m_axis_video_tdata_9_sp_1(\generate_drop_module.DROP_INST_n_62 ),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tlast_0(aclk_drop),
        .m_axis_video_tlast_1(\generate_drop_module.DROP_INST_n_2 ),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .remap_420_en(remap_420_en),
        .src_in(fifo_overflow_from_remap),
        .\syncstages_ff_reg[3] (\generate_remap_module.REMAP_420_INST_n_72 ),
        .tready_to_drop(tready_to_drop),
        .tvalid_from_drop(tvalid_from_drop));
  FDRE \vid_reset_pulse_cnt_reg[0] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_68),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[0] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[10] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_58),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[10] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[11] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_57),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[11] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[12] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_56),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[12] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[13] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_55),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[13] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[14] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_54),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[14] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[15] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(vid_reset_pulse_cnt0),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[15] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[1] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_67),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[1] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[2] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_66),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[2] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[3] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_65),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[3] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[4] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_64),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[4] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[5] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_63),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[5] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[6] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_62),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[6] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[7] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_61),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[7] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[8] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_60),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[8] ),
        .R(vid_io_in_reset));
  FDRE \vid_reset_pulse_cnt_reg[9] 
       (.C(vid_io_in_clk),
        .CE(COUPLER_INST_n_53),
        .D(COUPLER_INST_n_59),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[9] ),
        .R(vid_io_in_reset));
  FDRE vid_vsync_dly_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(vid_vsync),
        .Q(vid_vsync_dly),
        .R(1'b0));
endmodule

module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_cdc_single
   (dest_out,
    src_in,
    vid_io_in_clk);
  output dest_out;
  input src_in;
  input vid_io_in_clk;

  wire dest_out;
  wire src_in;
  wire vid_io_in_clk;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_cdc_single xpm_cdc_single_inst
       (.dest_clk(vid_io_in_clk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v5_0_7_cdc_single" *) 
module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_cdc_single_0
   (dest_out,
    SR,
    ARESETN0,
    Q,
    aclk,
    aresetn);
  output dest_out;
  output [0:0]SR;
  output ARESETN0;
  input [0:0]Q;
  input aclk;
  input aresetn;

  wire ARESETN0;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire dest_out;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_aclk_state[4]_i_1 
       (.I0(dest_out),
        .I1(aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    aclk_line_phase_si_i_2
       (.I0(aresetn),
        .I1(dest_out),
        .O(ARESETN0));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_cdc_single__4 xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(Q));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v5_0_7_cdc_single" *) 
module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_cdc_single_1
   (dest_out,
    aclk_line_phase_mi_reg,
    m_axis_video_tuser,
    m_axis_video_tdata,
    m_axis_video_tready_0,
    \FSM_onehot_aclk_state_reg[4] ,
    \FSM_onehot_aclk_state_reg[5] ,
    aclk_xfer_mi__0,
    m_axis_video_tvalid,
    \syncstages_ff_reg[3] ,
    aclk_line_phase_mi_reg_0,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ,
    aclken_0,
    remap_420_en,
    aclk,
    aclk_line_phase_mi,
    aresetn,
    aclk_line_phase_mi_reg_1,
    m_axis_video_tlast,
    m_axis_video_tdata_0_sp_1,
    \m_axis_video_tdata[0]_0 ,
    Q,
    m_axis_video_tdata_1_sp_1,
    \m_axis_video_tdata[1]_0 ,
    m_axis_video_tdata_2_sp_1,
    \m_axis_video_tdata[2]_0 ,
    m_axis_video_tdata_3_sp_1,
    \m_axis_video_tdata[3]_0 ,
    m_axis_video_tdata_4_sp_1,
    \m_axis_video_tdata[4]_0 ,
    m_axis_video_tdata_5_sp_1,
    \m_axis_video_tdata[5]_0 ,
    m_axis_video_tdata_6_sp_1,
    \m_axis_video_tdata[6]_0 ,
    m_axis_video_tdata_7_sp_1,
    \m_axis_video_tdata[7]_0 ,
    m_axis_video_tdata_8_sp_1,
    \m_axis_video_tdata[15] ,
    m_axis_video_tdata_9_sp_1,
    m_axis_video_tdata_10_sp_1,
    m_axis_video_tdata_11_sp_1,
    m_axis_video_tdata_12_sp_1,
    m_axis_video_tdata_13_sp_1,
    m_axis_video_tdata_14_sp_1,
    \m_axis_video_tdata[15]_0 ,
    m_axis_video_tdata_16_sp_1,
    \m_axis_video_tdata[16]_0 ,
    m_axis_video_tdata_17_sp_1,
    \m_axis_video_tdata[17]_0 ,
    m_axis_video_tdata_18_sp_1,
    \m_axis_video_tdata[18]_0 ,
    m_axis_video_tdata_19_sp_1,
    \m_axis_video_tdata[19]_0 ,
    m_axis_video_tdata_20_sp_1,
    \m_axis_video_tdata[20]_0 ,
    m_axis_video_tdata_21_sp_1,
    \m_axis_video_tdata[21]_0 ,
    m_axis_video_tdata_22_sp_1,
    \m_axis_video_tdata[22]_0 ,
    m_axis_video_tdata_23_sp_1,
    \m_axis_video_tdata[23]_0 ,
    m_axis_video_tdata_24_sp_1,
    \m_axis_video_tdata[31] ,
    m_axis_video_tdata_25_sp_1,
    m_axis_video_tdata_26_sp_1,
    m_axis_video_tdata_27_sp_1,
    m_axis_video_tdata_28_sp_1,
    m_axis_video_tdata_29_sp_1,
    m_axis_video_tdata_30_sp_1,
    \m_axis_video_tdata[31]_0 ,
    m_axis_video_tready,
    D,
    \m_axis_video_tdata[31]_1 ,
    \m_axis_video_tdata[31]_2 ,
    \m_axis_video_tdata[31]_3 ,
    \m_axis_video_tdata[31]_4 ,
    empty,
    \FSM_onehot_aclk_state_reg[2] ,
    \FSM_onehot_aclk_state_reg[2]_0 ,
    \FSM_onehot_aclk_state_reg[5]_0 ,
    in8,
    aclken,
    tvalid_from_drop,
    aclk_pixel_phase_mi,
    fid,
    dout,
    fid_0,
    m_axis_video_tuser_0);
  output dest_out;
  output aclk_line_phase_mi_reg;
  output m_axis_video_tuser;
  output [31:0]m_axis_video_tdata;
  output m_axis_video_tready_0;
  output [2:0]\FSM_onehot_aclk_state_reg[4] ;
  output \FSM_onehot_aclk_state_reg[5] ;
  output aclk_xfer_mi__0;
  output m_axis_video_tvalid;
  output \syncstages_ff_reg[3] ;
  output aclk_line_phase_mi_reg_0;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  output aclken_0;
  input remap_420_en;
  input aclk;
  input aclk_line_phase_mi;
  input aresetn;
  input aclk_line_phase_mi_reg_1;
  input m_axis_video_tlast;
  input m_axis_video_tdata_0_sp_1;
  input \m_axis_video_tdata[0]_0 ;
  input [33:0]Q;
  input m_axis_video_tdata_1_sp_1;
  input \m_axis_video_tdata[1]_0 ;
  input m_axis_video_tdata_2_sp_1;
  input \m_axis_video_tdata[2]_0 ;
  input m_axis_video_tdata_3_sp_1;
  input \m_axis_video_tdata[3]_0 ;
  input m_axis_video_tdata_4_sp_1;
  input \m_axis_video_tdata[4]_0 ;
  input m_axis_video_tdata_5_sp_1;
  input \m_axis_video_tdata[5]_0 ;
  input m_axis_video_tdata_6_sp_1;
  input \m_axis_video_tdata[6]_0 ;
  input m_axis_video_tdata_7_sp_1;
  input \m_axis_video_tdata[7]_0 ;
  input m_axis_video_tdata_8_sp_1;
  input [15:0]\m_axis_video_tdata[15] ;
  input m_axis_video_tdata_9_sp_1;
  input m_axis_video_tdata_10_sp_1;
  input m_axis_video_tdata_11_sp_1;
  input m_axis_video_tdata_12_sp_1;
  input m_axis_video_tdata_13_sp_1;
  input m_axis_video_tdata_14_sp_1;
  input \m_axis_video_tdata[15]_0 ;
  input m_axis_video_tdata_16_sp_1;
  input \m_axis_video_tdata[16]_0 ;
  input m_axis_video_tdata_17_sp_1;
  input \m_axis_video_tdata[17]_0 ;
  input m_axis_video_tdata_18_sp_1;
  input \m_axis_video_tdata[18]_0 ;
  input m_axis_video_tdata_19_sp_1;
  input \m_axis_video_tdata[19]_0 ;
  input m_axis_video_tdata_20_sp_1;
  input \m_axis_video_tdata[20]_0 ;
  input m_axis_video_tdata_21_sp_1;
  input \m_axis_video_tdata[21]_0 ;
  input m_axis_video_tdata_22_sp_1;
  input \m_axis_video_tdata[22]_0 ;
  input m_axis_video_tdata_23_sp_1;
  input \m_axis_video_tdata[23]_0 ;
  input m_axis_video_tdata_24_sp_1;
  input [15:0]\m_axis_video_tdata[31] ;
  input m_axis_video_tdata_25_sp_1;
  input m_axis_video_tdata_26_sp_1;
  input m_axis_video_tdata_27_sp_1;
  input m_axis_video_tdata_28_sp_1;
  input m_axis_video_tdata_29_sp_1;
  input m_axis_video_tdata_30_sp_1;
  input \m_axis_video_tdata[31]_0 ;
  input m_axis_video_tready;
  input [7:0]D;
  input [15:0]\m_axis_video_tdata[31]_1 ;
  input [0:0]\m_axis_video_tdata[31]_2 ;
  input \m_axis_video_tdata[31]_3 ;
  input [7:0]\m_axis_video_tdata[31]_4 ;
  input empty;
  input \FSM_onehot_aclk_state_reg[2] ;
  input \FSM_onehot_aclk_state_reg[2]_0 ;
  input [3:0]\FSM_onehot_aclk_state_reg[5]_0 ;
  input in8;
  input aclken;
  input tvalid_from_drop;
  input aclk_pixel_phase_mi;
  input fid;
  input [0:0]dout;
  input [1:0]fid_0;
  input [0:0]m_axis_video_tuser_0;

  wire [7:0]D;
  wire \FSM_onehot_aclk_state_reg[2] ;
  wire \FSM_onehot_aclk_state_reg[2]_0 ;
  wire [2:0]\FSM_onehot_aclk_state_reg[4] ;
  wire \FSM_onehot_aclk_state_reg[5] ;
  wire [3:0]\FSM_onehot_aclk_state_reg[5]_0 ;
  wire [33:0]Q;
  wire aclk;
  wire aclk_line_phase_mi;
  wire aclk_line_phase_mi_i_2_n_0;
  wire aclk_line_phase_mi_reg;
  wire aclk_line_phase_mi_reg_0;
  wire aclk_line_phase_mi_reg_1;
  wire aclk_pixel_phase_mi;
  wire aclk_xfer_mi__0;
  wire aclken;
  wire aclken_0;
  wire aresetn;
  wire dest_out;
  wire [0:0]dout;
  wire empty;
  wire fid;
  wire [1:0]fid_0;
  wire fid_INST_0_i_2_n_0;
  wire fid_INST_0_i_3_n_0;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  wire in8;
  wire [31:0]m_axis_video_tdata;
  wire \m_axis_video_tdata[0]_0 ;
  wire \m_axis_video_tdata[10]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[11]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[12]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[13]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[14]_INST_0_i_1_n_0 ;
  wire [15:0]\m_axis_video_tdata[15] ;
  wire \m_axis_video_tdata[15]_0 ;
  wire \m_axis_video_tdata[15]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[16]_0 ;
  wire \m_axis_video_tdata[17]_0 ;
  wire \m_axis_video_tdata[18]_0 ;
  wire \m_axis_video_tdata[19]_0 ;
  wire \m_axis_video_tdata[1]_0 ;
  wire \m_axis_video_tdata[20]_0 ;
  wire \m_axis_video_tdata[21]_0 ;
  wire \m_axis_video_tdata[22]_0 ;
  wire \m_axis_video_tdata[23]_0 ;
  wire \m_axis_video_tdata[23]_INST_0_i_3_n_0 ;
  wire \m_axis_video_tdata[23]_INST_0_i_4_n_0 ;
  wire \m_axis_video_tdata[24]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[25]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[26]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[27]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[28]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[29]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[2]_0 ;
  wire \m_axis_video_tdata[30]_INST_0_i_1_n_0 ;
  wire [15:0]\m_axis_video_tdata[31] ;
  wire \m_axis_video_tdata[31]_0 ;
  wire [15:0]\m_axis_video_tdata[31]_1 ;
  wire [0:0]\m_axis_video_tdata[31]_2 ;
  wire \m_axis_video_tdata[31]_3 ;
  wire [7:0]\m_axis_video_tdata[31]_4 ;
  wire \m_axis_video_tdata[31]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[31]_INST_0_i_3_n_0 ;
  wire \m_axis_video_tdata[31]_INST_0_i_4_n_0 ;
  wire \m_axis_video_tdata[31]_INST_0_i_5_n_0 ;
  wire \m_axis_video_tdata[3]_0 ;
  wire \m_axis_video_tdata[4]_0 ;
  wire \m_axis_video_tdata[5]_0 ;
  wire \m_axis_video_tdata[6]_0 ;
  wire \m_axis_video_tdata[7]_0 ;
  wire \m_axis_video_tdata[8]_INST_0_i_1_n_0 ;
  wire \m_axis_video_tdata[9]_INST_0_i_1_n_0 ;
  wire m_axis_video_tdata_0_sn_1;
  wire m_axis_video_tdata_10_sn_1;
  wire m_axis_video_tdata_11_sn_1;
  wire m_axis_video_tdata_12_sn_1;
  wire m_axis_video_tdata_13_sn_1;
  wire m_axis_video_tdata_14_sn_1;
  wire m_axis_video_tdata_16_sn_1;
  wire m_axis_video_tdata_17_sn_1;
  wire m_axis_video_tdata_18_sn_1;
  wire m_axis_video_tdata_19_sn_1;
  wire m_axis_video_tdata_1_sn_1;
  wire m_axis_video_tdata_20_sn_1;
  wire m_axis_video_tdata_21_sn_1;
  wire m_axis_video_tdata_22_sn_1;
  wire m_axis_video_tdata_23_sn_1;
  wire m_axis_video_tdata_24_sn_1;
  wire m_axis_video_tdata_25_sn_1;
  wire m_axis_video_tdata_26_sn_1;
  wire m_axis_video_tdata_27_sn_1;
  wire m_axis_video_tdata_28_sn_1;
  wire m_axis_video_tdata_29_sn_1;
  wire m_axis_video_tdata_2_sn_1;
  wire m_axis_video_tdata_30_sn_1;
  wire m_axis_video_tdata_3_sn_1;
  wire m_axis_video_tdata_4_sn_1;
  wire m_axis_video_tdata_5_sn_1;
  wire m_axis_video_tdata_6_sn_1;
  wire m_axis_video_tdata_7_sn_1;
  wire m_axis_video_tdata_8_sn_1;
  wire m_axis_video_tdata_9_sn_1;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tready_0;
  wire m_axis_video_tuser;
  wire [0:0]m_axis_video_tuser_0;
  wire m_axis_video_tvalid;
  wire remap_420_en;
  wire \syncstages_ff_reg[3] ;
  wire tvalid_from_drop;

  assign m_axis_video_tdata_0_sn_1 = m_axis_video_tdata_0_sp_1;
  assign m_axis_video_tdata_10_sn_1 = m_axis_video_tdata_10_sp_1;
  assign m_axis_video_tdata_11_sn_1 = m_axis_video_tdata_11_sp_1;
  assign m_axis_video_tdata_12_sn_1 = m_axis_video_tdata_12_sp_1;
  assign m_axis_video_tdata_13_sn_1 = m_axis_video_tdata_13_sp_1;
  assign m_axis_video_tdata_14_sn_1 = m_axis_video_tdata_14_sp_1;
  assign m_axis_video_tdata_16_sn_1 = m_axis_video_tdata_16_sp_1;
  assign m_axis_video_tdata_17_sn_1 = m_axis_video_tdata_17_sp_1;
  assign m_axis_video_tdata_18_sn_1 = m_axis_video_tdata_18_sp_1;
  assign m_axis_video_tdata_19_sn_1 = m_axis_video_tdata_19_sp_1;
  assign m_axis_video_tdata_1_sn_1 = m_axis_video_tdata_1_sp_1;
  assign m_axis_video_tdata_20_sn_1 = m_axis_video_tdata_20_sp_1;
  assign m_axis_video_tdata_21_sn_1 = m_axis_video_tdata_21_sp_1;
  assign m_axis_video_tdata_22_sn_1 = m_axis_video_tdata_22_sp_1;
  assign m_axis_video_tdata_23_sn_1 = m_axis_video_tdata_23_sp_1;
  assign m_axis_video_tdata_24_sn_1 = m_axis_video_tdata_24_sp_1;
  assign m_axis_video_tdata_25_sn_1 = m_axis_video_tdata_25_sp_1;
  assign m_axis_video_tdata_26_sn_1 = m_axis_video_tdata_26_sp_1;
  assign m_axis_video_tdata_27_sn_1 = m_axis_video_tdata_27_sp_1;
  assign m_axis_video_tdata_28_sn_1 = m_axis_video_tdata_28_sp_1;
  assign m_axis_video_tdata_29_sn_1 = m_axis_video_tdata_29_sp_1;
  assign m_axis_video_tdata_2_sn_1 = m_axis_video_tdata_2_sp_1;
  assign m_axis_video_tdata_30_sn_1 = m_axis_video_tdata_30_sp_1;
  assign m_axis_video_tdata_3_sn_1 = m_axis_video_tdata_3_sp_1;
  assign m_axis_video_tdata_4_sn_1 = m_axis_video_tdata_4_sp_1;
  assign m_axis_video_tdata_5_sn_1 = m_axis_video_tdata_5_sp_1;
  assign m_axis_video_tdata_6_sn_1 = m_axis_video_tdata_6_sp_1;
  assign m_axis_video_tdata_7_sn_1 = m_axis_video_tdata_7_sp_1;
  assign m_axis_video_tdata_8_sn_1 = m_axis_video_tdata_8_sp_1;
  assign m_axis_video_tdata_9_sn_1 = m_axis_video_tdata_9_sp_1;
  LUT5 #(
    .INIT(32'hAAAA0A08)) 
    \FSM_onehot_aclk_state[2]_i_1__0 
       (.I0(\FSM_onehot_aclk_state_reg[5] ),
        .I1(empty),
        .I2(aclk_line_phase_mi),
        .I3(\FSM_onehot_aclk_state_reg[2] ),
        .I4(\FSM_onehot_aclk_state_reg[2]_0 ),
        .O(\FSM_onehot_aclk_state_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \FSM_onehot_aclk_state[3]_i_2 
       (.I0(aclk_xfer_mi__0),
        .I1(\FSM_onehot_aclk_state_reg[5]_0 [3]),
        .I2(in8),
        .I3(\FSM_onehot_aclk_state_reg[5]_0 [0]),
        .O(\FSM_onehot_aclk_state_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_aclk_state[4]_i_1__0 
       (.I0(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .I1(\FSM_onehot_aclk_state_reg[5]_0 [2]),
        .I2(aclk_xfer_mi__0),
        .O(\FSM_onehot_aclk_state_reg[4] [1]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_aclk_state[4]_i_5 
       (.I0(m_axis_video_tready),
        .I1(dest_out),
        .O(m_axis_video_tready_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    \FSM_onehot_aclk_state[5]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[5]_0 [2]),
        .I1(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .I2(aclk_xfer_mi__0),
        .I3(\FSM_onehot_aclk_state_reg[5]_0 [3]),
        .O(\FSM_onehot_aclk_state_reg[4] [2]));
  LUT6 #(
    .INIT(64'hFCFCFCB800000000)) 
    \FSM_onehot_aclk_state[6]_i_2 
       (.I0(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .I1(dest_out),
        .I2(tvalid_from_drop),
        .I3(\FSM_onehot_aclk_state_reg[5]_0 [3]),
        .I4(\FSM_onehot_aclk_state_reg[5]_0 [2]),
        .I5(m_axis_video_tready),
        .O(aclk_xfer_mi__0));
  LUT6 #(
    .INIT(64'h0804080008040808)) 
    aclk_line_phase_mi_i_1
       (.I0(aclk_line_phase_mi),
        .I1(aresetn),
        .I2(aclk_line_phase_mi_reg_1),
        .I3(aclk_line_phase_mi_i_2_n_0),
        .I4(m_axis_video_tlast),
        .I5(m_axis_video_tuser),
        .O(aclk_line_phase_mi_reg));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h7)) 
    aclk_line_phase_mi_i_2
       (.I0(aclk_xfer_mi__0),
        .I1(aclken),
        .O(aclk_line_phase_mi_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h78)) 
    aclk_pixel_phase_mi_i_1
       (.I0(aclken),
        .I1(aclk_xfer_mi__0),
        .I2(aclk_pixel_phase_mi),
        .O(aclken_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    fid_INST_0_i_1
       (.I0(fid),
        .I1(dout),
        .I2(fid_INST_0_i_2_n_0),
        .I3(fid_0[1]),
        .I4(Q[33]),
        .I5(fid_INST_0_i_3_n_0),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fid_INST_0_i_2
       (.I0(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .I1(dest_out),
        .O(fid_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    fid_INST_0_i_3
       (.I0(dest_out),
        .I1(\FSM_onehot_aclk_state_reg[5]_0 [3]),
        .I2(\FSM_onehot_aclk_state_reg[5]_0 [2]),
        .I3(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .O(fid_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[0]_INST_0 
       (.I0(m_axis_video_tdata_0_sn_1),
        .I1(\m_axis_video_tdata[0]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[0]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[16]),
        .O(m_axis_video_tdata[0]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[10]_INST_0 
       (.I0(\m_axis_video_tdata[10]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_10_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[15] [2]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[15] [10]),
        .O(m_axis_video_tdata[10]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[10]_INST_0_i_1 
       (.I0(D[2]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [2]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[11]_INST_0 
       (.I0(\m_axis_video_tdata[11]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_11_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[15] [3]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[15] [11]),
        .O(m_axis_video_tdata[11]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[11]_INST_0_i_1 
       (.I0(D[3]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [3]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[12]_INST_0 
       (.I0(\m_axis_video_tdata[12]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_12_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[15] [4]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[15] [12]),
        .O(m_axis_video_tdata[12]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[12]_INST_0_i_1 
       (.I0(D[4]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [4]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[13]_INST_0 
       (.I0(\m_axis_video_tdata[13]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_13_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[15] [5]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[15] [13]),
        .O(m_axis_video_tdata[13]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[13]_INST_0_i_1 
       (.I0(D[5]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [5]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[14]_INST_0 
       (.I0(\m_axis_video_tdata[14]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_14_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[15] [6]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[15] [14]),
        .O(m_axis_video_tdata[14]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[14]_INST_0_i_1 
       (.I0(D[6]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [6]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[15]_INST_0 
       (.I0(\m_axis_video_tdata[15]_INST_0_i_1_n_0 ),
        .I1(\m_axis_video_tdata[15]_0 ),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[15] [7]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[15] [15]),
        .O(m_axis_video_tdata[15]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[15]_INST_0_i_1 
       (.I0(D[7]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [7]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[16]_INST_0 
       (.I0(m_axis_video_tdata_16_sn_1),
        .I1(\m_axis_video_tdata[16]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[8]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[24]),
        .O(m_axis_video_tdata[16]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[17]_INST_0 
       (.I0(m_axis_video_tdata_17_sn_1),
        .I1(\m_axis_video_tdata[17]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[9]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[25]),
        .O(m_axis_video_tdata[17]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[18]_INST_0 
       (.I0(m_axis_video_tdata_18_sn_1),
        .I1(\m_axis_video_tdata[18]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[10]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[26]),
        .O(m_axis_video_tdata[18]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[19]_INST_0 
       (.I0(m_axis_video_tdata_19_sn_1),
        .I1(\m_axis_video_tdata[19]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[11]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[27]),
        .O(m_axis_video_tdata[19]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[1]_INST_0 
       (.I0(m_axis_video_tdata_1_sn_1),
        .I1(\m_axis_video_tdata[1]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[1]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[17]),
        .O(m_axis_video_tdata[1]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[20]_INST_0 
       (.I0(m_axis_video_tdata_20_sn_1),
        .I1(\m_axis_video_tdata[20]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[12]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[28]),
        .O(m_axis_video_tdata[20]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[21]_INST_0 
       (.I0(m_axis_video_tdata_21_sn_1),
        .I1(\m_axis_video_tdata[21]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[13]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[29]),
        .O(m_axis_video_tdata[21]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[22]_INST_0 
       (.I0(m_axis_video_tdata_22_sn_1),
        .I1(\m_axis_video_tdata[22]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[14]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[30]),
        .O(m_axis_video_tdata[22]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[23]_INST_0 
       (.I0(m_axis_video_tdata_23_sn_1),
        .I1(\m_axis_video_tdata[23]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[15]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[31]),
        .O(m_axis_video_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h00005400)) 
    \m_axis_video_tdata[23]_INST_0_i_3 
       (.I0(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .I1(\FSM_onehot_aclk_state_reg[5]_0 [2]),
        .I2(\FSM_onehot_aclk_state_reg[5]_0 [3]),
        .I3(dest_out),
        .I4(aclk_pixel_phase_mi),
        .O(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h54000000)) 
    \m_axis_video_tdata[23]_INST_0_i_4 
       (.I0(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .I1(\FSM_onehot_aclk_state_reg[5]_0 [2]),
        .I2(\FSM_onehot_aclk_state_reg[5]_0 [3]),
        .I3(dest_out),
        .I4(aclk_pixel_phase_mi),
        .O(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axis_video_tdata[23]_INST_0_i_6 
       (.I0(dest_out),
        .I1(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .I2(aclk_pixel_phase_mi),
        .O(\syncstages_ff_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[24]_INST_0 
       (.I0(\m_axis_video_tdata[24]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_24_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[31] [0]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[31] [8]),
        .O(m_axis_video_tdata[24]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[24]_INST_0_i_1 
       (.I0(\m_axis_video_tdata[31]_4 [0]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [8]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[25]_INST_0 
       (.I0(\m_axis_video_tdata[25]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_25_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[31] [1]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[31] [9]),
        .O(m_axis_video_tdata[25]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[25]_INST_0_i_1 
       (.I0(\m_axis_video_tdata[31]_4 [1]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [9]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[26]_INST_0 
       (.I0(\m_axis_video_tdata[26]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_26_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[31] [2]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[31] [10]),
        .O(m_axis_video_tdata[26]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[26]_INST_0_i_1 
       (.I0(\m_axis_video_tdata[31]_4 [2]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [10]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[27]_INST_0 
       (.I0(\m_axis_video_tdata[27]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_27_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[31] [3]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[31] [11]),
        .O(m_axis_video_tdata[27]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[27]_INST_0_i_1 
       (.I0(\m_axis_video_tdata[31]_4 [3]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [11]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[28]_INST_0 
       (.I0(\m_axis_video_tdata[28]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_28_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[31] [4]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[31] [12]),
        .O(m_axis_video_tdata[28]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[28]_INST_0_i_1 
       (.I0(\m_axis_video_tdata[31]_4 [4]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [12]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[29]_INST_0 
       (.I0(\m_axis_video_tdata[29]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_29_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[31] [5]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[31] [13]),
        .O(m_axis_video_tdata[29]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[29]_INST_0_i_1 
       (.I0(\m_axis_video_tdata[31]_4 [5]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [13]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[2]_INST_0 
       (.I0(m_axis_video_tdata_2_sn_1),
        .I1(\m_axis_video_tdata[2]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[2]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[18]),
        .O(m_axis_video_tdata[2]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[30]_INST_0 
       (.I0(\m_axis_video_tdata[30]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_30_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[31] [6]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[31] [14]),
        .O(m_axis_video_tdata[30]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[30]_INST_0_i_1 
       (.I0(\m_axis_video_tdata[31]_4 [6]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [14]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[31]_INST_0 
       (.I0(\m_axis_video_tdata[31]_INST_0_i_1_n_0 ),
        .I1(\m_axis_video_tdata[31]_0 ),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[31] [7]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[31] [15]),
        .O(m_axis_video_tdata[31]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[31]_INST_0_i_1 
       (.I0(\m_axis_video_tdata[31]_4 [7]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [15]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0101010000000000)) 
    \m_axis_video_tdata[31]_INST_0_i_3 
       (.I0(aclk_line_phase_mi),
        .I1(aclk_pixel_phase_mi),
        .I2(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .I3(\FSM_onehot_aclk_state_reg[5]_0 [2]),
        .I4(\FSM_onehot_aclk_state_reg[5]_0 [3]),
        .I5(dest_out),
        .O(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0404040000000000)) 
    \m_axis_video_tdata[31]_INST_0_i_4 
       (.I0(aclk_line_phase_mi),
        .I1(aclk_pixel_phase_mi),
        .I2(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .I3(\FSM_onehot_aclk_state_reg[5]_0 [2]),
        .I4(\FSM_onehot_aclk_state_reg[5]_0 [3]),
        .I5(dest_out),
        .O(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \m_axis_video_tdata[31]_INST_0_i_5 
       (.I0(aclk_line_phase_mi),
        .I1(aclk_pixel_phase_mi),
        .I2(dest_out),
        .I3(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .O(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \m_axis_video_tdata[31]_INST_0_i_8 
       (.I0(aclk_line_phase_mi),
        .I1(aclk_pixel_phase_mi),
        .I2(dest_out),
        .I3(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .O(aclk_line_phase_mi_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[3]_INST_0 
       (.I0(m_axis_video_tdata_3_sn_1),
        .I1(\m_axis_video_tdata[3]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[3]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[19]),
        .O(m_axis_video_tdata[3]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[4]_INST_0 
       (.I0(m_axis_video_tdata_4_sn_1),
        .I1(\m_axis_video_tdata[4]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[4]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[20]),
        .O(m_axis_video_tdata[4]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[5]_INST_0 
       (.I0(m_axis_video_tdata_5_sn_1),
        .I1(\m_axis_video_tdata[5]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[5]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[21]),
        .O(m_axis_video_tdata[5]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[6]_INST_0 
       (.I0(m_axis_video_tdata_6_sn_1),
        .I1(\m_axis_video_tdata[6]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[6]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[22]),
        .O(m_axis_video_tdata[6]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[7]_INST_0 
       (.I0(m_axis_video_tdata_7_sn_1),
        .I1(\m_axis_video_tdata[7]_0 ),
        .I2(\m_axis_video_tdata[23]_INST_0_i_3_n_0 ),
        .I3(Q[7]),
        .I4(\m_axis_video_tdata[23]_INST_0_i_4_n_0 ),
        .I5(Q[23]),
        .O(m_axis_video_tdata[7]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[8]_INST_0 
       (.I0(\m_axis_video_tdata[8]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_8_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[15] [0]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[15] [8]),
        .O(m_axis_video_tdata[8]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[8]_INST_0_i_1 
       (.I0(D[0]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [0]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_axis_video_tdata[9]_INST_0 
       (.I0(\m_axis_video_tdata[9]_INST_0_i_1_n_0 ),
        .I1(m_axis_video_tdata_9_sn_1),
        .I2(\m_axis_video_tdata[31]_INST_0_i_3_n_0 ),
        .I3(\m_axis_video_tdata[15] [1]),
        .I4(\m_axis_video_tdata[31]_INST_0_i_4_n_0 ),
        .I5(\m_axis_video_tdata[15] [9]),
        .O(m_axis_video_tdata[9]));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_video_tdata[9]_INST_0_i_1 
       (.I0(D[1]),
        .I1(\m_axis_video_tdata[31]_INST_0_i_5_n_0 ),
        .I2(\m_axis_video_tdata[31]_1 [1]),
        .I3(\m_axis_video_tdata[31]_2 ),
        .I4(\m_axis_video_tdata[31]_3 ),
        .I5(dest_out),
        .O(\m_axis_video_tdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hECFFEC0020FF2000)) 
    m_axis_video_tuser_INST_0
       (.I0(Q[32]),
        .I1(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .I2(\FSM_onehot_aclk_state_reg[5]_0 [2]),
        .I3(dest_out),
        .I4(m_axis_video_tuser_0),
        .I5(fid_0[0]),
        .O(m_axis_video_tuser));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hFFF0EEF0)) 
    m_axis_video_tvalid_INST_0
       (.I0(\FSM_onehot_aclk_state_reg[5]_0 [2]),
        .I1(\FSM_onehot_aclk_state_reg[5]_0 [3]),
        .I2(tvalid_from_drop),
        .I3(dest_out),
        .I4(\FSM_onehot_aclk_state_reg[5]_0 [1]),
        .O(m_axis_video_tvalid));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_cdc_single__3 xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(remap_420_en));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v5_0_7_cdc_single" *) 
module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_cdc_single_17
   (dest_out,
    E,
    p_7_in,
    \FSM_onehot_aclk_state_reg[4] ,
    D,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ,
    \syncstages_ff_reg[3] ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_25 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_26 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_27 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_28 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_29 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_30 ,
    m_axis_video_tdata,
    fid,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ,
    \FSM_onehot_aclk_state_reg[3] ,
    tvalid_from_drop,
    \syncstages_ff_reg[3]_0 ,
    rd_en,
    drop_en,
    aclk,
    aclk_tdata1__1,
    aclken,
    aclk_fid_dly_reg,
    aresetn,
    Q,
    dout,
    \m_axis_video_tdata[47] ,
    \m_axis_video_tdata[47]_0 ,
    \m_axis_video_tdata[23] ,
    \m_axis_video_tdata[23]_0 ,
    \m_axis_video_tdata[15] ,
    \m_axis_video_tdata[31] ,
    \m_axis_video_tdata[31]_0 ,
    fid_0,
    fid_1,
    aclk_fid,
    aclk_fid_dly,
    \aclk_wr_data_to_luma_fifo_reg[33] ,
    \aclk_wr_data_to_luma_fifo_reg[33]_0 ,
    \FSM_onehot_aclk_state_reg[4]_0 ,
    tready_to_drop,
    empty,
    \aclk_wr_data_to_luma_fifo_reg[32] );
  output dest_out;
  output [0:0]E;
  output p_7_in;
  output [1:0]\FSM_onehot_aclk_state_reg[4] ;
  output [15:0]D;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  output \syncstages_ff_reg[3] ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_25 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_26 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_27 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_28 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_29 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_30 ;
  output [15:0]m_axis_video_tdata;
  output fid;
  output [34:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  output [4:0]\FSM_onehot_aclk_state_reg[3] ;
  output tvalid_from_drop;
  output \syncstages_ff_reg[3]_0 ;
  output rd_en;
  input drop_en;
  input aclk;
  input aclk_tdata1__1;
  input aclken;
  input aclk_fid_dly_reg;
  input aresetn;
  input [4:0]Q;
  input [50:0]dout;
  input [47:0]\m_axis_video_tdata[47] ;
  input [47:0]\m_axis_video_tdata[47]_0 ;
  input [15:0]\m_axis_video_tdata[23] ;
  input \m_axis_video_tdata[23]_0 ;
  input [7:0]\m_axis_video_tdata[15] ;
  input \m_axis_video_tdata[31] ;
  input [7:0]\m_axis_video_tdata[31]_0 ;
  input fid_0;
  input fid_1;
  input aclk_fid;
  input aclk_fid_dly;
  input \aclk_wr_data_to_luma_fifo_reg[33] ;
  input \aclk_wr_data_to_luma_fifo_reg[33]_0 ;
  input \FSM_onehot_aclk_state_reg[4]_0 ;
  input tready_to_drop;
  input empty;
  input \aclk_wr_data_to_luma_fifo_reg[32] ;

  wire [15:0]D;
  wire [0:0]E;
  wire \FSM_onehot_aclk_state[2]_i_2_n_0 ;
  wire \FSM_onehot_aclk_state[2]_i_3_n_0 ;
  wire [4:0]\FSM_onehot_aclk_state_reg[3] ;
  wire [1:0]\FSM_onehot_aclk_state_reg[4] ;
  wire \FSM_onehot_aclk_state_reg[4]_0 ;
  wire [4:0]Q;
  wire aclk;
  wire aclk_fid;
  wire aclk_fid_dly;
  wire aclk_fid_dly_reg;
  wire aclk_tdata1__1;
  wire \aclk_wr_data_to_luma_fifo_reg[32] ;
  wire \aclk_wr_data_to_luma_fifo_reg[33] ;
  wire \aclk_wr_data_to_luma_fifo_reg[33]_0 ;
  wire aclken;
  wire aresetn;
  wire dest_out;
  wire [50:0]dout;
  wire drop_en;
  wire empty;
  wire fid;
  wire fid_0;
  wire fid_1;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_25 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_26 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_27 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_28 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_29 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_30 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ;
  wire [34:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  wire [15:0]m_axis_video_tdata;
  wire [7:0]\m_axis_video_tdata[15] ;
  wire [15:0]\m_axis_video_tdata[23] ;
  wire \m_axis_video_tdata[23]_0 ;
  wire \m_axis_video_tdata[31] ;
  wire [7:0]\m_axis_video_tdata[31]_0 ;
  wire \m_axis_video_tdata[31]_INST_0_i_7_n_0 ;
  wire [47:0]\m_axis_video_tdata[47] ;
  wire [47:0]\m_axis_video_tdata[47]_0 ;
  wire p_7_in;
  wire rd_en;
  wire \syncstages_ff_reg[3] ;
  wire \syncstages_ff_reg[3]_0 ;
  wire tready_to_drop;
  wire tvalid_from_drop;

  LUT5 #(
    .INIT(32'hFAAA2AAA)) 
    \FSM_onehot_aclk_state[0]_i_1 
       (.I0(Q[0]),
        .I1(dest_out),
        .I2(dout[49]),
        .I3(p_7_in),
        .I4(Q[2]),
        .O(\FSM_onehot_aclk_state_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    \FSM_onehot_aclk_state[1]_i_1 
       (.I0(Q[1]),
        .I1(p_7_in),
        .I2(Q[3]),
        .I3(\FSM_onehot_aclk_state_reg[4]_0 ),
        .O(\FSM_onehot_aclk_state_reg[3] [1]));
  LUT6 #(
    .INIT(64'hFFFFFFAEAEAEFFAE)) 
    \FSM_onehot_aclk_state[2]_i_1 
       (.I0(\FSM_onehot_aclk_state[2]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_onehot_aclk_state[2]_i_3_n_0 ),
        .I3(Q[2]),
        .I4(p_7_in),
        .I5(Q[4]),
        .O(\FSM_onehot_aclk_state_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h8A880A08)) 
    \FSM_onehot_aclk_state[2]_i_2 
       (.I0(tready_to_drop),
        .I1(Q[1]),
        .I2(empty),
        .I3(Q[3]),
        .I4(dest_out),
        .O(\FSM_onehot_aclk_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_onehot_aclk_state[2]_i_3 
       (.I0(Q[1]),
        .I1(empty),
        .I2(dout[49]),
        .I3(dest_out),
        .O(\FSM_onehot_aclk_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2F202020)) 
    \FSM_onehot_aclk_state[3]_i_1 
       (.I0(Q[2]),
        .I1(dout[49]),
        .I2(p_7_in),
        .I3(\FSM_onehot_aclk_state_reg[4]_0 ),
        .I4(Q[3]),
        .O(\FSM_onehot_aclk_state_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0F02)) 
    \FSM_onehot_aclk_state[4]_i_2 
       (.I0(Q[3]),
        .I1(\FSM_onehot_aclk_state_reg[4]_0 ),
        .I2(p_7_in),
        .I3(Q[4]),
        .O(\FSM_onehot_aclk_state_reg[3] [4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0072)) 
    \FSM_onehot_aclk_state[4]_i_4 
       (.I0(dest_out),
        .I1(Q[1]),
        .I2(tready_to_drop),
        .I3(empty),
        .O(p_7_in));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h003A0000)) 
    XPM_FIFO_ASYNC_INST_i_1
       (.I0(tready_to_drop),
        .I1(Q[1]),
        .I2(dest_out),
        .I3(empty),
        .I4(aclken),
        .O(rd_en));
  LUT5 #(
    .INIT(32'h00800000)) 
    aclk_fid_dly_i_1
       (.I0(aclk_tdata1__1),
        .I1(aclken),
        .I2(p_7_in),
        .I3(aclk_fid_dly_reg),
        .I4(aresetn),
        .O(E));
  LUT5 #(
    .INIT(32'h88888880)) 
    aclk_fid_i_1
       (.I0(p_7_in),
        .I1(aclken),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\FSM_onehot_aclk_state_reg[4] [0]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[0]_i_1 
       (.I0(dout[8]),
        .I1(\m_axis_video_tdata[47] [8]),
        .I2(\m_axis_video_tdata[47]_0 [8]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[10]_i_1 
       (.I0(dout[34]),
        .I1(\m_axis_video_tdata[47] [34]),
        .I2(\m_axis_video_tdata[47]_0 [34]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[11]_i_1 
       (.I0(dout[35]),
        .I1(\m_axis_video_tdata[47] [35]),
        .I2(\m_axis_video_tdata[47]_0 [35]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[12]_i_1 
       (.I0(dout[36]),
        .I1(\m_axis_video_tdata[47] [36]),
        .I2(\m_axis_video_tdata[47]_0 [36]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[13]_i_1 
       (.I0(dout[37]),
        .I1(\m_axis_video_tdata[47] [37]),
        .I2(\m_axis_video_tdata[47]_0 [37]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[14]_i_1 
       (.I0(dout[38]),
        .I1(\m_axis_video_tdata[47] [38]),
        .I2(\m_axis_video_tdata[47]_0 [38]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[15]_i_1 
       (.I0(dout[39]),
        .I1(\m_axis_video_tdata[47] [39]),
        .I2(\m_axis_video_tdata[47]_0 [39]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[1]_i_1 
       (.I0(dout[9]),
        .I1(\m_axis_video_tdata[47] [9]),
        .I2(\m_axis_video_tdata[47]_0 [9]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[2]_i_1 
       (.I0(dout[10]),
        .I1(\m_axis_video_tdata[47] [10]),
        .I2(\m_axis_video_tdata[47]_0 [10]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[3]_i_1 
       (.I0(dout[11]),
        .I1(\m_axis_video_tdata[47] [11]),
        .I2(\m_axis_video_tdata[47]_0 [11]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[4]_i_1 
       (.I0(dout[12]),
        .I1(\m_axis_video_tdata[47] [12]),
        .I2(\m_axis_video_tdata[47]_0 [12]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[5]_i_1 
       (.I0(dout[13]),
        .I1(\m_axis_video_tdata[47] [13]),
        .I2(\m_axis_video_tdata[47]_0 [13]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[6]_i_1 
       (.I0(dout[14]),
        .I1(\m_axis_video_tdata[47] [14]),
        .I2(\m_axis_video_tdata[47]_0 [14]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[7]_i_1 
       (.I0(dout[15]),
        .I1(\m_axis_video_tdata[47] [15]),
        .I2(\m_axis_video_tdata[47]_0 [15]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[8]_i_1 
       (.I0(dout[32]),
        .I1(\m_axis_video_tdata[47] [32]),
        .I2(\m_axis_video_tdata[47]_0 [32]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_even_chroma_fifo[9]_i_1 
       (.I0(dout[33]),
        .I1(\m_axis_video_tdata[47] [33]),
        .I2(\m_axis_video_tdata[47]_0 [33]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[0]_i_1 
       (.I0(dout[0]),
        .I1(\m_axis_video_tdata[47] [0]),
        .I2(\m_axis_video_tdata[47]_0 [0]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [0]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[10]_i_1 
       (.I0(dout[18]),
        .I1(\m_axis_video_tdata[47] [18]),
        .I2(\m_axis_video_tdata[47]_0 [18]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [10]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[11]_i_1 
       (.I0(dout[19]),
        .I1(\m_axis_video_tdata[47] [19]),
        .I2(\m_axis_video_tdata[47]_0 [19]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [11]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[12]_i_1 
       (.I0(dout[20]),
        .I1(\m_axis_video_tdata[47] [20]),
        .I2(\m_axis_video_tdata[47]_0 [20]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [12]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[13]_i_1 
       (.I0(dout[21]),
        .I1(\m_axis_video_tdata[47] [21]),
        .I2(\m_axis_video_tdata[47]_0 [21]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [13]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[14]_i_1 
       (.I0(dout[22]),
        .I1(\m_axis_video_tdata[47] [22]),
        .I2(\m_axis_video_tdata[47]_0 [22]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [14]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[15]_i_1 
       (.I0(dout[23]),
        .I1(\m_axis_video_tdata[47] [23]),
        .I2(\m_axis_video_tdata[47]_0 [23]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [15]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[16]_i_1 
       (.I0(dout[24]),
        .I1(\m_axis_video_tdata[47] [24]),
        .I2(\m_axis_video_tdata[47]_0 [24]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [16]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[17]_i_1 
       (.I0(dout[25]),
        .I1(\m_axis_video_tdata[47] [25]),
        .I2(\m_axis_video_tdata[47]_0 [25]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [17]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[18]_i_1 
       (.I0(dout[26]),
        .I1(\m_axis_video_tdata[47] [26]),
        .I2(\m_axis_video_tdata[47]_0 [26]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [18]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[19]_i_1 
       (.I0(dout[27]),
        .I1(\m_axis_video_tdata[47] [27]),
        .I2(\m_axis_video_tdata[47]_0 [27]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [19]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[1]_i_1 
       (.I0(dout[1]),
        .I1(\m_axis_video_tdata[47] [1]),
        .I2(\m_axis_video_tdata[47]_0 [1]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [1]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[20]_i_1 
       (.I0(dout[28]),
        .I1(\m_axis_video_tdata[47] [28]),
        .I2(\m_axis_video_tdata[47]_0 [28]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [20]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[21]_i_1 
       (.I0(dout[29]),
        .I1(\m_axis_video_tdata[47] [29]),
        .I2(\m_axis_video_tdata[47]_0 [29]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [21]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[22]_i_1 
       (.I0(dout[30]),
        .I1(\m_axis_video_tdata[47] [30]),
        .I2(\m_axis_video_tdata[47]_0 [30]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [22]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[23]_i_1 
       (.I0(dout[31]),
        .I1(\m_axis_video_tdata[47] [31]),
        .I2(\m_axis_video_tdata[47]_0 [31]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [23]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[24]_i_1 
       (.I0(dout[40]),
        .I1(\m_axis_video_tdata[47] [40]),
        .I2(\m_axis_video_tdata[47]_0 [40]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [24]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[25]_i_1 
       (.I0(dout[41]),
        .I1(\m_axis_video_tdata[47] [41]),
        .I2(\m_axis_video_tdata[47]_0 [41]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [25]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[26]_i_1 
       (.I0(dout[42]),
        .I1(\m_axis_video_tdata[47] [42]),
        .I2(\m_axis_video_tdata[47]_0 [42]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [26]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[27]_i_1 
       (.I0(dout[43]),
        .I1(\m_axis_video_tdata[47] [43]),
        .I2(\m_axis_video_tdata[47]_0 [43]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [27]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[28]_i_1 
       (.I0(dout[44]),
        .I1(\m_axis_video_tdata[47] [44]),
        .I2(\m_axis_video_tdata[47]_0 [44]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [28]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[29]_i_1 
       (.I0(dout[45]),
        .I1(\m_axis_video_tdata[47] [45]),
        .I2(\m_axis_video_tdata[47]_0 [45]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [29]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[2]_i_1 
       (.I0(dout[2]),
        .I1(\m_axis_video_tdata[47] [2]),
        .I2(\m_axis_video_tdata[47]_0 [2]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [2]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[30]_i_1 
       (.I0(dout[46]),
        .I1(\m_axis_video_tdata[47] [46]),
        .I2(\m_axis_video_tdata[47]_0 [46]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [30]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[31]_i_1 
       (.I0(dout[47]),
        .I1(\m_axis_video_tdata[47] [47]),
        .I2(\m_axis_video_tdata[47]_0 [47]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_wr_data_to_luma_fifo[32]_i_1 
       (.I0(\aclk_wr_data_to_luma_fifo_reg[32] ),
        .I1(dest_out),
        .I2(dout[48]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [32]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[34]_i_2 
       (.I0(dout[50]),
        .I1(aclk_fid),
        .I2(aclk_fid_dly),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [34]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[3]_i_1 
       (.I0(dout[3]),
        .I1(\m_axis_video_tdata[47] [3]),
        .I2(\m_axis_video_tdata[47]_0 [3]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [3]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[4]_i_1 
       (.I0(dout[4]),
        .I1(\m_axis_video_tdata[47] [4]),
        .I2(\m_axis_video_tdata[47]_0 [4]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [4]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[5]_i_1 
       (.I0(dout[5]),
        .I1(\m_axis_video_tdata[47] [5]),
        .I2(\m_axis_video_tdata[47]_0 [5]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [5]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[6]_i_1 
       (.I0(dout[6]),
        .I1(\m_axis_video_tdata[47] [6]),
        .I2(\m_axis_video_tdata[47]_0 [6]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [6]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[7]_i_1 
       (.I0(dout[7]),
        .I1(\m_axis_video_tdata[47] [7]),
        .I2(\m_axis_video_tdata[47]_0 [7]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [7]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[8]_i_1 
       (.I0(dout[16]),
        .I1(\m_axis_video_tdata[47] [16]),
        .I2(\m_axis_video_tdata[47]_0 [16]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [8]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \aclk_wr_data_to_luma_fifo[9]_i_1 
       (.I0(dout[17]),
        .I1(\m_axis_video_tdata[47] [17]),
        .I2(\m_axis_video_tdata[47]_0 [17]),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [9]));
  LUT6 #(
    .INIT(64'hBABABAAAAABAAAAA)) 
    fid_INST_0
       (.I0(fid_1),
        .I1(fid_0),
        .I2(dest_out),
        .I3(Q[1]),
        .I4(aclk_fid),
        .I5(aclk_fid_dly),
        .O(fid));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \generate_tdata_2ppc.aclk_tdata[47]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(p_7_in),
        .I5(aclken),
        .O(\FSM_onehot_aclk_state_reg[4] [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[0]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[0]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [0]),
        .I4(\m_axis_video_tdata[23] [0]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[10]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[10]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [10]),
        .I4(\m_axis_video_tdata[15] [2]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[11]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[11]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [11]),
        .I4(\m_axis_video_tdata[15] [3]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[12]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[12]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [12]),
        .I4(\m_axis_video_tdata[15] [4]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[13]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[13]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [13]),
        .I4(\m_axis_video_tdata[15] [5]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[14]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[14]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [14]),
        .I4(\m_axis_video_tdata[15] [6]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[15]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[15]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [15]),
        .I4(\m_axis_video_tdata[15] [7]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[16]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[16]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [16]),
        .I4(\m_axis_video_tdata[23] [8]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[17]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[17]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [17]),
        .I4(\m_axis_video_tdata[23] [9]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[18]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[18]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [18]),
        .I4(\m_axis_video_tdata[23] [10]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[19]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[19]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [19]),
        .I4(\m_axis_video_tdata[23] [11]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[1]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[1]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [1]),
        .I4(\m_axis_video_tdata[23] [1]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[20]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[20]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [20]),
        .I4(\m_axis_video_tdata[23] [12]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[21]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[21]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [21]),
        .I4(\m_axis_video_tdata[23] [13]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[22]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[22]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [22]),
        .I4(\m_axis_video_tdata[23] [14]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[23]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[23]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [23]),
        .I4(\m_axis_video_tdata[23] [15]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_video_tdata[23]_INST_0_i_5 
       (.I0(dest_out),
        .I1(Q[1]),
        .O(\syncstages_ff_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[24]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[24]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [24]),
        .I4(\m_axis_video_tdata[31]_0 [0]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[25]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[25]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [25]),
        .I4(\m_axis_video_tdata[31]_0 [1]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[26]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[26]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [26]),
        .I4(\m_axis_video_tdata[31]_0 [2]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_25 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[27]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[27]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [27]),
        .I4(\m_axis_video_tdata[31]_0 [3]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_26 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[28]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[28]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [28]),
        .I4(\m_axis_video_tdata[31]_0 [4]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_27 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[29]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[29]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [29]),
        .I4(\m_axis_video_tdata[31]_0 [5]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_28 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[2]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[2]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [2]),
        .I4(\m_axis_video_tdata[23] [2]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[30]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[30]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [30]),
        .I4(\m_axis_video_tdata[31]_0 [6]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_29 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[31]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[31]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [31]),
        .I4(\m_axis_video_tdata[31]_0 [7]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_30 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_video_tdata[31]_INST_0_i_6 
       (.I0(dest_out),
        .I1(fid_0),
        .O(\syncstages_ff_reg[3] ));
  LUT3 #(
    .INIT(8'h04)) 
    \m_axis_video_tdata[31]_INST_0_i_7 
       (.I0(Q[1]),
        .I1(dest_out),
        .I2(fid_0),
        .O(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[32]_INST_0 
       (.I0(dout[32]),
        .I1(\m_axis_video_tdata[47] [32]),
        .I2(\m_axis_video_tdata[47]_0 [32]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[0]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[33]_INST_0 
       (.I0(dout[33]),
        .I1(\m_axis_video_tdata[47] [33]),
        .I2(\m_axis_video_tdata[47]_0 [33]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[1]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[34]_INST_0 
       (.I0(dout[34]),
        .I1(\m_axis_video_tdata[47] [34]),
        .I2(\m_axis_video_tdata[47]_0 [34]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[2]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[35]_INST_0 
       (.I0(dout[35]),
        .I1(\m_axis_video_tdata[47] [35]),
        .I2(\m_axis_video_tdata[47]_0 [35]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[3]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[36]_INST_0 
       (.I0(dout[36]),
        .I1(\m_axis_video_tdata[47] [36]),
        .I2(\m_axis_video_tdata[47]_0 [36]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[4]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[37]_INST_0 
       (.I0(dout[37]),
        .I1(\m_axis_video_tdata[47] [37]),
        .I2(\m_axis_video_tdata[47]_0 [37]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[5]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[38]_INST_0 
       (.I0(dout[38]),
        .I1(\m_axis_video_tdata[47] [38]),
        .I2(\m_axis_video_tdata[47]_0 [38]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[6]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[39]_INST_0 
       (.I0(dout[39]),
        .I1(\m_axis_video_tdata[47] [39]),
        .I2(\m_axis_video_tdata[47]_0 [39]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[3]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[3]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [3]),
        .I4(\m_axis_video_tdata[23] [3]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[40]_INST_0 
       (.I0(dout[40]),
        .I1(\m_axis_video_tdata[47] [40]),
        .I2(\m_axis_video_tdata[47]_0 [40]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[8]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[41]_INST_0 
       (.I0(dout[41]),
        .I1(\m_axis_video_tdata[47] [41]),
        .I2(\m_axis_video_tdata[47]_0 [41]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[9]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[42]_INST_0 
       (.I0(dout[42]),
        .I1(\m_axis_video_tdata[47] [42]),
        .I2(\m_axis_video_tdata[47]_0 [42]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[10]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[43]_INST_0 
       (.I0(dout[43]),
        .I1(\m_axis_video_tdata[47] [43]),
        .I2(\m_axis_video_tdata[47]_0 [43]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[11]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[44]_INST_0 
       (.I0(dout[44]),
        .I1(\m_axis_video_tdata[47] [44]),
        .I2(\m_axis_video_tdata[47]_0 [44]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[12]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[45]_INST_0 
       (.I0(dout[45]),
        .I1(\m_axis_video_tdata[47] [45]),
        .I2(\m_axis_video_tdata[47]_0 [45]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[13]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[46]_INST_0 
       (.I0(dout[46]),
        .I1(\m_axis_video_tdata[47] [46]),
        .I2(\m_axis_video_tdata[47]_0 [46]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[14]));
  LUT6 #(
    .INIT(64'h00000000F0CCAAAA)) 
    \m_axis_video_tdata[47]_INST_0 
       (.I0(dout[47]),
        .I1(\m_axis_video_tdata[47] [47]),
        .I2(\m_axis_video_tdata[47]_0 [47]),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(fid_0),
        .O(m_axis_video_tdata[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[4]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[4]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [4]),
        .I4(\m_axis_video_tdata[23] [4]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[5]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[5]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [5]),
        .I4(\m_axis_video_tdata[23] [5]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[6]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[6]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [6]),
        .I4(\m_axis_video_tdata[23] [6]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[7]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[7]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [7]),
        .I4(\m_axis_video_tdata[23] [7]),
        .I5(\m_axis_video_tdata[23]_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[8]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[8]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [8]),
        .I4(\m_axis_video_tdata[15] [0]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_video_tdata[9]_INST_0_i_2 
       (.I0(\syncstages_ff_reg[3] ),
        .I1(dout[9]),
        .I2(\m_axis_video_tdata[31]_INST_0_i_7_n_0 ),
        .I3(\m_axis_video_tdata[47] [9]),
        .I4(\m_axis_video_tdata[15] [1]),
        .I5(\m_axis_video_tdata[31] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    m_axis_video_tuser_INST_0_i_1
       (.I0(dout[49]),
        .I1(\aclk_wr_data_to_luma_fifo_reg[33] ),
        .I2(\aclk_wr_data_to_luma_fifo_reg[33]_0 ),
        .I3(dest_out),
        .I4(Q[1]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [33]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFA33)) 
    m_axis_video_tvalid_INST_0_i_1
       (.I0(Q[1]),
        .I1(empty),
        .I2(Q[3]),
        .I3(dest_out),
        .O(tvalid_from_drop));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_cdc_single__1 xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(drop_en));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v5_0_7_cdc_single" *) 
module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_cdc_single_18
   (\syncstages_ff_reg[3] ,
    E,
    aclk,
    Q,
    p_7_in,
    aclken,
    aclk_tdata1__1,
    vid_format);
  output \syncstages_ff_reg[3] ;
  output [0:0]E;
  input aclk;
  input [0:0]Q;
  input p_7_in;
  input aclken;
  input aclk_tdata1__1;
  input [1:0]vid_format;

  wire [0:0]E;
  wire [0:0]Q;
  wire aclk;
  wire aclk_tdata1__1;
  wire aclken;
  wire p_7_in;
  wire \syncstages_ff_reg[3] ;
  wire [1:0]vid_format;
  wire xpm_cdc_single_inst_i_1_n_0;

  LUT5 #(
    .INIT(32'h30008000)) 
    \generate_tdata_2ppc.aclk_tdata[23]_i_1 
       (.I0(Q),
        .I1(\syncstages_ff_reg[3] ),
        .I2(p_7_in),
        .I3(aclken),
        .I4(aclk_tdata1__1),
        .O(E));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_cdc_single__2 xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(\syncstages_ff_reg[3] ),
        .src_clk(1'b0),
        .src_in(xpm_cdc_single_inst_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    xpm_cdc_single_inst_i_1
       (.I0(vid_format[1]),
        .I1(vid_format[0]),
        .O(xpm_cdc_single_inst_i_1_n_0));
endmodule

module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_coupler
   (dout,
    empty,
    VID_RESET0,
    vid_vsync_0,
    \vid_reset_pulse_cnt_reg[15] ,
    \vid_reset_pulse_cnt_reg[14] ,
    \vid_reset_pulse_cnt_reg[13] ,
    \vid_reset_pulse_cnt_reg[12] ,
    \vid_reset_pulse_cnt_reg[11] ,
    \vid_reset_pulse_cnt_reg[10] ,
    \vid_reset_pulse_cnt_reg[9] ,
    \vid_reset_pulse_cnt_reg[8] ,
    \vid_reset_pulse_cnt_reg[7] ,
    \vid_reset_pulse_cnt_reg[6] ,
    \vid_reset_pulse_cnt_reg[5] ,
    \vid_reset_pulse_cnt_reg[4] ,
    \vid_reset_pulse_cnt_reg[3] ,
    \vid_reset_pulse_cnt_reg[2] ,
    \vid_reset_pulse_cnt_reg[1] ,
    D,
    vid_reset_pulse_cnt0,
    overflow,
    underflow,
    vid_io_in_reset,
    vid_io_in_clk,
    din,
    aclk,
    rd_en,
    \count_value_i_reg[9] ,
    de_3,
    vid_io_in_ce,
    vid_vsync,
    vid_vsync_dly,
    \vid_reset_pulse_cnt_reg[14]_0 ,
    \vid_reset_pulse_cnt_reg[13]_0 ,
    \vid_reset_pulse_cnt_reg[12]_0 ,
    \vid_reset_pulse_cnt_reg[11]_0 ,
    \vid_reset_pulse_cnt_reg[10]_0 ,
    \vid_reset_pulse_cnt_reg[9]_0 ,
    \vid_reset_pulse_cnt_reg[8]_0 ,
    \vid_reset_pulse_cnt_reg[7]_0 ,
    \vid_reset_pulse_cnt_reg[6]_0 ,
    \vid_reset_pulse_cnt_reg[5]_0 ,
    \vid_reset_pulse_cnt_reg[4]_0 ,
    \vid_reset_pulse_cnt_reg[3]_0 ,
    \vid_reset_pulse_cnt_reg[2]_0 ,
    \vid_reset_pulse_cnt_reg[1]_0 ,
    \vid_reset_pulse_cnt_reg[0] ,
    dest_out,
    overflow_0,
    fifo_underflow_from_remap,
    Q);
  output [50:0]dout;
  output empty;
  output VID_RESET0;
  output vid_vsync_0;
  output \vid_reset_pulse_cnt_reg[15] ;
  output \vid_reset_pulse_cnt_reg[14] ;
  output \vid_reset_pulse_cnt_reg[13] ;
  output \vid_reset_pulse_cnt_reg[12] ;
  output \vid_reset_pulse_cnt_reg[11] ;
  output \vid_reset_pulse_cnt_reg[10] ;
  output \vid_reset_pulse_cnt_reg[9] ;
  output \vid_reset_pulse_cnt_reg[8] ;
  output \vid_reset_pulse_cnt_reg[7] ;
  output \vid_reset_pulse_cnt_reg[6] ;
  output \vid_reset_pulse_cnt_reg[5] ;
  output \vid_reset_pulse_cnt_reg[4] ;
  output \vid_reset_pulse_cnt_reg[3] ;
  output \vid_reset_pulse_cnt_reg[2] ;
  output \vid_reset_pulse_cnt_reg[1] ;
  output [23:0]D;
  output vid_reset_pulse_cnt0;
  output overflow;
  output underflow;
  input vid_io_in_reset;
  input vid_io_in_clk;
  input [50:0]din;
  input aclk;
  input rd_en;
  input \count_value_i_reg[9] ;
  input de_3;
  input vid_io_in_ce;
  input vid_vsync;
  input vid_vsync_dly;
  input \vid_reset_pulse_cnt_reg[14]_0 ;
  input \vid_reset_pulse_cnt_reg[13]_0 ;
  input \vid_reset_pulse_cnt_reg[12]_0 ;
  input \vid_reset_pulse_cnt_reg[11]_0 ;
  input \vid_reset_pulse_cnt_reg[10]_0 ;
  input \vid_reset_pulse_cnt_reg[9]_0 ;
  input \vid_reset_pulse_cnt_reg[8]_0 ;
  input \vid_reset_pulse_cnt_reg[7]_0 ;
  input \vid_reset_pulse_cnt_reg[6]_0 ;
  input \vid_reset_pulse_cnt_reg[5]_0 ;
  input \vid_reset_pulse_cnt_reg[4]_0 ;
  input \vid_reset_pulse_cnt_reg[3]_0 ;
  input \vid_reset_pulse_cnt_reg[2]_0 ;
  input \vid_reset_pulse_cnt_reg[1]_0 ;
  input \vid_reset_pulse_cnt_reg[0] ;
  input dest_out;
  input overflow_0;
  input fifo_underflow_from_remap;
  input [0:0]Q;

  wire [23:0]D;
  wire [0:0]Q;
  wire VID_RESET0;
  wire aclk;
  wire \count_value_i_reg[9] ;
  wire de_3;
  wire dest_out;
  wire [50:0]din;
  wire [50:0]dout;
  wire empty;
  wire fifo_underflow_from_remap;
  wire overflow;
  wire overflow_0;
  wire rd_en;
  wire underflow;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire vid_io_in_reset;
  wire vid_reset_pulse_cnt0;
  wire \vid_reset_pulse_cnt_reg[0] ;
  wire \vid_reset_pulse_cnt_reg[10] ;
  wire \vid_reset_pulse_cnt_reg[10]_0 ;
  wire \vid_reset_pulse_cnt_reg[11] ;
  wire \vid_reset_pulse_cnt_reg[11]_0 ;
  wire \vid_reset_pulse_cnt_reg[12] ;
  wire \vid_reset_pulse_cnt_reg[12]_0 ;
  wire \vid_reset_pulse_cnt_reg[13] ;
  wire \vid_reset_pulse_cnt_reg[13]_0 ;
  wire \vid_reset_pulse_cnt_reg[14] ;
  wire \vid_reset_pulse_cnt_reg[14]_0 ;
  wire \vid_reset_pulse_cnt_reg[15] ;
  wire \vid_reset_pulse_cnt_reg[1] ;
  wire \vid_reset_pulse_cnt_reg[1]_0 ;
  wire \vid_reset_pulse_cnt_reg[2] ;
  wire \vid_reset_pulse_cnt_reg[2]_0 ;
  wire \vid_reset_pulse_cnt_reg[3] ;
  wire \vid_reset_pulse_cnt_reg[3]_0 ;
  wire \vid_reset_pulse_cnt_reg[4] ;
  wire \vid_reset_pulse_cnt_reg[4]_0 ;
  wire \vid_reset_pulse_cnt_reg[5] ;
  wire \vid_reset_pulse_cnt_reg[5]_0 ;
  wire \vid_reset_pulse_cnt_reg[6] ;
  wire \vid_reset_pulse_cnt_reg[6]_0 ;
  wire \vid_reset_pulse_cnt_reg[7] ;
  wire \vid_reset_pulse_cnt_reg[7]_0 ;
  wire \vid_reset_pulse_cnt_reg[8] ;
  wire \vid_reset_pulse_cnt_reg[8]_0 ;
  wire \vid_reset_pulse_cnt_reg[9] ;
  wire \vid_reset_pulse_cnt_reg[9]_0 ;
  wire vid_vsync;
  wire vid_vsync_0;
  wire vid_vsync_dly;
  wire wr_en_i__0;
  wire wr_rst_busy_i;

  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_fifo_async \generate_async_fifo.FIFO_INST 
       (.D(D),
        .Q(Q),
        .VID_RESET0(VID_RESET0),
        .aclk(aclk),
        .dest_out(dest_out),
        .din(din),
        .dout(dout),
        .empty(empty),
        .fifo_underflow_from_remap(fifo_underflow_from_remap),
        .overflow(overflow),
        .overflow_0(overflow_0),
        .rd_en(rd_en),
        .underflow(underflow),
        .vid_io_in_clk(vid_io_in_clk),
        .vid_io_in_reset(vid_io_in_reset),
        .vid_reset_pulse_cnt0(vid_reset_pulse_cnt0),
        .\vid_reset_pulse_cnt_reg[0] (\vid_reset_pulse_cnt_reg[0] ),
        .\vid_reset_pulse_cnt_reg[10] (\vid_reset_pulse_cnt_reg[10] ),
        .\vid_reset_pulse_cnt_reg[10]_0 (\vid_reset_pulse_cnt_reg[10]_0 ),
        .\vid_reset_pulse_cnt_reg[11] (\vid_reset_pulse_cnt_reg[11] ),
        .\vid_reset_pulse_cnt_reg[11]_0 (\vid_reset_pulse_cnt_reg[11]_0 ),
        .\vid_reset_pulse_cnt_reg[12] (\vid_reset_pulse_cnt_reg[12] ),
        .\vid_reset_pulse_cnt_reg[12]_0 (\vid_reset_pulse_cnt_reg[12]_0 ),
        .\vid_reset_pulse_cnt_reg[13] (\vid_reset_pulse_cnt_reg[13] ),
        .\vid_reset_pulse_cnt_reg[13]_0 (\vid_reset_pulse_cnt_reg[13]_0 ),
        .\vid_reset_pulse_cnt_reg[14] (\vid_reset_pulse_cnt_reg[14] ),
        .\vid_reset_pulse_cnt_reg[14]_0 (\vid_reset_pulse_cnt_reg[14]_0 ),
        .\vid_reset_pulse_cnt_reg[15] (\vid_reset_pulse_cnt_reg[15] ),
        .\vid_reset_pulse_cnt_reg[1] (\vid_reset_pulse_cnt_reg[1] ),
        .\vid_reset_pulse_cnt_reg[1]_0 (\vid_reset_pulse_cnt_reg[1]_0 ),
        .\vid_reset_pulse_cnt_reg[2] (\vid_reset_pulse_cnt_reg[2] ),
        .\vid_reset_pulse_cnt_reg[2]_0 (\vid_reset_pulse_cnt_reg[2]_0 ),
        .\vid_reset_pulse_cnt_reg[3] (\vid_reset_pulse_cnt_reg[3] ),
        .\vid_reset_pulse_cnt_reg[3]_0 (\vid_reset_pulse_cnt_reg[3]_0 ),
        .\vid_reset_pulse_cnt_reg[4] (\vid_reset_pulse_cnt_reg[4] ),
        .\vid_reset_pulse_cnt_reg[4]_0 (\vid_reset_pulse_cnt_reg[4]_0 ),
        .\vid_reset_pulse_cnt_reg[5] (\vid_reset_pulse_cnt_reg[5] ),
        .\vid_reset_pulse_cnt_reg[5]_0 (\vid_reset_pulse_cnt_reg[5]_0 ),
        .\vid_reset_pulse_cnt_reg[6] (\vid_reset_pulse_cnt_reg[6] ),
        .\vid_reset_pulse_cnt_reg[6]_0 (\vid_reset_pulse_cnt_reg[6]_0 ),
        .\vid_reset_pulse_cnt_reg[7] (\vid_reset_pulse_cnt_reg[7] ),
        .\vid_reset_pulse_cnt_reg[7]_0 (\vid_reset_pulse_cnt_reg[7]_0 ),
        .\vid_reset_pulse_cnt_reg[8] (\vid_reset_pulse_cnt_reg[8] ),
        .\vid_reset_pulse_cnt_reg[8]_0 (\vid_reset_pulse_cnt_reg[8]_0 ),
        .\vid_reset_pulse_cnt_reg[9] (\vid_reset_pulse_cnt_reg[9] ),
        .\vid_reset_pulse_cnt_reg[9]_0 (\vid_reset_pulse_cnt_reg[9]_0 ),
        .vid_vsync(vid_vsync),
        .vid_vsync_0(vid_vsync_0),
        .vid_vsync_dly(vid_vsync_dly),
        .wr_en(wr_en_i__0),
        .wr_rst_busy(wr_rst_busy_i));
  LUT5 #(
    .INIT(32'h00200000)) 
    wr_en_i
       (.I0(\count_value_i_reg[9] ),
        .I1(VID_RESET0),
        .I2(de_3),
        .I3(wr_rst_busy_i),
        .I4(vid_io_in_ce),
        .O(wr_en_i__0));
endmodule

module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_drop
   (dest_out,
    \syncstages_ff_reg[3] ,
    aclk_tlast_reg_0,
    D,
    Q,
    \FSM_onehot_aclk_state_reg[1]_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ,
    \syncstages_ff_reg[3]_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_25 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_26 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_27 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_28 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_29 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_30 ,
    m_axis_video_tdata,
    fid,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ,
    tvalid_from_drop,
    \syncstages_ff_reg[3]_1 ,
    rd_en,
    drop_en,
    aclk,
    SR,
    dout,
    aclken,
    aclk_fid_dly_reg_0,
    aresetn,
    \m_axis_video_tdata[23] ,
    \m_axis_video_tdata[23]_0 ,
    \m_axis_video_tdata[15] ,
    \m_axis_video_tdata[31] ,
    \m_axis_video_tdata[31]_0 ,
    fid_0,
    fid_1,
    \FSM_onehot_aclk_state_reg[4]_0 ,
    tready_to_drop,
    empty,
    vid_format,
    \generate_tdata_2ppc.aclk_tdata_reg[47]_0 );
  output dest_out;
  output \syncstages_ff_reg[3] ;
  output aclk_tlast_reg_0;
  output [15:0]D;
  output [31:0]Q;
  output [0:0]\FSM_onehot_aclk_state_reg[1]_0 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  output \syncstages_ff_reg[3]_0 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_25 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_26 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_27 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_28 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_29 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_30 ;
  output [15:0]m_axis_video_tdata;
  output fid;
  output [34:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  output tvalid_from_drop;
  output \syncstages_ff_reg[3]_1 ;
  output rd_en;
  input drop_en;
  input aclk;
  input [0:0]SR;
  input [50:0]dout;
  input aclken;
  input aclk_fid_dly_reg_0;
  input aresetn;
  input [15:0]\m_axis_video_tdata[23] ;
  input \m_axis_video_tdata[23]_0 ;
  input [7:0]\m_axis_video_tdata[15] ;
  input \m_axis_video_tdata[31] ;
  input [7:0]\m_axis_video_tdata[31]_0 ;
  input fid_0;
  input fid_1;
  input \FSM_onehot_aclk_state_reg[4]_0 ;
  input tready_to_drop;
  input empty;
  input [1:0]vid_format;
  input [23:0]\generate_tdata_2ppc.aclk_tdata_reg[47]_0 ;

  wire CDC_SINGLE_INST_n_106;
  wire CDC_SINGLE_INST_n_107;
  wire CDC_SINGLE_INST_n_108;
  wire CDC_SINGLE_INST_n_109;
  wire CDC_SINGLE_INST_n_110;
  wire CDC_SINGLE_INST_n_3;
  wire CDC_SINGLE_INST_n_4;
  wire CDC_YUV422_EN_INST_n_1;
  wire [15:0]D;
  wire [0:0]\FSM_onehot_aclk_state_reg[1]_0 ;
  wire \FSM_onehot_aclk_state_reg[4]_0 ;
  wire \FSM_onehot_aclk_state_reg_n_0_[0] ;
  wire \FSM_onehot_aclk_state_reg_n_0_[4] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aclk_fid;
  wire aclk_fid_dly;
  wire aclk_fid_dly_reg_0;
  wire [47:0]aclk_tdata;
  wire aclk_tdata1__1;
  wire [47:32]aclk_tdata_dly;
  wire [0:0]aclk_tdata_dly_0;
  wire aclk_tlast;
  wire aclk_tlast_reg_0;
  wire aclk_tuser_dly_reg_n_0;
  wire aclk_tuser_reg_n_0;
  wire aclken;
  wire aresetn;
  wire dest_out;
  wire [50:0]dout;
  wire drop_en;
  wire empty;
  wire fid;
  wire fid_0;
  wire fid_1;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_25 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_26 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_27 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_28 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_29 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_30 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ;
  wire [34:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  wire [23:0]\generate_tdata_2ppc.aclk_tdata_reg[47]_0 ;
  wire [15:0]m_axis_video_tdata;
  wire [7:0]\m_axis_video_tdata[15] ;
  wire [15:0]\m_axis_video_tdata[23] ;
  wire \m_axis_video_tdata[23]_0 ;
  wire \m_axis_video_tdata[31] ;
  wire [7:0]\m_axis_video_tdata[31]_0 ;
  wire p_1_in;
  wire [23:16]p_2_in;
  wire p_7_in;
  wire rd_en;
  wire \syncstages_ff_reg[3] ;
  wire \syncstages_ff_reg[3]_0 ;
  wire \syncstages_ff_reg[3]_1 ;
  wire tready_to_drop;
  wire tvalid_from_drop;
  wire [1:0]vid_format;

  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_cdc_single_17 CDC_SINGLE_INST
       (.D(D),
        .E(aclk_tdata_dly_0),
        .\FSM_onehot_aclk_state_reg[3] ({CDC_SINGLE_INST_n_106,CDC_SINGLE_INST_n_107,CDC_SINGLE_INST_n_108,CDC_SINGLE_INST_n_109,CDC_SINGLE_INST_n_110}),
        .\FSM_onehot_aclk_state_reg[4] ({CDC_SINGLE_INST_n_3,CDC_SINGLE_INST_n_4}),
        .\FSM_onehot_aclk_state_reg[4]_0 (\FSM_onehot_aclk_state_reg[4]_0 ),
        .Q({\FSM_onehot_aclk_state_reg_n_0_[4] ,p_1_in,aclk_tlast,\FSM_onehot_aclk_state_reg[1]_0 ,\FSM_onehot_aclk_state_reg_n_0_[0] }),
        .aclk(aclk),
        .aclk_fid(aclk_fid),
        .aclk_fid_dly(aclk_fid_dly),
        .aclk_fid_dly_reg(aclk_fid_dly_reg_0),
        .aclk_tdata1__1(aclk_tdata1__1),
        .\aclk_wr_data_to_luma_fifo_reg[32] (aclk_tlast_reg_0),
        .\aclk_wr_data_to_luma_fifo_reg[33] (aclk_tuser_reg_n_0),
        .\aclk_wr_data_to_luma_fifo_reg[33]_0 (aclk_tuser_dly_reg_n_0),
        .aclken(aclken),
        .aresetn(aresetn),
        .dest_out(dest_out),
        .dout(dout),
        .drop_en(drop_en),
        .empty(empty),
        .fid(fid),
        .fid_0(fid_0),
        .fid_1(fid_1),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_25 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_25 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_26 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_26 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_27 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_27 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_28 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_28 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_29 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_29 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_30 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_30 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ),
        .m_axis_video_tdata(m_axis_video_tdata),
        .\m_axis_video_tdata[15] (\m_axis_video_tdata[15] ),
        .\m_axis_video_tdata[23] (\m_axis_video_tdata[23] ),
        .\m_axis_video_tdata[23]_0 (\m_axis_video_tdata[23]_0 ),
        .\m_axis_video_tdata[31] (\m_axis_video_tdata[31] ),
        .\m_axis_video_tdata[31]_0 (\m_axis_video_tdata[31]_0 ),
        .\m_axis_video_tdata[47] (aclk_tdata),
        .\m_axis_video_tdata[47]_0 ({aclk_tdata_dly,Q}),
        .p_7_in(p_7_in),
        .rd_en(rd_en),
        .\syncstages_ff_reg[3] (\syncstages_ff_reg[3]_0 ),
        .\syncstages_ff_reg[3]_0 (\syncstages_ff_reg[3]_1 ),
        .tready_to_drop(tready_to_drop),
        .tvalid_from_drop(tvalid_from_drop));
  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_cdc_single_18 CDC_YUV422_EN_INST
       (.E(CDC_YUV422_EN_INST_n_1),
        .Q(aclk_tlast),
        .aclk(aclk),
        .aclk_tdata1__1(aclk_tdata1__1),
        .aclken(aclken),
        .p_7_in(p_7_in),
        .\syncstages_ff_reg[3] (\syncstages_ff_reg[3] ),
        .vid_format(vid_format));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:00001,C_STATE_ACTIVE:10000,C_STATE_ODD:01000,C_STATE_WAIT:00010,C_STATE_EVEN:00100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_aclk_state_reg[0] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_110),
        .Q(\FSM_onehot_aclk_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:00001,C_STATE_ACTIVE:10000,C_STATE_ODD:01000,C_STATE_WAIT:00010,C_STATE_EVEN:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[1] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_109),
        .Q(\FSM_onehot_aclk_state_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:00001,C_STATE_ACTIVE:10000,C_STATE_ODD:01000,C_STATE_WAIT:00010,C_STATE_EVEN:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[2] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_108),
        .Q(aclk_tlast),
        .R(SR));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:00001,C_STATE_ACTIVE:10000,C_STATE_ODD:01000,C_STATE_WAIT:00010,C_STATE_EVEN:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[3] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_107),
        .Q(p_1_in),
        .R(SR));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:00001,C_STATE_ACTIVE:10000,C_STATE_ODD:01000,C_STATE_WAIT:00010,C_STATE_EVEN:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[4] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_106),
        .Q(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    aclk_fid_dly_i_2
       (.I0(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .I1(p_1_in),
        .I2(\FSM_onehot_aclk_state_reg_n_0_[0] ),
        .O(aclk_tdata1__1));
  FDRE aclk_fid_dly_reg
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_fid),
        .Q(aclk_fid_dly),
        .R(1'b0));
  FDRE aclk_fid_reg
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[50]),
        .Q(aclk_fid),
        .R(SR));
  FDRE aclk_tlast_reg
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(dout[48]),
        .Q(aclk_tlast_reg_0),
        .R(SR));
  FDRE aclk_tuser_dly_reg
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tuser_reg_n_0),
        .Q(aclk_tuser_dly_reg_n_0),
        .R(1'b0));
  FDRE aclk_tuser_reg
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[49]),
        .Q(aclk_tuser_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \generate_tdata_2ppc.aclk_tdata[16]_i_1 
       (.I0(dout[16]),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_aclk_state_reg_n_0_[0] ),
        .I4(dout[0]),
        .O(p_2_in[16]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \generate_tdata_2ppc.aclk_tdata[17]_i_1 
       (.I0(dout[17]),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_aclk_state_reg_n_0_[0] ),
        .I4(dout[1]),
        .O(p_2_in[17]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \generate_tdata_2ppc.aclk_tdata[18]_i_1 
       (.I0(dout[18]),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_aclk_state_reg_n_0_[0] ),
        .I4(dout[2]),
        .O(p_2_in[18]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \generate_tdata_2ppc.aclk_tdata[19]_i_1 
       (.I0(dout[19]),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_aclk_state_reg_n_0_[0] ),
        .I4(dout[3]),
        .O(p_2_in[19]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \generate_tdata_2ppc.aclk_tdata[20]_i_1 
       (.I0(dout[20]),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_aclk_state_reg_n_0_[0] ),
        .I4(dout[4]),
        .O(p_2_in[20]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \generate_tdata_2ppc.aclk_tdata[21]_i_1 
       (.I0(dout[21]),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_aclk_state_reg_n_0_[0] ),
        .I4(dout[5]),
        .O(p_2_in[21]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \generate_tdata_2ppc.aclk_tdata[22]_i_1 
       (.I0(dout[22]),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_aclk_state_reg_n_0_[0] ),
        .I4(dout[6]),
        .O(p_2_in[22]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \generate_tdata_2ppc.aclk_tdata[23]_i_2 
       (.I0(dout[23]),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_aclk_state_reg_n_0_[0] ),
        .I4(dout[7]),
        .O(p_2_in[23]));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[0] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[10] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[11] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[12] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[13] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[14] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[15] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[16] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[17] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[18] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[19] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[1] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[20] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[21] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[22] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[23] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[24] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[25] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[26] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[27] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[28] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[29] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[2] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[30] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[31] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[32] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[32]),
        .Q(aclk_tdata_dly[32]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[33] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[33]),
        .Q(aclk_tdata_dly[33]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[34] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[34]),
        .Q(aclk_tdata_dly[34]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[35] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[35]),
        .Q(aclk_tdata_dly[35]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[36] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[36]),
        .Q(aclk_tdata_dly[36]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[37] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[37]),
        .Q(aclk_tdata_dly[37]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[38] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[38]),
        .Q(aclk_tdata_dly[38]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[39] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[39]),
        .Q(aclk_tdata_dly[39]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[3] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[40] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[40]),
        .Q(aclk_tdata_dly[40]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[41] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[41]),
        .Q(aclk_tdata_dly[41]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[42] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[42]),
        .Q(aclk_tdata_dly[42]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[43] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[43]),
        .Q(aclk_tdata_dly[43]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[44] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[44]),
        .Q(aclk_tdata_dly[44]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[45] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[45]),
        .Q(aclk_tdata_dly[45]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[46] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[46]),
        .Q(aclk_tdata_dly[46]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[47] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[47]),
        .Q(aclk_tdata_dly[47]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[4] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[5] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[6] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[7] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[8] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_dly_reg[9] 
       (.C(aclk),
        .CE(aclk_tdata_dly_0),
        .D(aclk_tdata[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[0] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[0]),
        .Q(aclk_tdata[0]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[10] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[10]),
        .Q(aclk_tdata[10]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[11] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[11]),
        .Q(aclk_tdata[11]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[12] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[12]),
        .Q(aclk_tdata[12]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[13] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[13]),
        .Q(aclk_tdata[13]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[14] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[14]),
        .Q(aclk_tdata[14]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[15] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[15]),
        .Q(aclk_tdata[15]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[16] 
       (.C(aclk),
        .CE(CDC_YUV422_EN_INST_n_1),
        .D(p_2_in[16]),
        .Q(aclk_tdata[16]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[17] 
       (.C(aclk),
        .CE(CDC_YUV422_EN_INST_n_1),
        .D(p_2_in[17]),
        .Q(aclk_tdata[17]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[18] 
       (.C(aclk),
        .CE(CDC_YUV422_EN_INST_n_1),
        .D(p_2_in[18]),
        .Q(aclk_tdata[18]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[19] 
       (.C(aclk),
        .CE(CDC_YUV422_EN_INST_n_1),
        .D(p_2_in[19]),
        .Q(aclk_tdata[19]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[1] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[1]),
        .Q(aclk_tdata[1]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[20] 
       (.C(aclk),
        .CE(CDC_YUV422_EN_INST_n_1),
        .D(p_2_in[20]),
        .Q(aclk_tdata[20]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[21] 
       (.C(aclk),
        .CE(CDC_YUV422_EN_INST_n_1),
        .D(p_2_in[21]),
        .Q(aclk_tdata[21]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[22] 
       (.C(aclk),
        .CE(CDC_YUV422_EN_INST_n_1),
        .D(p_2_in[22]),
        .Q(aclk_tdata[22]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[23] 
       (.C(aclk),
        .CE(CDC_YUV422_EN_INST_n_1),
        .D(p_2_in[23]),
        .Q(aclk_tdata[23]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[24] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [0]),
        .Q(aclk_tdata[24]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[25] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [1]),
        .Q(aclk_tdata[25]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[26] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [2]),
        .Q(aclk_tdata[26]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[27] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [3]),
        .Q(aclk_tdata[27]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[28] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [4]),
        .Q(aclk_tdata[28]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[29] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [5]),
        .Q(aclk_tdata[29]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[2] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[2]),
        .Q(aclk_tdata[2]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[30] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [6]),
        .Q(aclk_tdata[30]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[31] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [7]),
        .Q(aclk_tdata[31]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[32] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [8]),
        .Q(aclk_tdata[32]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[33] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [9]),
        .Q(aclk_tdata[33]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[34] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [10]),
        .Q(aclk_tdata[34]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[35] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [11]),
        .Q(aclk_tdata[35]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[36] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [12]),
        .Q(aclk_tdata[36]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[37] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [13]),
        .Q(aclk_tdata[37]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[38] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [14]),
        .Q(aclk_tdata[38]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[39] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [15]),
        .Q(aclk_tdata[39]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[3] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[3]),
        .Q(aclk_tdata[3]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[40] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [16]),
        .Q(aclk_tdata[40]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[41] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [17]),
        .Q(aclk_tdata[41]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[42] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [18]),
        .Q(aclk_tdata[42]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[43] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [19]),
        .Q(aclk_tdata[43]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[44] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [20]),
        .Q(aclk_tdata[44]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[45] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [21]),
        .Q(aclk_tdata[45]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[46] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [22]),
        .Q(aclk_tdata[46]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[47] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_3),
        .D(\generate_tdata_2ppc.aclk_tdata_reg[47]_0 [23]),
        .Q(aclk_tdata[47]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[4] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[4]),
        .Q(aclk_tdata[4]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[5] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[5]),
        .Q(aclk_tdata[5]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[6] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[6]),
        .Q(aclk_tdata[6]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[7] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[7]),
        .Q(aclk_tdata[7]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[8] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[8]),
        .Q(aclk_tdata[8]),
        .R(SR));
  FDRE \generate_tdata_2ppc.aclk_tdata_reg[9] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_4),
        .D(dout[9]),
        .Q(aclk_tdata[9]),
        .R(SR));
endmodule

module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_fifo_async
   (wr_rst_busy,
    dout,
    empty,
    vid_vsync_0,
    \vid_reset_pulse_cnt_reg[15] ,
    \vid_reset_pulse_cnt_reg[14] ,
    \vid_reset_pulse_cnt_reg[13] ,
    \vid_reset_pulse_cnt_reg[12] ,
    \vid_reset_pulse_cnt_reg[11] ,
    \vid_reset_pulse_cnt_reg[10] ,
    \vid_reset_pulse_cnt_reg[9] ,
    \vid_reset_pulse_cnt_reg[8] ,
    \vid_reset_pulse_cnt_reg[7] ,
    \vid_reset_pulse_cnt_reg[6] ,
    \vid_reset_pulse_cnt_reg[5] ,
    \vid_reset_pulse_cnt_reg[4] ,
    \vid_reset_pulse_cnt_reg[3] ,
    \vid_reset_pulse_cnt_reg[2] ,
    \vid_reset_pulse_cnt_reg[1] ,
    D,
    vid_reset_pulse_cnt0,
    overflow,
    VID_RESET0,
    underflow,
    vid_io_in_reset,
    vid_io_in_clk,
    wr_en,
    din,
    aclk,
    rd_en,
    vid_vsync,
    vid_vsync_dly,
    \vid_reset_pulse_cnt_reg[14]_0 ,
    \vid_reset_pulse_cnt_reg[13]_0 ,
    \vid_reset_pulse_cnt_reg[12]_0 ,
    \vid_reset_pulse_cnt_reg[11]_0 ,
    \vid_reset_pulse_cnt_reg[10]_0 ,
    \vid_reset_pulse_cnt_reg[9]_0 ,
    \vid_reset_pulse_cnt_reg[8]_0 ,
    \vid_reset_pulse_cnt_reg[7]_0 ,
    \vid_reset_pulse_cnt_reg[6]_0 ,
    \vid_reset_pulse_cnt_reg[5]_0 ,
    \vid_reset_pulse_cnt_reg[4]_0 ,
    \vid_reset_pulse_cnt_reg[3]_0 ,
    \vid_reset_pulse_cnt_reg[2]_0 ,
    \vid_reset_pulse_cnt_reg[1]_0 ,
    \vid_reset_pulse_cnt_reg[0] ,
    dest_out,
    overflow_0,
    fifo_underflow_from_remap,
    Q);
  output wr_rst_busy;
  output [50:0]dout;
  output empty;
  output vid_vsync_0;
  output \vid_reset_pulse_cnt_reg[15] ;
  output \vid_reset_pulse_cnt_reg[14] ;
  output \vid_reset_pulse_cnt_reg[13] ;
  output \vid_reset_pulse_cnt_reg[12] ;
  output \vid_reset_pulse_cnt_reg[11] ;
  output \vid_reset_pulse_cnt_reg[10] ;
  output \vid_reset_pulse_cnt_reg[9] ;
  output \vid_reset_pulse_cnt_reg[8] ;
  output \vid_reset_pulse_cnt_reg[7] ;
  output \vid_reset_pulse_cnt_reg[6] ;
  output \vid_reset_pulse_cnt_reg[5] ;
  output \vid_reset_pulse_cnt_reg[4] ;
  output \vid_reset_pulse_cnt_reg[3] ;
  output \vid_reset_pulse_cnt_reg[2] ;
  output \vid_reset_pulse_cnt_reg[1] ;
  output [23:0]D;
  output vid_reset_pulse_cnt0;
  output overflow;
  output VID_RESET0;
  output underflow;
  input vid_io_in_reset;
  input vid_io_in_clk;
  input wr_en;
  input [50:0]din;
  input aclk;
  input rd_en;
  input vid_vsync;
  input vid_vsync_dly;
  input \vid_reset_pulse_cnt_reg[14]_0 ;
  input \vid_reset_pulse_cnt_reg[13]_0 ;
  input \vid_reset_pulse_cnt_reg[12]_0 ;
  input \vid_reset_pulse_cnt_reg[11]_0 ;
  input \vid_reset_pulse_cnt_reg[10]_0 ;
  input \vid_reset_pulse_cnt_reg[9]_0 ;
  input \vid_reset_pulse_cnt_reg[8]_0 ;
  input \vid_reset_pulse_cnt_reg[7]_0 ;
  input \vid_reset_pulse_cnt_reg[6]_0 ;
  input \vid_reset_pulse_cnt_reg[5]_0 ;
  input \vid_reset_pulse_cnt_reg[4]_0 ;
  input \vid_reset_pulse_cnt_reg[3]_0 ;
  input \vid_reset_pulse_cnt_reg[2]_0 ;
  input \vid_reset_pulse_cnt_reg[1]_0 ;
  input \vid_reset_pulse_cnt_reg[0] ;
  input dest_out;
  input overflow_0;
  input fifo_underflow_from_remap;
  input [0:0]Q;

  wire [23:0]D;
  wire [0:0]Q;
  wire VID_RESET0;
  wire XPM_FIFO_ASYNC_INST_n_0;
  wire XPM_FIFO_ASYNC_INST_n_10;
  wire XPM_FIFO_ASYNC_INST_n_11;
  wire XPM_FIFO_ASYNC_INST_n_12;
  wire XPM_FIFO_ASYNC_INST_n_2;
  wire XPM_FIFO_ASYNC_INST_n_3;
  wire XPM_FIFO_ASYNC_INST_n_4;
  wire XPM_FIFO_ASYNC_INST_n_5;
  wire XPM_FIFO_ASYNC_INST_n_6;
  wire XPM_FIFO_ASYNC_INST_n_7;
  wire XPM_FIFO_ASYNC_INST_n_70;
  wire XPM_FIFO_ASYNC_INST_n_71;
  wire XPM_FIFO_ASYNC_INST_n_72;
  wire XPM_FIFO_ASYNC_INST_n_73;
  wire XPM_FIFO_ASYNC_INST_n_74;
  wire XPM_FIFO_ASYNC_INST_n_75;
  wire XPM_FIFO_ASYNC_INST_n_76;
  wire XPM_FIFO_ASYNC_INST_n_77;
  wire XPM_FIFO_ASYNC_INST_n_78;
  wire XPM_FIFO_ASYNC_INST_n_79;
  wire XPM_FIFO_ASYNC_INST_n_8;
  wire XPM_FIFO_ASYNC_INST_n_80;
  wire XPM_FIFO_ASYNC_INST_n_82;
  wire XPM_FIFO_ASYNC_INST_n_9;
  wire aclk;
  wire dest_out;
  wire [50:0]din;
  wire [50:0]dout;
  wire empty;
  wire fifo_overflow_from_coupler;
  wire fifo_underflow_from_coupler;
  wire fifo_underflow_from_remap;
  wire overflow;
  wire overflow_0;
  wire rd_en;
  wire underflow;
  wire vid_io_in_clk;
  wire vid_io_in_reset;
  wire vid_reset_pulse_cnt0;
  wire \vid_reset_pulse_cnt[15]_i_3_n_0 ;
  wire \vid_reset_pulse_cnt[15]_i_4_n_0 ;
  wire \vid_reset_pulse_cnt[15]_i_5_n_0 ;
  wire \vid_reset_pulse_cnt_reg[0] ;
  wire \vid_reset_pulse_cnt_reg[10] ;
  wire \vid_reset_pulse_cnt_reg[10]_0 ;
  wire \vid_reset_pulse_cnt_reg[11] ;
  wire \vid_reset_pulse_cnt_reg[11]_0 ;
  wire \vid_reset_pulse_cnt_reg[12] ;
  wire \vid_reset_pulse_cnt_reg[12]_0 ;
  wire \vid_reset_pulse_cnt_reg[13] ;
  wire \vid_reset_pulse_cnt_reg[13]_0 ;
  wire \vid_reset_pulse_cnt_reg[14] ;
  wire \vid_reset_pulse_cnt_reg[14]_0 ;
  wire \vid_reset_pulse_cnt_reg[15] ;
  wire \vid_reset_pulse_cnt_reg[1] ;
  wire \vid_reset_pulse_cnt_reg[1]_0 ;
  wire \vid_reset_pulse_cnt_reg[2] ;
  wire \vid_reset_pulse_cnt_reg[2]_0 ;
  wire \vid_reset_pulse_cnt_reg[3] ;
  wire \vid_reset_pulse_cnt_reg[3]_0 ;
  wire \vid_reset_pulse_cnt_reg[4] ;
  wire \vid_reset_pulse_cnt_reg[4]_0 ;
  wire \vid_reset_pulse_cnt_reg[5] ;
  wire \vid_reset_pulse_cnt_reg[5]_0 ;
  wire \vid_reset_pulse_cnt_reg[6] ;
  wire \vid_reset_pulse_cnt_reg[6]_0 ;
  wire \vid_reset_pulse_cnt_reg[7] ;
  wire \vid_reset_pulse_cnt_reg[7]_0 ;
  wire \vid_reset_pulse_cnt_reg[8] ;
  wire \vid_reset_pulse_cnt_reg[8]_0 ;
  wire \vid_reset_pulse_cnt_reg[9] ;
  wire \vid_reset_pulse_cnt_reg[9]_0 ;
  wire vid_vsync;
  wire vid_vsync_0;
  wire vid_vsync_dly;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_XPM_FIFO_ASYNC_INST_almost_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_almost_full_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_data_valid_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_dbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_prog_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_prog_full_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_sbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_wr_ack_UNCONNECTED;

  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "4" *) 
  (* DONT_TOUCH *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0000011100000111" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "51" *) 
  (* READ_MODE = "0" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "51" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_async XPM_FIFO_ASYNC_INST
       (.almost_empty(NLW_XPM_FIFO_ASYNC_INST_almost_empty_UNCONNECTED),
        .almost_full(NLW_XPM_FIFO_ASYNC_INST_almost_full_UNCONNECTED),
        .data_valid(NLW_XPM_FIFO_ASYNC_INST_data_valid_UNCONNECTED),
        .dbiterr(NLW_XPM_FIFO_ASYNC_INST_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(XPM_FIFO_ASYNC_INST_n_0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(fifo_overflow_from_coupler),
        .prog_empty(NLW_XPM_FIFO_ASYNC_INST_prog_empty_UNCONNECTED),
        .prog_full(NLW_XPM_FIFO_ASYNC_INST_prog_full_UNCONNECTED),
        .rd_clk(aclk),
        .rd_data_count({XPM_FIFO_ASYNC_INST_n_70,XPM_FIFO_ASYNC_INST_n_71,XPM_FIFO_ASYNC_INST_n_72,XPM_FIFO_ASYNC_INST_n_73,XPM_FIFO_ASYNC_INST_n_74,XPM_FIFO_ASYNC_INST_n_75,XPM_FIFO_ASYNC_INST_n_76,XPM_FIFO_ASYNC_INST_n_77,XPM_FIFO_ASYNC_INST_n_78,XPM_FIFO_ASYNC_INST_n_79,XPM_FIFO_ASYNC_INST_n_80}),
        .rd_en(rd_en),
        .rd_rst_busy(XPM_FIFO_ASYNC_INST_n_82),
        .rst(vid_io_in_reset),
        .sbiterr(NLW_XPM_FIFO_ASYNC_INST_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(fifo_underflow_from_coupler),
        .wr_ack(NLW_XPM_FIFO_ASYNC_INST_wr_ack_UNCONNECTED),
        .wr_clk(vid_io_in_clk),
        .wr_data_count({XPM_FIFO_ASYNC_INST_n_2,XPM_FIFO_ASYNC_INST_n_3,XPM_FIFO_ASYNC_INST_n_4,XPM_FIFO_ASYNC_INST_n_5,XPM_FIFO_ASYNC_INST_n_6,XPM_FIFO_ASYNC_INST_n_7,XPM_FIFO_ASYNC_INST_n_8,XPM_FIFO_ASYNC_INST_n_9,XPM_FIFO_ASYNC_INST_n_10,XPM_FIFO_ASYNC_INST_n_11,XPM_FIFO_ASYNC_INST_n_12}),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hE)) 
    de_1_i_1
       (.I0(vid_io_in_reset),
        .I1(fifo_overflow_from_coupler),
        .O(VID_RESET0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \generate_tdata_2ppc.aclk_tdata[24]_i_1 
       (.I0(dout[8]),
        .I1(dest_out),
        .I2(dout[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \generate_tdata_2ppc.aclk_tdata[25]_i_1 
       (.I0(dout[9]),
        .I1(dest_out),
        .I2(dout[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \generate_tdata_2ppc.aclk_tdata[26]_i_1 
       (.I0(dout[10]),
        .I1(dest_out),
        .I2(dout[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \generate_tdata_2ppc.aclk_tdata[27]_i_1 
       (.I0(dout[11]),
        .I1(dest_out),
        .I2(dout[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \generate_tdata_2ppc.aclk_tdata[28]_i_1 
       (.I0(dout[12]),
        .I1(dest_out),
        .I2(dout[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \generate_tdata_2ppc.aclk_tdata[29]_i_1 
       (.I0(dout[13]),
        .I1(dest_out),
        .I2(dout[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \generate_tdata_2ppc.aclk_tdata[30]_i_1 
       (.I0(dout[14]),
        .I1(dest_out),
        .I2(dout[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \generate_tdata_2ppc.aclk_tdata[31]_i_1 
       (.I0(dout[15]),
        .I1(dest_out),
        .I2(dout[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[32]_i_1 
       (.I0(dout[8]),
        .I1(dest_out),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[33]_i_1 
       (.I0(dout[9]),
        .I1(dest_out),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[34]_i_1 
       (.I0(dout[10]),
        .I1(dest_out),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[35]_i_1 
       (.I0(dout[11]),
        .I1(dest_out),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[36]_i_1 
       (.I0(dout[12]),
        .I1(dest_out),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[37]_i_1 
       (.I0(dout[13]),
        .I1(dest_out),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[38]_i_1 
       (.I0(dout[14]),
        .I1(dest_out),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[39]_i_1 
       (.I0(dout[15]),
        .I1(dest_out),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[40]_i_1 
       (.I0(dout[16]),
        .I1(dest_out),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[41]_i_1 
       (.I0(dout[17]),
        .I1(dest_out),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[42]_i_1 
       (.I0(dout[18]),
        .I1(dest_out),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[43]_i_1 
       (.I0(dout[19]),
        .I1(dest_out),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[44]_i_1 
       (.I0(dout[20]),
        .I1(dest_out),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[45]_i_1 
       (.I0(dout[21]),
        .I1(dest_out),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[46]_i_1 
       (.I0(dout[22]),
        .I1(dest_out),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \generate_tdata_2ppc.aclk_tdata[47]_i_2 
       (.I0(dout[23]),
        .I1(dest_out),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hE)) 
    overflow_INST_0
       (.I0(fifo_overflow_from_coupler),
        .I1(overflow_0),
        .O(overflow));
  LUT2 #(
    .INIT(4'hE)) 
    underflow_INST_0
       (.I0(fifo_underflow_from_coupler),
        .I1(fifo_underflow_from_remap),
        .O(underflow));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[0]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[0] ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[10]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[10]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[11]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[11]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[12]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[12]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[13]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[13]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[14]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[14]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[15] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \vid_reset_pulse_cnt[15]_i_1 
       (.I0(\vid_reset_pulse_cnt[15]_i_3_n_0 ),
        .I1(\vid_reset_pulse_cnt[15]_i_4_n_0 ),
        .I2(\vid_reset_pulse_cnt[15]_i_5_n_0 ),
        .I3(vid_vsync),
        .I4(vid_vsync_dly),
        .I5(fifo_overflow_from_coupler),
        .O(vid_vsync_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \vid_reset_pulse_cnt[15]_i_2 
       (.I0(fifo_overflow_from_coupler),
        .I1(vid_vsync_dly),
        .I2(vid_vsync),
        .O(vid_reset_pulse_cnt0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \vid_reset_pulse_cnt[15]_i_3 
       (.I0(\vid_reset_pulse_cnt_reg[7]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[8]_0 ),
        .I2(\vid_reset_pulse_cnt_reg[5]_0 ),
        .I3(\vid_reset_pulse_cnt_reg[6]_0 ),
        .I4(\vid_reset_pulse_cnt_reg[4]_0 ),
        .I5(\vid_reset_pulse_cnt_reg[3]_0 ),
        .O(\vid_reset_pulse_cnt[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \vid_reset_pulse_cnt[15]_i_4 
       (.I0(\vid_reset_pulse_cnt_reg[13]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[14]_0 ),
        .I2(\vid_reset_pulse_cnt_reg[11]_0 ),
        .I3(\vid_reset_pulse_cnt_reg[12]_0 ),
        .I4(\vid_reset_pulse_cnt_reg[10]_0 ),
        .I5(\vid_reset_pulse_cnt_reg[9]_0 ),
        .O(\vid_reset_pulse_cnt[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \vid_reset_pulse_cnt[15]_i_5 
       (.I0(\vid_reset_pulse_cnt_reg[0] ),
        .I1(Q),
        .I2(\vid_reset_pulse_cnt_reg[2]_0 ),
        .I3(\vid_reset_pulse_cnt_reg[1]_0 ),
        .O(\vid_reset_pulse_cnt[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[1]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[1]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[2]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[2]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[3]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[3]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[4]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[4]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[5]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[5]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[6]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[6]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[7]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[7]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[8]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[8]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \vid_reset_pulse_cnt[9]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[9]_0 ),
        .I1(vid_vsync),
        .I2(vid_vsync_dly),
        .I3(fifo_overflow_from_coupler),
        .O(\vid_reset_pulse_cnt_reg[10] ));
endmodule

module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_fifo_sync
   (overflow,
    D,
    empty,
    underflow,
    aclk_wr_en_to_even_chroma_fifo_reg,
    aclk_wr_en_to_luma_fifo0,
    aclk_line_phase_si_reg,
    aclk_line_phase_si_reg_0,
    aclken_0,
    \FSM_onehot_aclk_state_reg[1] ,
    E,
    tready_to_drop,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ,
    in8,
    m_axis_video_tlast,
    SR,
    aclk,
    wr_en,
    Q,
    \FSM_onehot_aclk_state_reg[3] ,
    aclk_wr_en_to_even_chroma_fifo_reg_0,
    aresetn,
    aclk_wr_en_to_odd_chroma_fifo_reg,
    aclk_line_phase_si,
    aclken,
    aclk_wr_en_to_odd_chroma_fifo_reg_0,
    ARESETN0,
    aclk_wr_en_to_luma_fifo_reg,
    aclk_line_phase_si_reg_1,
    dest_out,
    tvalid_from_drop,
    aclk_wr_en_to_luma_fifo_reg_0,
    m_axis_video_tready,
    full,
    \FSM_onehot_aclk_state[4]_i_3_0 ,
    aclk_pixel_phase_mi,
    \m_axis_video_tdata[23] ,
    \m_axis_video_tdata[23]_0 ,
    \FSM_onehot_aclk_state_reg[3]_0 ,
    \FSM_onehot_aclk_state_reg[3]_1 ,
    aclk_xfer_mi__0,
    m_axis_video_tlast_0,
    m_axis_video_tlast_1,
    dout,
    \FSM_onehot_aclk_state_reg[6] ,
    aclk_line_phase_mi,
    \FSM_onehot_aclk_state_reg[1]_0 );
  output overflow;
  output [34:0]D;
  output empty;
  output underflow;
  output aclk_wr_en_to_even_chroma_fifo_reg;
  output aclk_wr_en_to_luma_fifo0;
  output aclk_line_phase_si_reg;
  output aclk_line_phase_si_reg_0;
  output aclken_0;
  output \FSM_onehot_aclk_state_reg[1] ;
  output [0:0]E;
  output tready_to_drop;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ;
  output [3:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  output in8;
  output m_axis_video_tlast;
  input [0:0]SR;
  input aclk;
  input wr_en;
  input [34:0]Q;
  input [5:0]\FSM_onehot_aclk_state_reg[3] ;
  input aclk_wr_en_to_even_chroma_fifo_reg_0;
  input aresetn;
  input aclk_wr_en_to_odd_chroma_fifo_reg;
  input aclk_line_phase_si;
  input aclken;
  input aclk_wr_en_to_odd_chroma_fifo_reg_0;
  input ARESETN0;
  input [1:0]aclk_wr_en_to_luma_fifo_reg;
  input aclk_line_phase_si_reg_1;
  input dest_out;
  input tvalid_from_drop;
  input aclk_wr_en_to_luma_fifo_reg_0;
  input m_axis_video_tready;
  input full;
  input \FSM_onehot_aclk_state[4]_i_3_0 ;
  input aclk_pixel_phase_mi;
  input [15:0]\m_axis_video_tdata[23] ;
  input \m_axis_video_tdata[23]_0 ;
  input \FSM_onehot_aclk_state_reg[3]_0 ;
  input \FSM_onehot_aclk_state_reg[3]_1 ;
  input aclk_xfer_mi__0;
  input m_axis_video_tlast_0;
  input m_axis_video_tlast_1;
  input [0:0]dout;
  input [0:0]\FSM_onehot_aclk_state_reg[6] ;
  input aclk_line_phase_mi;
  input \FSM_onehot_aclk_state_reg[1]_0 ;

  wire ARESETN0;
  wire [34:0]D;
  wire [0:0]E;
  wire \FSM_onehot_aclk_state[4]_i_3_0 ;
  wire \FSM_onehot_aclk_state[4]_i_6_n_0 ;
  wire \FSM_onehot_aclk_state[4]_i_7_n_0 ;
  wire \FSM_onehot_aclk_state[4]_i_8_n_0 ;
  wire \FSM_onehot_aclk_state[4]_i_9_n_0 ;
  wire \FSM_onehot_aclk_state_reg[1] ;
  wire \FSM_onehot_aclk_state_reg[1]_0 ;
  wire [5:0]\FSM_onehot_aclk_state_reg[3] ;
  wire \FSM_onehot_aclk_state_reg[3]_0 ;
  wire \FSM_onehot_aclk_state_reg[3]_1 ;
  wire [0:0]\FSM_onehot_aclk_state_reg[6] ;
  wire [34:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aclk_full_from_luma_fifo;
  wire aclk_line_phase_mi;
  wire aclk_line_phase_si;
  wire aclk_line_phase_si_reg;
  wire aclk_line_phase_si_reg_0;
  wire aclk_line_phase_si_reg_1;
  wire aclk_pixel_phase_mi;
  wire [11:0]aclk_wr_data_count_from_luma_fifo;
  wire aclk_wr_en_to_even_chroma_fifo_reg;
  wire aclk_wr_en_to_even_chroma_fifo_reg_0;
  wire aclk_wr_en_to_luma_fifo0;
  wire [1:0]aclk_wr_en_to_luma_fifo_reg;
  wire aclk_wr_en_to_luma_fifo_reg_0;
  wire aclk_wr_en_to_odd_chroma_fifo_reg;
  wire aclk_wr_en_to_odd_chroma_fifo_reg_0;
  wire aclk_xfer_mi__0;
  wire aclken;
  wire aclken_0;
  wire aresetn;
  wire dest_out;
  wire [0:0]dout;
  wire empty;
  wire full;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ;
  wire [3:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  wire in6;
  wire in8;
  wire [15:0]\m_axis_video_tdata[23] ;
  wire \m_axis_video_tdata[23]_0 ;
  wire m_axis_video_tlast;
  wire m_axis_video_tlast_0;
  wire m_axis_video_tlast_1;
  wire m_axis_video_tready;
  wire overflow;
  wire tready_to_drop;
  wire tvalid_from_drop;
  wire underflow;
  wire wr_en;
  wire NLW_XPM_FIFO_SYNC_INST_almost_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_almost_full_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_data_valid_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_dbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_prog_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_prog_full_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_rd_rst_busy_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_sbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_wr_ack_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_wr_rst_busy_UNCONNECTED;
  wire [11:0]NLW_XPM_FIFO_SYNC_INST_rd_data_count_UNCONNECTED;

  LUT5 #(
    .INIT(32'h44F0F4F0)) 
    \FSM_onehot_aclk_state[1]_i_1__0 
       (.I0(in6),
        .I1(\FSM_onehot_aclk_state_reg[3] [4]),
        .I2(\FSM_onehot_aclk_state_reg[3] [0]),
        .I3(D[33]),
        .I4(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [0]));
  LUT6 #(
    .INIT(64'h2222FFFF22222F22)) 
    \FSM_onehot_aclk_state[3]_i_1__0 
       (.I0(\FSM_onehot_aclk_state_reg[3] [5]),
        .I1(\FSM_onehot_aclk_state_reg[3]_0 ),
        .I2(D[33]),
        .I3(\FSM_onehot_aclk_state_reg[3] [4]),
        .I4(in6),
        .I5(\FSM_onehot_aclk_state_reg[3]_1 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [1]));
  LUT6 #(
    .INIT(64'h5757575757575777)) 
    \FSM_onehot_aclk_state[4]_i_3 
       (.I0(tvalid_from_drop),
        .I1(aclk_wr_en_to_luma_fifo_reg_0),
        .I2(\FSM_onehot_aclk_state[4]_i_6_n_0 ),
        .I3(\FSM_onehot_aclk_state[4]_i_7_n_0 ),
        .I4(\FSM_onehot_aclk_state[4]_i_8_n_0 ),
        .I5(\FSM_onehot_aclk_state[4]_i_9_n_0 ),
        .O(\FSM_onehot_aclk_state_reg[1] ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_aclk_state[4]_i_6 
       (.I0(dest_out),
        .I1(full),
        .I2(\FSM_onehot_aclk_state[4]_i_3_0 ),
        .I3(aclk_wr_data_count_from_luma_fifo[11]),
        .I4(aclk_full_from_luma_fifo),
        .O(\FSM_onehot_aclk_state[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_aclk_state[4]_i_7 
       (.I0(aclk_wr_data_count_from_luma_fifo[10]),
        .I1(aclk_wr_data_count_from_luma_fifo[9]),
        .I2(aclk_wr_data_count_from_luma_fifo[8]),
        .I3(aclk_wr_data_count_from_luma_fifo[7]),
        .O(\FSM_onehot_aclk_state[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_aclk_state[4]_i_8 
       (.I0(aclk_wr_data_count_from_luma_fifo[6]),
        .I1(aclk_wr_data_count_from_luma_fifo[5]),
        .I2(aclk_wr_data_count_from_luma_fifo[4]),
        .I3(aclk_wr_data_count_from_luma_fifo[3]),
        .O(\FSM_onehot_aclk_state[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \FSM_onehot_aclk_state[4]_i_9 
       (.I0(aclk_wr_data_count_from_luma_fifo[1]),
        .I1(aclk_wr_data_count_from_luma_fifo[0]),
        .I2(aclk_wr_data_count_from_luma_fifo[2]),
        .O(\FSM_onehot_aclk_state[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \FSM_onehot_aclk_state[6]_i_1 
       (.I0(aclk_xfer_mi__0),
        .I1(in8),
        .I2(\FSM_onehot_aclk_state_reg[3] [3]),
        .I3(in6),
        .I4(\FSM_onehot_aclk_state_reg[3] [4]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [2]));
  LUT4 #(
    .INIT(16'hAFAE)) 
    \FSM_onehot_aclk_state[6]_i_3 
       (.I0(empty),
        .I1(\FSM_onehot_aclk_state_reg[3]_0 ),
        .I2(aclk_line_phase_mi),
        .I3(\FSM_onehot_aclk_state_reg[1]_0 ),
        .O(in6));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \FSM_onehot_aclk_state[7]_i_1 
       (.I0(D[33]),
        .I1(dest_out),
        .I2(\FSM_onehot_aclk_state_reg[3] [0]),
        .I3(\FSM_onehot_aclk_state_reg[3]_0 ),
        .I4(\FSM_onehot_aclk_state_reg[3] [5]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [3]));
  LUT6 #(
    .INIT(64'hFE00FFFFFE00FE00)) 
    XPM_FIFO_ASYNC_INST_i_2
       (.I0(\FSM_onehot_aclk_state[4]_i_9_n_0 ),
        .I1(\FSM_onehot_aclk_state[4]_i_8_n_0 ),
        .I2(\FSM_onehot_aclk_state[4]_i_7_n_0 ),
        .I3(\FSM_onehot_aclk_state[4]_i_6_n_0 ),
        .I4(dest_out),
        .I5(m_axis_video_tready),
        .O(tready_to_drop));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "2048" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "12" *) 
  (* READ_DATA_WIDTH = "35" *) 
  (* READ_MODE = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "35" *) 
  (* WR_DATA_COUNT_WIDTH = "12" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_sync XPM_FIFO_SYNC_INST
       (.almost_empty(NLW_XPM_FIFO_SYNC_INST_almost_empty_UNCONNECTED),
        .almost_full(NLW_XPM_FIFO_SYNC_INST_almost_full_UNCONNECTED),
        .data_valid(NLW_XPM_FIFO_SYNC_INST_data_valid_UNCONNECTED),
        .dbiterr(NLW_XPM_FIFO_SYNC_INST_dbiterr_UNCONNECTED),
        .din(Q),
        .dout(D),
        .empty(empty),
        .full(aclk_full_from_luma_fifo),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(NLW_XPM_FIFO_SYNC_INST_prog_empty_UNCONNECTED),
        .prog_full(NLW_XPM_FIFO_SYNC_INST_prog_full_UNCONNECTED),
        .rd_data_count(NLW_XPM_FIFO_SYNC_INST_rd_data_count_UNCONNECTED[11:0]),
        .rd_en(\FSM_onehot_aclk_state_reg[3] [1]),
        .rd_rst_busy(NLW_XPM_FIFO_SYNC_INST_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .sbiterr(NLW_XPM_FIFO_SYNC_INST_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(underflow),
        .wr_ack(NLW_XPM_FIFO_SYNC_INST_wr_ack_UNCONNECTED),
        .wr_clk(aclk),
        .wr_data_count(aclk_wr_data_count_from_luma_fifo),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_XPM_FIFO_SYNC_INST_wr_rst_busy_UNCONNECTED));
  LUT6 #(
    .INIT(64'h8484808880888088)) 
    aclk_line_phase_si_i_1
       (.I0(aclk_line_phase_si),
        .I1(ARESETN0),
        .I2(aclken_0),
        .I3(aclk_wr_en_to_luma_fifo_reg[1]),
        .I4(aclk_line_phase_si_reg_1),
        .I5(aclk_wr_en_to_luma_fifo_reg[0]),
        .O(aclk_line_phase_si_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \aclk_wr_data_to_luma_fifo[34]_i_1 
       (.I0(aclken_0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \aclk_wr_data_to_luma_fifo[34]_i_3 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(aclken),
        .O(aclken_0));
  LUT6 #(
    .INIT(64'h000C000008080808)) 
    aclk_wr_en_to_even_chroma_fifo_i_1
       (.I0(aclk_wr_en_to_even_chroma_fifo_reg_0),
        .I1(aresetn),
        .I2(aclk_wr_en_to_odd_chroma_fifo_reg),
        .I3(aclk_line_phase_si),
        .I4(aclk_wr_en_to_luma_fifo0),
        .I5(aclken),
        .O(aclk_wr_en_to_even_chroma_fifo_reg));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    aclk_wr_en_to_luma_fifo_i_1
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(dest_out),
        .I2(aclk_wr_en_to_luma_fifo_reg[1]),
        .I3(aclk_line_phase_si_reg_1),
        .O(aclk_wr_en_to_luma_fifo0));
  LUT6 #(
    .INIT(64'h00A000C0000000C0)) 
    aclk_wr_en_to_odd_chroma_fifo_i_1
       (.I0(aclk_line_phase_si),
        .I1(aclk_wr_en_to_odd_chroma_fifo_reg_0),
        .I2(aresetn),
        .I3(aclk_wr_en_to_odd_chroma_fifo_reg),
        .I4(aclken),
        .I5(aclk_wr_en_to_luma_fifo0),
        .O(aclk_line_phase_si_reg));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[0]_INST_0_i_1 
       (.I0(D[0]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [0]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[16]_INST_0_i_1 
       (.I0(D[8]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [8]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[17]_INST_0_i_1 
       (.I0(D[9]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [9]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[18]_INST_0_i_1 
       (.I0(D[10]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [10]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[19]_INST_0_i_1 
       (.I0(D[11]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [11]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[1]_INST_0_i_1 
       (.I0(D[1]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [1]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[20]_INST_0_i_1 
       (.I0(D[12]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [12]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[21]_INST_0_i_1 
       (.I0(D[13]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [13]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[22]_INST_0_i_1 
       (.I0(D[14]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [14]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[23]_INST_0_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [15]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[2]_INST_0_i_1 
       (.I0(D[2]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [2]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[3]_INST_0_i_1 
       (.I0(D[3]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [3]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[4]_INST_0_i_1 
       (.I0(D[4]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [4]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[5]_INST_0_i_1 
       (.I0(D[5]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [5]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[6]_INST_0_i_1 
       (.I0(D[6]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [6]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ));
  LUT6 #(
    .INIT(64'h08080808FF000000)) 
    \m_axis_video_tdata[7]_INST_0_i_1 
       (.I0(D[7]),
        .I1(\FSM_onehot_aclk_state_reg[3] [1]),
        .I2(aclk_pixel_phase_mi),
        .I3(\m_axis_video_tdata[23] [7]),
        .I4(\m_axis_video_tdata[23]_0 ),
        .I5(dest_out),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    m_axis_video_tlast_INST_0
       (.I0(in8),
        .I1(\FSM_onehot_aclk_state_reg[3] [3]),
        .I2(dest_out),
        .I3(m_axis_video_tlast_0),
        .I4(m_axis_video_tlast_1),
        .I5(dout),
        .O(m_axis_video_tlast));
  LUT5 #(
    .INIT(32'hAAAAFC00)) 
    m_axis_video_tlast_INST_0_i_1
       (.I0(D[32]),
        .I1(\FSM_onehot_aclk_state_reg[3] [3]),
        .I2(\FSM_onehot_aclk_state_reg[3] [2]),
        .I3(\FSM_onehot_aclk_state_reg[6] ),
        .I4(\FSM_onehot_aclk_state_reg[3] [1]),
        .O(in8));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v5_0_7_fifo_sync" *) 
module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_fifo_sync__parameterized0
   (full,
    overflow,
    D,
    empty,
    underflow,
    SR,
    aclk,
    wr_en,
    Q,
    rd_en);
  output full;
  output overflow;
  output [15:0]D;
  output empty;
  output underflow;
  input [0:0]SR;
  input aclk;
  input wr_en;
  input [15:0]Q;
  input rd_en;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire empty;
  wire full;
  wire overflow;
  wire rd_en;
  wire underflow;
  wire wr_en;
  wire NLW_XPM_FIFO_SYNC_INST_almost_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_almost_full_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_data_valid_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_dbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_prog_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_prog_full_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_rd_rst_busy_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_sbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_wr_ack_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_wr_rst_busy_UNCONNECTED;
  wire [11:0]NLW_XPM_FIFO_SYNC_INST_rd_data_count_UNCONNECTED;
  wire [11:0]NLW_XPM_FIFO_SYNC_INST_wr_data_count_UNCONNECTED;

  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "2048" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "12" *) 
  (* READ_DATA_WIDTH = "16" *) 
  (* READ_MODE = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "16" *) 
  (* WR_DATA_COUNT_WIDTH = "12" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_sync__parameterized0__1 XPM_FIFO_SYNC_INST
       (.almost_empty(NLW_XPM_FIFO_SYNC_INST_almost_empty_UNCONNECTED),
        .almost_full(NLW_XPM_FIFO_SYNC_INST_almost_full_UNCONNECTED),
        .data_valid(NLW_XPM_FIFO_SYNC_INST_data_valid_UNCONNECTED),
        .dbiterr(NLW_XPM_FIFO_SYNC_INST_dbiterr_UNCONNECTED),
        .din(Q),
        .dout(D),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(NLW_XPM_FIFO_SYNC_INST_prog_empty_UNCONNECTED),
        .prog_full(NLW_XPM_FIFO_SYNC_INST_prog_full_UNCONNECTED),
        .rd_data_count(NLW_XPM_FIFO_SYNC_INST_rd_data_count_UNCONNECTED[11:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_XPM_FIFO_SYNC_INST_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .sbiterr(NLW_XPM_FIFO_SYNC_INST_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(underflow),
        .wr_ack(NLW_XPM_FIFO_SYNC_INST_wr_ack_UNCONNECTED),
        .wr_clk(aclk),
        .wr_data_count(NLW_XPM_FIFO_SYNC_INST_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_XPM_FIFO_SYNC_INST_wr_rst_busy_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v5_0_7_fifo_sync" *) 
module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_fifo_sync__parameterized0_2
   (full,
    overflow,
    D,
    empty,
    underflow,
    rd_en,
    SR,
    aclk,
    \count_value_i_reg[10] ,
    Q,
    \guf.underflow_i_reg ,
    aclk_line_phase_mi);
  output full;
  output overflow;
  output [15:0]D;
  output empty;
  output underflow;
  output rd_en;
  input [0:0]SR;
  input aclk;
  input \count_value_i_reg[10] ;
  input [15:0]Q;
  input [0:0]\guf.underflow_i_reg ;
  input aclk_line_phase_mi;

  wire [15:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aclk_line_phase_mi;
  wire \count_value_i_reg[10] ;
  wire empty;
  wire full;
  wire [0:0]\guf.underflow_i_reg ;
  wire overflow;
  wire rd_en;
  wire underflow;
  wire NLW_XPM_FIFO_SYNC_INST_almost_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_almost_full_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_data_valid_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_dbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_prog_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_prog_full_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_rd_rst_busy_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_sbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_wr_ack_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_wr_rst_busy_UNCONNECTED;
  wire [11:0]NLW_XPM_FIFO_SYNC_INST_rd_data_count_UNCONNECTED;
  wire [11:0]NLW_XPM_FIFO_SYNC_INST_wr_data_count_UNCONNECTED;

  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "2048" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "12" *) 
  (* READ_DATA_WIDTH = "16" *) 
  (* READ_MODE = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "16" *) 
  (* WR_DATA_COUNT_WIDTH = "12" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_sync__parameterized0 XPM_FIFO_SYNC_INST
       (.almost_empty(NLW_XPM_FIFO_SYNC_INST_almost_empty_UNCONNECTED),
        .almost_full(NLW_XPM_FIFO_SYNC_INST_almost_full_UNCONNECTED),
        .data_valid(NLW_XPM_FIFO_SYNC_INST_data_valid_UNCONNECTED),
        .dbiterr(NLW_XPM_FIFO_SYNC_INST_dbiterr_UNCONNECTED),
        .din(Q),
        .dout(D),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(NLW_XPM_FIFO_SYNC_INST_prog_empty_UNCONNECTED),
        .prog_full(NLW_XPM_FIFO_SYNC_INST_prog_full_UNCONNECTED),
        .rd_data_count(NLW_XPM_FIFO_SYNC_INST_rd_data_count_UNCONNECTED[11:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_XPM_FIFO_SYNC_INST_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .sbiterr(NLW_XPM_FIFO_SYNC_INST_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(underflow),
        .wr_ack(NLW_XPM_FIFO_SYNC_INST_wr_ack_UNCONNECTED),
        .wr_clk(aclk),
        .wr_data_count(NLW_XPM_FIFO_SYNC_INST_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(\count_value_i_reg[10] ),
        .wr_rst_busy(NLW_XPM_FIFO_SYNC_INST_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    XPM_FIFO_SYNC_INST_i_1
       (.I0(\guf.underflow_i_reg ),
        .I1(aclk_line_phase_mi),
        .O(rd_en));
endmodule

module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_formatter
   (de_1_reg_0,
    vtd_vblank,
    vtd_hblank,
    vtd_vsync,
    vtd_hsync,
    vtd_field_id,
    din,
    de_3,
    vtd_locked_reg_0,
    VID_RESET0,
    vid_io_in_ce,
    vid_active_video,
    vid_io_in_clk,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    axis_enable,
    vid_data);
  output de_1_reg_0;
  output vtd_vblank;
  output vtd_hblank;
  output vtd_vsync;
  output vtd_hsync;
  output vtd_field_id;
  output [50:0]din;
  output de_3;
  output vtd_locked_reg_0;
  input VID_RESET0;
  input vid_io_in_ce;
  input vid_active_video;
  input vid_io_in_clk;
  input vid_vblank;
  input vid_hblank;
  input vid_vsync;
  input vid_hsync;
  input vid_field_id;
  input axis_enable;
  input [47:0]vid_data;

  wire VID_RESET0;
  wire axis_enable;
  wire [47:0]data_1;
  wire [47:0]data_2;
  wire de_1_reg_0;
  wire de_2;
  wire de_3;
  wire de_falling;
  wire [50:0]din;
  wire field_id_2;
  wire sof;
  wire sof0;
  wire v_blank_sync_1;
  wire v_blank_sync_2;
  wire vert_blanking_intvl_i_1_n_0;
  wire vert_blanking_intvl_reg_n_0;
  wire vid_active_video;
  wire [47:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire vid_vblank;
  wire vid_vsync;
  wire vtd_field_id;
  wire vtd_hblank;
  wire vtd_hsync;
  wire vtd_locked_i_1_n_0;
  wire vtd_locked_reg_0;
  wire vtd_vblank;
  wire vtd_vsync;

  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[0] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[0]),
        .Q(data_1[0]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[10] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[10]),
        .Q(data_1[10]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[11] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[11]),
        .Q(data_1[11]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[12] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[12]),
        .Q(data_1[12]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[13] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[13]),
        .Q(data_1[13]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[14] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[14]),
        .Q(data_1[14]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[15] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[15]),
        .Q(data_1[15]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[16] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[16]),
        .Q(data_1[16]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[17] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[17]),
        .Q(data_1[17]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[18] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[18]),
        .Q(data_1[18]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[19] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[19]),
        .Q(data_1[19]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[1] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[1]),
        .Q(data_1[1]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[20] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[20]),
        .Q(data_1[20]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[21] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[21]),
        .Q(data_1[21]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[22] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[22]),
        .Q(data_1[22]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[23] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[23]),
        .Q(data_1[23]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[24] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[24]),
        .Q(data_1[24]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[25] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[25]),
        .Q(data_1[25]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[26] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[26]),
        .Q(data_1[26]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[27] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[27]),
        .Q(data_1[27]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[28] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[28]),
        .Q(data_1[28]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[29] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[29]),
        .Q(data_1[29]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[2] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[2]),
        .Q(data_1[2]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[30] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[30]),
        .Q(data_1[30]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[31] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[31]),
        .Q(data_1[31]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[32] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[32]),
        .Q(data_1[32]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[33] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[33]),
        .Q(data_1[33]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[34] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[34]),
        .Q(data_1[34]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[35] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[35]),
        .Q(data_1[35]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[36] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[36]),
        .Q(data_1[36]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[37] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[37]),
        .Q(data_1[37]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[38] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[38]),
        .Q(data_1[38]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[39] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[39]),
        .Q(data_1[39]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[3] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[3]),
        .Q(data_1[3]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[40] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[40]),
        .Q(data_1[40]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[41] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[41]),
        .Q(data_1[41]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[42] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[42]),
        .Q(data_1[42]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[43] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[43]),
        .Q(data_1[43]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[44] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[44]),
        .Q(data_1[44]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[45] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[45]),
        .Q(data_1[45]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[46] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[46]),
        .Q(data_1[46]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[47] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[47]),
        .Q(data_1[47]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[4] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[4]),
        .Q(data_1[4]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[5] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[5]),
        .Q(data_1[5]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[6] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[6]),
        .Q(data_1[6]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[7] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[7]),
        .Q(data_1[7]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[8] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[8]),
        .Q(data_1[8]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[9] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[9]),
        .Q(data_1[9]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[0] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[0]),
        .Q(data_2[0]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[10] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[10]),
        .Q(data_2[10]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[11] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[11]),
        .Q(data_2[11]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[12] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[12]),
        .Q(data_2[12]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[13] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[13]),
        .Q(data_2[13]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[14] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[14]),
        .Q(data_2[14]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[15] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[15]),
        .Q(data_2[15]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[16] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[16]),
        .Q(data_2[16]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[17] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[17]),
        .Q(data_2[17]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[18] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[18]),
        .Q(data_2[18]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[19] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[19]),
        .Q(data_2[19]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[1] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[1]),
        .Q(data_2[1]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[20] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[20]),
        .Q(data_2[20]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[21] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[21]),
        .Q(data_2[21]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[22] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[22]),
        .Q(data_2[22]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[23] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[23]),
        .Q(data_2[23]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[24] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[24]),
        .Q(data_2[24]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[25] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[25]),
        .Q(data_2[25]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[26] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[26]),
        .Q(data_2[26]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[27] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[27]),
        .Q(data_2[27]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[28] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[28]),
        .Q(data_2[28]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[29] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[29]),
        .Q(data_2[29]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[2] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[2]),
        .Q(data_2[2]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[30] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[30]),
        .Q(data_2[30]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[31] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[31]),
        .Q(data_2[31]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[32] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[32]),
        .Q(data_2[32]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[33] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[33]),
        .Q(data_2[33]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[34] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[34]),
        .Q(data_2[34]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[35] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[35]),
        .Q(data_2[35]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[36] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[36]),
        .Q(data_2[36]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[37] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[37]),
        .Q(data_2[37]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[38] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[38]),
        .Q(data_2[38]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[39] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[39]),
        .Q(data_2[39]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[3] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[3]),
        .Q(data_2[3]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[40] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[40]),
        .Q(data_2[40]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[41] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[41]),
        .Q(data_2[41]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[42] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[42]),
        .Q(data_2[42]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[43] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[43]),
        .Q(data_2[43]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[44] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[44]),
        .Q(data_2[44]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[45] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[45]),
        .Q(data_2[45]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[46] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[46]),
        .Q(data_2[46]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[47] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[47]),
        .Q(data_2[47]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[4] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[4]),
        .Q(data_2[4]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[5] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[5]),
        .Q(data_2[5]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[6] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[6]),
        .Q(data_2[6]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[7] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[7]),
        .Q(data_2[7]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[8] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[8]),
        .Q(data_2[8]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[9] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[9]),
        .Q(data_2[9]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[0] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[0]),
        .Q(din[0]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[10] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[10]),
        .Q(din[10]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[11] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[11]),
        .Q(din[11]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[12] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[12]),
        .Q(din[12]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[13] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[13]),
        .Q(din[13]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[14] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[14]),
        .Q(din[14]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[15] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[15]),
        .Q(din[15]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[16] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[16]),
        .Q(din[16]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[17] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[17]),
        .Q(din[17]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[18] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[18]),
        .Q(din[18]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[19] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[19]),
        .Q(din[19]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[1] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[1]),
        .Q(din[1]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[20] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[20]),
        .Q(din[20]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[21] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[21]),
        .Q(din[21]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[22] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[22]),
        .Q(din[22]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[23] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[23]),
        .Q(din[23]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[24] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[24]),
        .Q(din[24]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[25] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[25]),
        .Q(din[25]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[26] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[26]),
        .Q(din[26]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[27] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[27]),
        .Q(din[27]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[28] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[28]),
        .Q(din[28]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[29] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[29]),
        .Q(din[29]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[2] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[2]),
        .Q(din[2]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[30] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[30]),
        .Q(din[30]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[31] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[31]),
        .Q(din[31]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[32] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[32]),
        .Q(din[32]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[33] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[33]),
        .Q(din[33]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[34] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[34]),
        .Q(din[34]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[35] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[35]),
        .Q(din[35]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[36] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[36]),
        .Q(din[36]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[37] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[37]),
        .Q(din[37]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[38] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[38]),
        .Q(din[38]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[39] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[39]),
        .Q(din[39]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[3] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[3]),
        .Q(din[3]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[40] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[40]),
        .Q(din[40]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[41] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[41]),
        .Q(din[41]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[42] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[42]),
        .Q(din[42]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[43] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[43]),
        .Q(din[43]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[44] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[44]),
        .Q(din[44]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[45] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[45]),
        .Q(din[45]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[46] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[46]),
        .Q(din[46]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[47] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[47]),
        .Q(din[47]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[4] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[4]),
        .Q(din[4]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[5] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[5]),
        .Q(din[5]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[6] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[6]),
        .Q(din[6]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[7] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[7]),
        .Q(din[7]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[8] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[8]),
        .Q(din[8]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[9] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[9]),
        .Q(din[9]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    de_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_active_video),
        .Q(de_1_reg_0),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    de_2_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(de_1_reg_0),
        .Q(de_2),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    de_3_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(de_2),
        .Q(de_3),
        .R(VID_RESET0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    eol_i_1
       (.I0(de_2),
        .I1(de_1_reg_0),
        .O(de_falling));
  FDRE eol_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(de_falling),
        .Q(din[48]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    field_id_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_field_id),
        .Q(vtd_field_id),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    field_id_2_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vtd_field_id),
        .Q(field_id_2),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    field_id_3_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(field_id_2),
        .Q(din[50]),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    hblank_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_hblank),
        .Q(vtd_hblank),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    hsync_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_hsync),
        .Q(vtd_hsync),
        .R(VID_RESET0));
  FDRE sof_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(sof),
        .Q(din[49]),
        .R(VID_RESET0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sof_i_1
       (.I0(de_2),
        .I1(de_1_reg_0),
        .I2(vert_blanking_intvl_reg_n_0),
        .O(sof0));
  FDRE sof_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(sof0),
        .Q(sof),
        .R(VID_RESET0));
  LUT2 #(
    .INIT(4'hE)) 
    v_blank_sync_2_i_1
       (.I0(vtd_vblank),
        .I1(vtd_vsync),
        .O(v_blank_sync_1));
  FDRE #(
    .INIT(1'b0)) 
    v_blank_sync_2_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(v_blank_sync_1),
        .Q(v_blank_sync_2),
        .R(VID_RESET0));
  FDRE #(
    .INIT(1'b0)) 
    vblank_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_vblank),
        .Q(vtd_vblank),
        .R(VID_RESET0));
  LUT6 #(
    .INIT(64'hB0B0FFB0F0F0F0F0)) 
    vert_blanking_intvl_i_1
       (.I0(de_2),
        .I1(de_1_reg_0),
        .I2(vert_blanking_intvl_reg_n_0),
        .I3(v_blank_sync_1),
        .I4(v_blank_sync_2),
        .I5(vid_io_in_ce),
        .O(vert_blanking_intvl_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vert_blanking_intvl_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(vert_blanking_intvl_i_1_n_0),
        .Q(vert_blanking_intvl_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vsync_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_vsync),
        .Q(vtd_vsync),
        .R(VID_RESET0));
  LUT6 #(
    .INIT(64'h00000000AAEA0000)) 
    vtd_locked_i_1
       (.I0(vtd_locked_reg_0),
        .I1(sof),
        .I2(vid_io_in_ce),
        .I3(din[49]),
        .I4(axis_enable),
        .I5(VID_RESET0),
        .O(vtd_locked_i_1_n_0));
  FDRE vtd_locked_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(vtd_locked_i_1_n_0),
        .Q(vtd_locked_reg_0),
        .R(1'b0));
endmodule

module bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_remap
   (dest_out,
    D,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ,
    src_in,
    fifo_underflow_from_remap,
    m_axis_video_tlast,
    m_axis_video_tuser,
    m_axis_video_tdata,
    \FSM_onehot_aclk_state_reg[1]_0 ,
    tready_to_drop,
    m_axis_video_tvalid,
    \syncstages_ff_reg[3] ,
    aclk_line_phase_mi_reg_0,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ,
    remap_420_en,
    aclk,
    SR,
    aclken,
    aresetn,
    aclk_wr_en_to_odd_chroma_fifo_reg_0,
    ARESETN0,
    \aclk_wr_data_to_luma_fifo_reg[34]_0 ,
    m_axis_video_tdata_0_sp_1,
    m_axis_video_tdata_1_sp_1,
    m_axis_video_tdata_2_sp_1,
    m_axis_video_tdata_3_sp_1,
    m_axis_video_tdata_4_sp_1,
    m_axis_video_tdata_5_sp_1,
    m_axis_video_tdata_6_sp_1,
    m_axis_video_tdata_7_sp_1,
    m_axis_video_tdata_8_sp_1,
    m_axis_video_tdata_9_sp_1,
    m_axis_video_tdata_10_sp_1,
    m_axis_video_tdata_11_sp_1,
    m_axis_video_tdata_12_sp_1,
    m_axis_video_tdata_13_sp_1,
    m_axis_video_tdata_14_sp_1,
    m_axis_video_tdata_15_sp_1,
    m_axis_video_tdata_16_sp_1,
    m_axis_video_tdata_17_sp_1,
    m_axis_video_tdata_18_sp_1,
    m_axis_video_tdata_19_sp_1,
    m_axis_video_tdata_20_sp_1,
    m_axis_video_tdata_21_sp_1,
    m_axis_video_tdata_22_sp_1,
    m_axis_video_tdata_23_sp_1,
    m_axis_video_tdata_24_sp_1,
    m_axis_video_tdata_25_sp_1,
    m_axis_video_tdata_26_sp_1,
    m_axis_video_tdata_27_sp_1,
    m_axis_video_tdata_28_sp_1,
    m_axis_video_tdata_29_sp_1,
    m_axis_video_tdata_30_sp_1,
    m_axis_video_tdata_31_sp_1,
    tvalid_from_drop,
    m_axis_video_tready,
    Q,
    \m_axis_video_tdata[23]_0 ,
    \m_axis_video_tdata[31]_0 ,
    m_axis_video_tlast_0,
    m_axis_video_tlast_1,
    dout,
    fid,
    \aclk_wr_data_to_even_chroma_fifo_reg[15]_0 );
  output dest_out;
  output [15:0]D;
  output [7:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  output [7:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  output src_in;
  output fifo_underflow_from_remap;
  output m_axis_video_tlast;
  output m_axis_video_tuser;
  output [31:0]m_axis_video_tdata;
  output \FSM_onehot_aclk_state_reg[1]_0 ;
  output tready_to_drop;
  output m_axis_video_tvalid;
  output \syncstages_ff_reg[3] ;
  output aclk_line_phase_mi_reg_0;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  input remap_420_en;
  input aclk;
  input [0:0]SR;
  input aclken;
  input aresetn;
  input aclk_wr_en_to_odd_chroma_fifo_reg_0;
  input ARESETN0;
  input [34:0]\aclk_wr_data_to_luma_fifo_reg[34]_0 ;
  input m_axis_video_tdata_0_sp_1;
  input m_axis_video_tdata_1_sp_1;
  input m_axis_video_tdata_2_sp_1;
  input m_axis_video_tdata_3_sp_1;
  input m_axis_video_tdata_4_sp_1;
  input m_axis_video_tdata_5_sp_1;
  input m_axis_video_tdata_6_sp_1;
  input m_axis_video_tdata_7_sp_1;
  input m_axis_video_tdata_8_sp_1;
  input m_axis_video_tdata_9_sp_1;
  input m_axis_video_tdata_10_sp_1;
  input m_axis_video_tdata_11_sp_1;
  input m_axis_video_tdata_12_sp_1;
  input m_axis_video_tdata_13_sp_1;
  input m_axis_video_tdata_14_sp_1;
  input m_axis_video_tdata_15_sp_1;
  input m_axis_video_tdata_16_sp_1;
  input m_axis_video_tdata_17_sp_1;
  input m_axis_video_tdata_18_sp_1;
  input m_axis_video_tdata_19_sp_1;
  input m_axis_video_tdata_20_sp_1;
  input m_axis_video_tdata_21_sp_1;
  input m_axis_video_tdata_22_sp_1;
  input m_axis_video_tdata_23_sp_1;
  input m_axis_video_tdata_24_sp_1;
  input m_axis_video_tdata_25_sp_1;
  input m_axis_video_tdata_26_sp_1;
  input m_axis_video_tdata_27_sp_1;
  input m_axis_video_tdata_28_sp_1;
  input m_axis_video_tdata_29_sp_1;
  input m_axis_video_tdata_30_sp_1;
  input m_axis_video_tdata_31_sp_1;
  input tvalid_from_drop;
  input m_axis_video_tready;
  input [31:0]Q;
  input \m_axis_video_tdata[23]_0 ;
  input [0:0]\m_axis_video_tdata[31]_0 ;
  input m_axis_video_tlast_0;
  input m_axis_video_tlast_1;
  input [1:0]dout;
  input fid;
  input [15:0]\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 ;

  wire ARESETN0;
  wire CDC_SINGLE_REMAP_INST_n_1;
  wire CDC_SINGLE_REMAP_INST_n_35;
  wire CDC_SINGLE_REMAP_INST_n_36;
  wire CDC_SINGLE_REMAP_INST_n_37;
  wire CDC_SINGLE_REMAP_INST_n_38;
  wire CDC_SINGLE_REMAP_INST_n_39;
  wire CDC_SINGLE_REMAP_INST_n_45;
  wire [15:0]D;
  wire FIFO_LUMA_INST_n_38;
  wire FIFO_LUMA_INST_n_40;
  wire FIFO_LUMA_INST_n_41;
  wire FIFO_LUMA_INST_n_42;
  wire FIFO_LUMA_INST_n_46;
  wire FIFO_LUMA_INST_n_47;
  wire FIFO_LUMA_INST_n_48;
  wire FIFO_LUMA_INST_n_49;
  wire FIFO_LUMA_INST_n_50;
  wire FIFO_LUMA_INST_n_51;
  wire FIFO_LUMA_INST_n_52;
  wire FIFO_LUMA_INST_n_53;
  wire FIFO_LUMA_INST_n_54;
  wire FIFO_LUMA_INST_n_55;
  wire FIFO_LUMA_INST_n_56;
  wire FIFO_LUMA_INST_n_57;
  wire FIFO_LUMA_INST_n_58;
  wire FIFO_LUMA_INST_n_59;
  wire FIFO_LUMA_INST_n_60;
  wire FIFO_LUMA_INST_n_61;
  wire FIFO_LUMA_INST_n_62;
  wire FIFO_LUMA_INST_n_63;
  wire FIFO_LUMA_INST_n_64;
  wire FIFO_LUMA_INST_n_65;
  wire \FSM_onehot_aclk_state_reg[1]_0 ;
  wire \FSM_onehot_aclk_state_reg_n_0_[1] ;
  wire \FSM_onehot_aclk_state_reg_n_0_[2] ;
  wire \FSM_onehot_aclk_state_reg_n_0_[6] ;
  wire \FSM_onehot_aclk_state_reg_n_0_[7] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aclk_empty_from_even_chroma_fifo;
  wire aclk_empty_from_luma_fifo;
  wire aclk_empty_from_odd_chroma_fifo;
  wire aclk_fifo_overflow0__0;
  wire aclk_fifo_underflow0__0;
  wire aclk_first_sof_i_1_n_0;
  wire aclk_first_sof_reg_n_0;
  wire aclk_full_from_even_chroma_fifo;
  wire aclk_full_from_odd_chroma_fifo;
  wire aclk_line_phase_mi;
  wire aclk_line_phase_mi_reg_0;
  wire aclk_line_phase_si;
  wire aclk_overflow_from_even_chroma_fifo;
  wire aclk_overflow_from_luma_fifo;
  wire aclk_overflow_from_odd_chroma_fifo;
  wire aclk_pixel_phase_mi;
  wire [7:0]aclk_rd_data_from_even_chroma_fifo;
  wire [15:0]aclk_rd_data_from_even_chroma_fifo_dly;
  wire [34:0]aclk_rd_data_from_luma_fifo;
  wire [34:0]aclk_rd_data_from_luma_fifo_dly;
  wire [0:0]aclk_rd_data_from_luma_fifo_dly_0;
  wire aclk_rd_data_from_luma_fifo_dly__0;
  wire [7:0]aclk_rd_data_from_odd_chroma_fifo;
  wire [15:0]aclk_rd_data_from_odd_chroma_fifo_dly;
  wire aclk_rd_en_to_odd_chroma_fifo;
  wire aclk_underflow_from_even_chroma_fifo;
  wire aclk_underflow_from_luma_fifo;
  wire aclk_underflow_from_odd_chroma_fifo;
  wire [15:0]\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 ;
  wire aclk_wr_data_to_luma_fifo;
  wire [34:0]\aclk_wr_data_to_luma_fifo_reg[34]_0 ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[0] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[10] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[11] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[12] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[13] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[14] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[15] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[16] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[17] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[18] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[19] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[1] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[20] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[21] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[22] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[23] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[24] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[25] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[26] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[27] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[28] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[29] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[2] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[30] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[31] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[32] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[33] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[34] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[3] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[4] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[5] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[6] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[7] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[8] ;
  wire \aclk_wr_data_to_luma_fifo_reg_n_0_[9] ;
  wire [15:0]aclk_wr_data_to_odd_chroma_fifo;
  wire aclk_wr_en_to_even_chroma_fifo_reg_n_0;
  wire aclk_wr_en_to_luma_fifo;
  wire aclk_wr_en_to_luma_fifo0;
  wire aclk_wr_en_to_odd_chroma_fifo;
  wire aclk_wr_en_to_odd_chroma_fifo_reg_0;
  wire aclk_xfer_mi__0;
  wire aclken;
  wire aresetn;
  wire dest_out;
  wire [1:0]dout;
  wire fid;
  wire fifo_underflow_from_remap;
  wire [7:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  wire [7:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  wire in8;
  wire [31:0]m_axis_video_tdata;
  wire \m_axis_video_tdata[23]_0 ;
  wire [0:0]\m_axis_video_tdata[31]_0 ;
  wire m_axis_video_tdata_0_sn_1;
  wire m_axis_video_tdata_10_sn_1;
  wire m_axis_video_tdata_11_sn_1;
  wire m_axis_video_tdata_12_sn_1;
  wire m_axis_video_tdata_13_sn_1;
  wire m_axis_video_tdata_14_sn_1;
  wire m_axis_video_tdata_15_sn_1;
  wire m_axis_video_tdata_16_sn_1;
  wire m_axis_video_tdata_17_sn_1;
  wire m_axis_video_tdata_18_sn_1;
  wire m_axis_video_tdata_19_sn_1;
  wire m_axis_video_tdata_1_sn_1;
  wire m_axis_video_tdata_20_sn_1;
  wire m_axis_video_tdata_21_sn_1;
  wire m_axis_video_tdata_22_sn_1;
  wire m_axis_video_tdata_23_sn_1;
  wire m_axis_video_tdata_24_sn_1;
  wire m_axis_video_tdata_25_sn_1;
  wire m_axis_video_tdata_26_sn_1;
  wire m_axis_video_tdata_27_sn_1;
  wire m_axis_video_tdata_28_sn_1;
  wire m_axis_video_tdata_29_sn_1;
  wire m_axis_video_tdata_2_sn_1;
  wire m_axis_video_tdata_30_sn_1;
  wire m_axis_video_tdata_31_sn_1;
  wire m_axis_video_tdata_3_sn_1;
  wire m_axis_video_tdata_4_sn_1;
  wire m_axis_video_tdata_5_sn_1;
  wire m_axis_video_tdata_6_sn_1;
  wire m_axis_video_tdata_7_sn_1;
  wire m_axis_video_tdata_8_sn_1;
  wire m_axis_video_tdata_9_sn_1;
  wire m_axis_video_tlast;
  wire m_axis_video_tlast_0;
  wire m_axis_video_tlast_1;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire p_0_in;
  wire p_1_in;
  wire remap_420_en;
  wire src_in;
  wire \syncstages_ff_reg[3] ;
  wire tready_to_drop;
  wire tvalid_from_drop;

  assign m_axis_video_tdata_0_sn_1 = m_axis_video_tdata_0_sp_1;
  assign m_axis_video_tdata_10_sn_1 = m_axis_video_tdata_10_sp_1;
  assign m_axis_video_tdata_11_sn_1 = m_axis_video_tdata_11_sp_1;
  assign m_axis_video_tdata_12_sn_1 = m_axis_video_tdata_12_sp_1;
  assign m_axis_video_tdata_13_sn_1 = m_axis_video_tdata_13_sp_1;
  assign m_axis_video_tdata_14_sn_1 = m_axis_video_tdata_14_sp_1;
  assign m_axis_video_tdata_15_sn_1 = m_axis_video_tdata_15_sp_1;
  assign m_axis_video_tdata_16_sn_1 = m_axis_video_tdata_16_sp_1;
  assign m_axis_video_tdata_17_sn_1 = m_axis_video_tdata_17_sp_1;
  assign m_axis_video_tdata_18_sn_1 = m_axis_video_tdata_18_sp_1;
  assign m_axis_video_tdata_19_sn_1 = m_axis_video_tdata_19_sp_1;
  assign m_axis_video_tdata_1_sn_1 = m_axis_video_tdata_1_sp_1;
  assign m_axis_video_tdata_20_sn_1 = m_axis_video_tdata_20_sp_1;
  assign m_axis_video_tdata_21_sn_1 = m_axis_video_tdata_21_sp_1;
  assign m_axis_video_tdata_22_sn_1 = m_axis_video_tdata_22_sp_1;
  assign m_axis_video_tdata_23_sn_1 = m_axis_video_tdata_23_sp_1;
  assign m_axis_video_tdata_24_sn_1 = m_axis_video_tdata_24_sp_1;
  assign m_axis_video_tdata_25_sn_1 = m_axis_video_tdata_25_sp_1;
  assign m_axis_video_tdata_26_sn_1 = m_axis_video_tdata_26_sp_1;
  assign m_axis_video_tdata_27_sn_1 = m_axis_video_tdata_27_sp_1;
  assign m_axis_video_tdata_28_sn_1 = m_axis_video_tdata_28_sp_1;
  assign m_axis_video_tdata_29_sn_1 = m_axis_video_tdata_29_sp_1;
  assign m_axis_video_tdata_2_sn_1 = m_axis_video_tdata_2_sp_1;
  assign m_axis_video_tdata_30_sn_1 = m_axis_video_tdata_30_sp_1;
  assign m_axis_video_tdata_31_sn_1 = m_axis_video_tdata_31_sp_1;
  assign m_axis_video_tdata_3_sn_1 = m_axis_video_tdata_3_sp_1;
  assign m_axis_video_tdata_4_sn_1 = m_axis_video_tdata_4_sp_1;
  assign m_axis_video_tdata_5_sn_1 = m_axis_video_tdata_5_sp_1;
  assign m_axis_video_tdata_6_sn_1 = m_axis_video_tdata_6_sp_1;
  assign m_axis_video_tdata_7_sn_1 = m_axis_video_tdata_7_sp_1;
  assign m_axis_video_tdata_8_sn_1 = m_axis_video_tdata_8_sp_1;
  assign m_axis_video_tdata_9_sn_1 = m_axis_video_tdata_9_sp_1;
  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_cdc_single_1 CDC_SINGLE_REMAP_INST
       (.D(aclk_rd_data_from_even_chroma_fifo),
        .\FSM_onehot_aclk_state_reg[2] (aclk_empty_from_odd_chroma_fifo),
        .\FSM_onehot_aclk_state_reg[2]_0 (aclk_empty_from_luma_fifo),
        .\FSM_onehot_aclk_state_reg[4] ({CDC_SINGLE_REMAP_INST_n_36,CDC_SINGLE_REMAP_INST_n_37,CDC_SINGLE_REMAP_INST_n_38}),
        .\FSM_onehot_aclk_state_reg[5] (CDC_SINGLE_REMAP_INST_n_39),
        .\FSM_onehot_aclk_state_reg[5]_0 ({p_1_in,p_0_in,aclk_rd_data_from_luma_fifo_dly_0,\FSM_onehot_aclk_state_reg_n_0_[2] }),
        .Q({aclk_rd_data_from_luma_fifo_dly[34:33],aclk_rd_data_from_luma_fifo_dly[31:0]}),
        .aclk(aclk),
        .aclk_line_phase_mi(aclk_line_phase_mi),
        .aclk_line_phase_mi_reg(CDC_SINGLE_REMAP_INST_n_1),
        .aclk_line_phase_mi_reg_0(aclk_line_phase_mi_reg_0),
        .aclk_line_phase_mi_reg_1(aclk_wr_en_to_odd_chroma_fifo_reg_0),
        .aclk_pixel_phase_mi(aclk_pixel_phase_mi),
        .aclk_xfer_mi__0(aclk_xfer_mi__0),
        .aclken(aclken),
        .aclken_0(CDC_SINGLE_REMAP_INST_n_45),
        .aresetn(aresetn),
        .dest_out(dest_out),
        .dout(dout[1]),
        .empty(aclk_empty_from_even_chroma_fifo),
        .fid(fid),
        .fid_0(aclk_rd_data_from_luma_fifo[34:33]),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ),
        .in8(in8),
        .m_axis_video_tdata(m_axis_video_tdata),
        .\m_axis_video_tdata[0]_0 (m_axis_video_tdata_0_sn_1),
        .\m_axis_video_tdata[15] (aclk_rd_data_from_even_chroma_fifo_dly),
        .\m_axis_video_tdata[15]_0 (m_axis_video_tdata_15_sn_1),
        .\m_axis_video_tdata[16]_0 (m_axis_video_tdata_16_sn_1),
        .\m_axis_video_tdata[17]_0 (m_axis_video_tdata_17_sn_1),
        .\m_axis_video_tdata[18]_0 (m_axis_video_tdata_18_sn_1),
        .\m_axis_video_tdata[19]_0 (m_axis_video_tdata_19_sn_1),
        .\m_axis_video_tdata[1]_0 (m_axis_video_tdata_1_sn_1),
        .\m_axis_video_tdata[20]_0 (m_axis_video_tdata_20_sn_1),
        .\m_axis_video_tdata[21]_0 (m_axis_video_tdata_21_sn_1),
        .\m_axis_video_tdata[22]_0 (m_axis_video_tdata_22_sn_1),
        .\m_axis_video_tdata[23]_0 (m_axis_video_tdata_23_sn_1),
        .\m_axis_video_tdata[2]_0 (m_axis_video_tdata_2_sn_1),
        .\m_axis_video_tdata[31] (aclk_rd_data_from_odd_chroma_fifo_dly),
        .\m_axis_video_tdata[31]_0 (m_axis_video_tdata_31_sn_1),
        .\m_axis_video_tdata[31]_1 ({Q[31:24],Q[15:8]}),
        .\m_axis_video_tdata[31]_2 (\m_axis_video_tdata[31]_0 ),
        .\m_axis_video_tdata[31]_3 (m_axis_video_tlast_0),
        .\m_axis_video_tdata[31]_4 (aclk_rd_data_from_odd_chroma_fifo),
        .\m_axis_video_tdata[3]_0 (m_axis_video_tdata_3_sn_1),
        .\m_axis_video_tdata[4]_0 (m_axis_video_tdata_4_sn_1),
        .\m_axis_video_tdata[5]_0 (m_axis_video_tdata_5_sn_1),
        .\m_axis_video_tdata[6]_0 (m_axis_video_tdata_6_sn_1),
        .\m_axis_video_tdata[7]_0 (m_axis_video_tdata_7_sn_1),
        .m_axis_video_tdata_0_sp_1(FIFO_LUMA_INST_n_46),
        .m_axis_video_tdata_10_sp_1(m_axis_video_tdata_10_sn_1),
        .m_axis_video_tdata_11_sp_1(m_axis_video_tdata_11_sn_1),
        .m_axis_video_tdata_12_sp_1(m_axis_video_tdata_12_sn_1),
        .m_axis_video_tdata_13_sp_1(m_axis_video_tdata_13_sn_1),
        .m_axis_video_tdata_14_sp_1(m_axis_video_tdata_14_sn_1),
        .m_axis_video_tdata_16_sp_1(FIFO_LUMA_INST_n_54),
        .m_axis_video_tdata_17_sp_1(FIFO_LUMA_INST_n_55),
        .m_axis_video_tdata_18_sp_1(FIFO_LUMA_INST_n_56),
        .m_axis_video_tdata_19_sp_1(FIFO_LUMA_INST_n_57),
        .m_axis_video_tdata_1_sp_1(FIFO_LUMA_INST_n_47),
        .m_axis_video_tdata_20_sp_1(FIFO_LUMA_INST_n_58),
        .m_axis_video_tdata_21_sp_1(FIFO_LUMA_INST_n_59),
        .m_axis_video_tdata_22_sp_1(FIFO_LUMA_INST_n_60),
        .m_axis_video_tdata_23_sp_1(FIFO_LUMA_INST_n_61),
        .m_axis_video_tdata_24_sp_1(m_axis_video_tdata_24_sn_1),
        .m_axis_video_tdata_25_sp_1(m_axis_video_tdata_25_sn_1),
        .m_axis_video_tdata_26_sp_1(m_axis_video_tdata_26_sn_1),
        .m_axis_video_tdata_27_sp_1(m_axis_video_tdata_27_sn_1),
        .m_axis_video_tdata_28_sp_1(m_axis_video_tdata_28_sn_1),
        .m_axis_video_tdata_29_sp_1(m_axis_video_tdata_29_sn_1),
        .m_axis_video_tdata_2_sp_1(FIFO_LUMA_INST_n_48),
        .m_axis_video_tdata_30_sp_1(m_axis_video_tdata_30_sn_1),
        .m_axis_video_tdata_3_sp_1(FIFO_LUMA_INST_n_49),
        .m_axis_video_tdata_4_sp_1(FIFO_LUMA_INST_n_50),
        .m_axis_video_tdata_5_sp_1(FIFO_LUMA_INST_n_51),
        .m_axis_video_tdata_6_sp_1(FIFO_LUMA_INST_n_52),
        .m_axis_video_tdata_7_sp_1(FIFO_LUMA_INST_n_53),
        .m_axis_video_tdata_8_sp_1(m_axis_video_tdata_8_sn_1),
        .m_axis_video_tdata_9_sp_1(m_axis_video_tdata_9_sn_1),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tready_0(CDC_SINGLE_REMAP_INST_n_35),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tuser_0(\aclk_wr_data_to_luma_fifo_reg[34]_0 [33]),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .remap_420_en(remap_420_en),
        .\syncstages_ff_reg[3] (\syncstages_ff_reg[3] ),
        .tvalid_from_drop(tvalid_from_drop));
  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_fifo_sync__parameterized0 FIFO_EVEN_CHROMA_INST
       (.D({\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ,aclk_rd_data_from_even_chroma_fifo}),
        .Q(aclk_wr_data_to_odd_chroma_fifo),
        .SR(SR),
        .aclk(aclk),
        .empty(aclk_empty_from_even_chroma_fifo),
        .full(aclk_full_from_even_chroma_fifo),
        .overflow(aclk_overflow_from_even_chroma_fifo),
        .rd_en(aclk_rd_en_to_odd_chroma_fifo),
        .underflow(aclk_underflow_from_even_chroma_fifo),
        .wr_en(aclk_wr_en_to_even_chroma_fifo_reg_n_0));
  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_fifo_sync FIFO_LUMA_INST
       (.ARESETN0(ARESETN0),
        .D({aclk_rd_data_from_luma_fifo[34:32],D,aclk_rd_data_from_luma_fifo[15:0]}),
        .E(aclk_wr_data_to_luma_fifo),
        .\FSM_onehot_aclk_state[4]_i_3_0 (aclk_full_from_even_chroma_fifo),
        .\FSM_onehot_aclk_state_reg[1] (\FSM_onehot_aclk_state_reg[1]_0 ),
        .\FSM_onehot_aclk_state_reg[1]_0 (aclk_empty_from_even_chroma_fifo),
        .\FSM_onehot_aclk_state_reg[3] ({\FSM_onehot_aclk_state_reg_n_0_[7] ,\FSM_onehot_aclk_state_reg_n_0_[6] ,p_1_in,p_0_in,aclk_rd_data_from_luma_fifo_dly_0,\FSM_onehot_aclk_state_reg_n_0_[1] }),
        .\FSM_onehot_aclk_state_reg[3]_0 (aclk_empty_from_odd_chroma_fifo),
        .\FSM_onehot_aclk_state_reg[3]_1 (CDC_SINGLE_REMAP_INST_n_39),
        .\FSM_onehot_aclk_state_reg[6] (aclk_rd_data_from_luma_fifo_dly[32]),
        .Q({\aclk_wr_data_to_luma_fifo_reg_n_0_[34] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[33] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[32] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[31] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[30] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[29] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[28] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[27] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[26] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[25] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[24] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[23] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[22] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[21] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[20] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[19] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[18] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[17] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[16] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[15] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[14] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[13] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[12] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[11] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[10] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[9] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[8] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[7] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[6] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[5] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[4] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[3] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[2] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[1] ,\aclk_wr_data_to_luma_fifo_reg_n_0_[0] }),
        .SR(SR),
        .aclk(aclk),
        .aclk_line_phase_mi(aclk_line_phase_mi),
        .aclk_line_phase_si(aclk_line_phase_si),
        .aclk_line_phase_si_reg(FIFO_LUMA_INST_n_40),
        .aclk_line_phase_si_reg_0(FIFO_LUMA_INST_n_41),
        .aclk_line_phase_si_reg_1(aclk_first_sof_reg_n_0),
        .aclk_pixel_phase_mi(aclk_pixel_phase_mi),
        .aclk_wr_en_to_even_chroma_fifo_reg(FIFO_LUMA_INST_n_38),
        .aclk_wr_en_to_even_chroma_fifo_reg_0(aclk_wr_en_to_even_chroma_fifo_reg_n_0),
        .aclk_wr_en_to_luma_fifo0(aclk_wr_en_to_luma_fifo0),
        .aclk_wr_en_to_luma_fifo_reg(\aclk_wr_data_to_luma_fifo_reg[34]_0 [33:32]),
        .aclk_wr_en_to_luma_fifo_reg_0(CDC_SINGLE_REMAP_INST_n_35),
        .aclk_wr_en_to_odd_chroma_fifo_reg(aclk_wr_en_to_odd_chroma_fifo_reg_0),
        .aclk_wr_en_to_odd_chroma_fifo_reg_0(aclk_wr_en_to_odd_chroma_fifo),
        .aclk_xfer_mi__0(aclk_xfer_mi__0),
        .aclken(aclken),
        .aclken_0(FIFO_LUMA_INST_n_42),
        .aresetn(aresetn),
        .dest_out(dest_out),
        .dout(dout[0]),
        .empty(aclk_empty_from_luma_fifo),
        .full(aclk_full_from_odd_chroma_fifo),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0 (FIFO_LUMA_INST_n_46),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 (FIFO_LUMA_INST_n_47),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 (FIFO_LUMA_INST_n_48),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 (FIFO_LUMA_INST_n_57),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 (FIFO_LUMA_INST_n_58),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 (FIFO_LUMA_INST_n_59),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 (FIFO_LUMA_INST_n_60),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 (FIFO_LUMA_INST_n_61),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 (FIFO_LUMA_INST_n_49),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 (FIFO_LUMA_INST_n_50),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 (FIFO_LUMA_INST_n_51),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 (FIFO_LUMA_INST_n_52),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 (FIFO_LUMA_INST_n_53),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 (FIFO_LUMA_INST_n_54),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 (FIFO_LUMA_INST_n_55),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 (FIFO_LUMA_INST_n_56),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ({FIFO_LUMA_INST_n_62,FIFO_LUMA_INST_n_63,FIFO_LUMA_INST_n_64,FIFO_LUMA_INST_n_65}),
        .in8(in8),
        .\m_axis_video_tdata[23] ({Q[23:16],Q[7:0]}),
        .\m_axis_video_tdata[23]_0 (\m_axis_video_tdata[23]_0 ),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tlast_0(m_axis_video_tlast_1),
        .m_axis_video_tlast_1(m_axis_video_tlast_0),
        .m_axis_video_tready(m_axis_video_tready),
        .overflow(aclk_overflow_from_luma_fifo),
        .tready_to_drop(tready_to_drop),
        .tvalid_from_drop(tvalid_from_drop),
        .underflow(aclk_underflow_from_luma_fifo),
        .wr_en(aclk_wr_en_to_luma_fifo));
  bd_8312_v_vid_in_axi4s_0_v_vid_in_axi4s_v5_0_7_fifo_sync__parameterized0_2 FIFO_ODD_CHROMA_INST
       (.D({\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ,aclk_rd_data_from_odd_chroma_fifo}),
        .Q(aclk_wr_data_to_odd_chroma_fifo),
        .SR(SR),
        .aclk(aclk),
        .aclk_line_phase_mi(aclk_line_phase_mi),
        .\count_value_i_reg[10] (aclk_wr_en_to_odd_chroma_fifo),
        .empty(aclk_empty_from_odd_chroma_fifo),
        .full(aclk_full_from_odd_chroma_fifo),
        .\guf.underflow_i_reg (aclk_rd_data_from_luma_fifo_dly_0),
        .overflow(aclk_overflow_from_odd_chroma_fifo),
        .rd_en(aclk_rd_en_to_odd_chroma_fifo),
        .underflow(aclk_underflow_from_odd_chroma_fifo));
  (* FSM_ENCODED_STATES = "C_STATE_SOF:10000000,C_STATE_EOL:01000000,C_STATE_WAIT:00010000,C_STATE_ODD:00100000,C_STATE_EMPTY:00000100,C_STATE_EVEN:00001000,C_STATE_ERROR:00000001,C_STATE_IDLE:00000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_aclk_state_reg[1] 
       (.C(aclk),
        .CE(aclken),
        .D(FIFO_LUMA_INST_n_65),
        .Q(\FSM_onehot_aclk_state_reg_n_0_[1] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "C_STATE_SOF:10000000,C_STATE_EOL:01000000,C_STATE_WAIT:00010000,C_STATE_ODD:00100000,C_STATE_EMPTY:00000100,C_STATE_EVEN:00001000,C_STATE_ERROR:00000001,C_STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[2] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_REMAP_INST_n_38),
        .Q(\FSM_onehot_aclk_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "C_STATE_SOF:10000000,C_STATE_EOL:01000000,C_STATE_WAIT:00010000,C_STATE_ODD:00100000,C_STATE_EMPTY:00000100,C_STATE_EVEN:00001000,C_STATE_ERROR:00000001,C_STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[3] 
       (.C(aclk),
        .CE(aclken),
        .D(FIFO_LUMA_INST_n_64),
        .Q(aclk_rd_data_from_luma_fifo_dly_0),
        .R(SR));
  (* FSM_ENCODED_STATES = "C_STATE_SOF:10000000,C_STATE_EOL:01000000,C_STATE_WAIT:00010000,C_STATE_ODD:00100000,C_STATE_EMPTY:00000100,C_STATE_EVEN:00001000,C_STATE_ERROR:00000001,C_STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[4] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_REMAP_INST_n_37),
        .Q(p_0_in),
        .R(SR));
  (* FSM_ENCODED_STATES = "C_STATE_SOF:10000000,C_STATE_EOL:01000000,C_STATE_WAIT:00010000,C_STATE_ODD:00100000,C_STATE_EMPTY:00000100,C_STATE_EVEN:00001000,C_STATE_ERROR:00000001,C_STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[5] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_REMAP_INST_n_36),
        .Q(p_1_in),
        .R(SR));
  (* FSM_ENCODED_STATES = "C_STATE_SOF:10000000,C_STATE_EOL:01000000,C_STATE_WAIT:00010000,C_STATE_ODD:00100000,C_STATE_EMPTY:00000100,C_STATE_EVEN:00001000,C_STATE_ERROR:00000001,C_STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[6] 
       (.C(aclk),
        .CE(aclken),
        .D(FIFO_LUMA_INST_n_63),
        .Q(\FSM_onehot_aclk_state_reg_n_0_[6] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "C_STATE_SOF:10000000,C_STATE_EOL:01000000,C_STATE_WAIT:00010000,C_STATE_ODD:00100000,C_STATE_EMPTY:00000100,C_STATE_EVEN:00001000,C_STATE_ERROR:00000001,C_STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[7] 
       (.C(aclk),
        .CE(aclken),
        .D(FIFO_LUMA_INST_n_62),
        .Q(\FSM_onehot_aclk_state_reg_n_0_[7] ),
        .R(SR));
  LUT3 #(
    .INIT(8'hFE)) 
    aclk_fifo_overflow0
       (.I0(aclk_overflow_from_even_chroma_fifo),
        .I1(aclk_overflow_from_odd_chroma_fifo),
        .I2(aclk_overflow_from_luma_fifo),
        .O(aclk_fifo_overflow0__0));
  FDRE aclk_fifo_overflow_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aclk_fifo_overflow0__0),
        .Q(src_in),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    aclk_fifo_underflow0
       (.I0(aclk_underflow_from_even_chroma_fifo),
        .I1(aclk_underflow_from_luma_fifo),
        .I2(aclk_underflow_from_odd_chroma_fifo),
        .O(aclk_fifo_underflow0__0));
  FDRE aclk_fifo_underflow_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aclk_fifo_underflow0__0),
        .Q(fifo_underflow_from_remap),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF40)) 
    aclk_first_sof_i_1
       (.I0(FIFO_LUMA_INST_n_42),
        .I1(\aclk_wr_data_to_luma_fifo_reg[34]_0 [33]),
        .I2(dest_out),
        .I3(aclk_first_sof_reg_n_0),
        .O(aclk_first_sof_i_1_n_0));
  FDRE aclk_first_sof_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aclk_first_sof_i_1_n_0),
        .Q(aclk_first_sof_reg_n_0),
        .R(SR));
  FDRE aclk_line_phase_mi_reg
       (.C(aclk),
        .CE(1'b1),
        .D(CDC_SINGLE_REMAP_INST_n_1),
        .Q(aclk_line_phase_mi),
        .R(1'b0));
  FDRE aclk_line_phase_si_reg
       (.C(aclk),
        .CE(1'b1),
        .D(FIFO_LUMA_INST_n_41),
        .Q(aclk_line_phase_si),
        .R(1'b0));
  FDRE aclk_pixel_phase_mi_reg
       (.C(aclk),
        .CE(1'b1),
        .D(CDC_SINGLE_REMAP_INST_n_45),
        .Q(aclk_pixel_phase_mi),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[0] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_even_chroma_fifo[0]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[0]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[10] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 [2]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[10]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[11] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 [3]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[11]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[12] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 [4]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[12]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[13] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 [5]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[13]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[14] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 [6]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[14]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[15] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 [7]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[15]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[1] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_even_chroma_fifo[1]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[1]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[2] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_even_chroma_fifo[2]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[2]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[3] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_even_chroma_fifo[3]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[3]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[4] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_even_chroma_fifo[4]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[4]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[5] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_even_chroma_fifo[5]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[5]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[6] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_even_chroma_fifo[6]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[6]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[7] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_even_chroma_fifo[7]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[7]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[8] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 [0]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[8]),
        .R(SR));
  FDRE \aclk_rd_data_from_even_chroma_fifo_dly_reg[9] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 [1]),
        .Q(aclk_rd_data_from_even_chroma_fifo_dly[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \aclk_rd_data_from_luma_fifo_dly[34]_i_1 
       (.I0(aclken),
        .I1(aclk_rd_data_from_luma_fifo_dly_0),
        .O(aclk_rd_data_from_luma_fifo_dly__0));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[0] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[0]),
        .Q(aclk_rd_data_from_luma_fifo_dly[0]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[10] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[10]),
        .Q(aclk_rd_data_from_luma_fifo_dly[10]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[11] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[11]),
        .Q(aclk_rd_data_from_luma_fifo_dly[11]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[12] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[12]),
        .Q(aclk_rd_data_from_luma_fifo_dly[12]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[13] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[13]),
        .Q(aclk_rd_data_from_luma_fifo_dly[13]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[14] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[14]),
        .Q(aclk_rd_data_from_luma_fifo_dly[14]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[15] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[15]),
        .Q(aclk_rd_data_from_luma_fifo_dly[15]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[16] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[0]),
        .Q(aclk_rd_data_from_luma_fifo_dly[16]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[17] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[1]),
        .Q(aclk_rd_data_from_luma_fifo_dly[17]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[18] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[2]),
        .Q(aclk_rd_data_from_luma_fifo_dly[18]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[19] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[3]),
        .Q(aclk_rd_data_from_luma_fifo_dly[19]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[1] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[1]),
        .Q(aclk_rd_data_from_luma_fifo_dly[1]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[20] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[4]),
        .Q(aclk_rd_data_from_luma_fifo_dly[20]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[21] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[5]),
        .Q(aclk_rd_data_from_luma_fifo_dly[21]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[22] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[6]),
        .Q(aclk_rd_data_from_luma_fifo_dly[22]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[23] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[7]),
        .Q(aclk_rd_data_from_luma_fifo_dly[23]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[24] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[8]),
        .Q(aclk_rd_data_from_luma_fifo_dly[24]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[25] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[9]),
        .Q(aclk_rd_data_from_luma_fifo_dly[25]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[26] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[10]),
        .Q(aclk_rd_data_from_luma_fifo_dly[26]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[27] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[11]),
        .Q(aclk_rd_data_from_luma_fifo_dly[27]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[28] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[12]),
        .Q(aclk_rd_data_from_luma_fifo_dly[28]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[29] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[13]),
        .Q(aclk_rd_data_from_luma_fifo_dly[29]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[2] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[2]),
        .Q(aclk_rd_data_from_luma_fifo_dly[2]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[30] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[14]),
        .Q(aclk_rd_data_from_luma_fifo_dly[30]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[31] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(D[15]),
        .Q(aclk_rd_data_from_luma_fifo_dly[31]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[32] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[32]),
        .Q(aclk_rd_data_from_luma_fifo_dly[32]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[33] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[33]),
        .Q(aclk_rd_data_from_luma_fifo_dly[33]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[34] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[34]),
        .Q(aclk_rd_data_from_luma_fifo_dly[34]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[3] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[3]),
        .Q(aclk_rd_data_from_luma_fifo_dly[3]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[4] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[4]),
        .Q(aclk_rd_data_from_luma_fifo_dly[4]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[5] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[5]),
        .Q(aclk_rd_data_from_luma_fifo_dly[5]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[6] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[6]),
        .Q(aclk_rd_data_from_luma_fifo_dly[6]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[7] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[7]),
        .Q(aclk_rd_data_from_luma_fifo_dly[7]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[8] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[8]),
        .Q(aclk_rd_data_from_luma_fifo_dly[8]),
        .R(SR));
  FDRE \aclk_rd_data_from_luma_fifo_dly_reg[9] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_luma_fifo[9]),
        .Q(aclk_rd_data_from_luma_fifo_dly[9]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[0] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_odd_chroma_fifo[0]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[0]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[10] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 [2]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[10]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[11] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 [3]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[11]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[12] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 [4]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[12]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[13] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 [5]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[13]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[14] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 [6]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[14]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[15] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 [7]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[15]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[1] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_odd_chroma_fifo[1]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[1]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[2] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_odd_chroma_fifo[2]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[2]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[3] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_odd_chroma_fifo[3]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[3]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[4] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_odd_chroma_fifo[4]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[4]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[5] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_odd_chroma_fifo[5]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[5]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[6] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_odd_chroma_fifo[6]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[6]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[7] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(aclk_rd_data_from_odd_chroma_fifo[7]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[7]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[8] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 [0]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[8]),
        .R(SR));
  FDRE \aclk_rd_data_from_odd_chroma_fifo_dly_reg[9] 
       (.C(aclk),
        .CE(aclk_rd_data_from_luma_fifo_dly__0),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 [1]),
        .Q(aclk_rd_data_from_odd_chroma_fifo_dly[9]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[0] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [0]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[0]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[10] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [10]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[10]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[11] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [11]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[11]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[12] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [12]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[12]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[13] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [13]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[13]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[14] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [14]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[14]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[15] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [15]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[15]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[1] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [1]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[1]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[2] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [2]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[2]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[3] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [3]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[3]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[4] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [4]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[4]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[5] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [5]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[5]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[6] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [6]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[6]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[7] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [7]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[7]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[8] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [8]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[8]),
        .R(SR));
  FDRE \aclk_wr_data_to_even_chroma_fifo_reg[9] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_even_chroma_fifo_reg[15]_0 [9]),
        .Q(aclk_wr_data_to_odd_chroma_fifo[9]),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[0] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [0]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[0] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[10] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [10]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[10] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[11] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [11]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[11] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[12] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [12]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[12] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[13] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [13]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[13] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[14] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [14]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[14] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[15] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [15]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[15] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[16] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [16]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[16] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[17] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [17]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[17] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[18] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [18]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[18] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[19] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [19]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[19] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[1] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [1]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[1] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[20] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [20]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[20] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[21] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [21]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[21] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[22] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [22]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[22] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[23] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [23]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[23] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[24] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [24]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[24] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[25] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [25]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[25] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[26] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [26]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[26] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[27] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [27]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[27] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[28] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [28]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[28] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[29] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [29]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[29] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[2] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [2]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[2] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[30] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [30]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[30] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[31] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [31]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[31] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[32] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [32]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[32] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[33] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [33]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[33] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[34] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [34]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[34] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[3] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [3]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[3] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[4] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [4]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[4] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[5] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [5]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[5] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[6] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [6]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[6] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[7] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [7]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[7] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[8] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [8]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[8] ),
        .R(SR));
  FDRE \aclk_wr_data_to_luma_fifo_reg[9] 
       (.C(aclk),
        .CE(aclk_wr_data_to_luma_fifo),
        .D(\aclk_wr_data_to_luma_fifo_reg[34]_0 [9]),
        .Q(\aclk_wr_data_to_luma_fifo_reg_n_0_[9] ),
        .R(SR));
  FDRE aclk_wr_en_to_even_chroma_fifo_reg
       (.C(aclk),
        .CE(1'b1),
        .D(FIFO_LUMA_INST_n_38),
        .Q(aclk_wr_en_to_even_chroma_fifo_reg_n_0),
        .R(1'b0));
  FDRE aclk_wr_en_to_luma_fifo_reg
       (.C(aclk),
        .CE(aclken),
        .D(aclk_wr_en_to_luma_fifo0),
        .Q(aclk_wr_en_to_luma_fifo),
        .R(SR));
  FDRE aclk_wr_en_to_odd_chroma_fifo_reg
       (.C(aclk),
        .CE(1'b1),
        .D(FIFO_LUMA_INST_n_40),
        .Q(aclk_wr_en_to_odd_chroma_fifo),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "GRAY" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[3] ;
  wire [8:0]\^dest_out_bin ;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  assign dest_out_bin[9] = \dest_graysync_ff[3] [9];
  assign dest_out_bin[8:0] = \^dest_out_bin [8:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[3] [3]),
        .I4(\dest_graysync_ff[3] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [3]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\^dest_out_bin [4]),
        .I2(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\^dest_out_bin [4]),
        .O(\^dest_out_bin [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [6]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [9]),
        .I4(\dest_graysync_ff[3] [7]),
        .I5(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [5]),
        .I1(\dest_graysync_ff[3] [7]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [8]),
        .I4(\dest_graysync_ff[3] [6]),
        .O(\^dest_out_bin [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[3] [6]),
        .I1(\dest_graysync_ff[3] [8]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [7]),
        .O(\^dest_out_bin [6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[3] [7]),
        .I1(\dest_graysync_ff[3] [9]),
        .I2(\dest_graysync_ff[3] [8]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\dest_graysync_ff[3] [9]),
        .O(\^dest_out_bin [8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_cdc_gray__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[3] ;
  wire [8:0]\^dest_out_bin ;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  assign dest_out_bin[9] = \dest_graysync_ff[3] [9];
  assign dest_out_bin[8:0] = \^dest_out_bin [8:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[3] [3]),
        .I4(\dest_graysync_ff[3] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [3]),
        .I2(\^dest_out_bin [4]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\^dest_out_bin [4]),
        .I2(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\^dest_out_bin [4]),
        .O(\^dest_out_bin [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [6]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [9]),
        .I4(\dest_graysync_ff[3] [7]),
        .I5(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [5]),
        .I1(\dest_graysync_ff[3] [7]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [8]),
        .I4(\dest_graysync_ff[3] [6]),
        .O(\^dest_out_bin [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[3] [6]),
        .I1(\dest_graysync_ff[3] [8]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [7]),
        .O(\^dest_out_bin [6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[3] [7]),
        .I1(\dest_graysync_ff[3] [9]),
        .I2(\dest_graysync_ff[3] [8]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\dest_graysync_ff[3] [9]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "6" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[3] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[4] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[5] ;
  wire [9:0]\^dest_out_bin ;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  assign dest_out_bin[10] = \dest_graysync_ff[5] [10];
  assign dest_out_bin[9:0] = \^dest_out_bin [9:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(\dest_graysync_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [10]),
        .Q(\dest_graysync_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [0]),
        .Q(\dest_graysync_ff[4] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [10]),
        .Q(\dest_graysync_ff[4] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [1]),
        .Q(\dest_graysync_ff[4] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [2]),
        .Q(\dest_graysync_ff[4] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [3]),
        .Q(\dest_graysync_ff[4] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [4]),
        .Q(\dest_graysync_ff[4] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [5]),
        .Q(\dest_graysync_ff[4] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [6]),
        .Q(\dest_graysync_ff[4] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [7]),
        .Q(\dest_graysync_ff[4] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [8]),
        .Q(\dest_graysync_ff[4] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [9]),
        .Q(\dest_graysync_ff[4] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [0]),
        .Q(\dest_graysync_ff[5] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [10]),
        .Q(\dest_graysync_ff[5] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [1]),
        .Q(\dest_graysync_ff[5] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [2]),
        .Q(\dest_graysync_ff[5] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [3]),
        .Q(\dest_graysync_ff[5] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [4]),
        .Q(\dest_graysync_ff[5] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [5]),
        .Q(\dest_graysync_ff[5] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [6]),
        .Q(\dest_graysync_ff[5] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [7]),
        .Q(\dest_graysync_ff[5] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [8]),
        .Q(\dest_graysync_ff[5] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [9]),
        .Q(\dest_graysync_ff[5] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[5] [0]),
        .I1(\dest_graysync_ff[5] [2]),
        .I2(\dest_graysync_ff[5] [4]),
        .I3(\^dest_out_bin [5]),
        .I4(\dest_graysync_ff[5] [3]),
        .I5(\dest_graysync_ff[5] [1]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[5] [1]),
        .I1(\dest_graysync_ff[5] [3]),
        .I2(\^dest_out_bin [5]),
        .I3(\dest_graysync_ff[5] [4]),
        .I4(\dest_graysync_ff[5] [2]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[5] [2]),
        .I1(\dest_graysync_ff[5] [4]),
        .I2(\^dest_out_bin [5]),
        .I3(\dest_graysync_ff[5] [3]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[5] [3]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[5] [4]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[5] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[5] [5]),
        .I1(\dest_graysync_ff[5] [7]),
        .I2(\dest_graysync_ff[5] [9]),
        .I3(\dest_graysync_ff[5] [10]),
        .I4(\dest_graysync_ff[5] [8]),
        .I5(\dest_graysync_ff[5] [6]),
        .O(\^dest_out_bin [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[5] [6]),
        .I1(\dest_graysync_ff[5] [8]),
        .I2(\dest_graysync_ff[5] [10]),
        .I3(\dest_graysync_ff[5] [9]),
        .I4(\dest_graysync_ff[5] [7]),
        .O(\^dest_out_bin [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[5] [7]),
        .I1(\dest_graysync_ff[5] [9]),
        .I2(\dest_graysync_ff[5] [10]),
        .I3(\dest_graysync_ff[5] [8]),
        .O(\^dest_out_bin [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[5] [8]),
        .I1(\dest_graysync_ff[5] [10]),
        .I2(\dest_graysync_ff[5] [9]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_graysync_ff[5] [9]),
        .I1(\dest_graysync_ff[5] [10]),
        .O(\^dest_out_bin [9]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[3] ;
  wire [9:0]\^dest_out_bin ;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  assign dest_out_bin[10] = \dest_graysync_ff[3] [10];
  assign dest_out_bin[9:0] = \^dest_out_bin [9:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(\dest_graysync_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [10]),
        .Q(\dest_graysync_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\dest_graysync_ff[3] [4]),
        .I3(\^dest_out_bin [5]),
        .I4(\dest_graysync_ff[3] [3]),
        .I5(\dest_graysync_ff[3] [1]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [3]),
        .I2(\^dest_out_bin [5]),
        .I3(\dest_graysync_ff[3] [4]),
        .I4(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\dest_graysync_ff[3] [4]),
        .I2(\^dest_out_bin [5]),
        .I3(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [4]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [5]),
        .I1(\dest_graysync_ff[3] [7]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [10]),
        .I4(\dest_graysync_ff[3] [8]),
        .I5(\dest_graysync_ff[3] [6]),
        .O(\^dest_out_bin [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[3] [6]),
        .I1(\dest_graysync_ff[3] [8]),
        .I2(\dest_graysync_ff[3] [10]),
        .I3(\dest_graysync_ff[3] [9]),
        .I4(\dest_graysync_ff[3] [7]),
        .O(\^dest_out_bin [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[3] [7]),
        .I1(\dest_graysync_ff[3] [9]),
        .I2(\dest_graysync_ff[3] [10]),
        .I3(\dest_graysync_ff[3] [8]),
        .O(\^dest_out_bin [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [9]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_graysync_ff[3] [9]),
        .I1(\dest_graysync_ff[3] [10]),
        .O(\^dest_out_bin [9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "SINGLE" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "SINGLE" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_cdc_single__1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "SINGLE" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "SINGLE" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_cdc_single__3
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "SINGLE" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_cdc_single__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SYNC_RST" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_cdc_sync_rst__1
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn
   (Q,
    S,
    DI,
    ram_empty_i,
    \count_value_i_reg[0]_0 ,
    rd_en,
    \gwdc.wr_data_count_i_reg[7] ,
    \gwdc.wr_data_count_i_reg[7]_0 ,
    SR,
    wr_clk);
  output [0:0]Q;
  output [1:0]S;
  output [0:0]DI;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input [1:0]\gwdc.wr_data_count_i_reg[7] ;
  input [1:0]\gwdc.wr_data_count_i_reg[7]_0 ;
  input [0:0]SR;
  input wr_clk;

  wire [0:0]DI;
  wire [0:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire [0:0]count_value_i;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_3_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire \gen_fwft.count_en ;
  wire [1:0]\gwdc.wr_data_count_i_reg[7] ;
  wire [1:0]\gwdc.wr_data_count_i_reg[7]_0 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT5 #(
    .INIT(32'h5AAAA655)) 
    \count_value_i[0]_i_1__3 
       (.I0(count_value_i),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(ram_empty_i),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hC02F)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_0 [0]),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.count_en ));
  LUT6 #(
    .INIT(64'hA999A9A96AAA6AAA)) 
    \count_value_i[1]_i_3 
       (.I0(Q),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(rd_en),
        .I4(\count_value_i_reg[0]_0 [0]),
        .I5(count_value_i),
        .O(\count_value_i[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(count_value_i),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[1]_i_3_n_0 ),
        .Q(Q),
        .R(SR));
  LUT4 #(
    .INIT(16'h9669)) 
    \gwdc.wr_data_count_i[7]_i_15 
       (.I0(DI),
        .I1(\gwdc.wr_data_count_i_reg[7] [1]),
        .I2(Q),
        .I3(\gwdc.wr_data_count_i_reg[7]_0 [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gwdc.wr_data_count_i[7]_i_16 
       (.I0(count_value_i),
        .I1(\gwdc.wr_data_count_i_reg[7] [0]),
        .I2(\gwdc.wr_data_count_i_reg[7]_0 [0]),
        .O(S[0]));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(count_value_i),
        .I1(\gwdc.wr_data_count_i_reg[7] [0]),
        .O(DI));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn_21
   (\count_value_i_reg[1]_0 ,
    src_in_bin,
    S,
    DI,
    Q,
    ram_empty_i,
    rd_en,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[7]_0 ,
    SR,
    rd_clk);
  output [1:0]\count_value_i_reg[1]_0 ;
  output [0:0]src_in_bin;
  output [1:0]S;
  output [0:0]DI;
  input [1:0]Q;
  input ram_empty_i;
  input rd_en;
  input [1:0]\grdc.rd_data_count_i_reg[7] ;
  input [1:0]\grdc.rd_data_count_i_reg[7]_0 ;
  input [0:0]SR;
  input rd_clk;

  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_3_n_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire \gen_fwft.count_en ;
  wire [1:0]\grdc.rd_data_count_i_reg[7] ;
  wire [1:0]\grdc.rd_data_count_i_reg[7]_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [0:0]src_in_bin;

  LUT5 #(
    .INIT(32'h3CDCC323)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .I1(ram_empty_i),
        .I2(Q[1]),
        .I3(rd_en),
        .I4(\count_value_i_reg[1]_0 [0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h8783)) 
    \count_value_i[1]_i_2 
       (.I0(rd_en),
        .I1(Q[1]),
        .I2(ram_empty_i),
        .I3(Q[0]),
        .O(\gen_fwft.count_en ));
  LUT6 #(
    .INIT(64'hBFD5BFF5402A400A)) 
    \count_value_i[1]_i_3 
       (.I0(\count_value_i_reg[1]_0 [0]),
        .I1(rd_en),
        .I2(Q[1]),
        .I3(ram_empty_i),
        .I4(Q[0]),
        .I5(\count_value_i_reg[1]_0 [1]),
        .O(\count_value_i[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(\count_value_i_reg[1]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[1]_i_3_n_0 ),
        .Q(\count_value_i_reg[1]_0 [1]),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11 
       (.I0(\count_value_i_reg[1]_0 [0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .O(src_in_bin));
  LUT4 #(
    .INIT(16'h9669)) 
    \grdc.rd_data_count_i[7]_i_15 
       (.I0(DI),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\grdc.rd_data_count_i_reg[7] [1]),
        .I3(\grdc.rd_data_count_i_reg[7]_0 [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \grdc.rd_data_count_i[7]_i_16 
       (.I0(\count_value_i_reg[1]_0 [0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(\grdc.rd_data_count_i_reg[7]_0 [0]),
        .O(S[0]));
  (* HLUTNM = "lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \grdc.rd_data_count_i[7]_i_8 
       (.I0(\count_value_i_reg[1]_0 [0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .O(DI));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized0
   (Q,
    leaving_empty0,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    ram_wr_en_pf,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [10:0]Q;
  output leaving_empty0;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input \count_value_i_reg[0]_0 ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 ;
  input [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input ram_wr_en_pf;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [10:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_2__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ;
  wire [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 ;
  wire [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__1 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2__1_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2__1 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__1_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[10]_i_1__1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [9]),
        .I2(Q[10]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .O(leaving_empty0));
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [9]),
        .I2(Q[10]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized0_11
   (Q,
    leaving_empty0,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    ram_wr_en_pf,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [10:0]Q;
  output leaving_empty0;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input \count_value_i_reg[0]_0 ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 ;
  input [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input ram_wr_en_pf;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [10:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_2__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ;
  wire [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 ;
  wire [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__1 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2__1_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2__1 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__1_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[10]_i_1__1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [9]),
        .I2(Q[10]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .O(leaving_empty0));
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [9]),
        .I2(Q[10]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 [10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized0_14
   (ram_empty_i0,
    Q,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[10]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    wr_clk);
  output ram_empty_i0;
  output [10:0]Q;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[10]_0 ;
  input rst_d1;
  input [10:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input wr_clk;

  wire [10:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[10]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_2__0_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire [0:0]\count_value_i_reg[10]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [10:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__0 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2__0_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2__0 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__0_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[10]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[10]_i_1__0_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00008080)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I3(leaving_empty0),
        .I4(ram_wr_en_pf),
        .I5(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg_0 [10]),
        .I1(Q[10]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [9]),
        .I3(Q[9]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I5(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized0_3
   (ram_empty_i0,
    Q,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[10]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    wr_clk);
  output ram_empty_i0;
  output [10:0]Q;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[10]_0 ;
  input rst_d1;
  input [10:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input wr_clk;

  wire [10:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[10]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_2__0_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire [0:0]\count_value_i_reg[10]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [10:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__0 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2__0_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2__0 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__0_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[10]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[10]_i_1__0_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00008080)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I3(leaving_empty0),
        .I4(ram_wr_en_pf),
        .I5(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg_0 [10]),
        .I1(Q[10]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [9]),
        .I3(Q[9]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I5(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized0_5
   (DI,
    Q,
    S,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    leaving_empty0,
    \count_value_i_reg[6]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gwdc.wr_data_count_i_reg[7] ,
    \gwdc.wr_data_count_i_reg[11] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    ram_wr_en_pf,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [0:0]DI;
  output [10:0]Q;
  output [3:0]S;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output leaving_empty0;
  output [4:0]\count_value_i_reg[6]_0 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input [0:0]\gwdc.wr_data_count_i_reg[7] ;
  input [11:0]\gwdc.wr_data_count_i_reg[11] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input ram_wr_en_pf;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [0:0]DI;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [10:0]Q;
  wire [3:0]S;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_1__1_n_0 ;
  wire \count_value_i[11]_i_1__0_n_0 ;
  wire \count_value_i[11]_i_2__0_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [4:0]\count_value_i_reg[6]_0 ;
  wire \count_value_i_reg_n_0_[11] ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ;
  wire [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire going_full1;
  wire [11:0]\gwdc.wr_data_count_i_reg[11] ;
  wire [0:0]\gwdc.wr_data_count_i_reg[7] ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__1 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2__0_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__0 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__0_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(\count_value_i_reg_n_0_[11] ),
        .O(\count_value_i[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__0 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__1_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[10]_i_1__1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[11]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[11] ),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I1(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [9]),
        .I2(Q[10]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8000008000000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .I3(Q[9]),
        .I4(\gwdc.wr_data_count_i_reg[11] [9]),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .O(leaving_empty0));
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[11] [6]),
        .I2(\gwdc.wr_data_count_i_reg[11] [8]),
        .I3(Q[8]),
        .I4(\gwdc.wr_data_count_i_reg[11] [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[11] [0]),
        .I2(\gwdc.wr_data_count_i_reg[11] [2]),
        .I3(Q[2]),
        .I4(\gwdc.wr_data_count_i_reg[11] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[11] [3]),
        .I2(\gwdc.wr_data_count_i_reg[11] [5]),
        .I3(Q[5]),
        .I4(\gwdc.wr_data_count_i_reg[11] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_5 
       (.I0(Q[10]),
        .I1(\gwdc.wr_data_count_i_reg[11] [10]),
        .I2(\count_value_i_reg_n_0_[11] ),
        .I3(\gwdc.wr_data_count_i_reg[11] [11]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_6 
       (.I0(Q[9]),
        .I1(\gwdc.wr_data_count_i_reg[11] [9]),
        .I2(Q[10]),
        .I3(\gwdc.wr_data_count_i_reg[11] [10]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_7 
       (.I0(Q[8]),
        .I1(\gwdc.wr_data_count_i_reg[11] [8]),
        .I2(Q[9]),
        .I3(\gwdc.wr_data_count_i_reg[11] [9]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_8 
       (.I0(Q[7]),
        .I1(\gwdc.wr_data_count_i_reg[11] [7]),
        .I2(Q[8]),
        .I3(\gwdc.wr_data_count_i_reg[11] [8]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_10 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[11] [5]),
        .I2(Q[6]),
        .I3(\gwdc.wr_data_count_i_reg[11] [6]),
        .O(\count_value_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_11 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[11] [4]),
        .I2(Q[5]),
        .I3(\gwdc.wr_data_count_i_reg[11] [5]),
        .O(\count_value_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_12 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[11] [3]),
        .I2(Q[4]),
        .I3(\gwdc.wr_data_count_i_reg[11] [4]),
        .O(\count_value_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_13 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[11] [2]),
        .I2(Q[3]),
        .I3(\gwdc.wr_data_count_i_reg[11] [3]),
        .O(\count_value_i_reg[6]_0 [0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[7] ),
        .I2(\gwdc.wr_data_count_i_reg[11] [1]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_9 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[11] [6]),
        .I2(Q[7]),
        .I3(\gwdc.wr_data_count_i_reg[11] [7]),
        .O(\count_value_i_reg[6]_0 [4]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized0_8
   (ram_empty_i0,
    Q,
    D,
    \count_value_i_reg[10]_0 ,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[11]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    DI,
    S,
    \gwdc.wr_data_count_i_reg[11] ,
    \gwdc.wr_data_count_i_reg[7] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 ,
    wr_clk);
  output ram_empty_i0;
  output [11:0]Q;
  output [11:0]D;
  output \count_value_i_reg[10]_0 ;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[11]_0 ;
  input rst_d1;
  input [10:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input [1:0]DI;
  input [6:0]S;
  input [3:0]\gwdc.wr_data_count_i_reg[11] ;
  input [0:0]\gwdc.wr_data_count_i_reg[7] ;
  input [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 ;
  input wr_clk;

  wire [11:0]D;
  wire [1:0]DI;
  wire [11:0]Q;
  wire [6:0]S;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[10]_i_1__0_n_0 ;
  wire \count_value_i[11]_i_1_n_0 ;
  wire \count_value_i[11]_i_2_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire \count_value_i_reg[10]_0 ;
  wire [0:0]\count_value_i_reg[11]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [10:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire \gwdc.wr_data_count_i[11]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[11]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[11]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_14_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_6_n_0 ;
  wire [3:0]\gwdc.wr_data_count_i_reg[11] ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_5 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_6 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_7 ;
  wire [0:0]\gwdc.wr_data_count_i_reg[7] ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_4 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_5 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_6 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_7 ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [7:3]\NLW_gwdc.wr_data_count_i_reg[11]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_gwdc.wr_data_count_i_reg[11]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__0 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__0_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[11]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[10]_i_1__0_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[11]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[10]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 [9]),
        .O(\count_value_i_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00008080)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I3(leaving_empty0),
        .I4(ram_wr_en_pf),
        .I5(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg_0 [10]),
        .I1(Q[10]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [9]),
        .I3(Q[9]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I5(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_2 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 [8]),
        .O(\gwdc.wr_data_count_i[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_3 
       (.I0(Q[8]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 [7]),
        .O(\gwdc.wr_data_count_i[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_4 
       (.I0(Q[7]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 [6]),
        .O(\gwdc.wr_data_count_i[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[7]_i_14 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[7] ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 [0]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 [1]),
        .I4(Q[2]),
        .O(\gwdc.wr_data_count_i[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 [5]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 [4]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 [3]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 [2]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(Q[2]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 [1]),
        .O(\gwdc.wr_data_count_i[7]_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[11]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gwdc.wr_data_count_i_reg[11]_i_1_CO_UNCONNECTED [7:3],\gwdc.wr_data_count_i_reg[11]_i_1_n_5 ,\gwdc.wr_data_count_i_reg[11]_i_1_n_6 ,\gwdc.wr_data_count_i_reg[11]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,\gwdc.wr_data_count_i[11]_i_2_n_0 ,\gwdc.wr_data_count_i[11]_i_3_n_0 ,\gwdc.wr_data_count_i[11]_i_4_n_0 }),
        .O({\NLW_gwdc.wr_data_count_i_reg[11]_i_1_O_UNCONNECTED [7:4],D[11:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,\gwdc.wr_data_count_i_reg[11] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_4 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_5 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_6 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_7 }),
        .DI({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 ,\gwdc.wr_data_count_i[7]_i_6_n_0 ,DI,Q[0]}),
        .O(D[7:0]),
        .S({S[6:2],\gwdc.wr_data_count_i[7]_i_14_n_0 ,S[1:0]}));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized1
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [10:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [10:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[10]_i_1__2_n_0 ;
  wire \count_value_i[10]_i_2__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__2 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2__2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2__2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[10]_i_1__2_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized1_12
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [10:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [10:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[10]_i_1__2_n_0 ;
  wire \count_value_i[10]_i_2__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__2 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2__2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2__2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[10]_i_1__2_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized1_15
   (Q,
    ram_wr_en_pf,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    wr_clk);
  output [10:0]Q;
  input ram_wr_en_pf;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input wr_clk;

  wire [10:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_1_n_0 ;
  wire \count_value_i[10]_i_2_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized1_4
   (Q,
    ram_wr_en_pf,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    wr_clk);
  output [10:0]Q;
  input ram_wr_en_pf;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input wr_clk;

  wire [10:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_1_n_0 ;
  wire \count_value_i[10]_i_2_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized1_6
   (Q,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [10:0]Q;
  input \count_value_i_reg[0]_0 ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [10:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[10]_i_1__2_n_0 ;
  wire \count_value_i[10]_i_2__0_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__2 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2__0_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2__0 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[10]_i_1__2_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized1_9
   (Q,
    ram_wr_en_pf,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    wr_clk);
  output [10:0]Q;
  input ram_wr_en_pf;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input wr_clk;

  wire [10:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_1_n_0 ;
  wire \count_value_i[10]_i_2_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized3
   (Q,
    ram_empty_i0,
    E,
    p_1_in__0,
    src_in_bin,
    D,
    \count_value_i_reg[6]_0 ,
    \count_value_i_reg[8]_0 ,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    \count_value_i_reg[10]_0 ,
    ram_empty_i,
    rd_en,
    \grdc.rd_data_count_i_reg[7] ,
    S,
    \grdc.rd_data_count_i_reg[10] ,
    \count_value_i_reg[10]_1 ,
    rd_clk);
  output [10:0]Q;
  output ram_empty_i0;
  output [0:0]E;
  output p_1_in__0;
  output [9:0]src_in_bin;
  output [9:0]D;
  output [5:0]\count_value_i_reg[6]_0 ;
  output [1:0]\count_value_i_reg[8]_0 ;
  input [9:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  input \gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input [1:0]\count_value_i_reg[10]_0 ;
  input ram_empty_i;
  input rd_en;
  input [1:0]\grdc.rd_data_count_i_reg[7] ;
  input [0:0]S;
  input [8:0]\grdc.rd_data_count_i_reg[10] ;
  input \count_value_i_reg[10]_1 ;
  input rd_clk;

  wire [9:0]D;
  wire [0:0]E;
  wire [10:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[10]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_2__0_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_2__3_n_0 ;
  wire \count_value_i[7]_i_1__3_n_0 ;
  wire \count_value_i[8]_i_1__3_n_0 ;
  wire \count_value_i[9]_i_1__3_n_0 ;
  wire \count_value_i[9]_i_2__3_n_0 ;
  wire [1:0]\count_value_i_reg[10]_0 ;
  wire \count_value_i_reg[10]_1 ;
  wire [5:0]\count_value_i_reg[6]_0 ;
  wire [1:0]\count_value_i_reg[8]_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_17_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[9]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[9]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_4 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_5 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_6 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_7 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_n_7 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_4_n_0 ;
  wire [9:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire [8:0]\grdc.rd_data_count_i_reg[10] ;
  wire [1:0]\grdc.rd_data_count_i_reg[7] ;
  wire p_1_in__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire [9:0]src_in_bin;
  wire [7:1]\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h5559)) 
    \count_value_i[0]_i_1__4 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[10]_0 [1]),
        .I2(\count_value_i_reg[10]_0 [0]),
        .I3(rd_en),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \count_value_i[10]_i_1__0 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(\count_value_i[10]_i_2__0_n_0 ),
        .O(\count_value_i[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \count_value_i[10]_i_2__0 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\count_value_i[6]_i_2__3_n_0 ),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\count_value_i[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h666A6666)) 
    \count_value_i[1]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[10]_0 [0]),
        .I4(\count_value_i_reg[10]_0 [1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(p_1_in__0),
        .I3(Q[0]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(p_1_in__0),
        .I4(Q[1]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \count_value_i[4]_i_1__3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(p_1_in__0),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hF1F0)) 
    \count_value_i[4]_i_2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[10]_0 [0]),
        .I2(ram_empty_i),
        .I3(\count_value_i_reg[10]_0 [1]),
        .O(p_1_in__0));
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \count_value_i[5]_i_1__3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__3_n_0 ),
        .I4(Q[3]),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \count_value_i[6]_i_1__3 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\count_value_i[6]_i_2__3_n_0 ),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\count_value_i[6]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFF57FF55FFFFFFFF)) 
    \count_value_i[6]_i_2__3 
       (.I0(Q[0]),
        .I1(rd_en),
        .I2(\count_value_i_reg[10]_0 [0]),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[10]_0 [1]),
        .I5(Q[1]),
        .O(\count_value_i[6]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[7]_i_1__3 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\count_value_i[9]_i_2__3_n_0 ),
        .I3(Q[5]),
        .O(\count_value_i[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \count_value_i[8]_i_1__3 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\count_value_i[9]_i_2__3_n_0 ),
        .I4(Q[6]),
        .O(\count_value_i[8]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \count_value_i[9]_i_1__3 
       (.I0(Q[9]),
        .I1(Q[6]),
        .I2(\count_value_i[9]_i_2__3_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\count_value_i[9]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \count_value_i[9]_i_2__3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(p_1_in__0),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\count_value_i[9]_i_2__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[10]_i_1__0_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__3_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__3_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__3_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__3_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__3_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[10]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[9]_i_1__3_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[10]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0 ),
        .O(src_in_bin[9]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[7] [1]),
        .O(src_in_bin[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFAEEF)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\grdc.rd_data_count_i_reg[7] [1]),
        .I3(\grdc.rd_data_count_i_reg[7] [0]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(Q[9]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0 ),
        .O(src_in_bin[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(src_in_bin[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(src_in_bin[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I3(Q[5]),
        .O(src_in_bin[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(Q[5]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I2(Q[4]),
        .O(src_in_bin[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7 
       (.I0(Q[4]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .O(src_in_bin[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA9A9A599A)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\grdc.rd_data_count_i_reg[7] [1]),
        .I3(\grdc.rd_data_count_i_reg[7] [0]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h9AAA559A)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\grdc.rd_data_count_i_reg[7] [0]),
        .I3(\grdc.rd_data_count_i_reg[7] [1]),
        .I4(Q[1]),
        .O(src_in_bin[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10 
       (.I0(Q[7]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [7]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [6]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [5]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [4]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [3]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [2]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hCCCE3331)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_17 
       (.I0(\count_value_i_reg[10]_0 [1]),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[10]_0 [0]),
        .I3(rd_en),
        .I4(Q[0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2 
       (.I0(Q[7]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3 
       (.I0(Q[6]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4 
       (.I0(Q[5]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5 
       (.I0(Q[4]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6 
       (.I0(Q[3]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7 
       (.I0(Q[2]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8 
       (.I0(Q[1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF1F0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9 
       (.I0(rd_en),
        .I1(\count_value_i_reg[10]_0 [0]),
        .I2(ram_empty_i),
        .I3(\count_value_i_reg[10]_0 [1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[9]_i_2 
       (.I0(Q[8]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[9]_i_4 
       (.I0(Q[8]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [8]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[9]_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1 
       (.CI(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .CI_TOP(1'b0),
        .CO({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_4 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_5 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_6 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_7 }),
        .DI({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0 }),
        .O(D[7:0]),
        .S({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1 
       (.CI(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_CO_UNCONNECTED [7:1],\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[9]_i_2_n_0 }),
        .O({\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_O_UNCONNECTED [7:2],D[9:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[9]_i_4_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFFFFF00009000)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(Q[9]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [9]),
        .I2(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I4(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ),
        .I5(\gen_pf_ic_rc.ram_empty_i_reg_0 ),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [6]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [8]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [7]),
        .I5(Q[7]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [4]),
        .I5(Q[4]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3331)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[10]_0 [1]),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[10]_0 [0]),
        .I3(rd_en),
        .O(E));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[10]_i_6 
       (.I0(Q[8]),
        .I1(\grdc.rd_data_count_i_reg[10] [7]),
        .I2(Q[9]),
        .I3(\grdc.rd_data_count_i_reg[10] [8]),
        .O(\count_value_i_reg[8]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[10]_i_7 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[10] [6]),
        .I2(Q[8]),
        .I3(\grdc.rd_data_count_i_reg[10] [7]),
        .O(\count_value_i_reg[8]_0 [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_10 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[10] [4]),
        .I2(Q[6]),
        .I3(\grdc.rd_data_count_i_reg[10] [5]),
        .O(\count_value_i_reg[6]_0 [4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_11 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[10] [3]),
        .I2(Q[5]),
        .I3(\grdc.rd_data_count_i_reg[10] [4]),
        .O(\count_value_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_12 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[10] [2]),
        .I2(Q[4]),
        .I3(\grdc.rd_data_count_i_reg[10] [3]),
        .O(\count_value_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_13 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[10] [1]),
        .I2(Q[3]),
        .I3(\grdc.rd_data_count_i_reg[10] [2]),
        .O(\count_value_i_reg[6]_0 [1]));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \grdc.rd_data_count_i[7]_i_14 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[7] [1]),
        .I2(\grdc.rd_data_count_i_reg[10] [0]),
        .I3(Q[2]),
        .I4(\grdc.rd_data_count_i_reg[10] [1]),
        .O(\count_value_i_reg[6]_0 [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_9 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[10] [5]),
        .I2(Q[7]),
        .I3(\grdc.rd_data_count_i_reg[10] [6]),
        .O(\count_value_i_reg[6]_0 [5]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized3_23
   (Q,
    D,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[5]_0 ,
    wrst_busy,
    rst_d1,
    \gwdc.wr_data_count_i_reg[10] ,
    wr_clk);
  output [10:0]Q;
  output [10:0]D;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input wrst_busy;
  input rst_d1;
  input [10:0]\gwdc.wr_data_count_i_reg[10] ;
  input wr_clk;

  wire [10:0]D;
  wire [10:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_1_n_0 ;
  wire \count_value_i[10]_i_2_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gwdc.wr_data_count_i[10]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[10]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[10]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_7_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_8_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_9_n_0 ;
  wire [10:0]\gwdc.wr_data_count_i_reg[10] ;
  wire \gwdc.wr_data_count_i_reg[10]_i_1_n_6 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_1_n_7 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_4 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_5 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_6 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_7 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [7:2]\NLW_gwdc.wr_data_count_i_reg[10]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_gwdc.wr_data_count_i_reg[10]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[10]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[10]_i_2 
       (.I0(Q[10]),
        .I1(\gwdc.wr_data_count_i_reg[10] [10]),
        .O(\gwdc.wr_data_count_i[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[10]_i_3 
       (.I0(Q[9]),
        .I1(\gwdc.wr_data_count_i_reg[10] [9]),
        .O(\gwdc.wr_data_count_i[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[10]_i_4 
       (.I0(Q[8]),
        .I1(\gwdc.wr_data_count_i_reg[10] [8]),
        .O(\gwdc.wr_data_count_i[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[7]),
        .I1(\gwdc.wr_data_count_i_reg[10] [7]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[10] [6]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[10] [5]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[10] [4]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[10] [3]),
        .O(\gwdc.wr_data_count_i[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[10] [2]),
        .O(\gwdc.wr_data_count_i[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[10] [1]),
        .O(\gwdc.wr_data_count_i[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_9 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[10] [0]),
        .O(\gwdc.wr_data_count_i[7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[10]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gwdc.wr_data_count_i_reg[10]_i_1_CO_UNCONNECTED [7:2],\gwdc.wr_data_count_i_reg[10]_i_1_n_6 ,\gwdc.wr_data_count_i_reg[10]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[9:8]}),
        .O({\NLW_gwdc.wr_data_count_i_reg[10]_i_1_O_UNCONNECTED [7:3],D[10:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\gwdc.wr_data_count_i[10]_i_2_n_0 ,\gwdc.wr_data_count_i[10]_i_3_n_0 ,\gwdc.wr_data_count_i[10]_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_4 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_5 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_6 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_7 }),
        .DI(Q[7:0]),
        .O(D[7:0]),
        .S({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 ,\gwdc.wr_data_count_i[7]_i_6_n_0 ,\gwdc.wr_data_count_i[7]_i_7_n_0 ,\gwdc.wr_data_count_i[7]_i_8_n_0 ,\gwdc.wr_data_count_i[7]_i_9_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized4
   (Q,
    p_1_in__0,
    rd_en,
    \count_value_i_reg[1]_0 ,
    ram_empty_i,
    \count_value_i_reg[0]_0 ,
    E,
    rd_clk);
  output [9:0]Q;
  input p_1_in__0;
  input rd_en;
  input [1:0]\count_value_i_reg[1]_0 ;
  input ram_empty_i;
  input \count_value_i_reg[0]_0 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire p_1_in__0;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h5559)) 
    \count_value_i[0]_i_1__3 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h5559AAAA)) 
    \count_value_i[1]_i_1__3 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(Q[0]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(p_1_in__0),
        .I3(Q[1]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(p_1_in__0),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(p_1_in__0),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[6]),
        .I1(Q[3]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF57FF55FFFFFFFF)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[0]),
        .I1(rd_en),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[1]_0 [1]),
        .I5(Q[1]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\count_value_i[9]_i_2__2_n_0 ),
        .I4(Q[6]),
        .I5(Q[8]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(p_1_in__0),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized4_24
   (Q,
    D,
    \count_value_i_reg[5]_0 ,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[5]_1 ,
    wrst_busy,
    rst_d1,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] ,
    wr_clk);
  output [8:0]Q;
  output [6:0]D;
  output \count_value_i_reg[5]_0 ;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[5]_1 ;
  input wrst_busy;
  input rst_d1;
  input [9:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] ;
  input wr_clk;

  wire [6:0]D;
  wire [8:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \count_value_i_reg[5]_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9_n_0 ;
  wire [9:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_7 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_4 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_5 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_6 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_7 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [6:6]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [7:1]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(wr_pntr_plus1_pf),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(wr_pntr_plus1_pf),
        .I5(Q[5]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_1 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(wr_pntr_plus1_pf),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[6]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(wr_pntr_plus1_pf),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[6]),
        .I1(wr_pntr_plus1_pf),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(wr_pntr_plus1_pf),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(wr_pntr_plus1_pf),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [5]),
        .O(\count_value_i_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_2 
       (.I0(Q[8]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [9]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_3 
       (.I0(Q[7]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [8]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [7]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [6]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4 
       (.I0(wr_pntr_plus1_pf),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [5]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [4]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [3]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [2]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [1]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1 
       (.CI(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED [7:1],\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[7]}),
        .O({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED [7:2],D[6:5]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[10]_i_3_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(wr_pntr_plus1_pf_carry),
        .CI_TOP(1'b0),
        .CO({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_4 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_5 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_6 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_7 }),
        .DI({Q[6:5],wr_pntr_plus1_pf,Q[4:0]}),
        .O({D[4:0],\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_O_UNCONNECTED [2:0]}),
        .S({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized5
   (Q,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[5]_0 ,
    wrst_busy,
    rst_d1,
    wr_clk);
  output [9:0]Q;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input wrst_busy;
  input rst_d1;
  input wr_clk;

  wire [9:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_SYNC_STAGES = "4" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "no_ecc" *) (* EN_ADV_FEATURE_ASYNC = "16'b0000011100000111" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_WRITE_DEPTH = "1024" *) 
(* FULL_RESET_VALUE = "1" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "11" *) 
(* READ_DATA_WIDTH = "51" *) (* READ_MODE = "fwft" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "51" *) (* WR_DATA_COUNT_WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* dont_touch = "true" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_async
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [50:0]din;
  output full;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [50:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [50:0]din;
  wire [50:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [10:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_clk;
  wire [10:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "4" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "1024" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "52224" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "1019" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "1019" *) 
  (* PF_THRESH_MIN = "9" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RD_DC_WIDTH_EXT = "11" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "10" *) 
  (* READ_DATA_WIDTH = "51" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "51" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* WR_DC_WIDTH_EXT = "11" *) 
  (* WR_DEPTH_LOG = "10" *) 
  (* WR_PNTR_WIDTH = "10" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_base__parameterized1 \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED ),
        .data_valid(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(prog_empty),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED ),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b1" *) (* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) 
(* FIFO_READ_DEPTH = "2048" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "71680" *) 
(* FIFO_WRITE_DEPTH = "2048" *) (* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) 
(* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "2043" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "2043" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "12" *) 
(* RD_DC_WIDTH_EXT = "12" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "11" *) (* READ_DATA_WIDTH = "35" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "35" *) 
(* WR_DATA_COUNT_WIDTH = "12" *) (* WR_DC_WIDTH_EXT = "12" *) (* WR_DEPTH_LOG = "11" *) 
(* WR_PNTR_WIDTH = "11" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "6" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [34:0]din;
  output full;
  output full_n;
  output prog_full;
  output [11:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [34:0]dout;
  output empty;
  output prog_empty;
  output [11:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:1]count_value_i;
  wire [1:0]curr_fwft_state;
  wire [34:0]din;
  wire [34:0]dout;
  wire empty;
  wire empty_fwft_i0;
  wire full;
  wire \gen_fwft.count_rst ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire [11:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire overflow_i0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire [10:0]rd_pntr_ext;
  wire rdp_inst_n_0;
  wire rdp_inst_n_12;
  wire rdp_inst_n_13;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_16;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_23;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire underflow;
  wire underflow_i0;
  wire wr_clk;
  wire [11:0]wr_data_count;
  wire wr_en;
  wire [10:0]wr_pntr_ext;
  wire wrp_inst_n_1;
  wire wrp_inst_n_25;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_10;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [34:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[11] = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(empty),
        .S(xpm_fifo_rst_inst_n_1));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_3 ),
        .Q(count_value_i),
        .S({\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\gwdc.wr_data_count_i_reg[7] (rd_pntr_ext[1:0]),
        .\gwdc.wr_data_count_i_reg[7]_0 (wr_pntr_ext[1:0]),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_23),
        .Q(full),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "11" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "35" *) 
  (* BYTE_WRITE_WIDTH_B = "35" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "34" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "35" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "71680" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "35" *) 
  (* P_MIN_WIDTH_DATA_A = "35" *) 
  (* P_MIN_WIDTH_DATA_B = "35" *) 
  (* P_MIN_WIDTH_DATA_ECC = "35" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "35" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_COL_READ_A = "1" *) 
  (* P_NUM_COL_READ_B = "1" *) 
  (* P_NUM_COL_WRITE_A = "1" *) 
  (* P_NUM_COL_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "11" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "11" *) 
  (* P_WIDTH_COL_WRITE_A = "35" *) 
  (* P_WIDTH_COL_WRITE_B = "35" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "35" *) 
  (* READ_DATA_WIDTH_B = "35" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "35" *) 
  (* WRITE_DATA_WIDTH_B = "35" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "36" *) 
  (* rstb_loop_iter = "36" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [34:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdp_inst_n_16),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(wr_data_count[0]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [10]),
        .Q(wr_data_count[10]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [11]),
        .Q(wr_data_count[11]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(wr_data_count[1]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(wr_data_count[2]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(wr_data_count[3]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(wr_data_count[4]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(wr_data_count[5]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(wr_data_count[6]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(wr_data_count[7]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(wr_data_count[8]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(wr_data_count[9]),
        .R(xpm_fifo_rst_inst_n_1));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized0_5 rdp_inst
       (.DI(rdp_inst_n_0),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_16),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_12,rdp_inst_n_13,rdp_inst_n_14,rdp_inst_n_15}),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21,rdp_inst_n_22}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_23),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (wrp_inst_n_25),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (full),
        .\gwdc.wr_data_count_i_reg[11] ({wrp_inst_n_1,wr_pntr_ext}),
        .\gwdc.wr_data_count_i_reg[7] (count_value_i),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized1_6 rdpp1_inst
       (.Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10}),
        .\count_value_i_reg[0]_0 (rdp_inst_n_16),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_bit_7 rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .\gof.overflow_i_reg (full),
        .overflow_i0(overflow_i0),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized0_8 wrp_inst
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({rdp_inst_n_0,\gen_fwft.rdpp1_inst_n_3 }),
        .Q({wrp_inst_n_1,wr_pntr_ext}),
        .S({rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21,rdp_inst_n_22,\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .\count_value_i_reg[10]_0 (wrp_inst_n_25),
        .\count_value_i_reg[11]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (full),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 (rd_pntr_ext[10:1]),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_16),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10}),
        .\gwdc.wr_data_count_i_reg[11] ({rdp_inst_n_12,rdp_inst_n_13,rdp_inst_n_14,rdp_inst_n_15}),
        .\gwdc.wr_data_count_i_reg[7] (count_value_i),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized1_9 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (full),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_rst_10 xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[10] (full),
        .\count_value_i_reg[1] (curr_fwft_state),
        .empty(empty),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b1" *) (* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) 
(* FIFO_READ_DEPTH = "2048" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "32768" *) 
(* FIFO_WRITE_DEPTH = "2048" *) (* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) 
(* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "2043" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "2043" *) 
(* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "12" *) (* RD_DC_WIDTH_EXT = "12" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "11" *) (* READ_DATA_WIDTH = "16" *) 
(* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "16" *) (* WR_DATA_COUNT_WIDTH = "12" *) (* WR_DC_WIDTH_EXT = "12" *) 
(* WR_DEPTH_LOG = "11" *) (* WR_PNTR_WIDTH = "11" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "4" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_base__parameterized0
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [15:0]din;
  output full;
  output full_n;
  output prog_full;
  output [11:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [15:0]dout;
  output empty;
  output prog_empty;
  output [11:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:0]curr_fwft_state;
  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire empty_fwft_i0;
  wire full;
  wire \gen_fwft.ram_regout_en ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire overflow_i0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire [10:0]rd_pntr_ext;
  wire rdp_inst_n_12;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_11;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire underflow;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire [10:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_10;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [15:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[11] = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[11] = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(empty),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_12),
        .Q(full),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "11" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "16" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "15" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "16" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "32768" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "16" *) 
  (* P_MIN_WIDTH_DATA_A = "16" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "16" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "16" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_COL_READ_A = "1" *) 
  (* P_NUM_COL_READ_B = "1" *) 
  (* P_NUM_COL_WRITE_A = "1" *) 
  (* P_NUM_COL_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "11" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "11" *) 
  (* P_WIDTH_COL_WRITE_A = "16" *) 
  (* P_WIDTH_COL_WRITE_B = "16" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "16" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "16" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "16" *) 
  (* rstb_loop_iter = "16" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_memory_base__parameterized0 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [15:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdpp1_inst_n_11),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized0 rdp_inst
       (.Q(rd_pntr_ext),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_11),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_12),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (full),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized1 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_11),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10}),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .\gof.overflow_i_reg (full),
        .overflow_i0(overflow_i0),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized0_3 wrp_inst
       (.Q(wr_pntr_ext),
        .\count_value_i_reg[10]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (full),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_11),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized1_4 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (full),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[10] (full),
        .empty(empty),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b1" *) (* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) 
(* FIFO_READ_DEPTH = "2048" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "32768" *) 
(* FIFO_WRITE_DEPTH = "2048" *) (* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) 
(* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "2043" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "2043" *) 
(* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "12" *) (* RD_DC_WIDTH_EXT = "12" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "11" *) (* READ_DATA_WIDTH = "16" *) 
(* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "16" *) (* WR_DATA_COUNT_WIDTH = "12" *) (* WR_DC_WIDTH_EXT = "12" *) 
(* WR_DEPTH_LOG = "11" *) (* WR_PNTR_WIDTH = "11" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "4" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_base__parameterized0__1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [15:0]din;
  output full;
  output full_n;
  output prog_full;
  output [11:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [15:0]dout;
  output empty;
  output prog_empty;
  output [11:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:0]curr_fwft_state;
  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire empty_fwft_i0;
  wire full;
  wire \gen_fwft.ram_regout_en ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire overflow_i0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire [10:0]rd_pntr_ext;
  wire rdp_inst_n_12;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_11;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire underflow;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire [10:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_10;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [15:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[11] = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[11] = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(empty),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_12),
        .Q(full),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "11" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "16" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "15" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "16" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "32768" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "16" *) 
  (* P_MIN_WIDTH_DATA_A = "16" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "16" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "16" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_COL_READ_A = "1" *) 
  (* P_NUM_COL_READ_B = "1" *) 
  (* P_NUM_COL_WRITE_A = "1" *) 
  (* P_NUM_COL_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "11" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "11" *) 
  (* P_WIDTH_COL_WRITE_A = "16" *) 
  (* P_WIDTH_COL_WRITE_B = "16" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "16" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "16" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "16" *) 
  (* rstb_loop_iter = "16" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_memory_base__parameterized0__1 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [15:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdpp1_inst_n_11),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized0_11 rdp_inst
       (.Q(rd_pntr_ext),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_11),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_12),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (full),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized1_12 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_11),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10}),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_bit_13 rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .\gof.overflow_i_reg (full),
        .overflow_i0(overflow_i0),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized0_14 wrp_inst
       (.Q(wr_pntr_ext),
        .\count_value_i_reg[10]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (full),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_11),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized1_15 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (full),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_rst_16 xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[10] (full),
        .empty(empty),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "4" *) (* COMMON_CLOCK = "0" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b1" *) (* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) 
(* FIFO_READ_DEPTH = "1024" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "52224" *) 
(* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) 
(* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "1019" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "1019" *) 
(* PF_THRESH_MIN = "9" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "11" *) (* RD_DC_WIDTH_EXT = "11" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "10" *) (* READ_DATA_WIDTH = "51" *) 
(* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "51" *) (* WR_DATA_COUNT_WIDTH = "11" *) (* WR_DC_WIDTH_EXT = "11" *) 
(* WR_DEPTH_LOG = "10" *) (* WR_PNTR_WIDTH = "10" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "6" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_base__parameterized1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [50:0]din;
  output full;
  output full_n;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [50:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire [9:0]diff_pntr_pe;
  wire [10:4]diff_pntr_pf_q;
  wire [10:4]diff_pntr_pf_q0;
  wire [50:0]din;
  wire [50:0]dout;
  wire empty;
  wire empty_fwft_i0;
  wire full;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_10 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_8 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_9 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_10 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_8 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_9 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_10 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_11 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_8 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_9 ;
  wire \gen_fwft.count_rst ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_fwft.rdpp1_inst_n_4 ;
  wire \gen_fwft.rdpp1_inst_n_5 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[8] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[9] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ;
  wire [10:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire [10:0]\gwdc.diff_wr_rd_pntr1_out ;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire overflow_i0;
  wire p_1_in__0;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_i;
  wire rd_clk;
  wire [10:0]rd_data_count;
  wire rd_en;
  wire [9:0]rd_pntr_ext;
  wire [9:0]rd_pntr_wr;
  wire [9:0]rd_pntr_wr_cdc;
  wire [10:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_0;
  wire rdp_inst_n_16;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_34;
  wire rdp_inst_n_35;
  wire rdp_inst_n_36;
  wire rdp_inst_n_37;
  wire rdp_inst_n_38;
  wire rdp_inst_n_39;
  wire rdp_inst_n_40;
  wire rdp_inst_n_41;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire [10:0]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_clk;
  wire [10:0]wr_data_count;
  wire wr_en;
  wire [10:0]wr_pntr_ext;
  wire [10:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [9:0]wr_pntr_rd_cdc;
  wire [10:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp1_inst_n_16;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire wrpp2_inst_n_6;
  wire wrpp2_inst_n_7;
  wire wrpp2_inst_n_8;
  wire wrpp2_inst_n_9;
  wire wrst_busy;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [50:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7A)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(rd_rst_busy));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(rd_rst_busy));
  GND GND
       (.G(\<const0> ));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "11" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin({src_in_bin00_out[10:9],rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21,rdp_inst_n_22,src_in_bin00_out[1:0]}));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(rd_pntr_wr),
        .clr_full(clr_full),
        .\count_value_i_reg[9] (\gen_cdc_pntr.rpw_gray_reg_n_10 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8,wrpp2_inst_n_9}),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ({wr_pntr_plus1_pf[10:7],wr_pntr_plus1_pf[5:1]}),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 (wrpp1_inst_n_16),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(rd_pntr_wr_cdc_dc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_9 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_10 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_vec_19 \gen_cdc_pntr.wpr_gray_reg 
       (.D(wr_pntr_rd_cdc),
        .Q({\gen_cdc_pntr.wpr_gray_reg_n_0 ,\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 ,\gen_cdc_pntr.wpr_gray_reg_n_9 }),
        .S(\gen_cdc_pntr.wpr_gray_reg_n_11 ),
        .\count_value_i_reg[9] (\gen_cdc_pntr.wpr_gray_reg_n_10 ),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] (rd_pntr_ext[9]),
        .\gen_pf_ic_rc.ram_empty_i_reg ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9}),
        .p_1_in__0(p_1_in__0),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[0]_0 (rd_rst_busy));
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_vec__parameterized0_20 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI(\gen_fwft.rdpp1_inst_n_5 ),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_9 }),
        .S({rdp_inst_n_34,rdp_inst_n_35,rdp_inst_n_36,rdp_inst_n_37,rdp_inst_n_38,rdp_inst_n_39,\gen_fwft.rdpp1_inst_n_3 ,\gen_fwft.rdpp1_inst_n_4 }),
        .\grdc.rd_data_count_i_reg[10] ({rdp_inst_n_0,rd_pntr_ext[9:1]}),
        .\grdc.rd_data_count_i_reg[10]_0 ({rdp_inst_n_40,rdp_inst_n_41}),
        .\grdc.rd_data_count_i_reg[7] (count_value_i[1]),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[10]_0 (rd_rst_busy),
        .\reg_out_i_reg[10]_1 (wr_pntr_rd_cdc_dc));
  (* DEST_SYNC_FF = "6" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "11" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_cdc_gray__1 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[9:0]));
  LUT4 #(
    .INIT(16'hAF80)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(empty),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(empty),
        .S(rd_rst_busy));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn_21 \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_5 ),
        .Q(curr_fwft_state),
        .S({\gen_fwft.rdpp1_inst_n_3 ,\gen_fwft.rdpp1_inst_n_4 }),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\grdc.rd_data_count_i_reg[7] (rd_pntr_ext[1:0]),
        .\grdc.rd_data_count_i_reg[7]_0 ({\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_9 }),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out[0]));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_10 ),
        .Q(full),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[4]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[5]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[6]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[7]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[8]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[8] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[9]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[9] ),
        .R(rd_rst_busy));
  LUT4 #(
    .INIT(16'h88B8)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[8] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[9] ),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[10]),
        .Q(diff_pntr_pf_q[10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf_q[9]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "51" *) 
  (* BYTE_WRITE_WIDTH_B = "51" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "50" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "51" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "52224" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "51" *) 
  (* P_MIN_WIDTH_DATA_A = "51" *) 
  (* P_MIN_WIDTH_DATA_B = "51" *) 
  (* P_MIN_WIDTH_DATA_ECC = "51" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "51" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_COL_READ_A = "1" *) 
  (* P_NUM_COL_READ_B = "1" *) 
  (* P_NUM_COL_WRITE_A = "1" *) 
  (* P_NUM_COL_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "51" *) 
  (* P_WIDTH_COL_WRITE_B = "51" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "51" *) 
  (* READ_DATA_WIDTH_B = "51" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "51" *) 
  (* WRITE_DATA_WIDTH_B = "51" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "52" *) 
  (* rstb_loop_iter = "52" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_memory_base__parameterized1 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[9:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [50:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(ram_rd_en_i),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(wr_pntr_plus1_pf_carry),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [10]),
        .Q(rd_data_count[10]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[6]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(rd_data_count[7]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(rd_data_count[8]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(rd_data_count[9]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [0]),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [10]),
        .Q(wr_data_count[10]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [1]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [2]),
        .Q(wr_data_count[2]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[3]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[4]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [5]),
        .Q(wr_data_count[5]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [6]),
        .Q(wr_data_count[6]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [7]),
        .Q(wr_data_count[7]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [8]),
        .Q(wr_data_count[8]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [9]),
        .Q(wr_data_count[9]),
        .R(wrst_busy));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized3 rdp_inst
       (.D(diff_pntr_pe),
        .E(ram_rd_en_i),
        .Q({rdp_inst_n_0,rd_pntr_ext}),
        .S(\gen_cdc_pntr.wpr_gray_reg_n_11 ),
        .\count_value_i_reg[10]_0 (curr_fwft_state),
        .\count_value_i_reg[10]_1 (rd_rst_busy),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_34,rdp_inst_n_35,rdp_inst_n_36,rdp_inst_n_37,rdp_inst_n_38,rdp_inst_n_39}),
        .\count_value_i_reg[8]_0 ({rdp_inst_n_40,rdp_inst_n_41}),
        .\gen_pf_ic_rc.ram_empty_i_reg ({\gen_cdc_pntr.wpr_gray_reg_n_0 ,\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 ,\gen_cdc_pntr.wpr_gray_reg_n_9 }),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 (\gen_cdc_pntr.wpr_gray_reg_n_10 ),
        .\grdc.rd_data_count_i_reg[10] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_8 }),
        .\grdc.rd_data_count_i_reg[7] (count_value_i),
        .p_1_in__0(p_1_in__0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin({src_in_bin00_out[10:9],rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21,rdp_inst_n_22,src_in_bin00_out[1]}));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized4 rdpp1_inst
       (.E(ram_rd_en_i),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9}),
        .\count_value_i_reg[0]_0 (rd_rst_busy),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .p_1_in__0(p_1_in__0),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_bit_22 rst_d1_inst
       (.Q(diff_pntr_pf_q),
        .clr_full(clr_full),
        .d_out_int_reg_0(rst_d1_inst_n_1),
        .\gof.overflow_i_reg (full),
        .overflow_i0(overflow_i0),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized3_23 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[5]_0 (full),
        .\gwdc.wr_data_count_i_reg[10] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_9 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_10 }),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized4_24 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .Q({wr_pntr_plus1_pf[10:7],wr_pntr_plus1_pf[5:1]}),
        .\count_value_i_reg[5]_0 (wrpp1_inst_n_16),
        .\count_value_i_reg[5]_1 (full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] (rd_pntr_wr),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  bd_8312_v_vid_in_axi4s_0_xpm_counter_updn__parameterized5 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8,wrpp2_inst_n_9}),
        .\count_value_i_reg[5]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_rst__parameterized0 xpm_fifo_rst_inst
       (.Q(curr_fwft_state),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[9] (full),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (rd_rst_busy),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_1 (\grdc.rd_data_count_i0 ),
        .\guf.underflow_i_reg (empty),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

module bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_bit
   (rst_d1,
    overflow_i0,
    clr_full,
    Q,
    wr_clk,
    \gof.overflow_i_reg ,
    wr_en,
    rst);
  output rst_d1;
  output overflow_i0;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input \gof.overflow_i_reg ;
  input wr_en;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire \gof.overflow_i_reg ;
  wire overflow_i0;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(Q),
        .I2(\gof.overflow_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_bit_13
   (rst_d1,
    overflow_i0,
    clr_full,
    Q,
    wr_clk,
    \gof.overflow_i_reg ,
    wr_en,
    rst);
  output rst_d1;
  output overflow_i0;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input \gof.overflow_i_reg ;
  input wr_en;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire \gof.overflow_i_reg ;
  wire overflow_i0;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(Q),
        .I2(\gof.overflow_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_bit_22
   (rst_d1,
    d_out_int_reg_0,
    overflow_i0,
    clr_full,
    wrst_busy,
    wr_clk,
    rst,
    \gof.overflow_i_reg ,
    prog_full,
    wr_en,
    Q);
  output rst_d1;
  output d_out_int_reg_0;
  output overflow_i0;
  output clr_full;
  input wrst_busy;
  input wr_clk;
  input rst;
  input \gof.overflow_i_reg ;
  input prog_full;
  input wr_en;
  input [6:0]Q;

  wire [6:0]Q;
  wire clr_full;
  wire d_out_int_reg_0;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ;
  wire \gof.overflow_i_reg ;
  wire overflow_i0;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(clr_full));
  LUT5 #(
    .INIT(32'hF3A200A2)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ),
        .I1(rst_d1),
        .I2(rst),
        .I3(\gof.overflow_i_reg ),
        .I4(prog_full),
        .O(d_out_int_reg_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[6]),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gof.overflow_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_bit_7
   (rst_d1,
    overflow_i0,
    clr_full,
    Q,
    wr_clk,
    \gof.overflow_i_reg ,
    wr_en,
    rst);
  output rst_d1;
  output overflow_i0;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input \gof.overflow_i_reg ;
  input wr_en;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire \gof.overflow_i_reg ;
  wire overflow_i0;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(Q),
        .I2(\gof.overflow_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

module bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_vec
   (Q,
    \count_value_i_reg[9] ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ,
    clr_full,
    wrst_busy,
    D,
    wr_clk);
  output [9:0]Q;
  output \count_value_i_reg[9] ;
  input [9:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  input wr_pntr_plus1_pf_carry;
  input [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ;
  input clr_full;
  input wrst_busy;
  input [9:0]D;
  input wr_clk;

  wire [9:0]D;
  wire [9:0]Q;
  wire clr_full;
  wire \count_value_i_reg[9] ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_10_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire [9:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire [8:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire going_full;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT6 #(
    .INIT(64'h00000000FFFF0082)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [8]),
        .I2(Q[9]),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3_n_0 ),
        .I4(going_full),
        .I5(clr_full),
        .O(\count_value_i_reg[9] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_10 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FFFFF6FFFFFFFFF)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I4(Q[3]),
        .I5(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8008000000000000)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9_n_0 ),
        .I2(Q[9]),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [9]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_10_n_0 ),
        .I5(wr_pntr_plus1_pf_carry),
        .O(going_full));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [7]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [6]),
        .I5(Q[7]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [4]),
        .I5(Q[4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [6]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [8]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [7]),
        .I5(Q[7]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_vec_19
   (Q,
    \count_value_i_reg[9] ,
    S,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    p_1_in__0,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] ,
    \reg_out_i_reg[0]_0 ,
    D,
    rd_clk);
  output [9:0]Q;
  output \count_value_i_reg[9] ;
  output [0:0]S;
  input [9:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  input p_1_in__0;
  input [0:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] ;
  input \reg_out_i_reg[0]_0 ;
  input [9:0]D;
  input rd_clk;

  wire [9:0]D;
  wire [9:0]Q;
  wire [0:0]S;
  wire \count_value_i_reg[9] ;
  wire [0:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] ;
  wire \gen_pf_ic_rc.ram_empty_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_8_n_0 ;
  wire [9:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  wire p_1_in__0;
  wire rd_clk;
  wire \reg_out_i_reg[0]_0 ;

  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[9]_i_3 
       (.I0(Q[9]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] ),
        .O(S));
  LUT6 #(
    .INIT(64'h0000000000000041)) 
    \gen_pf_ic_rc.ram_empty_i_i_5 
       (.I0(p_1_in__0),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [9]),
        .I2(Q[9]),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ),
        .I4(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ),
        .I5(\gen_pf_ic_rc.ram_empty_i_i_8_n_0 ),
        .O(\count_value_i_reg[9] ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_6 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [1]),
        .I3(Q[1]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [2]),
        .I5(Q[2]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_7 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [6]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [7]),
        .I3(Q[7]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [8]),
        .I5(Q[8]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_8 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [5]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [4]),
        .I5(Q[4]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(\reg_out_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_vec__parameterized0
   (Q,
    wrst_busy,
    D,
    wr_clk);
  output [10:0]Q;
  input wrst_busy;
  input [10:0]D;
  input wr_clk;

  wire [10:0]D;
  wire [10:0]Q;
  wire wr_clk;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_reg_vec__parameterized0_20
   (Q,
    D,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[10] ,
    DI,
    S,
    \grdc.rd_data_count_i_reg[10]_0 ,
    \reg_out_i_reg[10]_0 ,
    \reg_out_i_reg[10]_1 ,
    rd_clk);
  output [9:0]Q;
  output [10:0]D;
  input [0:0]\grdc.rd_data_count_i_reg[7] ;
  input [9:0]\grdc.rd_data_count_i_reg[10] ;
  input [0:0]DI;
  input [7:0]S;
  input [1:0]\grdc.rd_data_count_i_reg[10]_0 ;
  input \reg_out_i_reg[10]_0 ;
  input [10:0]\reg_out_i_reg[10]_1 ;
  input rd_clk;

  wire [10:0]D;
  wire [0:0]DI;
  wire [9:0]Q;
  wire [7:0]S;
  wire \grdc.rd_data_count_i[10]_i_3_n_0 ;
  wire \grdc.rd_data_count_i[10]_i_4_n_0 ;
  wire \grdc.rd_data_count_i[10]_i_5_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_2_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_3_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_4_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_5_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_6_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_7_n_0 ;
  wire [9:0]\grdc.rd_data_count_i_reg[10] ;
  wire [1:0]\grdc.rd_data_count_i_reg[10]_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_2_n_6 ;
  wire \grdc.rd_data_count_i_reg[10]_i_2_n_7 ;
  wire [0:0]\grdc.rd_data_count_i_reg[7] ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_1 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_4 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_5 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_6 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_7 ;
  wire rd_clk;
  wire \reg_out_i_reg[10]_0 ;
  wire [10:0]\reg_out_i_reg[10]_1 ;
  wire \reg_out_i_reg_n_0_[10] ;
  wire [7:2]\NLW_grdc.rd_data_count_i_reg[10]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_grdc.rd_data_count_i_reg[10]_i_2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[10]_i_3 
       (.I0(Q[8]),
        .I1(\grdc.rd_data_count_i_reg[10] [7]),
        .O(\grdc.rd_data_count_i[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[10]_i_4 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[10] [6]),
        .O(\grdc.rd_data_count_i[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \grdc.rd_data_count_i[10]_i_5 
       (.I0(Q[9]),
        .I1(\grdc.rd_data_count_i_reg[10] [8]),
        .I2(\grdc.rd_data_count_i_reg[10] [9]),
        .I3(\reg_out_i_reg_n_0_[10] ),
        .O(\grdc.rd_data_count_i[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[10] [5]),
        .O(\grdc.rd_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[10] [4]),
        .O(\grdc.rd_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[10] [3]),
        .O(\grdc.rd_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[10] [2]),
        .O(\grdc.rd_data_count_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_6 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[10] [1]),
        .O(\grdc.rd_data_count_i[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \grdc.rd_data_count_i[7]_i_7 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[7] ),
        .I2(\grdc.rd_data_count_i_reg[10] [0]),
        .O(\grdc.rd_data_count_i[7]_i_7_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \grdc.rd_data_count_i_reg[10]_i_2 
       (.CI(\grdc.rd_data_count_i_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_grdc.rd_data_count_i_reg[10]_i_2_CO_UNCONNECTED [7:2],\grdc.rd_data_count_i_reg[10]_i_2_n_6 ,\grdc.rd_data_count_i_reg[10]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\grdc.rd_data_count_i[10]_i_3_n_0 ,\grdc.rd_data_count_i[10]_i_4_n_0 }),
        .O({\NLW_grdc.rd_data_count_i_reg[10]_i_2_O_UNCONNECTED [7:3],D[10:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\grdc.rd_data_count_i[10]_i_5_n_0 ,\grdc.rd_data_count_i_reg[10]_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \grdc.rd_data_count_i_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\grdc.rd_data_count_i_reg[7]_i_1_n_0 ,\grdc.rd_data_count_i_reg[7]_i_1_n_1 ,\grdc.rd_data_count_i_reg[7]_i_1_n_2 ,\grdc.rd_data_count_i_reg[7]_i_1_n_3 ,\grdc.rd_data_count_i_reg[7]_i_1_n_4 ,\grdc.rd_data_count_i_reg[7]_i_1_n_5 ,\grdc.rd_data_count_i_reg[7]_i_1_n_6 ,\grdc.rd_data_count_i_reg[7]_i_1_n_7 }),
        .DI({\grdc.rd_data_count_i[7]_i_2_n_0 ,\grdc.rd_data_count_i[7]_i_3_n_0 ,\grdc.rd_data_count_i[7]_i_4_n_0 ,\grdc.rd_data_count_i[7]_i_5_n_0 ,\grdc.rd_data_count_i[7]_i_6_n_0 ,\grdc.rd_data_count_i[7]_i_7_n_0 ,DI,Q[0]}),
        .O(D[7:0]),
        .S(S));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_1 [0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_1 [10]),
        .Q(\reg_out_i_reg_n_0_[10] ),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_1 [1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_1 [2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_1 [3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_1 [4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_1 [5]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_1 [6]),
        .Q(Q[6]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_1 [7]),
        .Q(Q[7]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_1 [8]),
        .Q(Q[8]),
        .R(\reg_out_i_reg[10]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_1 [9]),
        .Q(Q[9]),
        .R(\reg_out_i_reg[10]_0 ));
endmodule

module bd_8312_v_vid_in_axi4s_0_xpm_fifo_rst
   (ram_wr_en_pf,
    Q,
    underflow_i0,
    rst,
    wr_en,
    \count_value_i_reg[10] ,
    rst_d1,
    empty,
    rd_en,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  output underflow_i0;
  input rst;
  input wr_en;
  input \count_value_i_reg[10] ;
  input rst_d1;
  input empty;
  input rd_en;
  input wr_clk;

  wire [0:0]Q;
  wire \count_value_i_reg[10] ;
  wire empty;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_wr_en_pf;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[10] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(empty),
        .I1(Q),
        .I2(rd_en),
        .O(underflow_i0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_rst_10
   (ram_wr_en_pf,
    Q,
    underflow_i0,
    SR,
    rst,
    wr_en,
    \count_value_i_reg[10] ,
    rst_d1,
    empty,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1] ,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  output underflow_i0;
  output [0:0]SR;
  input rst;
  input wr_en;
  input \count_value_i_reg[10] ;
  input rst_d1;
  input empty;
  input rd_en;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[1] ;
  input wr_clk;

  wire [0:0]Q;
  wire [0:0]SR;
  wire \count_value_i_reg[10] ;
  wire [1:0]\count_value_i_reg[1] ;
  wire empty;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;

  LUT4 #(
    .INIT(16'hAAAE)) 
    \count_value_i[1]_i_1__3 
       (.I0(Q),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[1] [1]),
        .I3(\count_value_i_reg[1] [0]),
        .O(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[10] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(empty),
        .I1(Q),
        .I2(rd_en),
        .O(underflow_i0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_rst_16
   (ram_wr_en_pf,
    Q,
    underflow_i0,
    rst,
    wr_en,
    \count_value_i_reg[10] ,
    rst_d1,
    empty,
    rd_en,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  output underflow_i0;
  input rst;
  input wr_en;
  input \count_value_i_reg[10] ;
  input rst_d1;
  input empty;
  input rd_en;
  input wr_clk;

  wire [0:0]Q;
  wire \count_value_i_reg[10] ;
  wire empty;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_wr_en_pf;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[10] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(empty),
        .I1(Q),
        .I2(rd_en),
        .O(underflow_i0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_rst__parameterized0
   (\gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_rst_busy,
    SR,
    \gen_rst_ic.fifo_rd_rst_ic_reg_1 ,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    wr_en,
    \count_value_i_reg[9] ,
    rst_d1,
    Q,
    ram_empty_i,
    rd_en,
    \guf.underflow_i_reg );
  output \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  output wrst_busy;
  output wr_pntr_plus1_pf_carry;
  output wr_rst_busy;
  output [0:0]SR;
  output [0:0]\gen_rst_ic.fifo_rd_rst_ic_reg_1 ;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input wr_en;
  input \count_value_i_reg[9] ;
  input rst_d1;
  input [1:0]Q;
  input ram_empty_i;
  input rd_en;
  input \guf.underflow_i_reg ;

  wire \/i__n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \count_value_i_reg[9] ;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire [0:0]\gen_rst_ic.fifo_rd_rst_ic_reg_1 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_i_2_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire \guf.underflow_i_reg ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wr_rst_busy;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h03030200FFFFFFFF)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I3(rst),
        .I4(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEE0FFFFEEE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000C0008)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004400000044)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(p_0_in),
        .I5(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF1F0)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I3(ram_empty_i),
        .O(SR));
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_3 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst),
        .I1(p_0_in),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I4(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_cdc_sync_rst__1 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[9] ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(wr_pntr_plus1_pf_carry));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[10]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\gen_rst_ic.fifo_rd_rst_ic_reg_1 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \guf.underflow_i_i_1 
       (.I0(rd_en),
        .I1(\guf.underflow_i_reg ),
        .I2(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .O(underflow_i0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) (* EN_SIM_ASSERT_ERR = "warning" *) (* FIFO_MEMORY_TYPE = "auto" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_WRITE_DEPTH = "2048" *) (* FULL_RESET_VALUE = "1" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "1" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "12" *) (* READ_DATA_WIDTH = "35" *) 
(* READ_MODE = "fwft" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "35" *) (* WR_DATA_COUNT_WIDTH = "12" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_sync
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [34:0]din;
  output full;
  output prog_full;
  output [11:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [34:0]dout;
  output empty;
  output prog_empty;
  output [11:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [34:0]din;
  wire [34:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire rd_en;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_clk;
  wire [11:0]wr_data_count;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [11:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[11] = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "2048" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "71680" *) 
  (* FIFO_WRITE_DEPTH = "2048" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "2043" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "2043" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "12" *) 
  (* RD_DC_WIDTH_EXT = "12" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "35" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "35" *) 
  (* WR_DATA_COUNT_WIDTH = "12" *) 
  (* WR_DC_WIDTH_EXT = "12" *) 
  (* WR_DEPTH_LOG = "11" *) 
  (* WR_PNTR_WIDTH = "11" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[11:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) (* EN_SIM_ASSERT_ERR = "warning" *) (* FIFO_MEMORY_TYPE = "auto" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_WRITE_DEPTH = "2048" *) (* FULL_RESET_VALUE = "1" *) 
(* ORIG_REF_NAME = "xpm_fifo_sync" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "12" *) 
(* READ_DATA_WIDTH = "16" *) (* READ_MODE = "fwft" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "0707" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "16" *) 
(* WR_DATA_COUNT_WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_sync__parameterized0
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [15:0]din;
  output full;
  output prog_full;
  output [11:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [15:0]dout;
  output empty;
  output prog_empty;
  output [11:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire rd_en;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [11:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [11:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[11] = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[11] = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "2048" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "32768" *) 
  (* FIFO_WRITE_DEPTH = "2048" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "2043" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "2043" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "12" *) 
  (* RD_DC_WIDTH_EXT = "12" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "16" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "16" *) 
  (* WR_DATA_COUNT_WIDTH = "12" *) 
  (* WR_DC_WIDTH_EXT = "12" *) 
  (* WR_DEPTH_LOG = "11" *) 
  (* WR_PNTR_WIDTH = "11" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "4" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_base__parameterized0 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[11:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) (* EN_SIM_ASSERT_ERR = "warning" *) (* FIFO_MEMORY_TYPE = "auto" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_WRITE_DEPTH = "2048" *) (* FULL_RESET_VALUE = "1" *) 
(* ORIG_REF_NAME = "xpm_fifo_sync" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "12" *) 
(* READ_DATA_WIDTH = "16" *) (* READ_MODE = "fwft" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "0707" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "16" *) 
(* WR_DATA_COUNT_WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_fifo_sync__parameterized0__1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [15:0]din;
  output full;
  output prog_full;
  output [11:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [15:0]dout;
  output empty;
  output prog_empty;
  output [11:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire rd_en;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [11:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [11:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[11] = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[11] = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "2048" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "32768" *) 
  (* FIFO_WRITE_DEPTH = "2048" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "2043" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "2043" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "12" *) 
  (* RD_DC_WIDTH_EXT = "12" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "16" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "16" *) 
  (* WR_DATA_COUNT_WIDTH = "12" *) 
  (* WR_DC_WIDTH_EXT = "12" *) 
  (* WR_DEPTH_LOG = "11" *) 
  (* WR_PNTR_WIDTH = "11" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "4" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  bd_8312_v_vid_in_axi4s_0_xpm_fifo_base__parameterized0__1 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[11:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "11" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "35" *) (* BYTE_WRITE_WIDTH_B = "35" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "71680" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "0" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "2048" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "35" *) 
(* P_MIN_WIDTH_DATA_A = "35" *) (* P_MIN_WIDTH_DATA_B = "35" *) (* P_MIN_WIDTH_DATA_ECC = "35" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "35" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) (* P_NUM_COL_READ_B = "1" *) 
(* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
(* P_WIDTH_ADDR_READ_A = "11" *) (* P_WIDTH_ADDR_READ_B = "11" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) 
(* P_WIDTH_ADDR_WRITE_B = "11" *) (* P_WIDTH_COL_WRITE_A = "35" *) (* P_WIDTH_COL_WRITE_B = "35" *) 
(* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "35" *) (* READ_DATA_WIDTH_B = "35" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "35" *) (* WRITE_DATA_WIDTH_B = "35" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "36" *) (* rstb_loop_iter = "36" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [34:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [34:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [10:0]addrb;
  input [34:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [34:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [34:0]dina;
  wire [34:0]doutb;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "17" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "17" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "71680" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[15:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,dina[17:16]}),
        .DINPBDINP({1'b0,1'b0,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED [31:16],doutb[15:0]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED [3:2],doutb[17:16]}),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "18" *) 
  (* \MEM.PORTA.DATA_MSB  = "34" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "18" *) 
  (* \MEM.PORTB.DATA_MSB  = "34" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "71680" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "34" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[33:18]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,dina[34]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED [31:16],doutb[33:18]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED [3:1],doutb[34]}),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "11" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "16" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "32768" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "16" *) (* P_MIN_WIDTH_DATA_A = "16" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "16" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "16" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) 
(* P_NUM_COL_READ_B = "1" *) (* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) (* P_WIDTH_ADDR_READ_A = "11" *) (* P_WIDTH_ADDR_READ_B = "11" *) 
(* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "11" *) (* P_WIDTH_COL_WRITE_A = "16" *) 
(* P_WIDTH_COL_WRITE_B = "16" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "16" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "16" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "16" *) 
(* rstb_loop_iter = "16" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_memory_base__parameterized0
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [15:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [15:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [10:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "15" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED [31:16],doutb}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "11" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "16" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "32768" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "16" *) (* P_MIN_WIDTH_DATA_A = "16" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "16" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "16" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) 
(* P_NUM_COL_READ_B = "1" *) (* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) (* P_WIDTH_ADDR_READ_A = "11" *) (* P_WIDTH_ADDR_READ_B = "11" *) 
(* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "11" *) (* P_WIDTH_COL_WRITE_A = "16" *) 
(* P_WIDTH_COL_WRITE_B = "16" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "16" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "16" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "16" *) 
(* rstb_loop_iter = "16" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_memory_base__parameterized0__1
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [15:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [15:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [10:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "15" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED [31:16],doutb}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "51" *) (* BYTE_WRITE_WIDTH_B = "51" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "1" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "52224" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "1024" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "51" *) (* P_MIN_WIDTH_DATA_A = "51" *) (* P_MIN_WIDTH_DATA_B = "51" *) 
(* P_MIN_WIDTH_DATA_ECC = "51" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "51" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) 
(* P_NUM_COL_READ_B = "1" *) (* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) (* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) 
(* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "51" *) 
(* P_WIDTH_COL_WRITE_B = "51" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "51" *) 
(* READ_DATA_WIDTH_B = "51" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "51" *) (* WRITE_DATA_WIDTH_B = "51" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "52" *) 
(* rstb_loop_iter = "52" *) 
module bd_8312_v_vid_in_axi4s_0_xpm_memory_base__parameterized1
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [50:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [50:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [50:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [50:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [50:0]dina;
  wire [50:0]doutb;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED ;
  wire [15:15]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "35" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "52224" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "35" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("TRUE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN(dina[31:0]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[35:32]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(doutb[31:0]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(doutb[35:32]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d15" *) 
  (* \MEM.PORTA.DATA_LSB  = "36" *) 
  (* \MEM.PORTA.DATA_MSB  = "50" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d15" *) 
  (* \MEM.PORTB.DATA_LSB  = "36" *) 
  (* \MEM.PORTB.DATA_MSB  = "50" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "52224" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "50" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("TRUE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DINADIN({1'b0,dina[50:36]}),
        .DINBDIN({1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED [15:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED [15],doutb[50:36]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED [1:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SLEEP(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
