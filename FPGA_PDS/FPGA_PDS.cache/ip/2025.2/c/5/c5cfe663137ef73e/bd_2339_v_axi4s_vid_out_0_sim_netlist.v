// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Jan 21 12:36:26 2026
// Host        : dan-alencar running 64-bit Linux Mint 22.2
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_2339_v_axi4s_vid_out_0_sim_netlist.v
// Design      : bd_2339_v_axi4s_vid_out_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcau15p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_2339_v_axi4s_vid_out_0,v_axi4s_vid_out_v4_0_20,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "v_axi4s_vid_out_v4_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aclken,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tready,
    s_axis_video_tuser,
    s_axis_video_tlast,
    fid,
    vid_io_out_clk,
    vid_io_out_ce,
    vid_io_out_reset,
    vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    vid_data,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_active_video,
    vtg_field_id,
    vtg_ce,
    video_format,
    locked,
    overflow,
    underflow,
    fifo_read_level,
    status,
    sof_state_out,
    repeat_en,
    remap_420_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF video_in, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_HIGH" *) input aclken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 297000000, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [95:0]s_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TVALID" *) input s_axis_video_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TREADY" *) output s_axis_video_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TUSER" *) input s_axis_video_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TLAST" *) input s_axis_video_tlast;
  input fid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_io_out_clk_intf CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_clk_intf, ASSOCIATED_BUSIF vid_io_out, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_tx_bd_vid_phy_controller_0_0_tx_video_clk, INSERT_VIP 0" *) input vid_io_out_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 vid_io_out_ce_intf CE" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_ce_intf, POLARITY ACTIVE_HIGH" *) input vid_io_out_ce;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_io_out_reset_intf RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_reset_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input vid_io_out_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out ACTIVE_VIDEO" *) (* X_INTERFACE_MODE = "master" *) output vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VSYNC" *) output vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HSYNC" *) output vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VBLANK" *) output vid_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HBLANK" *) output vid_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out FIELD" *) output vid_field_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out DATA" *) output [95:0]vid_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VSYNC" *) (* X_INTERFACE_MODE = "slave" *) input vtg_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HSYNC" *) input vtg_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VBLANK" *) input vtg_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HBLANK" *) input vtg_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in ACTIVE_VIDEO" *) input vtg_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in FIELD" *) input vtg_field_id;
  output vtg_ce;
  input [1:0]video_format;
  output locked;
  output overflow;
  output underflow;
  output [10:0]fifo_read_level;
  output [31:0]status;
  output sof_state_out;
  input repeat_en;
  input remap_420_en;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire fid;
  wire [10:0]fifo_read_level;
  wire locked;
  wire overflow;
  wire remap_420_en;
  wire repeat_en;
  wire [95:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire sof_state_out;
  wire [25:0]\^status ;
  wire underflow;
  wire vid_active_video;
  wire [95:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_out_ce;
  wire vid_io_out_clk;
  wire vid_io_out_reset;
  wire vid_vblank;
  wire vid_vsync;
  wire [1:0]video_format;
  wire vtg_active_video;
  wire vtg_ce;
  wire vtg_field_id;
  wire vtg_hblank;
  wire vtg_hsync;
  wire vtg_vblank;
  wire vtg_vsync;
  wire NLW_inst_vid_field_id_arb_UNCONNECTED;
  wire [31:15]NLW_inst_status_UNCONNECTED;
  wire [3:0]NLW_inst_vid_active_video_arb_UNCONNECTED;
  wire [95:0]NLW_inst_vid_data_arb_UNCONNECTED;
  wire [3:0]NLW_inst_vid_hsync_arb_UNCONNECTED;
  wire [3:0]NLW_inst_vid_vsync_arb_UNCONNECTED;

  assign status[31] = \<const0> ;
  assign status[30] = \<const0> ;
  assign status[29] = \<const0> ;
  assign status[28] = \<const0> ;
  assign status[27] = \<const0> ;
  assign status[26] = \<const0> ;
  assign status[25:16] = \^status [25:16];
  assign status[15] = \<const0> ;
  assign status[14:0] = \^status [14:0];
  GND GND
       (.G(\<const0> ));
  (* C_ADDR_WIDTH = "10" *) 
  (* C_ADDR_WIDTH_PIXEL_REMAP_420 = "10" *) 
  (* C_ARBITRARY_RES_EN = "0" *) 
  (* C_COMPONENTS_PER_PIXEL = "3" *) 
  (* C_FAMILY = "kintexuplus" *) 
  (* C_HAS_ASYNC_CLK = "1" *) 
  (* C_HYSTERESIS_LEVEL = "12" *) 
  (* C_INCLUDE_PIXEL_REMAP_420 = "1" *) 
  (* C_INCLUDE_PIXEL_REPEAT = "1" *) 
  (* C_NATIVE_COMPONENT_WIDTH = "8" *) 
  (* C_NATIVE_DATA_WIDTH = "96" *) 
  (* C_PIXELS_PER_CLOCK = "4" *) 
  (* C_SYNC_LOCK_THRESHOLD = "4" *) 
  (* C_S_AXIS_COMPONENT_WIDTH = "8" *) 
  (* C_S_AXIS_TDATA_WIDTH = "96" *) 
  (* C_VTG_MASTER_SLAVE = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20 inst
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .fid(fid),
        .fifo_read_level(fifo_read_level),
        .locked(locked),
        .overflow(overflow),
        .remap_420_en(remap_420_en),
        .repeat_en(repeat_en),
        .s_axis_video_tdata(s_axis_video_tdata),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .sof_state_out(sof_state_out),
        .status({NLW_inst_status_UNCONNECTED[31:26],\^status }),
        .underflow(underflow),
        .vid_active_video(vid_active_video),
        .vid_active_video_arb(NLW_inst_vid_active_video_arb_UNCONNECTED[3:0]),
        .vid_data(vid_data),
        .vid_data_arb(NLW_inst_vid_data_arb_UNCONNECTED[95:0]),
        .vid_field_id(vid_field_id),
        .vid_field_id_arb(NLW_inst_vid_field_id_arb_UNCONNECTED),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_hsync_arb(NLW_inst_vid_hsync_arb_UNCONNECTED[3:0]),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_io_out_clk(vid_io_out_clk),
        .vid_io_out_reset(vid_io_out_reset),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vid_vsync_arb(NLW_inst_vid_vsync_arb_UNCONNECTED[3:0]),
        .video_format(video_format),
        .vtg_active_video(vtg_active_video),
        .vtg_active_video_arb({1'b0,1'b0,1'b0,1'b0}),
        .vtg_ce(vtg_ce),
        .vtg_field_id(vtg_field_id),
        .vtg_field_id_arb(1'b0),
        .vtg_hblank(vtg_hblank),
        .vtg_hblank_arb({1'b0,1'b0,1'b0,1'b0}),
        .vtg_hsync(vtg_hsync),
        .vtg_hsync_arb({1'b0,1'b0,1'b0,1'b0}),
        .vtg_vblank(vtg_vblank),
        .vtg_vblank_arb({1'b0,1'b0,1'b0,1'b0}),
        .vtg_vsync(vtg_vsync),
        .vtg_vsync_arb({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* C_ADDR_WIDTH = "10" *) (* C_ADDR_WIDTH_PIXEL_REMAP_420 = "10" *) (* C_ARBITRARY_RES_EN = "0" *) 
(* C_COMPONENTS_PER_PIXEL = "3" *) (* C_FAMILY = "kintexuplus" *) (* C_HAS_ASYNC_CLK = "1" *) 
(* C_HYSTERESIS_LEVEL = "12" *) (* C_INCLUDE_PIXEL_REMAP_420 = "1" *) (* C_INCLUDE_PIXEL_REPEAT = "1" *) 
(* C_NATIVE_COMPONENT_WIDTH = "8" *) (* C_NATIVE_DATA_WIDTH = "96" *) (* C_PIXELS_PER_CLOCK = "4" *) 
(* C_SYNC_LOCK_THRESHOLD = "4" *) (* C_S_AXIS_COMPONENT_WIDTH = "8" *) (* C_S_AXIS_TDATA_WIDTH = "96" *) 
(* C_VTG_MASTER_SLAVE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20
   (aclk,
    aclken,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tready,
    s_axis_video_tuser,
    s_axis_video_tlast,
    fid,
    vid_io_out_clk,
    vid_io_out_ce,
    vid_io_out_reset,
    vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    vid_data,
    vid_vsync_arb,
    vid_hsync_arb,
    vid_active_video_arb,
    vid_field_id_arb,
    vid_data_arb,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_active_video,
    vtg_field_id,
    vtg_ce,
    vtg_hsync_arb,
    vtg_hblank_arb,
    vtg_vsync_arb,
    vtg_vblank_arb,
    vtg_active_video_arb,
    vtg_field_id_arb,
    video_format,
    locked,
    overflow,
    underflow,
    fifo_read_level,
    status,
    sof_state_out,
    repeat_en,
    remap_420_en);
  input aclk;
  input aclken;
  input aresetn;
  input [95:0]s_axis_video_tdata;
  input s_axis_video_tvalid;
  output s_axis_video_tready;
  input s_axis_video_tuser;
  input s_axis_video_tlast;
  input fid;
  input vid_io_out_clk;
  input vid_io_out_ce;
  input vid_io_out_reset;
  output vid_active_video;
  output vid_vsync;
  output vid_hsync;
  output vid_vblank;
  output vid_hblank;
  output vid_field_id;
  output [95:0]vid_data;
  output [3:0]vid_vsync_arb;
  output [3:0]vid_hsync_arb;
  output [3:0]vid_active_video_arb;
  output vid_field_id_arb;
  output [95:0]vid_data_arb;
  input vtg_vsync;
  input vtg_hsync;
  input vtg_vblank;
  input vtg_hblank;
  input vtg_active_video;
  input vtg_field_id;
  output vtg_ce;
  input [3:0]vtg_hsync_arb;
  input [3:0]vtg_hblank_arb;
  input [3:0]vtg_vsync_arb;
  input [3:0]vtg_vblank_arb;
  input [3:0]vtg_active_video_arb;
  input vtg_field_id_arb;
  input [1:0]video_format;
  output locked;
  output overflow;
  output underflow;
  output [10:0]fifo_read_level;
  output [31:0]status;
  output sof_state_out;
  input repeat_en;
  input remap_420_en;

  wire \<const0> ;
  wire COUPLER_INST_n_114;
  wire COUPLER_INST_n_115;
  wire COUPLER_INST_n_116;
  wire COUPLER_INST_n_117;
  wire COUPLER_INST_n_118;
  wire COUPLER_INST_n_119;
  wire COUPLER_INST_n_122;
  wire SYNC_INST_n_3;
  wire SYNC_INST_n_4;
  wire SYNC_INST_n_5;
  wire aclk;
  wire aclk_remap;
  wire aclk_repeat;
  wire aclk_reset;
  wire aclk_reset_pulse0;
  wire \aclk_reset_pulse_reg_n_0_[0] ;
  wire aclk_tuser;
  wire aclken;
  wire aresetn;
  wire fid;
  wire fid_from_remap;
  wire [95:0]fifo_data;
  wire [98:0]fifo_data_to_coupler;
  wire fifo_empty;
  wire fifo_eol;
  wire fifo_eol_dly;
  wire fifo_eol_re;
  wire fifo_fid;
  wire fifo_overflow_from_coupler;
  wire [10:0]fifo_read_level;
  wire fifo_sof;
  wire fifo_sof_dly;
  wire fifo_underflow_from_remap_reg;
  wire fifo_underflow_from_remap_sync;
  wire first_sof;
  wire fivid_reset_full_frame;
  wire full_i;
  wire \generate_remap_module.REMAP_420_INST_n_1 ;
  wire \generate_remap_module.REMAP_420_INST_n_10 ;
  wire \generate_remap_module.REMAP_420_INST_n_11 ;
  wire \generate_remap_module.REMAP_420_INST_n_12 ;
  wire \generate_remap_module.REMAP_420_INST_n_13 ;
  wire \generate_remap_module.REMAP_420_INST_n_14 ;
  wire \generate_remap_module.REMAP_420_INST_n_15 ;
  wire \generate_remap_module.REMAP_420_INST_n_16 ;
  wire \generate_remap_module.REMAP_420_INST_n_17 ;
  wire \generate_remap_module.REMAP_420_INST_n_18 ;
  wire \generate_remap_module.REMAP_420_INST_n_184 ;
  wire \generate_remap_module.REMAP_420_INST_n_185 ;
  wire \generate_remap_module.REMAP_420_INST_n_186 ;
  wire \generate_remap_module.REMAP_420_INST_n_187 ;
  wire \generate_remap_module.REMAP_420_INST_n_188 ;
  wire \generate_remap_module.REMAP_420_INST_n_189 ;
  wire \generate_remap_module.REMAP_420_INST_n_19 ;
  wire \generate_remap_module.REMAP_420_INST_n_190 ;
  wire \generate_remap_module.REMAP_420_INST_n_191 ;
  wire \generate_remap_module.REMAP_420_INST_n_192 ;
  wire \generate_remap_module.REMAP_420_INST_n_193 ;
  wire \generate_remap_module.REMAP_420_INST_n_194 ;
  wire \generate_remap_module.REMAP_420_INST_n_195 ;
  wire \generate_remap_module.REMAP_420_INST_n_196 ;
  wire \generate_remap_module.REMAP_420_INST_n_197 ;
  wire \generate_remap_module.REMAP_420_INST_n_198 ;
  wire \generate_remap_module.REMAP_420_INST_n_199 ;
  wire \generate_remap_module.REMAP_420_INST_n_2 ;
  wire \generate_remap_module.REMAP_420_INST_n_20 ;
  wire \generate_remap_module.REMAP_420_INST_n_200 ;
  wire \generate_remap_module.REMAP_420_INST_n_201 ;
  wire \generate_remap_module.REMAP_420_INST_n_202 ;
  wire \generate_remap_module.REMAP_420_INST_n_203 ;
  wire \generate_remap_module.REMAP_420_INST_n_204 ;
  wire \generate_remap_module.REMAP_420_INST_n_205 ;
  wire \generate_remap_module.REMAP_420_INST_n_206 ;
  wire \generate_remap_module.REMAP_420_INST_n_207 ;
  wire \generate_remap_module.REMAP_420_INST_n_208 ;
  wire \generate_remap_module.REMAP_420_INST_n_209 ;
  wire \generate_remap_module.REMAP_420_INST_n_21 ;
  wire \generate_remap_module.REMAP_420_INST_n_210 ;
  wire \generate_remap_module.REMAP_420_INST_n_211 ;
  wire \generate_remap_module.REMAP_420_INST_n_212 ;
  wire \generate_remap_module.REMAP_420_INST_n_213 ;
  wire \generate_remap_module.REMAP_420_INST_n_214 ;
  wire \generate_remap_module.REMAP_420_INST_n_215 ;
  wire \generate_remap_module.REMAP_420_INST_n_216 ;
  wire \generate_remap_module.REMAP_420_INST_n_217 ;
  wire \generate_remap_module.REMAP_420_INST_n_218 ;
  wire \generate_remap_module.REMAP_420_INST_n_219 ;
  wire \generate_remap_module.REMAP_420_INST_n_22 ;
  wire \generate_remap_module.REMAP_420_INST_n_220 ;
  wire \generate_remap_module.REMAP_420_INST_n_221 ;
  wire \generate_remap_module.REMAP_420_INST_n_222 ;
  wire \generate_remap_module.REMAP_420_INST_n_223 ;
  wire \generate_remap_module.REMAP_420_INST_n_224 ;
  wire \generate_remap_module.REMAP_420_INST_n_225 ;
  wire \generate_remap_module.REMAP_420_INST_n_226 ;
  wire \generate_remap_module.REMAP_420_INST_n_227 ;
  wire \generate_remap_module.REMAP_420_INST_n_228 ;
  wire \generate_remap_module.REMAP_420_INST_n_229 ;
  wire \generate_remap_module.REMAP_420_INST_n_23 ;
  wire \generate_remap_module.REMAP_420_INST_n_230 ;
  wire \generate_remap_module.REMAP_420_INST_n_231 ;
  wire \generate_remap_module.REMAP_420_INST_n_232 ;
  wire \generate_remap_module.REMAP_420_INST_n_233 ;
  wire \generate_remap_module.REMAP_420_INST_n_234 ;
  wire \generate_remap_module.REMAP_420_INST_n_235 ;
  wire \generate_remap_module.REMAP_420_INST_n_236 ;
  wire \generate_remap_module.REMAP_420_INST_n_237 ;
  wire \generate_remap_module.REMAP_420_INST_n_238 ;
  wire \generate_remap_module.REMAP_420_INST_n_239 ;
  wire \generate_remap_module.REMAP_420_INST_n_24 ;
  wire \generate_remap_module.REMAP_420_INST_n_240 ;
  wire \generate_remap_module.REMAP_420_INST_n_241 ;
  wire \generate_remap_module.REMAP_420_INST_n_242 ;
  wire \generate_remap_module.REMAP_420_INST_n_243 ;
  wire \generate_remap_module.REMAP_420_INST_n_244 ;
  wire \generate_remap_module.REMAP_420_INST_n_245 ;
  wire \generate_remap_module.REMAP_420_INST_n_246 ;
  wire \generate_remap_module.REMAP_420_INST_n_247 ;
  wire \generate_remap_module.REMAP_420_INST_n_248 ;
  wire \generate_remap_module.REMAP_420_INST_n_25 ;
  wire \generate_remap_module.REMAP_420_INST_n_26 ;
  wire \generate_remap_module.REMAP_420_INST_n_27 ;
  wire \generate_remap_module.REMAP_420_INST_n_28 ;
  wire \generate_remap_module.REMAP_420_INST_n_29 ;
  wire \generate_remap_module.REMAP_420_INST_n_30 ;
  wire \generate_remap_module.REMAP_420_INST_n_31 ;
  wire \generate_remap_module.REMAP_420_INST_n_32 ;
  wire \generate_remap_module.REMAP_420_INST_n_33 ;
  wire \generate_remap_module.REMAP_420_INST_n_34 ;
  wire \generate_remap_module.REMAP_420_INST_n_35 ;
  wire \generate_remap_module.REMAP_420_INST_n_36 ;
  wire \generate_remap_module.REMAP_420_INST_n_37 ;
  wire \generate_remap_module.REMAP_420_INST_n_38 ;
  wire \generate_remap_module.REMAP_420_INST_n_39 ;
  wire \generate_remap_module.REMAP_420_INST_n_40 ;
  wire \generate_remap_module.REMAP_420_INST_n_41 ;
  wire \generate_remap_module.REMAP_420_INST_n_42 ;
  wire \generate_remap_module.REMAP_420_INST_n_43 ;
  wire \generate_remap_module.REMAP_420_INST_n_44 ;
  wire \generate_remap_module.REMAP_420_INST_n_45 ;
  wire \generate_remap_module.REMAP_420_INST_n_46 ;
  wire \generate_remap_module.REMAP_420_INST_n_47 ;
  wire \generate_remap_module.REMAP_420_INST_n_48 ;
  wire \generate_remap_module.REMAP_420_INST_n_49 ;
  wire \generate_remap_module.REMAP_420_INST_n_5 ;
  wire \generate_remap_module.REMAP_420_INST_n_50 ;
  wire \generate_remap_module.REMAP_420_INST_n_51 ;
  wire \generate_remap_module.REMAP_420_INST_n_52 ;
  wire \generate_remap_module.REMAP_420_INST_n_53 ;
  wire \generate_remap_module.REMAP_420_INST_n_54 ;
  wire \generate_remap_module.REMAP_420_INST_n_55 ;
  wire \generate_remap_module.REMAP_420_INST_n_56 ;
  wire \generate_remap_module.REMAP_420_INST_n_57 ;
  wire \generate_remap_module.REMAP_420_INST_n_58 ;
  wire \generate_remap_module.REMAP_420_INST_n_59 ;
  wire \generate_remap_module.REMAP_420_INST_n_6 ;
  wire \generate_remap_module.REMAP_420_INST_n_60 ;
  wire \generate_remap_module.REMAP_420_INST_n_61 ;
  wire \generate_remap_module.REMAP_420_INST_n_62 ;
  wire \generate_remap_module.REMAP_420_INST_n_63 ;
  wire \generate_remap_module.REMAP_420_INST_n_64 ;
  wire \generate_remap_module.REMAP_420_INST_n_65 ;
  wire \generate_remap_module.REMAP_420_INST_n_66 ;
  wire \generate_remap_module.REMAP_420_INST_n_67 ;
  wire \generate_remap_module.REMAP_420_INST_n_68 ;
  wire \generate_remap_module.REMAP_420_INST_n_69 ;
  wire \generate_remap_module.REMAP_420_INST_n_7 ;
  wire \generate_remap_module.REMAP_420_INST_n_70 ;
  wire \generate_remap_module.REMAP_420_INST_n_71 ;
  wire \generate_remap_module.REMAP_420_INST_n_72 ;
  wire \generate_remap_module.REMAP_420_INST_n_73 ;
  wire \generate_remap_module.REMAP_420_INST_n_74 ;
  wire \generate_remap_module.REMAP_420_INST_n_75 ;
  wire \generate_remap_module.REMAP_420_INST_n_76 ;
  wire \generate_remap_module.REMAP_420_INST_n_77 ;
  wire \generate_remap_module.REMAP_420_INST_n_78 ;
  wire \generate_remap_module.REMAP_420_INST_n_79 ;
  wire \generate_remap_module.REMAP_420_INST_n_8 ;
  wire \generate_remap_module.REMAP_420_INST_n_80 ;
  wire \generate_remap_module.REMAP_420_INST_n_81 ;
  wire \generate_remap_module.REMAP_420_INST_n_9 ;
  wire \generate_repeat_module.REPEAT_INST_n_1 ;
  wire \generate_repeat_module.REPEAT_INST_n_10 ;
  wire \generate_repeat_module.REPEAT_INST_n_11 ;
  wire \generate_repeat_module.REPEAT_INST_n_118 ;
  wire \generate_repeat_module.REPEAT_INST_n_119 ;
  wire \generate_repeat_module.REPEAT_INST_n_12 ;
  wire \generate_repeat_module.REPEAT_INST_n_13 ;
  wire \generate_repeat_module.REPEAT_INST_n_14 ;
  wire \generate_repeat_module.REPEAT_INST_n_15 ;
  wire \generate_repeat_module.REPEAT_INST_n_16 ;
  wire \generate_repeat_module.REPEAT_INST_n_17 ;
  wire \generate_repeat_module.REPEAT_INST_n_18 ;
  wire \generate_repeat_module.REPEAT_INST_n_19 ;
  wire \generate_repeat_module.REPEAT_INST_n_20 ;
  wire \generate_repeat_module.REPEAT_INST_n_3 ;
  wire \generate_repeat_module.REPEAT_INST_n_4 ;
  wire \generate_repeat_module.REPEAT_INST_n_7 ;
  wire \generate_repeat_module.REPEAT_INST_n_9 ;
  wire in_de_mux0;
  wire locked;
  wire locked_from_sync;
  wire locked_from_sync_dly;
  wire overflow;
  wire [2:0]p_0_in;
  wire p_0_in_0;
  wire p_1_in2_in;
  wire rd_en_i;
  wire remap_420_en;
  wire repeat_en;
  wire [95:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire sof_state_out;
  wire [25:0]\^status ;
  wire [95:0]tdata_from_remap;
  wire tlast_from_remap;
  wire tuser_from_remap;
  wire underflow;
  wire vid_active_video;
  wire [95:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_out_ce;
  wire vid_io_out_clk;
  wire vid_io_out_reset;
  wire vid_vblank;
  wire vid_vsync;
  wire [1:0]video_format;
  wire vtg_active_video;
  wire vtg_ce;
  wire vtg_field_id;
  wire vtg_hblank;
  wire vtg_hsync;
  wire vtg_vblank;
  wire vtg_vsync;
  wire wr_en_i;
  wire wr_rst_busy_i;

  assign status[31] = \<const0> ;
  assign status[30] = \<const0> ;
  assign status[29] = \<const0> ;
  assign status[28] = \<const0> ;
  assign status[27] = \<const0> ;
  assign status[26] = \<const0> ;
  assign status[25:16] = \^status [25:16];
  assign status[15] = \<const0> ;
  assign status[14:0] = \^status [14:0];
  assign vid_active_video_arb[3] = \<const0> ;
  assign vid_active_video_arb[2] = \<const0> ;
  assign vid_active_video_arb[1] = \<const0> ;
  assign vid_active_video_arb[0] = \<const0> ;
  assign vid_data_arb[95] = \<const0> ;
  assign vid_data_arb[94] = \<const0> ;
  assign vid_data_arb[93] = \<const0> ;
  assign vid_data_arb[92] = \<const0> ;
  assign vid_data_arb[91] = \<const0> ;
  assign vid_data_arb[90] = \<const0> ;
  assign vid_data_arb[89] = \<const0> ;
  assign vid_data_arb[88] = \<const0> ;
  assign vid_data_arb[87] = \<const0> ;
  assign vid_data_arb[86] = \<const0> ;
  assign vid_data_arb[85] = \<const0> ;
  assign vid_data_arb[84] = \<const0> ;
  assign vid_data_arb[83] = \<const0> ;
  assign vid_data_arb[82] = \<const0> ;
  assign vid_data_arb[81] = \<const0> ;
  assign vid_data_arb[80] = \<const0> ;
  assign vid_data_arb[79] = \<const0> ;
  assign vid_data_arb[78] = \<const0> ;
  assign vid_data_arb[77] = \<const0> ;
  assign vid_data_arb[76] = \<const0> ;
  assign vid_data_arb[75] = \<const0> ;
  assign vid_data_arb[74] = \<const0> ;
  assign vid_data_arb[73] = \<const0> ;
  assign vid_data_arb[72] = \<const0> ;
  assign vid_data_arb[71] = \<const0> ;
  assign vid_data_arb[70] = \<const0> ;
  assign vid_data_arb[69] = \<const0> ;
  assign vid_data_arb[68] = \<const0> ;
  assign vid_data_arb[67] = \<const0> ;
  assign vid_data_arb[66] = \<const0> ;
  assign vid_data_arb[65] = \<const0> ;
  assign vid_data_arb[64] = \<const0> ;
  assign vid_data_arb[63] = \<const0> ;
  assign vid_data_arb[62] = \<const0> ;
  assign vid_data_arb[61] = \<const0> ;
  assign vid_data_arb[60] = \<const0> ;
  assign vid_data_arb[59] = \<const0> ;
  assign vid_data_arb[58] = \<const0> ;
  assign vid_data_arb[57] = \<const0> ;
  assign vid_data_arb[56] = \<const0> ;
  assign vid_data_arb[55] = \<const0> ;
  assign vid_data_arb[54] = \<const0> ;
  assign vid_data_arb[53] = \<const0> ;
  assign vid_data_arb[52] = \<const0> ;
  assign vid_data_arb[51] = \<const0> ;
  assign vid_data_arb[50] = \<const0> ;
  assign vid_data_arb[49] = \<const0> ;
  assign vid_data_arb[48] = \<const0> ;
  assign vid_data_arb[47] = \<const0> ;
  assign vid_data_arb[46] = \<const0> ;
  assign vid_data_arb[45] = \<const0> ;
  assign vid_data_arb[44] = \<const0> ;
  assign vid_data_arb[43] = \<const0> ;
  assign vid_data_arb[42] = \<const0> ;
  assign vid_data_arb[41] = \<const0> ;
  assign vid_data_arb[40] = \<const0> ;
  assign vid_data_arb[39] = \<const0> ;
  assign vid_data_arb[38] = \<const0> ;
  assign vid_data_arb[37] = \<const0> ;
  assign vid_data_arb[36] = \<const0> ;
  assign vid_data_arb[35] = \<const0> ;
  assign vid_data_arb[34] = \<const0> ;
  assign vid_data_arb[33] = \<const0> ;
  assign vid_data_arb[32] = \<const0> ;
  assign vid_data_arb[31] = \<const0> ;
  assign vid_data_arb[30] = \<const0> ;
  assign vid_data_arb[29] = \<const0> ;
  assign vid_data_arb[28] = \<const0> ;
  assign vid_data_arb[27] = \<const0> ;
  assign vid_data_arb[26] = \<const0> ;
  assign vid_data_arb[25] = \<const0> ;
  assign vid_data_arb[24] = \<const0> ;
  assign vid_data_arb[23] = \<const0> ;
  assign vid_data_arb[22] = \<const0> ;
  assign vid_data_arb[21] = \<const0> ;
  assign vid_data_arb[20] = \<const0> ;
  assign vid_data_arb[19] = \<const0> ;
  assign vid_data_arb[18] = \<const0> ;
  assign vid_data_arb[17] = \<const0> ;
  assign vid_data_arb[16] = \<const0> ;
  assign vid_data_arb[15] = \<const0> ;
  assign vid_data_arb[14] = \<const0> ;
  assign vid_data_arb[13] = \<const0> ;
  assign vid_data_arb[12] = \<const0> ;
  assign vid_data_arb[11] = \<const0> ;
  assign vid_data_arb[10] = \<const0> ;
  assign vid_data_arb[9] = \<const0> ;
  assign vid_data_arb[8] = \<const0> ;
  assign vid_data_arb[7] = \<const0> ;
  assign vid_data_arb[6] = \<const0> ;
  assign vid_data_arb[5] = \<const0> ;
  assign vid_data_arb[4] = \<const0> ;
  assign vid_data_arb[3] = \<const0> ;
  assign vid_data_arb[2] = \<const0> ;
  assign vid_data_arb[1] = \<const0> ;
  assign vid_data_arb[0] = \<const0> ;
  assign vid_field_id_arb = \<const0> ;
  assign vid_hsync_arb[3] = \<const0> ;
  assign vid_hsync_arb[2] = \<const0> ;
  assign vid_hsync_arb[1] = \<const0> ;
  assign vid_hsync_arb[0] = \<const0> ;
  assign vid_vsync_arb[3] = \<const0> ;
  assign vid_vsync_arb[2] = \<const0> ;
  assign vid_vsync_arb[1] = \<const0> ;
  assign vid_vsync_arb[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_cdc_single CDC_SINGLE_LOCKED_INST
       (.SS(aclk_reset_pulse0),
        .aclk(aclk),
        .dest_out(locked_from_sync),
        .locked(locked),
        .locked_from_sync_dly(locked_from_sync_dly));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_cdc_single_0 CDC_SINGLE_REMAP_UNDERFLOW_INST
       (.dest_out(fifo_underflow_from_remap_sync),
        .src_in(fifo_underflow_from_remap_reg),
        .vid_io_out_clk(vid_io_out_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_coupler COUPLER_INST
       (.D(COUPLER_INST_n_118),
        .E(rd_en_i),
        .\FSM_onehot_aclk_state_reg[2] (COUPLER_INST_n_114),
        .\FSM_onehot_state_reg[4] ({SYNC_INST_n_3,SYNC_INST_n_4,SYNC_INST_n_5}),
        .\FSM_onehot_state_reg[8] (COUPLER_INST_n_119),
        .Q({\generate_repeat_module.REPEAT_INST_n_4 ,p_0_in_0}),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .aresetn_0(COUPLER_INST_n_115),
        .dest_out(aclk_remap),
        .din(fifo_data_to_coupler),
        .dout({fifo_fid,fifo_sof,fifo_eol,fifo_data}),
        .empty(fifo_empty),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re(fifo_eol_re),
        .fifo_read_level(fifo_read_level),
        .fifo_sof_dly(fifo_sof_dly),
        .full(full_i),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (COUPLER_INST_n_116),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 (COUPLER_INST_n_117),
        .overflow(fifo_overflow_from_coupler),
        .underflow(underflow),
        .underflow_0(fifo_underflow_from_remap_sync),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_io_out_ce_0(COUPLER_INST_n_122),
        .vid_io_out_clk(vid_io_out_clk),
        .wr_en(wr_en_i),
        .wr_rst_busy(wr_rst_busy_i));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_formatter FORMATTER_INST
       (.D(fifo_data),
        .E(rd_en_i),
        .SR(in_de_mux0),
        .fivid_reset_full_frame(fivid_reset_full_frame),
        .locked(locked),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_io_out_clk(vid_io_out_clk),
        .vid_io_out_reset(vid_io_out_reset),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtg_active_video(vtg_active_video),
        .vtg_field_id(vtg_field_id),
        .vtg_hblank(vtg_hblank),
        .vtg_hsync(vtg_hsync),
        .vtg_vblank(vtg_vblank),
        .vtg_vsync(vtg_vsync));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_sync SYNC_INST
       (.D(COUPLER_INST_n_118),
        .E(rd_en_i),
        .\FSM_onehot_state_reg[2]_0 (COUPLER_INST_n_119),
        .Q({SYNC_INST_n_3,SYNC_INST_n_4,SYNC_INST_n_5}),
        .SR(in_de_mux0),
        .dout({fifo_fid,fifo_sof,fifo_eol}),
        .empty(fifo_empty),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re(fifo_eol_re),
        .\fifo_sof_cnt_reg[0]_0 (COUPLER_INST_n_122),
        .fifo_sof_dly(fifo_sof_dly),
        .fivid_reset_full_frame(fivid_reset_full_frame),
        .locked(locked),
        .status({\^status [25:16],\^status [14:0]}),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_io_out_clk(vid_io_out_clk),
        .vid_io_out_reset(vid_io_out_reset),
        .vtg_active_video(vtg_active_video),
        .vtg_ce(vtg_ce),
        .vtg_field_id(vtg_field_id),
        .vtg_vsync(vtg_vsync));
  FDSE \aclk_reset_pulse_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\aclk_reset_pulse_reg_n_0_[0] ),
        .S(aclk_reset_pulse0));
  FDSE \aclk_reset_pulse_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[0]),
        .S(aclk_reset_pulse0));
  FDSE \aclk_reset_pulse_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[1]),
        .S(aclk_reset_pulse0));
  FDSE \aclk_reset_pulse_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(p_0_in[2]),
        .S(aclk_reset_pulse0));
  FDRE fifo_underflow_from_remap_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\generate_remap_module.REMAP_420_INST_n_248 ),
        .Q(fifo_underflow_from_remap_reg),
        .R(1'b0));
  FDRE first_sof_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\generate_remap_module.REMAP_420_INST_n_41 ),
        .Q(first_sof),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_remap \generate_remap_module.REMAP_420_INST 
       (.D(\generate_remap_module.REMAP_420_INST_n_46 ),
        .\FSM_onehot_aclk_state_reg[1]_0 (s_axis_video_tready),
        .\FSM_onehot_aclk_state_reg[1]_1 (\generate_remap_module.REMAP_420_INST_n_6 ),
        .\FSM_onehot_aclk_state_reg[1]_2 (\generate_remap_module.REMAP_420_INST_n_43 ),
        .\FSM_onehot_aclk_state_reg[1]_3 (\generate_remap_module.REMAP_420_INST_n_44 ),
        .\FSM_onehot_aclk_state_reg[1]_4 (\generate_repeat_module.REPEAT_INST_n_10 ),
        .\FSM_onehot_aclk_state_reg[2]_0 (\generate_repeat_module.REPEAT_INST_n_15 ),
        .\FSM_onehot_aclk_state_reg[3]_0 (\generate_remap_module.REMAP_420_INST_n_47 ),
        .\FSM_onehot_aclk_state_reg[3]_1 (\generate_repeat_module.REPEAT_INST_n_9 ),
        .\FSM_onehot_aclk_state_reg[3]_2 (COUPLER_INST_n_116),
        .\FSM_onehot_aclk_state_reg[3]_3 (\generate_repeat_module.REPEAT_INST_n_17 ),
        .Q(aclk_tuser),
        .aclk(aclk),
        .aclk_fid_reg_0(\generate_remap_module.REMAP_420_INST_n_5 ),
        .aclk_fid_reg_1(\generate_repeat_module.REPEAT_INST_n_12 ),
        .aclk_fid_reg_2(\generate_repeat_module.REPEAT_INST_n_11 ),
        .aclk_fid_reg_3(\generate_repeat_module.REPEAT_INST_n_16 ),
        .aclk_fid_reg_4(\generate_repeat_module.REPEAT_INST_n_20 ),
        .aclk_fid_reg_5(\generate_repeat_module.REPEAT_INST_n_119 ),
        .aclk_reset(aclk_reset),
        .\aclk_tdata_dly_reg[95] ({\generate_repeat_module.REPEAT_INST_n_4 ,p_0_in_0,p_1_in2_in}),
        .\aclk_tdata_dly_reg[95]_0 (\generate_repeat_module.REPEAT_INST_n_7 ),
        .\aclk_tdata_even_reg[55]_0 ({\generate_remap_module.REMAP_420_INST_n_184 ,\generate_remap_module.REMAP_420_INST_n_185 ,\generate_remap_module.REMAP_420_INST_n_186 ,\generate_remap_module.REMAP_420_INST_n_187 ,\generate_remap_module.REMAP_420_INST_n_188 ,\generate_remap_module.REMAP_420_INST_n_189 ,\generate_remap_module.REMAP_420_INST_n_190 ,\generate_remap_module.REMAP_420_INST_n_191 ,\generate_remap_module.REMAP_420_INST_n_192 ,\generate_remap_module.REMAP_420_INST_n_193 ,\generate_remap_module.REMAP_420_INST_n_194 ,\generate_remap_module.REMAP_420_INST_n_195 ,\generate_remap_module.REMAP_420_INST_n_196 ,\generate_remap_module.REMAP_420_INST_n_197 ,\generate_remap_module.REMAP_420_INST_n_198 ,\generate_remap_module.REMAP_420_INST_n_199 ,\generate_remap_module.REMAP_420_INST_n_200 ,\generate_remap_module.REMAP_420_INST_n_201 ,\generate_remap_module.REMAP_420_INST_n_202 ,\generate_remap_module.REMAP_420_INST_n_203 ,\generate_remap_module.REMAP_420_INST_n_204 ,\generate_remap_module.REMAP_420_INST_n_205 ,\generate_remap_module.REMAP_420_INST_n_206 ,\generate_remap_module.REMAP_420_INST_n_207 ,\generate_remap_module.REMAP_420_INST_n_208 ,\generate_remap_module.REMAP_420_INST_n_209 ,\generate_remap_module.REMAP_420_INST_n_210 ,\generate_remap_module.REMAP_420_INST_n_211 ,\generate_remap_module.REMAP_420_INST_n_212 ,\generate_remap_module.REMAP_420_INST_n_213 ,\generate_remap_module.REMAP_420_INST_n_214 ,\generate_remap_module.REMAP_420_INST_n_215 }),
        .\aclk_tdata_odd_reg[55]_0 (tdata_from_remap),
        .\aclk_tdata_odd_reg[55]_1 ({\generate_remap_module.REMAP_420_INST_n_216 ,\generate_remap_module.REMAP_420_INST_n_217 ,\generate_remap_module.REMAP_420_INST_n_218 ,\generate_remap_module.REMAP_420_INST_n_219 ,\generate_remap_module.REMAP_420_INST_n_220 ,\generate_remap_module.REMAP_420_INST_n_221 ,\generate_remap_module.REMAP_420_INST_n_222 ,\generate_remap_module.REMAP_420_INST_n_223 ,\generate_remap_module.REMAP_420_INST_n_224 ,\generate_remap_module.REMAP_420_INST_n_225 ,\generate_remap_module.REMAP_420_INST_n_226 ,\generate_remap_module.REMAP_420_INST_n_227 ,\generate_remap_module.REMAP_420_INST_n_228 ,\generate_remap_module.REMAP_420_INST_n_229 ,\generate_remap_module.REMAP_420_INST_n_230 ,\generate_remap_module.REMAP_420_INST_n_231 ,\generate_remap_module.REMAP_420_INST_n_232 ,\generate_remap_module.REMAP_420_INST_n_233 ,\generate_remap_module.REMAP_420_INST_n_234 ,\generate_remap_module.REMAP_420_INST_n_235 ,\generate_remap_module.REMAP_420_INST_n_236 ,\generate_remap_module.REMAP_420_INST_n_237 ,\generate_remap_module.REMAP_420_INST_n_238 ,\generate_remap_module.REMAP_420_INST_n_239 ,\generate_remap_module.REMAP_420_INST_n_240 ,\generate_remap_module.REMAP_420_INST_n_241 ,\generate_remap_module.REMAP_420_INST_n_242 ,\generate_remap_module.REMAP_420_INST_n_243 ,\generate_remap_module.REMAP_420_INST_n_244 ,\generate_remap_module.REMAP_420_INST_n_245 ,\generate_remap_module.REMAP_420_INST_n_246 ,\generate_remap_module.REMAP_420_INST_n_247 }),
        .aclk_tlast_reg_0(\generate_remap_module.REMAP_420_INST_n_39 ),
        .aclk_tlast_reg_1(\generate_repeat_module.REPEAT_INST_n_13 ),
        .aclk_tuser_dly_reg_0(\generate_remap_module.REMAP_420_INST_n_40 ),
        .aclk_tuser_reg_0(\generate_remap_module.REMAP_420_INST_n_1 ),
        .aclk_tuser_reg_1(\generate_repeat_module.REPEAT_INST_n_14 ),
        .aclk_tuser_reg_2(COUPLER_INST_n_115),
        .aclk_tuser_reg_3(\generate_repeat_module.REPEAT_INST_n_1 ),
        .aclk_tuser_reg_4(\generate_repeat_module.REPEAT_INST_n_18 ),
        .aclken(aclken),
        .aresetn(aresetn),
        .aresetn_0(\generate_remap_module.REMAP_420_INST_n_41 ),
        .dest_out(aclk_remap),
        .din({fifo_data_to_coupler[98],fifo_data_to_coupler[96]}),
        .fid(fid),
        .fid_from_remap(fid_from_remap),
        .first_sof(first_sof),
        .first_sof_reg(locked_from_sync),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2 (aclk_repeat),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 (\generate_repeat_module.REPEAT_INST_n_118 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 (\generate_repeat_module.REPEAT_INST_n_3 ),
        .locked_from_sync_dly(locked_from_sync_dly),
        .overflow(overflow),
        .overflow_1(fifo_overflow_from_coupler),
        .remap_420_en(remap_420_en),
        .s_axis_video_tdata(s_axis_video_tdata),
        .\s_axis_video_tdata[10]_0 (\generate_remap_module.REMAP_420_INST_n_52 ),
        .\s_axis_video_tdata[11]_0 (\generate_remap_module.REMAP_420_INST_n_53 ),
        .\s_axis_video_tdata[12]_0 (\generate_remap_module.REMAP_420_INST_n_54 ),
        .\s_axis_video_tdata[13]_0 (\generate_remap_module.REMAP_420_INST_n_55 ),
        .\s_axis_video_tdata[14]_0 (\generate_remap_module.REMAP_420_INST_n_56 ),
        .\s_axis_video_tdata[15]_0 (\generate_remap_module.REMAP_420_INST_n_57 ),
        .\s_axis_video_tdata[32]_0 (\generate_remap_module.REMAP_420_INST_n_58 ),
        .\s_axis_video_tdata[33]_0 (\generate_remap_module.REMAP_420_INST_n_59 ),
        .\s_axis_video_tdata[34]_0 (\generate_remap_module.REMAP_420_INST_n_60 ),
        .\s_axis_video_tdata[35]_0 (\generate_remap_module.REMAP_420_INST_n_61 ),
        .\s_axis_video_tdata[36]_0 (\generate_remap_module.REMAP_420_INST_n_62 ),
        .\s_axis_video_tdata[37]_0 (\generate_remap_module.REMAP_420_INST_n_63 ),
        .\s_axis_video_tdata[38]_0 (\generate_remap_module.REMAP_420_INST_n_64 ),
        .\s_axis_video_tdata[39]_0 (\generate_remap_module.REMAP_420_INST_n_65 ),
        .\s_axis_video_tdata[56]_0 (\generate_remap_module.REMAP_420_INST_n_66 ),
        .\s_axis_video_tdata[57]_0 (\generate_remap_module.REMAP_420_INST_n_67 ),
        .\s_axis_video_tdata[58]_0 (\generate_remap_module.REMAP_420_INST_n_68 ),
        .\s_axis_video_tdata[59]_0 (\generate_remap_module.REMAP_420_INST_n_69 ),
        .\s_axis_video_tdata[60]_0 (\generate_remap_module.REMAP_420_INST_n_70 ),
        .\s_axis_video_tdata[61]_0 (\generate_remap_module.REMAP_420_INST_n_71 ),
        .\s_axis_video_tdata[62]_0 (\generate_remap_module.REMAP_420_INST_n_72 ),
        .\s_axis_video_tdata[63]_0 (\generate_remap_module.REMAP_420_INST_n_73 ),
        .\s_axis_video_tdata[80]_0 (\generate_remap_module.REMAP_420_INST_n_74 ),
        .\s_axis_video_tdata[81]_0 (\generate_remap_module.REMAP_420_INST_n_75 ),
        .\s_axis_video_tdata[82]_0 (\generate_remap_module.REMAP_420_INST_n_76 ),
        .\s_axis_video_tdata[83]_0 (\generate_remap_module.REMAP_420_INST_n_77 ),
        .\s_axis_video_tdata[84]_0 (\generate_remap_module.REMAP_420_INST_n_78 ),
        .\s_axis_video_tdata[85]_0 (\generate_remap_module.REMAP_420_INST_n_79 ),
        .\s_axis_video_tdata[86]_0 (\generate_remap_module.REMAP_420_INST_n_80 ),
        .\s_axis_video_tdata[87]_0 (\generate_remap_module.REMAP_420_INST_n_81 ),
        .\s_axis_video_tdata[8]_0 (\generate_remap_module.REMAP_420_INST_n_50 ),
        .\s_axis_video_tdata[9]_0 (\generate_remap_module.REMAP_420_INST_n_51 ),
        .s_axis_video_tdata_10_sp_1(\generate_remap_module.REMAP_420_INST_n_9 ),
        .s_axis_video_tdata_11_sp_1(\generate_remap_module.REMAP_420_INST_n_10 ),
        .s_axis_video_tdata_12_sp_1(\generate_remap_module.REMAP_420_INST_n_11 ),
        .s_axis_video_tdata_13_sp_1(\generate_remap_module.REMAP_420_INST_n_12 ),
        .s_axis_video_tdata_14_sp_1(\generate_remap_module.REMAP_420_INST_n_13 ),
        .s_axis_video_tdata_15_sp_1(\generate_remap_module.REMAP_420_INST_n_14 ),
        .s_axis_video_tdata_32_sp_1(\generate_remap_module.REMAP_420_INST_n_15 ),
        .s_axis_video_tdata_33_sp_1(\generate_remap_module.REMAP_420_INST_n_16 ),
        .s_axis_video_tdata_34_sp_1(\generate_remap_module.REMAP_420_INST_n_17 ),
        .s_axis_video_tdata_35_sp_1(\generate_remap_module.REMAP_420_INST_n_18 ),
        .s_axis_video_tdata_36_sp_1(\generate_remap_module.REMAP_420_INST_n_19 ),
        .s_axis_video_tdata_37_sp_1(\generate_remap_module.REMAP_420_INST_n_20 ),
        .s_axis_video_tdata_38_sp_1(\generate_remap_module.REMAP_420_INST_n_21 ),
        .s_axis_video_tdata_39_sp_1(\generate_remap_module.REMAP_420_INST_n_22 ),
        .s_axis_video_tdata_56_sp_1(\generate_remap_module.REMAP_420_INST_n_23 ),
        .s_axis_video_tdata_57_sp_1(\generate_remap_module.REMAP_420_INST_n_24 ),
        .s_axis_video_tdata_58_sp_1(\generate_remap_module.REMAP_420_INST_n_25 ),
        .s_axis_video_tdata_59_sp_1(\generate_remap_module.REMAP_420_INST_n_26 ),
        .s_axis_video_tdata_60_sp_1(\generate_remap_module.REMAP_420_INST_n_27 ),
        .s_axis_video_tdata_61_sp_1(\generate_remap_module.REMAP_420_INST_n_28 ),
        .s_axis_video_tdata_62_sp_1(\generate_remap_module.REMAP_420_INST_n_29 ),
        .s_axis_video_tdata_63_sp_1(\generate_remap_module.REMAP_420_INST_n_30 ),
        .s_axis_video_tdata_80_sp_1(\generate_remap_module.REMAP_420_INST_n_31 ),
        .s_axis_video_tdata_81_sp_1(\generate_remap_module.REMAP_420_INST_n_32 ),
        .s_axis_video_tdata_82_sp_1(\generate_remap_module.REMAP_420_INST_n_33 ),
        .s_axis_video_tdata_83_sp_1(\generate_remap_module.REMAP_420_INST_n_34 ),
        .s_axis_video_tdata_84_sp_1(\generate_remap_module.REMAP_420_INST_n_35 ),
        .s_axis_video_tdata_85_sp_1(\generate_remap_module.REMAP_420_INST_n_36 ),
        .s_axis_video_tdata_86_sp_1(\generate_remap_module.REMAP_420_INST_n_37 ),
        .s_axis_video_tdata_87_sp_1(\generate_remap_module.REMAP_420_INST_n_38 ),
        .s_axis_video_tdata_8_sp_1(\generate_remap_module.REMAP_420_INST_n_7 ),
        .s_axis_video_tdata_9_sp_1(\generate_remap_module.REMAP_420_INST_n_8 ),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tready(\generate_repeat_module.REPEAT_INST_n_19 ),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tuser_0(\generate_remap_module.REMAP_420_INST_n_2 ),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .sof_state_out(sof_state_out),
        .sof_state_out_reg(\generate_remap_module.REMAP_420_INST_n_42 ),
        .\syncstages_ff_reg[3] (\generate_remap_module.REMAP_420_INST_n_45 ),
        .\syncstages_ff_reg[3]_0 (\generate_remap_module.REMAP_420_INST_n_48 ),
        .\syncstages_ff_reg[3]_1 (\generate_remap_module.REMAP_420_INST_n_49 ),
        .\syncstages_ff_reg[3]_2 (\generate_remap_module.REMAP_420_INST_n_248 ),
        .tlast_from_remap(tlast_from_remap),
        .tuser_from_remap(tuser_from_remap));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_repeat \generate_repeat_module.REPEAT_INST 
       (.D(\generate_remap_module.REMAP_420_INST_n_46 ),
        .\FSM_onehot_aclk_state_reg[0]_0 (\generate_repeat_module.REPEAT_INST_n_9 ),
        .\FSM_onehot_aclk_state_reg[0]_1 (\generate_repeat_module.REPEAT_INST_n_19 ),
        .\FSM_onehot_aclk_state_reg[1]_0 (\generate_repeat_module.REPEAT_INST_n_7 ),
        .\FSM_onehot_aclk_state_reg[1]_1 (\generate_repeat_module.REPEAT_INST_n_11 ),
        .\FSM_onehot_aclk_state_reg[2]_0 (\generate_remap_module.REMAP_420_INST_n_48 ),
        .\FSM_onehot_aclk_state_reg[4]_0 (\generate_repeat_module.REPEAT_INST_n_17 ),
        .\FSM_onehot_aclk_state_reg[4]_1 (\generate_remap_module.REMAP_420_INST_n_44 ),
        .Q({\generate_repeat_module.REPEAT_INST_n_4 ,p_0_in_0,p_1_in2_in}),
        .aclk(aclk),
        .aclk_fid_dly_reg_0(\generate_repeat_module.REPEAT_INST_n_12 ),
        .aclk_fid_reg_0(\generate_repeat_module.REPEAT_INST_n_3 ),
        .aclk_fid_reg_1(\generate_remap_module.REMAP_420_INST_n_5 ),
        .aclk_fid_reg_2(COUPLER_INST_n_116),
        .aclk_fid_reg_3(\generate_remap_module.REMAP_420_INST_n_49 ),
        .aclk_fid_reg_4(\generate_remap_module.REMAP_420_INST_n_2 ),
        .aclk_fid_reg_5(aclk_tuser),
        .aclk_reset(aclk_reset),
        .\aclk_tdata_dly_reg[95]_0 (COUPLER_INST_n_117),
        .\aclk_tdata_dly_reg[95]_1 (\generate_remap_module.REMAP_420_INST_n_45 ),
        .\aclk_tdata_dly_reg[95]_2 (\generate_remap_module.REMAP_420_INST_n_47 ),
        .\aclk_tdata_dly_reg[95]_3 (COUPLER_INST_n_114),
        .\aclk_tdata_dly_reg[95]_4 (tdata_from_remap),
        .\aclk_tdata_reg[10]_0 (\generate_remap_module.REMAP_420_INST_n_9 ),
        .\aclk_tdata_reg[11]_0 (\generate_remap_module.REMAP_420_INST_n_10 ),
        .\aclk_tdata_reg[12]_0 (\generate_remap_module.REMAP_420_INST_n_11 ),
        .\aclk_tdata_reg[13]_0 (\generate_remap_module.REMAP_420_INST_n_12 ),
        .\aclk_tdata_reg[14]_0 (\generate_remap_module.REMAP_420_INST_n_13 ),
        .\aclk_tdata_reg[15]_0 (\generate_remap_module.REMAP_420_INST_n_14 ),
        .\aclk_tdata_reg[32]_0 (\generate_remap_module.REMAP_420_INST_n_15 ),
        .\aclk_tdata_reg[33]_0 (\generate_remap_module.REMAP_420_INST_n_16 ),
        .\aclk_tdata_reg[34]_0 (\generate_remap_module.REMAP_420_INST_n_17 ),
        .\aclk_tdata_reg[35]_0 (\generate_remap_module.REMAP_420_INST_n_18 ),
        .\aclk_tdata_reg[36]_0 (\generate_remap_module.REMAP_420_INST_n_19 ),
        .\aclk_tdata_reg[37]_0 (\generate_remap_module.REMAP_420_INST_n_20 ),
        .\aclk_tdata_reg[38]_0 (\generate_remap_module.REMAP_420_INST_n_21 ),
        .\aclk_tdata_reg[39]_0 (\generate_remap_module.REMAP_420_INST_n_22 ),
        .\aclk_tdata_reg[56]_0 (\generate_remap_module.REMAP_420_INST_n_23 ),
        .\aclk_tdata_reg[57]_0 (\generate_remap_module.REMAP_420_INST_n_24 ),
        .\aclk_tdata_reg[58]_0 (\generate_remap_module.REMAP_420_INST_n_25 ),
        .\aclk_tdata_reg[59]_0 (\generate_remap_module.REMAP_420_INST_n_26 ),
        .\aclk_tdata_reg[60]_0 (\generate_remap_module.REMAP_420_INST_n_27 ),
        .\aclk_tdata_reg[61]_0 (\generate_remap_module.REMAP_420_INST_n_28 ),
        .\aclk_tdata_reg[62]_0 (\generate_remap_module.REMAP_420_INST_n_29 ),
        .\aclk_tdata_reg[63]_0 (\generate_remap_module.REMAP_420_INST_n_30 ),
        .\aclk_tdata_reg[80]_0 (\generate_remap_module.REMAP_420_INST_n_31 ),
        .\aclk_tdata_reg[81]_0 (\generate_remap_module.REMAP_420_INST_n_32 ),
        .\aclk_tdata_reg[82]_0 (\generate_remap_module.REMAP_420_INST_n_33 ),
        .\aclk_tdata_reg[83]_0 (\generate_remap_module.REMAP_420_INST_n_34 ),
        .\aclk_tdata_reg[84]_0 (\generate_remap_module.REMAP_420_INST_n_35 ),
        .\aclk_tdata_reg[85]_0 (\generate_remap_module.REMAP_420_INST_n_36 ),
        .\aclk_tdata_reg[86]_0 (\generate_remap_module.REMAP_420_INST_n_37 ),
        .\aclk_tdata_reg[87]_0 (\generate_remap_module.REMAP_420_INST_n_38 ),
        .\aclk_tdata_reg[8]_0 (\generate_remap_module.REMAP_420_INST_n_7 ),
        .\aclk_tdata_reg[95]_0 (\generate_remap_module.REMAP_420_INST_n_6 ),
        .\aclk_tdata_reg[9]_0 (\generate_remap_module.REMAP_420_INST_n_8 ),
        .aclk_tlast_reg_0(\generate_remap_module.REMAP_420_INST_n_39 ),
        .aclk_tlast_reg_1({p_0_in,\aclk_reset_pulse_reg_n_0_[0] }),
        .aclk_tuser_dly_reg_0(\generate_repeat_module.REPEAT_INST_n_1 ),
        .aclk_tuser_dly_reg_1(\generate_repeat_module.REPEAT_INST_n_14 ),
        .aclk_tuser_reg_0(\generate_remap_module.REMAP_420_INST_n_40 ),
        .aclk_tuser_reg_1(COUPLER_INST_n_115),
        .aclken(aclken),
        .aresetn(aresetn),
        .\count_value_i_reg[9] (\generate_remap_module.REMAP_420_INST_n_43 ),
        .dest_out(aclk_repeat),
        .din({fifo_data_to_coupler[97],fifo_data_to_coupler[95:0]}),
        .fid(fid),
        .fid_from_remap(fid_from_remap),
        .first_sof(first_sof),
        .full(full_i),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0 (\generate_remap_module.REMAP_420_INST_n_50 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 (\generate_remap_module.REMAP_420_INST_n_51 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 (\generate_remap_module.REMAP_420_INST_n_52 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 (\generate_remap_module.REMAP_420_INST_n_61 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 (\generate_remap_module.REMAP_420_INST_n_53 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 (\generate_remap_module.REMAP_420_INST_n_54 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 (\generate_remap_module.REMAP_420_INST_n_55 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 (\generate_remap_module.REMAP_420_INST_n_56 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 (\generate_remap_module.REMAP_420_INST_n_57 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 (\generate_remap_module.REMAP_420_INST_n_58 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 (\generate_remap_module.REMAP_420_INST_n_59 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 (\generate_remap_module.REMAP_420_INST_n_60 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ({\generate_remap_module.REMAP_420_INST_n_184 ,\generate_remap_module.REMAP_420_INST_n_185 ,\generate_remap_module.REMAP_420_INST_n_186 ,\generate_remap_module.REMAP_420_INST_n_187 ,\generate_remap_module.REMAP_420_INST_n_188 ,\generate_remap_module.REMAP_420_INST_n_189 ,\generate_remap_module.REMAP_420_INST_n_190 ,\generate_remap_module.REMAP_420_INST_n_191 ,\generate_remap_module.REMAP_420_INST_n_192 ,\generate_remap_module.REMAP_420_INST_n_193 ,\generate_remap_module.REMAP_420_INST_n_194 ,\generate_remap_module.REMAP_420_INST_n_195 ,\generate_remap_module.REMAP_420_INST_n_196 ,\generate_remap_module.REMAP_420_INST_n_197 ,\generate_remap_module.REMAP_420_INST_n_198 ,\generate_remap_module.REMAP_420_INST_n_199 ,\generate_remap_module.REMAP_420_INST_n_200 ,\generate_remap_module.REMAP_420_INST_n_201 ,\generate_remap_module.REMAP_420_INST_n_202 ,\generate_remap_module.REMAP_420_INST_n_203 ,\generate_remap_module.REMAP_420_INST_n_204 ,\generate_remap_module.REMAP_420_INST_n_205 ,\generate_remap_module.REMAP_420_INST_n_206 ,\generate_remap_module.REMAP_420_INST_n_207 ,\generate_remap_module.REMAP_420_INST_n_208 ,\generate_remap_module.REMAP_420_INST_n_209 ,\generate_remap_module.REMAP_420_INST_n_210 ,\generate_remap_module.REMAP_420_INST_n_211 ,\generate_remap_module.REMAP_420_INST_n_212 ,\generate_remap_module.REMAP_420_INST_n_213 ,\generate_remap_module.REMAP_420_INST_n_214 ,\generate_remap_module.REMAP_420_INST_n_215 }),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 (\generate_remap_module.REMAP_420_INST_n_62 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 (\generate_remap_module.REMAP_420_INST_n_63 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 (\generate_remap_module.REMAP_420_INST_n_72 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 (\generate_remap_module.REMAP_420_INST_n_73 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 (\generate_remap_module.REMAP_420_INST_n_64 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 (\generate_remap_module.REMAP_420_INST_n_65 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 (\generate_remap_module.REMAP_420_INST_n_66 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 (\generate_remap_module.REMAP_420_INST_n_67 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 (\generate_remap_module.REMAP_420_INST_n_68 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 (\generate_remap_module.REMAP_420_INST_n_69 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 (\generate_remap_module.REMAP_420_INST_n_70 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 (\generate_remap_module.REMAP_420_INST_n_71 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2 (aclk_remap),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ({\generate_remap_module.REMAP_420_INST_n_216 ,\generate_remap_module.REMAP_420_INST_n_217 ,\generate_remap_module.REMAP_420_INST_n_218 ,\generate_remap_module.REMAP_420_INST_n_219 ,\generate_remap_module.REMAP_420_INST_n_220 ,\generate_remap_module.REMAP_420_INST_n_221 ,\generate_remap_module.REMAP_420_INST_n_222 ,\generate_remap_module.REMAP_420_INST_n_223 ,\generate_remap_module.REMAP_420_INST_n_224 ,\generate_remap_module.REMAP_420_INST_n_225 ,\generate_remap_module.REMAP_420_INST_n_226 ,\generate_remap_module.REMAP_420_INST_n_227 ,\generate_remap_module.REMAP_420_INST_n_228 ,\generate_remap_module.REMAP_420_INST_n_229 ,\generate_remap_module.REMAP_420_INST_n_230 ,\generate_remap_module.REMAP_420_INST_n_231 ,\generate_remap_module.REMAP_420_INST_n_232 ,\generate_remap_module.REMAP_420_INST_n_233 ,\generate_remap_module.REMAP_420_INST_n_234 ,\generate_remap_module.REMAP_420_INST_n_235 ,\generate_remap_module.REMAP_420_INST_n_236 ,\generate_remap_module.REMAP_420_INST_n_237 ,\generate_remap_module.REMAP_420_INST_n_238 ,\generate_remap_module.REMAP_420_INST_n_239 ,\generate_remap_module.REMAP_420_INST_n_240 ,\generate_remap_module.REMAP_420_INST_n_241 ,\generate_remap_module.REMAP_420_INST_n_242 ,\generate_remap_module.REMAP_420_INST_n_243 ,\generate_remap_module.REMAP_420_INST_n_244 ,\generate_remap_module.REMAP_420_INST_n_245 ,\generate_remap_module.REMAP_420_INST_n_246 ,\generate_remap_module.REMAP_420_INST_n_247 }),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 (\generate_remap_module.REMAP_420_INST_n_74 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_2 (\generate_remap_module.REMAP_420_INST_n_75 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_3 (\generate_remap_module.REMAP_420_INST_n_76 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_4 (\generate_remap_module.REMAP_420_INST_n_77 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_5 (\generate_remap_module.REMAP_420_INST_n_78 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_6 (\generate_remap_module.REMAP_420_INST_n_79 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_7 (\generate_remap_module.REMAP_420_INST_n_80 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_8 (\generate_remap_module.REMAP_420_INST_n_81 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_9 (\generate_remap_module.REMAP_420_INST_n_1 ),
        .repeat_en(repeat_en),
        .s_axis_video_tdata({s_axis_video_tdata[95:88],s_axis_video_tdata[79:64],s_axis_video_tdata[55:40],s_axis_video_tdata[31:16],s_axis_video_tdata[7:0]}),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tlast_0(\generate_repeat_module.REPEAT_INST_n_13 ),
        .s_axis_video_tlast_1(\generate_repeat_module.REPEAT_INST_n_15 ),
        .s_axis_video_tlast_2(\generate_repeat_module.REPEAT_INST_n_118 ),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tuser_0(\generate_repeat_module.REPEAT_INST_n_20 ),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .\syncstages_ff_reg[3] (\generate_repeat_module.REPEAT_INST_n_10 ),
        .\syncstages_ff_reg[3]_0 (\generate_repeat_module.REPEAT_INST_n_16 ),
        .\syncstages_ff_reg[3]_1 (\generate_repeat_module.REPEAT_INST_n_18 ),
        .\syncstages_ff_reg[3]_2 (\generate_repeat_module.REPEAT_INST_n_119 ),
        .tlast_from_remap(tlast_from_remap),
        .tuser_from_remap(tuser_from_remap),
        .video_format(video_format),
        .wr_en(wr_en_i),
        .wr_rst_busy(wr_rst_busy_i));
  FDRE locked_from_sync_dly_reg
       (.C(aclk),
        .CE(1'b1),
        .D(locked_from_sync),
        .Q(locked_from_sync_dly),
        .R(1'b0));
  FDRE sof_state_out_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\generate_remap_module.REMAP_420_INST_n_42 ),
        .Q(sof_state_out),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_cdc_single
   (dest_out,
    SS,
    locked,
    aclk,
    locked_from_sync_dly);
  output dest_out;
  output [0:0]SS;
  input locked;
  input aclk;
  input locked_from_sync_dly;

  wire [0:0]SS;
  wire aclk;
  wire dest_out;
  wire locked;
  wire locked_from_sync_dly;

  LUT2 #(
    .INIT(4'h2)) 
    \aclk_reset_pulse[3]_i_1 
       (.I0(locked_from_sync_dly),
        .I1(dest_out),
        .O(SS));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(locked));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_20_cdc_single" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_cdc_single_0
   (dest_out,
    src_in,
    vid_io_out_clk);
  output dest_out;
  input src_in;
  input vid_io_out_clk;

  wire dest_out;
  wire src_in;
  wire vid_io_out_clk;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__4 xpm_cdc_single_inst
       (.dest_clk(vid_io_out_clk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_20_cdc_single" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_cdc_single_1
   (dest_out,
    E,
    wr_en,
    D,
    \FSM_onehot_aclk_state_reg[0] ,
    \syncstages_ff_reg[3] ,
    aclken_0,
    \s_axis_video_tdata[95] ,
    \FSM_onehot_aclk_state_reg[1] ,
    s_axis_video_tlast_0,
    aclk_tuser_dly_reg,
    s_axis_video_tlast_1,
    \syncstages_ff_reg[3]_0 ,
    \FSM_onehot_aclk_state_reg[4] ,
    \syncstages_ff_reg[3]_1 ,
    \FSM_onehot_aclk_state_reg[0]_0 ,
    din,
    \syncstages_ff_reg[3]_2 ,
    \syncstages_ff_reg[3]_3 ,
    \syncstages_ff_reg[3]_4 ,
    \syncstages_ff_reg[3]_5 ,
    \syncstages_ff_reg[3]_6 ,
    \syncstages_ff_reg[3]_7 ,
    \syncstages_ff_reg[3]_8 ,
    \syncstages_ff_reg[3]_9 ,
    \aclk_tdata_reg[24] ,
    \aclk_tdata_reg[25] ,
    \aclk_tdata_reg[26] ,
    \aclk_tdata_reg[27] ,
    \aclk_tdata_reg[28] ,
    \aclk_tdata_reg[29] ,
    \aclk_tdata_reg[30] ,
    \aclk_tdata_reg[31] ,
    \aclk_tdata_reg[16] ,
    \aclk_tdata_reg[17] ,
    \aclk_tdata_reg[18] ,
    \aclk_tdata_reg[19] ,
    \aclk_tdata_reg[20] ,
    \aclk_tdata_reg[21] ,
    \aclk_tdata_reg[22] ,
    \aclk_tdata_reg[23] ,
    s_axis_video_tlast_2,
    \syncstages_ff_reg[3]_10 ,
    \syncstages_ff_reg[3]_11 ,
    repeat_en,
    aclk,
    \aclk_tdata_dly_reg[95] ,
    \aclk_tdata_dly_reg[95]_0 ,
    \aclk_tdata_dly_reg[95]_1 ,
    \aclk_tdata_dly_reg[95]_2 ,
    SR,
    \count_value_i_reg[9] ,
    Q,
    aclk_fid_reg,
    aclken,
    \FSM_onehot_aclk_state_reg[2] ,
    \FSM_onehot_aclk_state_reg[4]_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ,
    aclk_fid_reg_0,
    s_axis_video_tdata,
    \aclk_tdata_reg[95] ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ,
    \aclk_tdata_reg[95]_0 ,
    \aclk_tdata_reg[8] ,
    \aclk_tdata_reg[9] ,
    \aclk_tdata_reg[10] ,
    \aclk_tdata_reg[11] ,
    \aclk_tdata_reg[12] ,
    \aclk_tdata_reg[13] ,
    \aclk_tdata_reg[14] ,
    \aclk_tdata_reg[15] ,
    \aclk_tdata_reg[32] ,
    \aclk_tdata_reg[33] ,
    \aclk_tdata_reg[34] ,
    \aclk_tdata_reg[35] ,
    \aclk_tdata_reg[36] ,
    \aclk_tdata_reg[37] ,
    \aclk_tdata_reg[38] ,
    \aclk_tdata_reg[39] ,
    \aclk_tdata_reg[95]_1 ,
    \aclk_tdata_reg[56] ,
    \aclk_tdata_reg[57] ,
    \aclk_tdata_reg[58] ,
    \aclk_tdata_reg[59] ,
    \aclk_tdata_reg[60] ,
    \aclk_tdata_reg[61] ,
    \aclk_tdata_reg[62] ,
    \aclk_tdata_reg[63] ,
    \aclk_tdata_reg[80] ,
    \aclk_tdata_reg[81] ,
    \aclk_tdata_reg[82] ,
    \aclk_tdata_reg[83] ,
    \aclk_tdata_reg[84] ,
    \aclk_tdata_reg[85] ,
    \aclk_tdata_reg[86] ,
    \aclk_tdata_reg[87] ,
    wr_rst_busy,
    full,
    aresetn,
    s_axis_video_tlast,
    aclk_tlast_dly,
    aclk_tuser_reg,
    aclk_fid_reg_1,
    aclk_tuser_reg_0,
    s_axis_video_tuser,
    s_axis_video_tvalid,
    aclk_fid_reg_2,
    aclk_fid_reg_3,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_12 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_13 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_14 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_15 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_2 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_3 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_4 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_5 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_6 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_7 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_8 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_9 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_10 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_11 );
  output dest_out;
  output [0:0]E;
  output wr_en;
  output [3:0]D;
  output \FSM_onehot_aclk_state_reg[0] ;
  output \syncstages_ff_reg[3] ;
  output aclken_0;
  output [95:0]\s_axis_video_tdata[95] ;
  output \FSM_onehot_aclk_state_reg[1] ;
  output s_axis_video_tlast_0;
  output aclk_tuser_dly_reg;
  output s_axis_video_tlast_1;
  output \syncstages_ff_reg[3]_0 ;
  output \FSM_onehot_aclk_state_reg[4] ;
  output \syncstages_ff_reg[3]_1 ;
  output \FSM_onehot_aclk_state_reg[0]_0 ;
  output [40:0]din;
  output \syncstages_ff_reg[3]_2 ;
  output \syncstages_ff_reg[3]_3 ;
  output \syncstages_ff_reg[3]_4 ;
  output \syncstages_ff_reg[3]_5 ;
  output \syncstages_ff_reg[3]_6 ;
  output \syncstages_ff_reg[3]_7 ;
  output \syncstages_ff_reg[3]_8 ;
  output \syncstages_ff_reg[3]_9 ;
  output \aclk_tdata_reg[24] ;
  output \aclk_tdata_reg[25] ;
  output \aclk_tdata_reg[26] ;
  output \aclk_tdata_reg[27] ;
  output \aclk_tdata_reg[28] ;
  output \aclk_tdata_reg[29] ;
  output \aclk_tdata_reg[30] ;
  output \aclk_tdata_reg[31] ;
  output \aclk_tdata_reg[16] ;
  output \aclk_tdata_reg[17] ;
  output \aclk_tdata_reg[18] ;
  output \aclk_tdata_reg[19] ;
  output \aclk_tdata_reg[20] ;
  output \aclk_tdata_reg[21] ;
  output \aclk_tdata_reg[22] ;
  output \aclk_tdata_reg[23] ;
  output s_axis_video_tlast_2;
  output \syncstages_ff_reg[3]_10 ;
  output \syncstages_ff_reg[3]_11 ;
  input repeat_en;
  input aclk;
  input \aclk_tdata_dly_reg[95] ;
  input \aclk_tdata_dly_reg[95]_0 ;
  input \aclk_tdata_dly_reg[95]_1 ;
  input \aclk_tdata_dly_reg[95]_2 ;
  input [0:0]SR;
  input \count_value_i_reg[9] ;
  input [4:0]Q;
  input aclk_fid_reg;
  input aclken;
  input \FSM_onehot_aclk_state_reg[2] ;
  input \FSM_onehot_aclk_state_reg[4]_0 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ;
  input aclk_fid_reg_0;
  input [63:0]s_axis_video_tdata;
  input \aclk_tdata_reg[95] ;
  input [31:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  input [95:0]\aclk_tdata_reg[95]_0 ;
  input \aclk_tdata_reg[8] ;
  input \aclk_tdata_reg[9] ;
  input \aclk_tdata_reg[10] ;
  input \aclk_tdata_reg[11] ;
  input \aclk_tdata_reg[12] ;
  input \aclk_tdata_reg[13] ;
  input \aclk_tdata_reg[14] ;
  input \aclk_tdata_reg[15] ;
  input \aclk_tdata_reg[32] ;
  input \aclk_tdata_reg[33] ;
  input \aclk_tdata_reg[34] ;
  input \aclk_tdata_reg[35] ;
  input \aclk_tdata_reg[36] ;
  input \aclk_tdata_reg[37] ;
  input \aclk_tdata_reg[38] ;
  input \aclk_tdata_reg[39] ;
  input [31:0]\aclk_tdata_reg[95]_1 ;
  input \aclk_tdata_reg[56] ;
  input \aclk_tdata_reg[57] ;
  input \aclk_tdata_reg[58] ;
  input \aclk_tdata_reg[59] ;
  input \aclk_tdata_reg[60] ;
  input \aclk_tdata_reg[61] ;
  input \aclk_tdata_reg[62] ;
  input \aclk_tdata_reg[63] ;
  input \aclk_tdata_reg[80] ;
  input \aclk_tdata_reg[81] ;
  input \aclk_tdata_reg[82] ;
  input \aclk_tdata_reg[83] ;
  input \aclk_tdata_reg[84] ;
  input \aclk_tdata_reg[85] ;
  input \aclk_tdata_reg[86] ;
  input \aclk_tdata_reg[87] ;
  input wr_rst_busy;
  input full;
  input aresetn;
  input s_axis_video_tlast;
  input aclk_tlast_dly;
  input aclk_tuser_reg;
  input aclk_fid_reg_1;
  input aclk_tuser_reg_0;
  input s_axis_video_tuser;
  input s_axis_video_tvalid;
  input aclk_fid_reg_2;
  input [0:0]aclk_fid_reg_3;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  input [71:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_12 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_13 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_14 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_15 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_2 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_3 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_4 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_5 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_6 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_7 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_8 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_9 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_10 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_11 ;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_onehot_aclk_state[2]_i_3_n_0 ;
  wire \FSM_onehot_aclk_state_reg[0] ;
  wire \FSM_onehot_aclk_state_reg[0]_0 ;
  wire \FSM_onehot_aclk_state_reg[1] ;
  wire \FSM_onehot_aclk_state_reg[2] ;
  wire \FSM_onehot_aclk_state_reg[4] ;
  wire \FSM_onehot_aclk_state_reg[4]_0 ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire XPM_FIFO_ASYNC_INST_i_170_n_0;
  wire XPM_FIFO_ASYNC_INST_i_171_n_0;
  wire XPM_FIFO_ASYNC_INST_i_172_n_0;
  wire XPM_FIFO_ASYNC_INST_i_173_n_0;
  wire XPM_FIFO_ASYNC_INST_i_174_n_0;
  wire XPM_FIFO_ASYNC_INST_i_175_n_0;
  wire XPM_FIFO_ASYNC_INST_i_176_n_0;
  wire XPM_FIFO_ASYNC_INST_i_177_n_0;
  wire XPM_FIFO_ASYNC_INST_i_178_n_0;
  wire XPM_FIFO_ASYNC_INST_i_179_n_0;
  wire XPM_FIFO_ASYNC_INST_i_180_n_0;
  wire XPM_FIFO_ASYNC_INST_i_181_n_0;
  wire XPM_FIFO_ASYNC_INST_i_182_n_0;
  wire XPM_FIFO_ASYNC_INST_i_183_n_0;
  wire XPM_FIFO_ASYNC_INST_i_184_n_0;
  wire XPM_FIFO_ASYNC_INST_i_185_n_0;
  wire XPM_FIFO_ASYNC_INST_i_211_n_0;
  wire XPM_FIFO_ASYNC_INST_i_212_n_0;
  wire XPM_FIFO_ASYNC_INST_i_213_n_0;
  wire XPM_FIFO_ASYNC_INST_i_214_n_0;
  wire XPM_FIFO_ASYNC_INST_i_215_n_0;
  wire XPM_FIFO_ASYNC_INST_i_216_n_0;
  wire XPM_FIFO_ASYNC_INST_i_217_n_0;
  wire XPM_FIFO_ASYNC_INST_i_218_n_0;
  wire XPM_FIFO_ASYNC_INST_i_219_n_0;
  wire aclk;
  wire aclk_fid_reg;
  wire aclk_fid_reg_0;
  wire aclk_fid_reg_1;
  wire aclk_fid_reg_2;
  wire [0:0]aclk_fid_reg_3;
  wire \aclk_tdata[95]_i_4_n_0 ;
  wire \aclk_tdata[95]_i_7_n_0 ;
  wire \aclk_tdata[95]_i_9_n_0 ;
  wire \aclk_tdata_dly_reg[95] ;
  wire \aclk_tdata_dly_reg[95]_0 ;
  wire \aclk_tdata_dly_reg[95]_1 ;
  wire \aclk_tdata_dly_reg[95]_2 ;
  wire \aclk_tdata_reg[10] ;
  wire \aclk_tdata_reg[11] ;
  wire \aclk_tdata_reg[12] ;
  wire \aclk_tdata_reg[13] ;
  wire \aclk_tdata_reg[14] ;
  wire \aclk_tdata_reg[15] ;
  wire \aclk_tdata_reg[16] ;
  wire \aclk_tdata_reg[17] ;
  wire \aclk_tdata_reg[18] ;
  wire \aclk_tdata_reg[19] ;
  wire \aclk_tdata_reg[20] ;
  wire \aclk_tdata_reg[21] ;
  wire \aclk_tdata_reg[22] ;
  wire \aclk_tdata_reg[23] ;
  wire \aclk_tdata_reg[24] ;
  wire \aclk_tdata_reg[25] ;
  wire \aclk_tdata_reg[26] ;
  wire \aclk_tdata_reg[27] ;
  wire \aclk_tdata_reg[28] ;
  wire \aclk_tdata_reg[29] ;
  wire \aclk_tdata_reg[30] ;
  wire \aclk_tdata_reg[31] ;
  wire \aclk_tdata_reg[32] ;
  wire \aclk_tdata_reg[33] ;
  wire \aclk_tdata_reg[34] ;
  wire \aclk_tdata_reg[35] ;
  wire \aclk_tdata_reg[36] ;
  wire \aclk_tdata_reg[37] ;
  wire \aclk_tdata_reg[38] ;
  wire \aclk_tdata_reg[39] ;
  wire \aclk_tdata_reg[56] ;
  wire \aclk_tdata_reg[57] ;
  wire \aclk_tdata_reg[58] ;
  wire \aclk_tdata_reg[59] ;
  wire \aclk_tdata_reg[60] ;
  wire \aclk_tdata_reg[61] ;
  wire \aclk_tdata_reg[62] ;
  wire \aclk_tdata_reg[63] ;
  wire \aclk_tdata_reg[80] ;
  wire \aclk_tdata_reg[81] ;
  wire \aclk_tdata_reg[82] ;
  wire \aclk_tdata_reg[83] ;
  wire \aclk_tdata_reg[84] ;
  wire \aclk_tdata_reg[85] ;
  wire \aclk_tdata_reg[86] ;
  wire \aclk_tdata_reg[87] ;
  wire \aclk_tdata_reg[8] ;
  wire \aclk_tdata_reg[95] ;
  wire [95:0]\aclk_tdata_reg[95]_0 ;
  wire [31:0]\aclk_tdata_reg[95]_1 ;
  wire \aclk_tdata_reg[9] ;
  wire aclk_tlast_dly;
  wire aclk_tuser_dly_i_7_n_0;
  wire aclk_tuser_dly_reg;
  wire aclk_tuser_reg;
  wire aclk_tuser_reg_0;
  wire aclken;
  wire aclken_0;
  wire aresetn;
  wire \count_value_i_reg[9] ;
  wire dest_out;
  wire [40:0]din;
  wire full;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  wire [31:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_12 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_13 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_14 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_15 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_10 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_11 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_9 ;
  wire repeat_en;
  wire [63:0]s_axis_video_tdata;
  wire [95:0]\s_axis_video_tdata[95] ;
  wire s_axis_video_tlast;
  wire s_axis_video_tlast_0;
  wire s_axis_video_tlast_1;
  wire s_axis_video_tlast_2;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire \syncstages_ff_reg[3] ;
  wire \syncstages_ff_reg[3]_0 ;
  wire \syncstages_ff_reg[3]_1 ;
  wire \syncstages_ff_reg[3]_10 ;
  wire \syncstages_ff_reg[3]_11 ;
  wire \syncstages_ff_reg[3]_2 ;
  wire \syncstages_ff_reg[3]_3 ;
  wire \syncstages_ff_reg[3]_4 ;
  wire \syncstages_ff_reg[3]_5 ;
  wire \syncstages_ff_reg[3]_6 ;
  wire \syncstages_ff_reg[3]_7 ;
  wire \syncstages_ff_reg[3]_8 ;
  wire \syncstages_ff_reg[3]_9 ;
  wire wr_en;
  wire wr_rst_busy;

  LUT5 #(
    .INIT(32'hEA02AA02)) 
    \FSM_onehot_aclk_state[1]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_aclk_state_reg[4]_0 ),
        .I2(dest_out),
        .I3(aclk_fid_reg),
        .I4(Q[3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0088008800880C88)) 
    \FSM_onehot_aclk_state[1]_i_2 
       (.I0(aclk_fid_reg),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I2(Q[4]),
        .I3(dest_out),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\syncstages_ff_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFABAAAA)) 
    \FSM_onehot_aclk_state[2]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[2] ),
        .I1(\FSM_onehot_aclk_state_reg[4]_0 ),
        .I2(dest_out),
        .I3(aclk_fid_reg),
        .I4(Q[2]),
        .I5(\FSM_onehot_aclk_state[2]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hC0C0FCF00000FCA0)) 
    \FSM_onehot_aclk_state[2]_i_3 
       (.I0(Q[3]),
        .I1(dest_out),
        .I2(\FSM_onehot_aclk_state_reg[4]_0 ),
        .I3(Q[1]),
        .I4(aclk_fid_reg),
        .I5(Q[4]),
        .O(\FSM_onehot_aclk_state[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_aclk_state[2]_i_4 
       (.I0(\syncstages_ff_reg[3]_0 ),
        .I1(s_axis_video_tlast),
        .O(s_axis_video_tlast_1));
  LUT5 #(
    .INIT(32'h3BBA088A)) 
    \FSM_onehot_aclk_state[3]_i_1 
       (.I0(Q[3]),
        .I1(aclk_fid_reg),
        .I2(dest_out),
        .I3(\FSM_onehot_aclk_state_reg[4]_0 ),
        .I4(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00AA03AA)) 
    \FSM_onehot_aclk_state[3]_i_6 
       (.I0(aclk_fid_reg),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(dest_out),
        .I4(Q[4]),
        .O(\FSM_onehot_aclk_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h2322A2A2)) 
    \FSM_onehot_aclk_state[4]_i_2 
       (.I0(Q[4]),
        .I1(\FSM_onehot_aclk_state_reg[4]_0 ),
        .I2(aclk_fid_reg),
        .I3(Q[3]),
        .I4(dest_out),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFFFAEFFFF00AE)) 
    \FSM_onehot_aclk_state[5]_i_2 
       (.I0(\FSM_onehot_aclk_state_reg[4] ),
        .I1(aclk_fid_reg),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(aclk_fid_reg_1),
        .I5(aclk_fid_reg_3),
        .O(\syncstages_ff_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_aclk_state[5]_i_4 
       (.I0(Q[4]),
        .I1(dest_out),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\FSM_onehot_aclk_state_reg[4] ));
  LUT6 #(
    .INIT(64'hFFAAAAAAEAEAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_100
       (.I0(XPM_FIFO_ASYNC_INST_i_217_n_0),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [33]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [1]),
        .I4(dest_out),
        .I5(Q[2]),
        .O(din[1]));
  LUT6 #(
    .INIT(64'hFFAAAAAAEAEAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_101
       (.I0(XPM_FIFO_ASYNC_INST_i_218_n_0),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [32]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [0]),
        .I4(dest_out),
        .I5(Q[2]),
        .O(din[0]));
  LUT6 #(
    .INIT(64'hFFF0000022222222)) 
    XPM_FIFO_ASYNC_INST_i_103
       (.I0(s_axis_video_tlast),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_9 ),
        .I5(dest_out),
        .O(s_axis_video_tlast_2));
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_130
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [31]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [63]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[31] ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_132
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [30]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [62]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[30] ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_134
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [29]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [61]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[29] ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_136
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [60]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[28] ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_138
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [27]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [59]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[27] ));
  LUT6 #(
    .INIT(64'hAAFAAAEAAABAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_14
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_8 ),
        .I1(Q[2]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [71]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [39]),
        .O(din[39]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_140
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [26]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [58]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[26] ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_142
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [25]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [57]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[25] ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_144
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [24]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [56]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_146
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [23]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [55]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[23] ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_147
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [22]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [54]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[22] ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_148
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [21]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [53]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[21] ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_149
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [20]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [52]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[20] ));
  LUT6 #(
    .INIT(64'hAAFAAAEAAABAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_15
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_7 ),
        .I1(Q[2]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [70]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [38]),
        .O(din[38]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_150
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [19]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [51]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_151
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [18]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [50]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_152
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [17]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [49]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    XPM_FIFO_ASYNC_INST_i_153
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [16]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [48]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(Q[2]),
        .O(\aclk_tdata_reg[16] ));
  LUT6 #(
    .INIT(64'hAAFAAAEAAABAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_16
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_6 ),
        .I1(Q[2]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [69]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [37]),
        .O(din[37]));
  LUT6 #(
    .INIT(64'hAAFAAAEAAABAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_17
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_5 ),
        .I1(Q[2]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [68]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [36]),
        .O(din[36]));
  LUT6 #(
    .INIT(64'hF000CC00AA000000)) 
    XPM_FIFO_ASYNC_INST_i_170
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [47]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [7]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [15]),
        .I3(dest_out),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I5(Q[2]),
        .O(XPM_FIFO_ASYNC_INST_i_170_n_0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    XPM_FIFO_ASYNC_INST_i_171
       (.I0(Q[2]),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [55]),
        .O(XPM_FIFO_ASYNC_INST_i_171_n_0));
  LUT6 #(
    .INIT(64'hF000CC00AA000000)) 
    XPM_FIFO_ASYNC_INST_i_172
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [46]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [6]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [14]),
        .I3(dest_out),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I5(Q[2]),
        .O(XPM_FIFO_ASYNC_INST_i_172_n_0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    XPM_FIFO_ASYNC_INST_i_173
       (.I0(Q[2]),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [54]),
        .O(XPM_FIFO_ASYNC_INST_i_173_n_0));
  LUT6 #(
    .INIT(64'hF000CC00AA000000)) 
    XPM_FIFO_ASYNC_INST_i_174
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [45]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [5]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [13]),
        .I3(dest_out),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I5(Q[2]),
        .O(XPM_FIFO_ASYNC_INST_i_174_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    XPM_FIFO_ASYNC_INST_i_175
       (.I0(Q[2]),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [53]),
        .O(XPM_FIFO_ASYNC_INST_i_175_n_0));
  LUT6 #(
    .INIT(64'hF000CC00AA000000)) 
    XPM_FIFO_ASYNC_INST_i_176
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [44]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [4]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [12]),
        .I3(dest_out),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I5(Q[2]),
        .O(XPM_FIFO_ASYNC_INST_i_176_n_0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    XPM_FIFO_ASYNC_INST_i_177
       (.I0(Q[2]),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [52]),
        .O(XPM_FIFO_ASYNC_INST_i_177_n_0));
  LUT6 #(
    .INIT(64'hF000CC00AA000000)) 
    XPM_FIFO_ASYNC_INST_i_178
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [43]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [3]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [11]),
        .I3(dest_out),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I5(Q[2]),
        .O(XPM_FIFO_ASYNC_INST_i_178_n_0));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    XPM_FIFO_ASYNC_INST_i_179
       (.I0(Q[2]),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [51]),
        .O(XPM_FIFO_ASYNC_INST_i_179_n_0));
  LUT6 #(
    .INIT(64'hAAFAAAEAAABAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_18
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_4 ),
        .I1(Q[2]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [67]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [35]),
        .O(din[35]));
  LUT6 #(
    .INIT(64'hF000CC00AA000000)) 
    XPM_FIFO_ASYNC_INST_i_180
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [42]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [2]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [10]),
        .I3(dest_out),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I5(Q[2]),
        .O(XPM_FIFO_ASYNC_INST_i_180_n_0));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    XPM_FIFO_ASYNC_INST_i_181
       (.I0(Q[2]),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [50]),
        .O(XPM_FIFO_ASYNC_INST_i_181_n_0));
  LUT6 #(
    .INIT(64'hF000CC00AA000000)) 
    XPM_FIFO_ASYNC_INST_i_182
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [41]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [1]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [9]),
        .I3(dest_out),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I5(Q[2]),
        .O(XPM_FIFO_ASYNC_INST_i_182_n_0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    XPM_FIFO_ASYNC_INST_i_183
       (.I0(Q[2]),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [49]),
        .O(XPM_FIFO_ASYNC_INST_i_183_n_0));
  LUT6 #(
    .INIT(64'hF000CC00AA000000)) 
    XPM_FIFO_ASYNC_INST_i_184
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [40]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [0]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [8]),
        .I3(dest_out),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I5(Q[2]),
        .O(XPM_FIFO_ASYNC_INST_i_184_n_0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    XPM_FIFO_ASYNC_INST_i_185
       (.I0(Q[2]),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [48]),
        .O(XPM_FIFO_ASYNC_INST_i_185_n_0));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_186
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[15]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [15]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [39]),
        .I5(XPM_FIFO_ASYNC_INST_i_219_n_0),
        .O(\syncstages_ff_reg[3]_9 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_187
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[14]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [14]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [38]),
        .I5(XPM_FIFO_ASYNC_INST_i_219_n_0),
        .O(\syncstages_ff_reg[3]_8 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_188
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[13]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [13]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [37]),
        .I5(XPM_FIFO_ASYNC_INST_i_219_n_0),
        .O(\syncstages_ff_reg[3]_7 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_189
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[12]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [12]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [36]),
        .I5(XPM_FIFO_ASYNC_INST_i_219_n_0),
        .O(\syncstages_ff_reg[3]_6 ));
  LUT6 #(
    .INIT(64'hAAFAAAEAAABAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_19
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_3 ),
        .I1(Q[2]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [66]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [34]),
        .O(din[34]));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_190
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[11]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [11]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [35]),
        .I5(XPM_FIFO_ASYNC_INST_i_219_n_0),
        .O(\syncstages_ff_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_191
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[10]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [10]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [34]),
        .I5(XPM_FIFO_ASYNC_INST_i_219_n_0),
        .O(\syncstages_ff_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_192
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[9]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [9]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [33]),
        .I5(XPM_FIFO_ASYNC_INST_i_219_n_0),
        .O(\syncstages_ff_reg[3]_3 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_193
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[8]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [8]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [32]),
        .I5(XPM_FIFO_ASYNC_INST_i_219_n_0),
        .O(\syncstages_ff_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    XPM_FIFO_ASYNC_INST_i_194
       (.I0(dest_out),
        .I1(Q[2]),
        .O(\syncstages_ff_reg[3]_10 ));
  LUT6 #(
    .INIT(64'h0F0E0A0A00000000)) 
    XPM_FIFO_ASYNC_INST_i_2
       (.I0(\count_value_i_reg[9] ),
        .I1(Q[3]),
        .I2(aclk_fid_reg),
        .I3(Q[1]),
        .I4(dest_out),
        .I5(aclken),
        .O(wr_en));
  LUT6 #(
    .INIT(64'hAAFAAAEAAABAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_20
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_2 ),
        .I1(Q[2]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [65]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [33]),
        .O(din[33]));
  LUT6 #(
    .INIT(64'hAAFAAAEAAABAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_21
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I1(Q[2]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [64]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [32]),
        .O(din[32]));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_211
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [7]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [55]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ),
        .O(XPM_FIFO_ASYNC_INST_i_211_n_0));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_212
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[6]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [6]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [54]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ),
        .O(XPM_FIFO_ASYNC_INST_i_212_n_0));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_213
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[5]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [5]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [53]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ),
        .O(XPM_FIFO_ASYNC_INST_i_213_n_0));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_214
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[4]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [4]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [52]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ),
        .O(XPM_FIFO_ASYNC_INST_i_214_n_0));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_215
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[3]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [3]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [51]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ),
        .O(XPM_FIFO_ASYNC_INST_i_215_n_0));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_216
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[2]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [2]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [50]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ),
        .O(XPM_FIFO_ASYNC_INST_i_216_n_0));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_217
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[1]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [1]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [49]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ),
        .O(XPM_FIFO_ASYNC_INST_i_217_n_0));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    XPM_FIFO_ASYNC_INST_i_218
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[0]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [0]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [48]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ),
        .O(XPM_FIFO_ASYNC_INST_i_218_n_0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h08)) 
    XPM_FIFO_ASYNC_INST_i_219
       (.I0(dest_out),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I2(Q[2]),
        .O(XPM_FIFO_ASYNC_INST_i_219_n_0));
  LUT6 #(
    .INIT(64'hFF00E4E40000E4E4)) 
    XPM_FIFO_ASYNC_INST_i_4
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(s_axis_video_tuser),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_10 ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_11 ),
        .I4(dest_out),
        .I5(Q[2]),
        .O(din[40]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_46
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[39]),
        .I3(\aclk_tdata_reg[95]_1 [7]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_15 ),
        .I5(\aclk_tdata_reg[23] ),
        .O(din[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_47
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[38]),
        .I3(\aclk_tdata_reg[95]_1 [6]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_14 ),
        .I5(\aclk_tdata_reg[22] ),
        .O(din[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_48
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[37]),
        .I3(\aclk_tdata_reg[95]_1 [5]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_13 ),
        .I5(\aclk_tdata_reg[21] ),
        .O(din[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_49
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[36]),
        .I3(\aclk_tdata_reg[95]_1 [4]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_12 ),
        .I5(\aclk_tdata_reg[20] ),
        .O(din[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_50
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[35]),
        .I3(\aclk_tdata_reg[95]_1 [3]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 ),
        .I5(\aclk_tdata_reg[19] ),
        .O(din[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_51
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[34]),
        .I3(\aclk_tdata_reg[95]_1 [2]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 ),
        .I5(\aclk_tdata_reg[18] ),
        .O(din[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_52
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[33]),
        .I3(\aclk_tdata_reg[95]_1 [1]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 ),
        .I5(\aclk_tdata_reg[17] ),
        .O(din[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_53
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[32]),
        .I3(\aclk_tdata_reg[95]_1 [0]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 ),
        .I5(\aclk_tdata_reg[16] ),
        .O(din[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_54
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[31]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [31]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 ),
        .I5(\aclk_tdata_reg[31] ),
        .O(din[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_55
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[30]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [30]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 ),
        .I5(\aclk_tdata_reg[30] ),
        .O(din[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_56
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[29]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [29]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 ),
        .I5(\aclk_tdata_reg[29] ),
        .O(din[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_57
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[28]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [28]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 ),
        .I5(\aclk_tdata_reg[28] ),
        .O(din[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_58
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[27]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [27]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 ),
        .I5(\aclk_tdata_reg[27] ),
        .O(din[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_59
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[26]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [26]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 ),
        .I5(\aclk_tdata_reg[26] ),
        .O(din[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_60
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[25]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [25]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 ),
        .I5(\aclk_tdata_reg[25] ),
        .O(din[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3210)) 
    XPM_FIFO_ASYNC_INST_i_61
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I1(dest_out),
        .I2(s_axis_video_tdata[24]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [24]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 ),
        .I5(\aclk_tdata_reg[24] ),
        .O(din[16]));
  LUT6 #(
    .INIT(64'hEEEEFEFEEEEEFFEE)) 
    XPM_FIFO_ASYNC_INST_i_70
       (.I0(XPM_FIFO_ASYNC_INST_i_170_n_0),
        .I1(XPM_FIFO_ASYNC_INST_i_171_n_0),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [23]),
        .I3(s_axis_video_tdata[23]),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[15]));
  LUT6 #(
    .INIT(64'hEEEEFEFEEEEEFFEE)) 
    XPM_FIFO_ASYNC_INST_i_71
       (.I0(XPM_FIFO_ASYNC_INST_i_172_n_0),
        .I1(XPM_FIFO_ASYNC_INST_i_173_n_0),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [22]),
        .I3(s_axis_video_tdata[22]),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[14]));
  LUT6 #(
    .INIT(64'hEEEEFEFEEEEEFFEE)) 
    XPM_FIFO_ASYNC_INST_i_72
       (.I0(XPM_FIFO_ASYNC_INST_i_174_n_0),
        .I1(XPM_FIFO_ASYNC_INST_i_175_n_0),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [21]),
        .I3(s_axis_video_tdata[21]),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[13]));
  LUT6 #(
    .INIT(64'hEEEEFEFEEEEEFFEE)) 
    XPM_FIFO_ASYNC_INST_i_73
       (.I0(XPM_FIFO_ASYNC_INST_i_176_n_0),
        .I1(XPM_FIFO_ASYNC_INST_i_177_n_0),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [20]),
        .I3(s_axis_video_tdata[20]),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[12]));
  LUT6 #(
    .INIT(64'hEEEEFEFEEEEEFFEE)) 
    XPM_FIFO_ASYNC_INST_i_74
       (.I0(XPM_FIFO_ASYNC_INST_i_178_n_0),
        .I1(XPM_FIFO_ASYNC_INST_i_179_n_0),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [19]),
        .I3(s_axis_video_tdata[19]),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[11]));
  LUT6 #(
    .INIT(64'hEEEEFEFEEEEEFFEE)) 
    XPM_FIFO_ASYNC_INST_i_75
       (.I0(XPM_FIFO_ASYNC_INST_i_180_n_0),
        .I1(XPM_FIFO_ASYNC_INST_i_181_n_0),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [18]),
        .I3(s_axis_video_tdata[18]),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[10]));
  LUT6 #(
    .INIT(64'hEEEEFEFEEEEEFFEE)) 
    XPM_FIFO_ASYNC_INST_i_76
       (.I0(XPM_FIFO_ASYNC_INST_i_182_n_0),
        .I1(XPM_FIFO_ASYNC_INST_i_183_n_0),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [17]),
        .I3(s_axis_video_tdata[17]),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[9]));
  LUT6 #(
    .INIT(64'hEEEEFEFEEEEEFFEE)) 
    XPM_FIFO_ASYNC_INST_i_77
       (.I0(XPM_FIFO_ASYNC_INST_i_184_n_0),
        .I1(XPM_FIFO_ASYNC_INST_i_185_n_0),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [16]),
        .I3(s_axis_video_tdata[16]),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[8]));
  LUT6 #(
    .INIT(64'hFFAAAAAAEAEAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_94
       (.I0(XPM_FIFO_ASYNC_INST_i_211_n_0),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [39]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [7]),
        .I4(dest_out),
        .I5(Q[2]),
        .O(din[7]));
  LUT6 #(
    .INIT(64'hFFAAAAAAEAEAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_95
       (.I0(XPM_FIFO_ASYNC_INST_i_212_n_0),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [38]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [6]),
        .I4(dest_out),
        .I5(Q[2]),
        .O(din[6]));
  LUT6 #(
    .INIT(64'hFFAAAAAAEAEAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_96
       (.I0(XPM_FIFO_ASYNC_INST_i_213_n_0),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [37]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [5]),
        .I4(dest_out),
        .I5(Q[2]),
        .O(din[5]));
  LUT6 #(
    .INIT(64'hFFAAAAAAEAEAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_97
       (.I0(XPM_FIFO_ASYNC_INST_i_214_n_0),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [36]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [4]),
        .I4(dest_out),
        .I5(Q[2]),
        .O(din[4]));
  LUT6 #(
    .INIT(64'hFFAAAAAAEAEAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_98
       (.I0(XPM_FIFO_ASYNC_INST_i_215_n_0),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [35]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [3]),
        .I4(dest_out),
        .I5(Q[2]),
        .O(din[3]));
  LUT6 #(
    .INIT(64'hFFAAAAAAEAEAAAAA)) 
    XPM_FIFO_ASYNC_INST_i_99
       (.I0(XPM_FIFO_ASYNC_INST_i_216_n_0),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [34]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [2]),
        .I4(dest_out),
        .I5(Q[2]),
        .O(din[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[0]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[0]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [0]),
        .I4(\aclk_tdata_reg[95]_0 [0]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [0]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[10]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [10]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[10] ),
        .O(\s_axis_video_tdata[95] [10]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[11]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [11]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[11] ),
        .O(\s_axis_video_tdata[95] [11]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[12]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [12]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[12] ),
        .O(\s_axis_video_tdata[95] [12]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[13]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [13]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[13] ),
        .O(\s_axis_video_tdata[95] [13]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[14]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [14]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[14] ),
        .O(\s_axis_video_tdata[95] [14]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[15]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [15]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[15] ),
        .O(\s_axis_video_tdata[95] [15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[16]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[8]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [8]),
        .I4(\aclk_tdata_reg[95]_0 [16]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[17]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[9]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [9]),
        .I4(\aclk_tdata_reg[95]_0 [17]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[18]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[10]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [10]),
        .I4(\aclk_tdata_reg[95]_0 [18]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[19]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[11]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [11]),
        .I4(\aclk_tdata_reg[95]_0 [19]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[1]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[1]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [1]),
        .I4(\aclk_tdata_reg[95]_0 [1]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[20]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[12]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [12]),
        .I4(\aclk_tdata_reg[95]_0 [20]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[21]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[13]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [13]),
        .I4(\aclk_tdata_reg[95]_0 [21]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[22]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[14]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [14]),
        .I4(\aclk_tdata_reg[95]_0 [22]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[23]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[15]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [15]),
        .I4(\aclk_tdata_reg[95]_0 [23]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[24]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[16]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [16]),
        .I4(\aclk_tdata_reg[95]_0 [24]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[25]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[17]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [17]),
        .I4(\aclk_tdata_reg[95]_0 [25]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[26]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[18]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [18]),
        .I4(\aclk_tdata_reg[95]_0 [26]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[27]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[19]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [19]),
        .I4(\aclk_tdata_reg[95]_0 [27]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[28]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[20]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [20]),
        .I4(\aclk_tdata_reg[95]_0 [28]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[29]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[21]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [21]),
        .I4(\aclk_tdata_reg[95]_0 [29]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[2]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[2]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [2]),
        .I4(\aclk_tdata_reg[95]_0 [2]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[30]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[22]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [22]),
        .I4(\aclk_tdata_reg[95]_0 [30]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[31]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[23]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [23]),
        .I4(\aclk_tdata_reg[95]_0 [31]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [31]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[32]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [32]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[32] ),
        .O(\s_axis_video_tdata[95] [32]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[33]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [33]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[33] ),
        .O(\s_axis_video_tdata[95] [33]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[34]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [34]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[34] ),
        .O(\s_axis_video_tdata[95] [34]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[35]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [35]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[35] ),
        .O(\s_axis_video_tdata[95] [35]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[36]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [36]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[36] ),
        .O(\s_axis_video_tdata[95] [36]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[37]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [37]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[37] ),
        .O(\s_axis_video_tdata[95] [37]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[38]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [38]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[38] ),
        .O(\s_axis_video_tdata[95] [38]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[39]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [39]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[39] ),
        .O(\s_axis_video_tdata[95] [39]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[3]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[3]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [3]),
        .I4(\aclk_tdata_reg[95]_0 [3]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[40]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[24]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [24]),
        .I4(\aclk_tdata_reg[95]_0 [40]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [40]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[41]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[25]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [25]),
        .I4(\aclk_tdata_reg[95]_0 [41]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [41]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[42]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[26]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [26]),
        .I4(\aclk_tdata_reg[95]_0 [42]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [42]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[43]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[27]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [27]),
        .I4(\aclk_tdata_reg[95]_0 [43]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [43]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[44]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[28]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [28]),
        .I4(\aclk_tdata_reg[95]_0 [44]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [44]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[45]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[29]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [29]),
        .I4(\aclk_tdata_reg[95]_0 [45]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [45]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[46]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[30]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [30]),
        .I4(\aclk_tdata_reg[95]_0 [46]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [46]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[47]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[31]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [31]),
        .I4(\aclk_tdata_reg[95]_0 [47]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [47]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[48]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[32]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [0]),
        .I4(\aclk_tdata_reg[95]_0 [48]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [48]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[49]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[33]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [1]),
        .I4(\aclk_tdata_reg[95]_0 [49]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [49]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[4]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[4]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [4]),
        .I4(\aclk_tdata_reg[95]_0 [4]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[50]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[34]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [2]),
        .I4(\aclk_tdata_reg[95]_0 [50]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [50]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[51]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[35]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [3]),
        .I4(\aclk_tdata_reg[95]_0 [51]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [51]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[52]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[36]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [4]),
        .I4(\aclk_tdata_reg[95]_0 [52]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [52]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[53]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[37]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [5]),
        .I4(\aclk_tdata_reg[95]_0 [53]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [53]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[54]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[38]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [6]),
        .I4(\aclk_tdata_reg[95]_0 [54]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [54]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[55]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[39]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [7]),
        .I4(\aclk_tdata_reg[95]_0 [55]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [55]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[56]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [56]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[56] ),
        .O(\s_axis_video_tdata[95] [56]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[57]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [57]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[57] ),
        .O(\s_axis_video_tdata[95] [57]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[58]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [58]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[58] ),
        .O(\s_axis_video_tdata[95] [58]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[59]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [59]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[59] ),
        .O(\s_axis_video_tdata[95] [59]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[5]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[5]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [5]),
        .I4(\aclk_tdata_reg[95]_0 [5]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [5]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[60]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [60]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[60] ),
        .O(\s_axis_video_tdata[95] [60]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[61]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [61]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[61] ),
        .O(\s_axis_video_tdata[95] [61]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[62]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [62]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[62] ),
        .O(\s_axis_video_tdata[95] [62]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[63]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [63]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[63] ),
        .O(\s_axis_video_tdata[95] [63]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[64]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[40]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [8]),
        .I4(\aclk_tdata_reg[95]_0 [64]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [64]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[65]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[41]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [9]),
        .I4(\aclk_tdata_reg[95]_0 [65]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [65]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[66]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[42]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [10]),
        .I4(\aclk_tdata_reg[95]_0 [66]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [66]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[67]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[43]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [11]),
        .I4(\aclk_tdata_reg[95]_0 [67]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [67]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[68]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[44]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [12]),
        .I4(\aclk_tdata_reg[95]_0 [68]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [68]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[69]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[45]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [13]),
        .I4(\aclk_tdata_reg[95]_0 [69]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [69]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[6]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[6]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [6]),
        .I4(\aclk_tdata_reg[95]_0 [6]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[70]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[46]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [14]),
        .I4(\aclk_tdata_reg[95]_0 [70]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [70]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[71]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[47]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [15]),
        .I4(\aclk_tdata_reg[95]_0 [71]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [71]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[72]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[48]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [16]),
        .I4(\aclk_tdata_reg[95]_0 [72]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [72]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[73]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[49]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [17]),
        .I4(\aclk_tdata_reg[95]_0 [73]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [73]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[74]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[50]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [18]),
        .I4(\aclk_tdata_reg[95]_0 [74]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [74]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[75]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[51]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [19]),
        .I4(\aclk_tdata_reg[95]_0 [75]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [75]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[76]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[52]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [20]),
        .I4(\aclk_tdata_reg[95]_0 [76]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [76]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[77]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[53]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [21]),
        .I4(\aclk_tdata_reg[95]_0 [77]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [77]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[78]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[54]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [22]),
        .I4(\aclk_tdata_reg[95]_0 [78]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [78]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[79]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[55]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [23]),
        .I4(\aclk_tdata_reg[95]_0 [79]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [79]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[7]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[7]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 [7]),
        .I4(\aclk_tdata_reg[95]_0 [7]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [7]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[80]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [80]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[80] ),
        .O(\s_axis_video_tdata[95] [80]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[81]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [81]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[81] ),
        .O(\s_axis_video_tdata[95] [81]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[82]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [82]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[82] ),
        .O(\s_axis_video_tdata[95] [82]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[83]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [83]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[83] ),
        .O(\s_axis_video_tdata[95] [83]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[84]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [84]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[84] ),
        .O(\s_axis_video_tdata[95] [84]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[85]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [85]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[85] ),
        .O(\s_axis_video_tdata[95] [85]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[86]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [86]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[86] ),
        .O(\s_axis_video_tdata[95] [86]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[87]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [87]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[87] ),
        .O(\s_axis_video_tdata[95] [87]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[88]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[56]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [24]),
        .I4(\aclk_tdata_reg[95]_0 [88]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [88]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[89]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[57]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [25]),
        .I4(\aclk_tdata_reg[95]_0 [89]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [89]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[8]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [8]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[8] ),
        .O(\s_axis_video_tdata[95] [8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[90]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[58]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [26]),
        .I4(\aclk_tdata_reg[95]_0 [90]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [90]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[91]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[59]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [27]),
        .I4(\aclk_tdata_reg[95]_0 [91]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [91]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[92]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[60]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [28]),
        .I4(\aclk_tdata_reg[95]_0 [92]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [92]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[93]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[61]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [29]),
        .I4(\aclk_tdata_reg[95]_0 [93]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [93]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[94]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[62]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [30]),
        .I4(\aclk_tdata_reg[95]_0 [94]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [94]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEAAA)) 
    \aclk_tdata[95]_i_1 
       (.I0(aclk_fid_reg_0),
        .I1(aclken),
        .I2(dest_out),
        .I3(Q[1]),
        .I4(aclk_fid_reg),
        .I5(\aclk_tdata[95]_i_4_n_0 ),
        .O(aclken_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aclk_tdata[95]_i_2 
       (.I0(\FSM_onehot_aclk_state_reg[1] ),
        .I1(s_axis_video_tdata[63]),
        .I2(\aclk_tdata_reg[95] ),
        .I3(\aclk_tdata_reg[95]_1 [31]),
        .I4(\aclk_tdata_reg[95]_0 [95]),
        .I5(\aclk_tdata[95]_i_7_n_0 ),
        .O(\s_axis_video_tdata[95] [95]));
  LUT6 #(
    .INIT(64'h88880000C8880000)) 
    \aclk_tdata[95]_i_4 
       (.I0(\aclk_tdata[95]_i_9_n_0 ),
        .I1(\FSM_onehot_aclk_state_reg[4]_0 ),
        .I2(dest_out),
        .I3(Q[0]),
        .I4(aclken),
        .I5(aclk_fid_reg_2),
        .O(\aclk_tdata[95]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000BBFB)) 
    \aclk_tdata[95]_i_5 
       (.I0(aclk_fid_reg),
        .I1(Q[1]),
        .I2(aclk_fid_reg_1),
        .I3(dest_out),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(\FSM_onehot_aclk_state_reg[1] ));
  LUT6 #(
    .INIT(64'h000000E000000000)) 
    \aclk_tdata[95]_i_7 
       (.I0(dest_out),
        .I1(\FSM_onehot_aclk_state_reg[4]_0 ),
        .I2(Q[1]),
        .I3(wr_rst_busy),
        .I4(full),
        .I5(aresetn),
        .O(\aclk_tdata[95]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \aclk_tdata[95]_i_8 
       (.I0(dest_out),
        .I1(aclken),
        .O(\syncstages_ff_reg[3]_11 ));
  LUT6 #(
    .INIT(64'hFFFF00FFC8EA00FF)) 
    \aclk_tdata[95]_i_9 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(aclk_fid_reg),
        .I4(dest_out),
        .I5(Q[4]),
        .O(\aclk_tdata[95]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \aclk_tdata[9]_i_1 
       (.I0(\aclk_tdata_reg[95]_0 [9]),
        .I1(\aclk_tdata[95]_i_7_n_0 ),
        .I2(\aclk_tdata_reg[9] ),
        .O(\s_axis_video_tdata[95] [9]));
  LUT6 #(
    .INIT(64'h88888888FFF88888)) 
    aclk_tlast_i_2
       (.I0(s_axis_video_tlast),
        .I1(\FSM_onehot_aclk_state_reg[1] ),
        .I2(\FSM_onehot_aclk_state_reg[4]_0 ),
        .I3(dest_out),
        .I4(aclk_tlast_dly),
        .I5(aclk_tuser_reg),
        .O(s_axis_video_tlast_0));
  LUT6 #(
    .INIT(64'h00000000FFF80000)) 
    aclk_tuser_dly_i_1
       (.I0(\aclk_tdata_dly_reg[95] ),
        .I1(\aclk_tdata_dly_reg[95]_0 ),
        .I2(\aclk_tdata_dly_reg[95]_1 ),
        .I3(\aclk_tdata_dly_reg[95]_2 ),
        .I4(aclk_tuser_dly_i_7_n_0),
        .I5(SR),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    aclk_tuser_dly_i_7
       (.I0(dest_out),
        .I1(Q[4]),
        .O(aclk_tuser_dly_i_7_n_0));
  LUT6 #(
    .INIT(64'h00EE000000EF0000)) 
    aclk_tuser_i_2
       (.I0(aclk_tuser_reg),
        .I1(aclk_tuser_reg_0),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(s_axis_video_tuser),
        .I5(s_axis_video_tvalid),
        .O(aclk_tuser_dly_reg));
  LUT6 #(
    .INIT(64'h0022002200220322)) 
    aclk_tuser_i_6
       (.I0(aclk_fid_reg),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I2(Q[4]),
        .I3(dest_out),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\syncstages_ff_reg[3]_1 ));
  LUT5 #(
    .INIT(32'hFF0FEE0F)) 
    s_axis_video_tready_INST_0_i_1
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(aclk_fid_reg),
        .I3(dest_out),
        .I4(Q[4]),
        .O(\FSM_onehot_aclk_state_reg[0]_0 ));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2 xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(repeat_en));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_20_cdc_single" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_cdc_single_2
   (dest_out,
    din,
    \syncstages_ff_reg[3] ,
    \aclk_tdata_reg[16] ,
    \aclk_tdata_reg[17] ,
    \aclk_tdata_reg[18] ,
    \aclk_tdata_reg[19] ,
    \aclk_tdata_reg[20] ,
    \aclk_tdata_reg[21] ,
    \aclk_tdata_reg[22] ,
    \aclk_tdata_reg[23] ,
    \aclk_tdata_reg[24] ,
    \aclk_tdata_reg[25] ,
    \aclk_tdata_reg[26] ,
    \aclk_tdata_reg[27] ,
    \aclk_tdata_reg[28] ,
    \aclk_tdata_reg[29] ,
    \aclk_tdata_reg[30] ,
    \aclk_tdata_reg[31] ,
    aclk,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ,
    Q,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ,
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
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_12 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_13 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_14 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_15 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_16 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_17 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_18 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_19 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_20 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_21 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_22 ,
    s_axis_video_tdata,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ,
    video_format);
  output dest_out;
  output [55:0]din;
  output \syncstages_ff_reg[3] ;
  output \aclk_tdata_reg[16] ;
  output \aclk_tdata_reg[17] ;
  output \aclk_tdata_reg[18] ;
  output \aclk_tdata_reg[19] ;
  output \aclk_tdata_reg[20] ;
  output \aclk_tdata_reg[21] ;
  output \aclk_tdata_reg[22] ;
  output \aclk_tdata_reg[23] ;
  output \aclk_tdata_reg[24] ;
  output \aclk_tdata_reg[25] ;
  output \aclk_tdata_reg[26] ;
  output \aclk_tdata_reg[27] ;
  output \aclk_tdata_reg[28] ;
  output \aclk_tdata_reg[29] ;
  output \aclk_tdata_reg[30] ;
  output \aclk_tdata_reg[31] ;
  input aclk;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  input [87:0]Q;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ;
  input [0:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_12 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_13 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_14 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_15 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_16 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_17 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_18 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_19 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_20 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_21 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_22 ;
  input [23:0]s_axis_video_tdata;
  input [23:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ;
  input [1:0]video_format;

  wire [87:0]Q;
  wire XPM_FIFO_ASYNC_INST_i_104_n_0;
  wire XPM_FIFO_ASYNC_INST_i_105_n_0;
  wire XPM_FIFO_ASYNC_INST_i_106_n_0;
  wire XPM_FIFO_ASYNC_INST_i_107_n_0;
  wire XPM_FIFO_ASYNC_INST_i_108_n_0;
  wire XPM_FIFO_ASYNC_INST_i_109_n_0;
  wire XPM_FIFO_ASYNC_INST_i_110_n_0;
  wire XPM_FIFO_ASYNC_INST_i_111_n_0;
  wire XPM_FIFO_ASYNC_INST_i_128_n_0;
  wire XPM_FIFO_ASYNC_INST_i_195_n_0;
  wire XPM_FIFO_ASYNC_INST_i_197_n_0;
  wire XPM_FIFO_ASYNC_INST_i_199_n_0;
  wire XPM_FIFO_ASYNC_INST_i_201_n_0;
  wire XPM_FIFO_ASYNC_INST_i_203_n_0;
  wire XPM_FIFO_ASYNC_INST_i_205_n_0;
  wire XPM_FIFO_ASYNC_INST_i_207_n_0;
  wire XPM_FIFO_ASYNC_INST_i_209_n_0;
  wire aclk;
  wire \aclk_tdata_reg[16] ;
  wire \aclk_tdata_reg[17] ;
  wire \aclk_tdata_reg[18] ;
  wire \aclk_tdata_reg[19] ;
  wire \aclk_tdata_reg[20] ;
  wire \aclk_tdata_reg[21] ;
  wire \aclk_tdata_reg[22] ;
  wire \aclk_tdata_reg[23] ;
  wire \aclk_tdata_reg[24] ;
  wire \aclk_tdata_reg[25] ;
  wire \aclk_tdata_reg[26] ;
  wire \aclk_tdata_reg[27] ;
  wire \aclk_tdata_reg[28] ;
  wire \aclk_tdata_reg[29] ;
  wire \aclk_tdata_reg[30] ;
  wire \aclk_tdata_reg[31] ;
  wire dest_out;
  wire [55:0]din;
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
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ;
  wire [0:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_12 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_13 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_14 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_15 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_16 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_17 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_18 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_19 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_20 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_21 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_22 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ;
  wire [23:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ;
  wire [23:0]s_axis_video_tdata;
  wire \syncstages_ff_reg[3] ;
  wire [1:0]video_format;
  wire xpm_cdc_single_inst_i_1_n_0;

  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_10
       (.I0(XPM_FIFO_ASYNC_INST_i_108_n_0),
        .I1(s_axis_video_tdata[19]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [19]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[51]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_104
       (.I0(Q[47]),
        .I1(Q[87]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(XPM_FIFO_ASYNC_INST_i_104_n_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_105
       (.I0(Q[46]),
        .I1(Q[86]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(XPM_FIFO_ASYNC_INST_i_105_n_0));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_106
       (.I0(Q[45]),
        .I1(Q[85]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(XPM_FIFO_ASYNC_INST_i_106_n_0));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_107
       (.I0(Q[44]),
        .I1(Q[84]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(XPM_FIFO_ASYNC_INST_i_107_n_0));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_108
       (.I0(Q[43]),
        .I1(Q[83]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(XPM_FIFO_ASYNC_INST_i_108_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_109
       (.I0(Q[42]),
        .I1(Q[82]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(XPM_FIFO_ASYNC_INST_i_109_n_0));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_11
       (.I0(XPM_FIFO_ASYNC_INST_i_109_n_0),
        .I1(s_axis_video_tdata[18]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [18]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[50]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_110
       (.I0(Q[41]),
        .I1(Q[81]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(XPM_FIFO_ASYNC_INST_i_110_n_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_111
       (.I0(Q[40]),
        .I1(Q[80]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(XPM_FIFO_ASYNC_INST_i_111_n_0));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_12
       (.I0(XPM_FIFO_ASYNC_INST_i_110_n_0),
        .I1(s_axis_video_tdata[17]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [17]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[49]));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_120
       (.I0(Q[31]),
        .I1(Q[71]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[31] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_121
       (.I0(Q[30]),
        .I1(Q[70]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[30] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_122
       (.I0(Q[29]),
        .I1(Q[69]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[29] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_123
       (.I0(Q[28]),
        .I1(Q[68]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[28] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_124
       (.I0(Q[27]),
        .I1(Q[67]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[27] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_125
       (.I0(Q[26]),
        .I1(Q[66]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[26] ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_126
       (.I0(Q[25]),
        .I1(Q[65]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[25] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_127
       (.I0(Q[24]),
        .I1(Q[64]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h40)) 
    XPM_FIFO_ASYNC_INST_i_128
       (.I0(dest_out),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(XPM_FIFO_ASYNC_INST_i_128_n_0));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'h04)) 
    XPM_FIFO_ASYNC_INST_i_129
       (.I0(dest_out),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\syncstages_ff_reg[3] ));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_13
       (.I0(XPM_FIFO_ASYNC_INST_i_111_n_0),
        .I1(s_axis_video_tdata[16]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [16]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[48]));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_154
       (.I0(Q[23]),
        .I1(Q[63]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[23] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_155
       (.I0(Q[22]),
        .I1(Q[62]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[22] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_156
       (.I0(Q[21]),
        .I1(Q[61]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[21] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_157
       (.I0(Q[20]),
        .I1(Q[60]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[20] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_158
       (.I0(Q[19]),
        .I1(Q[59]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[19] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_159
       (.I0(Q[18]),
        .I1(Q[58]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_160
       (.I0(Q[17]),
        .I1(Q[57]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[17] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    XPM_FIFO_ASYNC_INST_i_161
       (.I0(Q[16]),
        .I1(Q[56]),
        .I2(dest_out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(\aclk_tdata_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XPM_FIFO_ASYNC_INST_i_195
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I3(Q[47]),
        .O(XPM_FIFO_ASYNC_INST_i_195_n_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XPM_FIFO_ASYNC_INST_i_197
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I3(Q[46]),
        .O(XPM_FIFO_ASYNC_INST_i_197_n_0));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XPM_FIFO_ASYNC_INST_i_199
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I3(Q[45]),
        .O(XPM_FIFO_ASYNC_INST_i_199_n_0));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XPM_FIFO_ASYNC_INST_i_201
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I3(Q[44]),
        .O(XPM_FIFO_ASYNC_INST_i_201_n_0));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XPM_FIFO_ASYNC_INST_i_203
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I3(Q[43]),
        .O(XPM_FIFO_ASYNC_INST_i_203_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XPM_FIFO_ASYNC_INST_i_205
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I3(Q[42]),
        .O(XPM_FIFO_ASYNC_INST_i_205_n_0));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XPM_FIFO_ASYNC_INST_i_207
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I3(Q[41]),
        .O(XPM_FIFO_ASYNC_INST_i_207_n_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XPM_FIFO_ASYNC_INST_i_209
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .I1(dest_out),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I3(Q[40]),
        .O(XPM_FIFO_ASYNC_INST_i_209_n_0));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_22
       (.I0(\aclk_tdata_reg[31] ),
        .I1(s_axis_video_tdata[15]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [15]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[47]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_23
       (.I0(\aclk_tdata_reg[30] ),
        .I1(s_axis_video_tdata[14]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [14]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[46]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_24
       (.I0(\aclk_tdata_reg[29] ),
        .I1(s_axis_video_tdata[13]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [13]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[45]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_25
       (.I0(\aclk_tdata_reg[28] ),
        .I1(s_axis_video_tdata[12]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [12]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[44]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_26
       (.I0(\aclk_tdata_reg[27] ),
        .I1(s_axis_video_tdata[11]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [11]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[43]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_27
       (.I0(\aclk_tdata_reg[26] ),
        .I1(s_axis_video_tdata[10]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [10]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[42]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_28
       (.I0(\aclk_tdata_reg[25] ),
        .I1(s_axis_video_tdata[9]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [9]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[41]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_29
       (.I0(\aclk_tdata_reg[24] ),
        .I1(s_axis_video_tdata[8]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [8]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[40]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_30
       (.I0(XPM_FIFO_ASYNC_INST_i_104_n_0),
        .I1(s_axis_video_tdata[7]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[39]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_31
       (.I0(XPM_FIFO_ASYNC_INST_i_105_n_0),
        .I1(s_axis_video_tdata[6]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [6]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[38]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_32
       (.I0(XPM_FIFO_ASYNC_INST_i_106_n_0),
        .I1(s_axis_video_tdata[5]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [5]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[37]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_33
       (.I0(XPM_FIFO_ASYNC_INST_i_107_n_0),
        .I1(s_axis_video_tdata[4]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [4]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[36]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_34
       (.I0(XPM_FIFO_ASYNC_INST_i_108_n_0),
        .I1(s_axis_video_tdata[3]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [3]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[35]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_35
       (.I0(XPM_FIFO_ASYNC_INST_i_109_n_0),
        .I1(s_axis_video_tdata[2]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [2]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[34]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_36
       (.I0(XPM_FIFO_ASYNC_INST_i_110_n_0),
        .I1(s_axis_video_tdata[1]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [1]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[33]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_37
       (.I0(XPM_FIFO_ASYNC_INST_i_111_n_0),
        .I1(s_axis_video_tdata[0]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [0]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[32]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    XPM_FIFO_ASYNC_INST_i_38
       (.I0(Q[39]),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[79]),
        .I3(\syncstages_ff_reg[3] ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_21 ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_22 ),
        .O(din[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    XPM_FIFO_ASYNC_INST_i_39
       (.I0(Q[38]),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[78]),
        .I3(\syncstages_ff_reg[3] ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_19 ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_20 ),
        .O(din[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    XPM_FIFO_ASYNC_INST_i_40
       (.I0(Q[37]),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[77]),
        .I3(\syncstages_ff_reg[3] ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_17 ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_18 ),
        .O(din[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    XPM_FIFO_ASYNC_INST_i_41
       (.I0(Q[36]),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[76]),
        .I3(\syncstages_ff_reg[3] ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_15 ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_16 ),
        .O(din[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    XPM_FIFO_ASYNC_INST_i_42
       (.I0(Q[35]),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[75]),
        .I3(\syncstages_ff_reg[3] ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_13 ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_14 ),
        .O(din[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    XPM_FIFO_ASYNC_INST_i_43
       (.I0(Q[34]),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[74]),
        .I3(\syncstages_ff_reg[3] ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_12 ),
        .O(din[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    XPM_FIFO_ASYNC_INST_i_44
       (.I0(Q[33]),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[73]),
        .I3(\syncstages_ff_reg[3] ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 ),
        .O(din[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    XPM_FIFO_ASYNC_INST_i_45
       (.I0(Q[32]),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[72]),
        .I3(\syncstages_ff_reg[3] ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 ),
        .O(din[24]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_6
       (.I0(XPM_FIFO_ASYNC_INST_i_104_n_0),
        .I1(s_axis_video_tdata[23]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [23]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[55]));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    XPM_FIFO_ASYNC_INST_i_62
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 ),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[15]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 ),
        .I4(\syncstages_ff_reg[3] ),
        .I5(Q[55]),
        .O(din[23]));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    XPM_FIFO_ASYNC_INST_i_63
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 ),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[14]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 ),
        .I4(\syncstages_ff_reg[3] ),
        .I5(Q[54]),
        .O(din[22]));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    XPM_FIFO_ASYNC_INST_i_64
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 ),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[13]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 ),
        .I4(\syncstages_ff_reg[3] ),
        .I5(Q[53]),
        .O(din[21]));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    XPM_FIFO_ASYNC_INST_i_65
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[12]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 ),
        .I4(\syncstages_ff_reg[3] ),
        .I5(Q[52]),
        .O(din[20]));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    XPM_FIFO_ASYNC_INST_i_66
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 ),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[11]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 ),
        .I4(\syncstages_ff_reg[3] ),
        .I5(Q[51]),
        .O(din[19]));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    XPM_FIFO_ASYNC_INST_i_67
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 ),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[10]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 ),
        .I4(\syncstages_ff_reg[3] ),
        .I5(Q[50]),
        .O(din[18]));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    XPM_FIFO_ASYNC_INST_i_68
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 ),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[9]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 ),
        .I4(\syncstages_ff_reg[3] ),
        .I5(Q[49]),
        .O(din[17]));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    XPM_FIFO_ASYNC_INST_i_69
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 ),
        .I1(XPM_FIFO_ASYNC_INST_i_128_n_0),
        .I2(Q[8]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 ),
        .I4(\syncstages_ff_reg[3] ),
        .I5(Q[48]),
        .O(din[16]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_7
       (.I0(XPM_FIFO_ASYNC_INST_i_105_n_0),
        .I1(s_axis_video_tdata[22]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [22]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[54]));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    XPM_FIFO_ASYNC_INST_i_78
       (.I0(\aclk_tdata_reg[23] ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 ),
        .I2(Q[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(din[15]));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    XPM_FIFO_ASYNC_INST_i_79
       (.I0(\aclk_tdata_reg[22] ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 ),
        .I2(Q[6]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(din[14]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_8
       (.I0(XPM_FIFO_ASYNC_INST_i_106_n_0),
        .I1(s_axis_video_tdata[21]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [21]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[53]));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    XPM_FIFO_ASYNC_INST_i_80
       (.I0(\aclk_tdata_reg[21] ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 ),
        .I2(Q[5]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(din[13]));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    XPM_FIFO_ASYNC_INST_i_81
       (.I0(\aclk_tdata_reg[20] ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 ),
        .I2(Q[4]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(din[12]));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    XPM_FIFO_ASYNC_INST_i_82
       (.I0(\aclk_tdata_reg[19] ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 ),
        .I2(Q[3]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(din[11]));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    XPM_FIFO_ASYNC_INST_i_83
       (.I0(\aclk_tdata_reg[18] ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 ),
        .I2(Q[2]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(din[10]));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    XPM_FIFO_ASYNC_INST_i_84
       (.I0(\aclk_tdata_reg[17] ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ),
        .I2(Q[1]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(din[9]));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    XPM_FIFO_ASYNC_INST_i_85
       (.I0(\aclk_tdata_reg[16] ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ),
        .I2(Q[0]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .O(din[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    XPM_FIFO_ASYNC_INST_i_86
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I1(Q[15]),
        .I2(XPM_FIFO_ASYNC_INST_i_195_n_0),
        .I3(Q[55]),
        .I4(\syncstages_ff_reg[3] ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ),
        .O(din[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    XPM_FIFO_ASYNC_INST_i_87
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I1(Q[14]),
        .I2(XPM_FIFO_ASYNC_INST_i_197_n_0),
        .I3(Q[54]),
        .I4(\syncstages_ff_reg[3] ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ),
        .O(din[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    XPM_FIFO_ASYNC_INST_i_88
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I1(Q[13]),
        .I2(XPM_FIFO_ASYNC_INST_i_199_n_0),
        .I3(Q[53]),
        .I4(\syncstages_ff_reg[3] ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ),
        .O(din[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    XPM_FIFO_ASYNC_INST_i_89
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I1(Q[12]),
        .I2(XPM_FIFO_ASYNC_INST_i_201_n_0),
        .I3(Q[52]),
        .I4(\syncstages_ff_reg[3] ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ),
        .O(din[4]));
  LUT5 #(
    .INIT(32'hAAAAFAEE)) 
    XPM_FIFO_ASYNC_INST_i_9
       (.I0(XPM_FIFO_ASYNC_INST_i_107_n_0),
        .I1(s_axis_video_tdata[20]),
        .I2(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [20]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(din[52]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    XPM_FIFO_ASYNC_INST_i_90
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I1(Q[11]),
        .I2(XPM_FIFO_ASYNC_INST_i_203_n_0),
        .I3(Q[51]),
        .I4(\syncstages_ff_reg[3] ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ),
        .O(din[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    XPM_FIFO_ASYNC_INST_i_91
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I1(Q[10]),
        .I2(XPM_FIFO_ASYNC_INST_i_205_n_0),
        .I3(Q[50]),
        .I4(\syncstages_ff_reg[3] ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ),
        .O(din[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    XPM_FIFO_ASYNC_INST_i_92
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I1(Q[9]),
        .I2(XPM_FIFO_ASYNC_INST_i_207_n_0),
        .I3(Q[49]),
        .I4(\syncstages_ff_reg[3] ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ),
        .O(din[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    XPM_FIFO_ASYNC_INST_i_93
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .I1(Q[8]),
        .I2(XPM_FIFO_ASYNC_INST_i_209_n_0),
        .I3(Q[48]),
        .I4(\syncstages_ff_reg[3] ),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ),
        .O(din[0]));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__3 xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(xpm_cdc_single_inst_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    xpm_cdc_single_inst_i_1
       (.I0(video_format[1]),
        .I1(video_format[0]),
        .O(xpm_cdc_single_inst_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_20_cdc_single" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_cdc_single_3
   (dest_out,
    D,
    \FSM_onehot_aclk_state_reg[1] ,
    aclk_fid_reg,
    \FSM_onehot_aclk_state_reg[1]_0 ,
    aclk_tuser_dly_reg,
    \aclk_tdata_even_dly_reg[63] ,
    aclk_fid_dly_reg,
    aclk_tuser_dly_reg_0,
    rd_en,
    \FSM_onehot_aclk_state_reg[0] ,
    E,
    aclken_0,
    aclk_wr_en0,
    aresetn_0,
    sof_state_out_reg,
    \FSM_onehot_aclk_state_reg[1]_1 ,
    \FSM_onehot_aclk_state_reg[1]_2 ,
    \syncstages_ff_reg[3] ,
    \syncstages_ff_reg[3]_0 ,
    \FSM_onehot_aclk_state_reg[3] ,
    \syncstages_ff_reg[3]_1 ,
    \syncstages_ff_reg[3]_2 ,
    din,
    tuser_from_remap,
    fid_from_remap,
    tlast_from_remap,
    overflow,
    \aclk_tdata_odd_reg[55] ,
    \syncstages_ff_reg[3]_3 ,
    remap_420_en,
    aclk,
    \FSM_onehot_aclk_state_reg[1]_3 ,
    \FSM_onehot_aclk_state_reg[1]_4 ,
    \FSM_onehot_aclk_state_reg[3]_0 ,
    aclk_tlast_reg,
    \FSM_onehot_aclk_state_reg[1]_5 ,
    \FSM_onehot_aclk_state_reg[3]_1 ,
    \FSM_onehot_aclk_state_reg[3]_2 ,
    \FSM_onehot_aclk_state_reg[3]_3 ,
    aclk_fid_reg_0,
    aclk_fid_reg_1,
    aclk_fid_reg_2,
    fid,
    aclk_tuser_reg,
    aclk_tuser_reg_0,
    aclk_tuser_reg_1,
    aclk_tuser_dly_reg_1,
    \FSM_onehot_aclk_state_reg[3]_4 ,
    \aclk_tdata_dly_reg[95] ,
    Q,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ,
    \aclk_tdata_even_reg[63] ,
    aclk_fid_reg_3,
    s_axis_video_tdata,
    \FSM_onehot_aclk_state_reg[2] ,
    \FSM_onehot_aclk_state_reg[2]_0 ,
    s_axis_video_tready,
    aclk_fid_dly,
    \FSM_onehot_aclk_state_reg[3]_5 ,
    aclk_tuser_reg_2,
    aclk_tuser_reg_3,
    aclk_tuser_reg_4,
    aclk_tuser_dly,
    aclk_wr_en_reg,
    \guf.underflow_i_reg ,
    \FSM_onehot_aclk_state_reg[2]_1 ,
    s_axis_video_tlast,
    aclk_line_phase_reg,
    aclken,
    aclk_line_phase_reg_0,
    aclk_reset,
    aclk_fid_reg_4,
    \FSM_onehot_aclk_state_reg[4] ,
    \FSM_onehot_aclk_state_reg[4]_0 ,
    s_axis_video_tuser,
    first_sof,
    s_axis_video_tvalid,
    aresetn,
    locked_from_sync_dly,
    first_sof_reg,
    sof_state_out,
    \FSM_onehot_aclk_state_reg[0]_0 ,
    \aclk_tdata_dly_reg[95]_0 ,
    aclk_fid_reg_5,
    aclk_fid_reg_6,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ,
    aclk_wr_data,
    dout,
    overflow_0,
    overflow_1,
    \aclk_tdata_dly_reg[47] ,
    \aclk_tdata_dly_reg[95]_1 ,
    aclk_line_phase_reg_1,
    underflow);
  output dest_out;
  output [5:0]D;
  output \FSM_onehot_aclk_state_reg[1] ;
  output aclk_fid_reg;
  output \FSM_onehot_aclk_state_reg[1]_0 ;
  output aclk_tuser_dly_reg;
  output [63:0]\aclk_tdata_even_dly_reg[63] ;
  output aclk_fid_dly_reg;
  output aclk_tuser_dly_reg_0;
  output rd_en;
  output \FSM_onehot_aclk_state_reg[0] ;
  output [0:0]E;
  output [0:0]aclken_0;
  output aclk_wr_en0;
  output aresetn_0;
  output sof_state_out_reg;
  output \FSM_onehot_aclk_state_reg[1]_1 ;
  output \FSM_onehot_aclk_state_reg[1]_2 ;
  output \syncstages_ff_reg[3] ;
  output [0:0]\syncstages_ff_reg[3]_0 ;
  output \FSM_onehot_aclk_state_reg[3] ;
  output \syncstages_ff_reg[3]_1 ;
  output \syncstages_ff_reg[3]_2 ;
  output [0:0]din;
  output tuser_from_remap;
  output fid_from_remap;
  output tlast_from_remap;
  output overflow;
  output [63:0]\aclk_tdata_odd_reg[55] ;
  output \syncstages_ff_reg[3]_3 ;
  input remap_420_en;
  input aclk;
  input \FSM_onehot_aclk_state_reg[1]_3 ;
  input \FSM_onehot_aclk_state_reg[1]_4 ;
  input \FSM_onehot_aclk_state_reg[3]_0 ;
  input aclk_tlast_reg;
  input \FSM_onehot_aclk_state_reg[1]_5 ;
  input \FSM_onehot_aclk_state_reg[3]_1 ;
  input \FSM_onehot_aclk_state_reg[3]_2 ;
  input \FSM_onehot_aclk_state_reg[3]_3 ;
  input aclk_fid_reg_0;
  input aclk_fid_reg_1;
  input aclk_fid_reg_2;
  input fid;
  input aclk_tuser_reg;
  input aclk_tuser_reg_0;
  input aclk_tuser_reg_1;
  input aclk_tuser_dly_reg_1;
  input \FSM_onehot_aclk_state_reg[3]_4 ;
  input [2:0]\aclk_tdata_dly_reg[95] ;
  input [5:0]Q;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ;
  input [63:0]\aclk_tdata_even_reg[63] ;
  input aclk_fid_reg_3;
  input [87:0]s_axis_video_tdata;
  input \FSM_onehot_aclk_state_reg[2] ;
  input \FSM_onehot_aclk_state_reg[2]_0 ;
  input s_axis_video_tready;
  input aclk_fid_dly;
  input \FSM_onehot_aclk_state_reg[3]_5 ;
  input aclk_tuser_reg_2;
  input aclk_tuser_reg_3;
  input aclk_tuser_reg_4;
  input aclk_tuser_dly;
  input aclk_wr_en_reg;
  input \guf.underflow_i_reg ;
  input \FSM_onehot_aclk_state_reg[2]_1 ;
  input s_axis_video_tlast;
  input aclk_line_phase_reg;
  input aclken;
  input [0:0]aclk_line_phase_reg_0;
  input aclk_reset;
  input aclk_fid_reg_4;
  input \FSM_onehot_aclk_state_reg[4] ;
  input \FSM_onehot_aclk_state_reg[4]_0 ;
  input s_axis_video_tuser;
  input first_sof;
  input s_axis_video_tvalid;
  input aresetn;
  input locked_from_sync_dly;
  input first_sof_reg;
  input sof_state_out;
  input \FSM_onehot_aclk_state_reg[0]_0 ;
  input \aclk_tdata_dly_reg[95]_0 ;
  input aclk_fid_reg_5;
  input aclk_fid_reg_6;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ;
  input [0:0]aclk_wr_data;
  input [0:0]dout;
  input overflow_0;
  input overflow_1;
  input [31:0]\aclk_tdata_dly_reg[47] ;
  input [31:0]\aclk_tdata_dly_reg[95]_1 ;
  input aclk_line_phase_reg_1;
  input underflow;

  wire [5:0]D;
  wire [0:0]E;
  wire \FSM_onehot_aclk_state[2]_i_2_n_0 ;
  wire \FSM_onehot_aclk_state[2]_i_3__0_n_0 ;
  wire \FSM_onehot_aclk_state[2]_i_5_n_0 ;
  wire \FSM_onehot_aclk_state[2]_i_7_n_0 ;
  wire \FSM_onehot_aclk_state[2]_i_8_n_0 ;
  wire \FSM_onehot_aclk_state[3]_i_2_n_0 ;
  wire \FSM_onehot_aclk_state[4]_i_3__0_n_0 ;
  wire \FSM_onehot_aclk_state[5]_i_3_n_0 ;
  wire \FSM_onehot_aclk_state_reg[0] ;
  wire \FSM_onehot_aclk_state_reg[0]_0 ;
  wire \FSM_onehot_aclk_state_reg[1] ;
  wire \FSM_onehot_aclk_state_reg[1]_0 ;
  wire \FSM_onehot_aclk_state_reg[1]_1 ;
  wire \FSM_onehot_aclk_state_reg[1]_2 ;
  wire \FSM_onehot_aclk_state_reg[1]_3 ;
  wire \FSM_onehot_aclk_state_reg[1]_4 ;
  wire \FSM_onehot_aclk_state_reg[1]_5 ;
  wire \FSM_onehot_aclk_state_reg[2] ;
  wire \FSM_onehot_aclk_state_reg[2]_0 ;
  wire \FSM_onehot_aclk_state_reg[2]_1 ;
  wire \FSM_onehot_aclk_state_reg[3] ;
  wire \FSM_onehot_aclk_state_reg[3]_0 ;
  wire \FSM_onehot_aclk_state_reg[3]_1 ;
  wire \FSM_onehot_aclk_state_reg[3]_2 ;
  wire \FSM_onehot_aclk_state_reg[3]_3 ;
  wire \FSM_onehot_aclk_state_reg[3]_4 ;
  wire \FSM_onehot_aclk_state_reg[3]_5 ;
  wire \FSM_onehot_aclk_state_reg[4] ;
  wire \FSM_onehot_aclk_state_reg[4]_0 ;
  wire [5:0]Q;
  wire XPM_FIFO_SYNC_INST_i_4_n_0;
  wire aclk;
  wire aclk_fid_dly;
  wire aclk_fid_dly_reg;
  wire aclk_fid_i_3_n_0;
  wire aclk_fid_reg;
  wire aclk_fid_reg_0;
  wire aclk_fid_reg_1;
  wire aclk_fid_reg_2;
  wire aclk_fid_reg_3;
  wire aclk_fid_reg_4;
  wire aclk_fid_reg_5;
  wire aclk_fid_reg_6;
  wire aclk_line_phase_i_3_n_0;
  wire aclk_line_phase_i_4_n_0;
  wire aclk_line_phase_reg;
  wire [0:0]aclk_line_phase_reg_0;
  wire aclk_line_phase_reg_1;
  wire aclk_reset;
  wire [31:0]\aclk_tdata_dly_reg[47] ;
  wire [2:0]\aclk_tdata_dly_reg[95] ;
  wire \aclk_tdata_dly_reg[95]_0 ;
  wire [31:0]\aclk_tdata_dly_reg[95]_1 ;
  wire [63:0]\aclk_tdata_even_dly_reg[63] ;
  wire [63:0]\aclk_tdata_even_reg[63] ;
  wire [63:0]\aclk_tdata_odd_reg[55] ;
  wire aclk_tlast_reg;
  wire aclk_tuser_dly;
  wire aclk_tuser_dly_reg;
  wire aclk_tuser_dly_reg_0;
  wire aclk_tuser_dly_reg_1;
  wire aclk_tuser_i_3__0_n_0;
  wire aclk_tuser_i_4_n_0;
  wire aclk_tuser_i_7_n_0;
  wire aclk_tuser_reg;
  wire aclk_tuser_reg_0;
  wire aclk_tuser_reg_1;
  wire aclk_tuser_reg_2;
  wire aclk_tuser_reg_3;
  wire aclk_tuser_reg_4;
  wire [0:0]aclk_wr_data;
  wire aclk_wr_en0;
  wire aclk_wr_en_reg;
  wire aclken;
  wire [0:0]aclken_0;
  wire aresetn;
  wire aresetn_0;
  wire dest_out;
  wire [0:0]din;
  wire [0:0]dout;
  wire fid;
  wire fid_from_remap;
  wire first_sof;
  wire first_sof_reg;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ;
  wire \guf.underflow_i_reg ;
  wire locked_from_sync_dly;
  wire overflow;
  wire overflow_0;
  wire overflow_1;
  wire rd_en;
  wire remap_420_en;
  wire [87:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire sof_state_out;
  wire sof_state_out_reg;
  wire \syncstages_ff_reg[3] ;
  wire [0:0]\syncstages_ff_reg[3]_0 ;
  wire \syncstages_ff_reg[3]_1 ;
  wire \syncstages_ff_reg[3]_2 ;
  wire \syncstages_ff_reg[3]_3 ;
  wire tlast_from_remap;
  wire tuser_from_remap;
  wire underflow;

  LUT6 #(
    .INIT(64'hAAAA0000AAAA0003)) 
    \FSM_onehot_aclk_state[0]_i_1 
       (.I0(\FSM_onehot_aclk_state[4]_i_3__0_n_0 ),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFB00FF00FB00F300)) 
    \FSM_onehot_aclk_state[0]_i_1__0 
       (.I0(\FSM_onehot_aclk_state_reg[0]_0 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I2(\FSM_onehot_aclk_state_reg[3] ),
        .I3(\aclk_tdata_dly_reg[95] [0]),
        .I4(dest_out),
        .I5(fid),
        .O(\syncstages_ff_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h101F1F1F)) 
    \FSM_onehot_aclk_state[0]_i_3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(dest_out),
        .I3(s_axis_video_tvalid),
        .I4(s_axis_video_tuser),
        .O(\FSM_onehot_aclk_state_reg[3] ));
  LUT6 #(
    .INIT(64'hF8F8FFF888888888)) 
    \FSM_onehot_aclk_state[1]_i_1__0 
       (.I0(\FSM_onehot_aclk_state_reg[1]_3 ),
        .I1(\FSM_onehot_aclk_state_reg[1]_4 ),
        .I2(\FSM_onehot_aclk_state_reg[3]_0 ),
        .I3(aclk_tlast_reg),
        .I4(dest_out),
        .I5(\FSM_onehot_aclk_state_reg[1]_5 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hEEEEEEFEEEEEEEEE)) 
    \FSM_onehot_aclk_state[2]_i_1__0 
       (.I0(\FSM_onehot_aclk_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_aclk_state[2]_i_3__0_n_0 ),
        .I2(\FSM_onehot_aclk_state_reg[2] ),
        .I3(Q[0]),
        .I4(\FSM_onehot_aclk_state[2]_i_5_n_0 ),
        .I5(\FSM_onehot_aclk_state_reg[2]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h004400F400440044)) 
    \FSM_onehot_aclk_state[2]_i_2 
       (.I0(\FSM_onehot_aclk_state[4]_i_3__0_n_0 ),
        .I1(Q[0]),
        .I2(s_axis_video_tready),
        .I3(s_axis_video_tlast),
        .I4(\FSM_onehot_aclk_state_reg[3]_2 ),
        .I5(\FSM_onehot_aclk_state_reg[3]_3 ),
        .O(\FSM_onehot_aclk_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10001000D0001000)) 
    \FSM_onehot_aclk_state[2]_i_2__0 
       (.I0(aclk_fid_reg_5),
        .I1(dest_out),
        .I2(\aclk_tdata_dly_reg[95] [0]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\guf.underflow_i_reg ),
        .I5(\FSM_onehot_aclk_state_reg[0]_0 ),
        .O(\syncstages_ff_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hFF00200000000000)) 
    \FSM_onehot_aclk_state[2]_i_3__0 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\FSM_onehot_aclk_state[2]_i_7_n_0 ),
        .I3(s_axis_video_tready),
        .I4(\FSM_onehot_aclk_state[2]_i_8_n_0 ),
        .I5(\FSM_onehot_aclk_state_reg[2]_1 ),
        .O(\FSM_onehot_aclk_state[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hEAEF1510)) 
    \FSM_onehot_aclk_state[2]_i_5 
       (.I0(aclk_tlast_reg),
        .I1(Q[1]),
        .I2(dest_out),
        .I3(s_axis_video_tready),
        .I4(Q[5]),
        .O(\FSM_onehot_aclk_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hEEEA)) 
    \FSM_onehot_aclk_state[2]_i_7 
       (.I0(dest_out),
        .I1(s_axis_video_tvalid),
        .I2(first_sof),
        .I3(s_axis_video_tuser),
        .O(\FSM_onehot_aclk_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0400040004000000)) 
    \FSM_onehot_aclk_state[2]_i_8 
       (.I0(s_axis_video_tlast),
        .I1(Q[1]),
        .I2(dest_out),
        .I3(s_axis_video_tvalid),
        .I4(first_sof),
        .I5(s_axis_video_tuser),
        .O(\FSM_onehot_aclk_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \FSM_onehot_aclk_state[3]_i_1__0 
       (.I0(\FSM_onehot_aclk_state[3]_i_2_n_0 ),
        .I1(\FSM_onehot_aclk_state_reg[3]_1 ),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(\FSM_onehot_aclk_state_reg[3]_2 ),
        .I4(\FSM_onehot_aclk_state_reg[3]_3 ),
        .I5(\FSM_onehot_aclk_state_reg[3]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000CCCC000088C8)) 
    \FSM_onehot_aclk_state[3]_i_2 
       (.I0(aclk_tlast_reg),
        .I1(\FSM_onehot_aclk_state_reg[3]_3 ),
        .I2(\FSM_onehot_aclk_state_reg[3]_4 ),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(\FSM_onehot_aclk_state_reg[3]_5 ),
        .O(\FSM_onehot_aclk_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBFAAAAA33000000)) 
    \FSM_onehot_aclk_state[4]_i_1 
       (.I0(\FSM_onehot_aclk_state_reg[4] ),
        .I1(\FSM_onehot_aclk_state[4]_i_3__0_n_0 ),
        .I2(\FSM_onehot_aclk_state_reg[4]_0 ),
        .I3(Q[0]),
        .I4(s_axis_video_tlast),
        .I5(\FSM_onehot_aclk_state_reg[1] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hEFE0EFE0EFE0E0E0)) 
    \FSM_onehot_aclk_state[4]_i_3 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(dest_out),
        .I3(s_axis_video_tvalid),
        .I4(first_sof),
        .I5(s_axis_video_tuser),
        .O(\FSM_onehot_aclk_state_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \FSM_onehot_aclk_state[4]_i_3__0 
       (.I0(dest_out),
        .I1(Q[1]),
        .I2(fid),
        .I3(s_axis_video_tvalid),
        .I4(s_axis_video_tuser),
        .O(\FSM_onehot_aclk_state[4]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \FSM_onehot_aclk_state[5]_i_1 
       (.I0(aclk_fid_reg_3),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(s_axis_video_tready),
        .I4(\FSM_onehot_aclk_state[5]_i_3_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0020002000200000)) 
    \FSM_onehot_aclk_state[5]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(dest_out),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(aclk_tlast_reg),
        .O(\FSM_onehot_aclk_state[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000E0EFE0EF)) 
    XPM_FIFO_ASYNC_INST_i_102
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(dest_out),
        .I3(aclk_tlast_reg),
        .I4(\aclk_tdata_dly_reg[95] [2]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(\FSM_onehot_aclk_state_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    XPM_FIFO_ASYNC_INST_i_3
       (.I0(dest_out),
        .I1(fid),
        .I2(aclk_fid_reg_0),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ),
        .O(din));
  LUT6 #(
    .INIT(64'hF040000040400000)) 
    XPM_FIFO_SYNC_INST_i_2
       (.I0(aclk_tlast_reg),
        .I1(XPM_FIFO_SYNC_INST_i_4_n_0),
        .I2(s_axis_video_tready),
        .I3(dest_out),
        .I4(aclk_wr_en_reg),
        .I5(\guf.underflow_i_reg ),
        .O(rd_en));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5554)) 
    XPM_FIFO_SYNC_INST_i_4
       (.I0(dest_out),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(XPM_FIFO_SYNC_INST_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aclk_fid_dly_i_1
       (.I0(aclk_fid_reg_0),
        .I1(dest_out),
        .I2(fid),
        .O(fid_from_remap));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    aclk_fid_i_1
       (.I0(aclk_fid_reg_0),
        .I1(\FSM_onehot_aclk_state_reg[1]_0 ),
        .I2(aclk_fid_reg_1),
        .I3(aclk_fid_i_3_n_0),
        .I4(aclk_fid_reg_2),
        .I5(fid),
        .O(aclk_fid_reg));
  LUT5 #(
    .INIT(32'h8888F888)) 
    aclk_fid_i_1__0
       (.I0(aclk_fid_dly),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(fid),
        .I4(aclk_tlast_reg),
        .O(aclk_fid_dly_reg));
  LUT5 #(
    .INIT(32'hFFFFDDD1)) 
    aclk_fid_i_3
       (.I0(aclk_tlast_reg),
        .I1(dest_out),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(aclk_fid_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000002A0000)) 
    aclk_line_phase_i_1
       (.I0(aclk_line_phase_reg),
        .I1(Q[0]),
        .I2(aclken),
        .I3(aclk_line_phase_reg_0),
        .I4(aclk_line_phase_i_3_n_0),
        .I5(aclk_reset),
        .O(\FSM_onehot_aclk_state_reg[0] ));
  LUT6 #(
    .INIT(64'h37777777C8888888)) 
    aclk_line_phase_i_3
       (.I0(aclk_line_phase_i_4_n_0),
        .I1(s_axis_video_tready),
        .I2(aclk_line_phase_reg_1),
        .I3(\guf.underflow_i_reg ),
        .I4(aclken),
        .I5(aclk_wr_en_reg),
        .O(aclk_line_phase_i_3_n_0));
  LUT6 #(
    .INIT(64'h0800080008000000)) 
    aclk_line_phase_i_4
       (.I0(s_axis_video_tlast),
        .I1(aclken),
        .I2(dest_out),
        .I3(s_axis_video_tvalid),
        .I4(first_sof),
        .I5(s_axis_video_tuser),
        .O(aclk_line_phase_i_4_n_0));
  LUT6 #(
    .INIT(64'h10100000D0100000)) 
    \aclk_tdata[95]_i_3 
       (.I0(aclk_fid_reg_5),
        .I1(dest_out),
        .I2(\aclk_tdata_dly_reg[95] [0]),
        .I3(\guf.underflow_i_reg ),
        .I4(aclk_fid_reg_6),
        .I5(\FSM_onehot_aclk_state_reg[0]_0 ),
        .O(\syncstages_ff_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hBBBBBBBF00000000)) 
    \aclk_tdata[95]_i_6 
       (.I0(\FSM_onehot_aclk_state_reg[3]_4 ),
        .I1(\aclk_tdata_dly_reg[95] [1]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I5(dest_out),
        .O(\FSM_onehot_aclk_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[0]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [0]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[0]),
        .O(\aclk_tdata_odd_reg[55] [0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[16]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [8]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[16]),
        .O(\aclk_tdata_odd_reg[55] [8]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[17]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [9]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[17]),
        .O(\aclk_tdata_odd_reg[55] [9]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[18]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [10]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[18]),
        .O(\aclk_tdata_odd_reg[55] [10]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[19]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [11]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[19]),
        .O(\aclk_tdata_odd_reg[55] [11]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[1]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [1]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[1]),
        .O(\aclk_tdata_odd_reg[55] [1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[20]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [12]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[20]),
        .O(\aclk_tdata_odd_reg[55] [12]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[21]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [13]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[21]),
        .O(\aclk_tdata_odd_reg[55] [13]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[22]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [14]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[22]),
        .O(\aclk_tdata_odd_reg[55] [14]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[23]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [15]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[23]),
        .O(\aclk_tdata_odd_reg[55] [15]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[24]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [16]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[24]),
        .O(\aclk_tdata_odd_reg[55] [16]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[25]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [17]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[25]),
        .O(\aclk_tdata_odd_reg[55] [17]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[26]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [18]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[26]),
        .O(\aclk_tdata_odd_reg[55] [18]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[27]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [19]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[27]),
        .O(\aclk_tdata_odd_reg[55] [19]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[28]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [20]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[28]),
        .O(\aclk_tdata_odd_reg[55] [20]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[29]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [21]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[29]),
        .O(\aclk_tdata_odd_reg[55] [21]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[2]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [2]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[2]),
        .O(\aclk_tdata_odd_reg[55] [2]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[30]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [22]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[30]),
        .O(\aclk_tdata_odd_reg[55] [22]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[31]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [23]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[31]),
        .O(\aclk_tdata_odd_reg[55] [23]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[3]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [3]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[3]),
        .O(\aclk_tdata_odd_reg[55] [3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[40]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [24]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[40]),
        .O(\aclk_tdata_odd_reg[55] [24]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[41]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [25]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[41]),
        .O(\aclk_tdata_odd_reg[55] [25]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[42]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [26]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[42]),
        .O(\aclk_tdata_odd_reg[55] [26]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[43]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [27]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[43]),
        .O(\aclk_tdata_odd_reg[55] [27]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[44]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [28]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[44]),
        .O(\aclk_tdata_odd_reg[55] [28]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[45]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [29]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[45]),
        .O(\aclk_tdata_odd_reg[55] [29]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[46]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [30]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[46]),
        .O(\aclk_tdata_odd_reg[55] [30]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[47]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [31]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[47]),
        .O(\aclk_tdata_odd_reg[55] [31]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[48]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [0]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[48]),
        .O(\aclk_tdata_odd_reg[55] [32]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[49]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [1]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[49]),
        .O(\aclk_tdata_odd_reg[55] [33]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[4]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [4]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[4]),
        .O(\aclk_tdata_odd_reg[55] [4]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[50]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [2]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[50]),
        .O(\aclk_tdata_odd_reg[55] [34]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[51]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [3]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[51]),
        .O(\aclk_tdata_odd_reg[55] [35]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[52]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [4]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[52]),
        .O(\aclk_tdata_odd_reg[55] [36]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[53]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [5]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[53]),
        .O(\aclk_tdata_odd_reg[55] [37]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[54]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [6]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[54]),
        .O(\aclk_tdata_odd_reg[55] [38]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[55]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [7]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[55]),
        .O(\aclk_tdata_odd_reg[55] [39]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[5]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [5]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[5]),
        .O(\aclk_tdata_odd_reg[55] [5]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[64]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [8]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[64]),
        .O(\aclk_tdata_odd_reg[55] [40]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[65]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [9]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[65]),
        .O(\aclk_tdata_odd_reg[55] [41]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[66]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [10]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[66]),
        .O(\aclk_tdata_odd_reg[55] [42]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[67]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [11]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[67]),
        .O(\aclk_tdata_odd_reg[55] [43]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[68]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [12]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[68]),
        .O(\aclk_tdata_odd_reg[55] [44]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[69]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [13]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[69]),
        .O(\aclk_tdata_odd_reg[55] [45]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[6]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [6]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[6]),
        .O(\aclk_tdata_odd_reg[55] [6]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[70]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [14]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[70]),
        .O(\aclk_tdata_odd_reg[55] [46]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[71]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [15]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[71]),
        .O(\aclk_tdata_odd_reg[55] [47]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[72]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [16]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[72]),
        .O(\aclk_tdata_odd_reg[55] [48]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[73]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [17]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[73]),
        .O(\aclk_tdata_odd_reg[55] [49]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[74]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [18]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[74]),
        .O(\aclk_tdata_odd_reg[55] [50]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[75]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [19]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[75]),
        .O(\aclk_tdata_odd_reg[55] [51]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[76]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [20]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[76]),
        .O(\aclk_tdata_odd_reg[55] [52]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[77]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [21]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[77]),
        .O(\aclk_tdata_odd_reg[55] [53]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[78]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [22]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[78]),
        .O(\aclk_tdata_odd_reg[55] [54]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[79]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [23]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[79]),
        .O(\aclk_tdata_odd_reg[55] [55]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[7]_i_1 
       (.I0(\aclk_tdata_dly_reg[47] [7]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[7]),
        .O(\aclk_tdata_odd_reg[55] [7]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[88]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [24]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[80]),
        .O(\aclk_tdata_odd_reg[55] [56]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[89]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [25]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[81]),
        .O(\aclk_tdata_odd_reg[55] [57]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[90]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [26]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[82]),
        .O(\aclk_tdata_odd_reg[55] [58]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[91]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [27]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[83]),
        .O(\aclk_tdata_odd_reg[55] [59]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[92]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [28]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[84]),
        .O(\aclk_tdata_odd_reg[55] [60]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[93]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [29]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[85]),
        .O(\aclk_tdata_odd_reg[55] [61]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[94]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [30]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[86]),
        .O(\aclk_tdata_odd_reg[55] [62]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aclk_tdata_dly[95]_i_1 
       (.I0(\aclk_tdata_dly_reg[95]_1 [31]),
        .I1(dest_out),
        .I2(s_axis_video_tdata[87]),
        .O(\aclk_tdata_odd_reg[55] [63]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[0]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [0]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[0]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [0]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[10]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [10]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[10]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [10]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[11]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [11]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[11]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [11]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[12]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [12]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[12]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [12]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[13]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [13]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[13]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [13]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[14]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [14]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[14]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [14]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[15]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [15]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[15]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [15]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[16]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [16]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[16]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [16]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[17]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [17]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[17]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [17]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[18]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [18]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[18]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [18]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[19]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [19]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[19]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [19]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[1]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [1]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[1]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [1]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[20]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [20]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[20]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [20]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[21]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [21]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[21]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [21]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[22]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [22]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[22]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [22]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[23]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [23]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[23]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [23]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[24]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [24]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[24]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [24]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[25]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [25]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[25]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [25]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[26]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [26]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[26]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [26]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[27]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [27]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[27]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [27]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[28]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [28]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[28]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [28]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[29]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [29]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[29]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [29]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[2]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [2]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[2]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [2]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[30]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [30]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[30]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [30]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[31]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [31]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[31]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [31]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[32]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [32]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[32]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [32]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[33]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [33]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[33]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [33]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[34]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [34]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[34]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [34]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[35]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [35]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[35]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [35]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[36]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [36]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[36]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [36]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[37]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [37]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[37]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [37]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[38]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [38]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[38]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [38]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[39]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [39]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[39]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [39]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[3]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [3]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[3]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [3]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[40]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [40]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[40]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [40]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[41]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [41]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[41]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [41]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[42]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [42]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[42]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [42]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[43]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [43]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[43]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [43]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[44]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [44]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[44]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [44]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[45]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [45]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[45]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [45]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[46]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [46]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[46]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [46]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[47]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [47]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[47]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [47]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[48]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [48]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[48]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [48]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[49]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [49]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[49]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [49]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[4]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [4]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[4]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [4]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[50]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [50]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[50]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [50]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[51]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [51]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[51]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [51]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[52]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [52]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[52]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [52]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[53]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [53]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[53]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [53]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[54]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [54]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[54]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [54]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[55]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [55]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[55]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [55]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[56]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [56]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[56]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [56]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[57]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [57]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[57]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [57]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[58]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [58]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[58]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [58]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[59]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [59]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[59]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [59]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[5]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [5]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[5]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [5]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[60]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [60]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[60]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [60]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[61]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [61]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[61]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [61]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[62]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [62]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[62]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [62]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[63]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [63]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[63]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [63]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[6]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [6]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[6]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [6]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[7]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [7]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[7]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [7]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[8]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [8]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[8]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [8]));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \aclk_tdata_even[9]_i_1 
       (.I0(\aclk_tdata_even_reg[63] [9]),
        .I1(aclk_fid_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(s_axis_video_tdata[9]),
        .I4(aclk_tlast_reg),
        .O(\aclk_tdata_even_dly_reg[63] [9]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \aclk_tdata_odd[63]_i_1 
       (.I0(aclken),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(aclk_tlast_reg),
        .I5(\FSM_onehot_aclk_state_reg[1] ),
        .O(aclken_0));
  LUT5 #(
    .INIT(32'hFACA3A0A)) 
    aclk_tlast_dly_i_1
       (.I0(s_axis_video_tlast),
        .I1(aclk_wr_en_reg),
        .I2(dest_out),
        .I3(aclk_wr_data),
        .I4(dout),
        .O(tlast_from_remap));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    aclk_tuser_dly_i_2__0
       (.I0(aclk_tuser_dly_reg_1),
        .I1(dest_out),
        .I2(s_axis_video_tuser),
        .O(tuser_from_remap));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    aclk_tuser_dly_i_4
       (.I0(dest_out),
        .I1(aclken),
        .I2(\aclk_tdata_dly_reg[95] [2]),
        .I3(\FSM_onehot_aclk_state_reg[0]_0 ),
        .I4(\guf.underflow_i_reg ),
        .I5(\aclk_tdata_dly_reg[95]_0 ),
        .O(\syncstages_ff_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFBAAABAAABAAA)) 
    aclk_tuser_i_1
       (.I0(aclk_tuser_reg),
        .I1(aclk_tuser_reg_0),
        .I2(aclk_tuser_reg_1),
        .I3(aclk_tuser_i_4_n_0),
        .I4(aclk_tuser_dly_reg_1),
        .I5(\FSM_onehot_aclk_state_reg[1]_0 ),
        .O(aclk_tuser_dly_reg));
  LUT6 #(
    .INIT(64'h8F88000088880000)) 
    aclk_tuser_i_1__0
       (.I0(aclk_tuser_i_3__0_n_0),
        .I1(s_axis_video_tready),
        .I2(\FSM_onehot_aclk_state_reg[3]_2 ),
        .I3(dest_out),
        .I4(aclken),
        .I5(aclk_fid_reg_4),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFF0C0CFFAE0C0C)) 
    aclk_tuser_i_2__0
       (.I0(aclk_tuser_reg_2),
        .I1(\FSM_onehot_aclk_state_reg[1] ),
        .I2(aclk_tuser_reg_3),
        .I3(aclk_tuser_reg_4),
        .I4(aclk_tuser_dly),
        .I5(aclk_tuser_i_7_n_0),
        .O(aclk_tuser_dly_reg_0));
  LUT6 #(
    .INIT(64'hFFFF555455545554)) 
    aclk_tuser_i_3__0
       (.I0(aclk_tlast_reg),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(dest_out),
        .O(aclk_tuser_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F8F808)) 
    aclk_tuser_i_4
       (.I0(first_sof),
        .I1(s_axis_video_tvalid),
        .I2(dest_out),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .O(aclk_tuser_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    aclk_tuser_i_7
       (.I0(dest_out),
        .I1(Q[1]),
        .O(aclk_tuser_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000E00000000000)) 
    aclk_wr_en_i_1
       (.I0(s_axis_video_tuser),
        .I1(first_sof),
        .I2(s_axis_video_tvalid),
        .I3(Q[2]),
        .I4(aclk_wr_en_reg),
        .I5(\FSM_onehot_aclk_state_reg[1] ),
        .O(aclk_wr_en0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h08)) 
    fifo_underflow_from_remap_reg_i_1
       (.I0(dest_out),
        .I1(underflow),
        .I2(aclk_reset),
        .O(\syncstages_ff_reg[3]_3 ));
  LUT6 #(
    .INIT(64'hAA20AA200000AA20)) 
    first_sof_i_1
       (.I0(aresetn),
        .I1(aclk_tuser_reg_3),
        .I2(\FSM_onehot_aclk_state_reg[1] ),
        .I3(first_sof),
        .I4(locked_from_sync_dly),
        .I5(first_sof_reg),
        .O(aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    overflow_INST_0
       (.I0(dest_out),
        .I1(overflow_0),
        .I2(overflow_1),
        .O(overflow));
  LUT3 #(
    .INIT(8'h74)) 
    s_axis_video_tready_INST_0
       (.I0(Q[1]),
        .I1(dest_out),
        .I2(s_axis_video_tready),
        .O(\FSM_onehot_aclk_state_reg[1] ));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    sof_state_out_i_1
       (.I0(sof_state_out),
        .I1(\FSM_onehot_aclk_state_reg[1] ),
        .I2(s_axis_video_tuser),
        .I3(s_axis_video_tvalid),
        .I4(aresetn),
        .O(sof_state_out_reg));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__1 xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(remap_420_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_coupler
   (full,
    overflow,
    wr_rst_busy,
    dout,
    empty,
    fifo_read_level,
    \FSM_onehot_aclk_state_reg[2] ,
    aresetn_0,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    D,
    \FSM_onehot_state_reg[8] ,
    fifo_eol_re,
    underflow,
    vid_io_out_ce_0,
    aclk,
    wr_en,
    din,
    vid_io_out_clk,
    E,
    Q,
    aclken,
    dest_out,
    aresetn,
    \FSM_onehot_state_reg[4] ,
    fifo_eol_dly,
    underflow_0,
    vid_io_out_ce,
    fifo_sof_dly);
  output full;
  output overflow;
  output wr_rst_busy;
  output [98:0]dout;
  output empty;
  output [10:0]fifo_read_level;
  output \FSM_onehot_aclk_state_reg[2] ;
  output aresetn_0;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  output [0:0]D;
  output \FSM_onehot_state_reg[8] ;
  output fifo_eol_re;
  output underflow;
  output [0:0]vid_io_out_ce_0;
  input aclk;
  input wr_en;
  input [98:0]din;
  input vid_io_out_clk;
  input [0:0]E;
  input [1:0]Q;
  input aclken;
  input dest_out;
  input aresetn;
  input [2:0]\FSM_onehot_state_reg[4] ;
  input fifo_eol_dly;
  input underflow_0;
  input vid_io_out_ce;
  input fifo_sof_dly;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_aclk_state_reg[2] ;
  wire [2:0]\FSM_onehot_state_reg[4] ;
  wire \FSM_onehot_state_reg[8] ;
  wire [1:0]Q;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire aresetn_0;
  wire dest_out;
  wire [98:0]din;
  wire [98:0]dout;
  wire empty;
  wire fifo_eol_dly;
  wire fifo_eol_re;
  wire [10:0]fifo_read_level;
  wire fifo_sof_dly;
  wire full;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire overflow;
  wire underflow;
  wire underflow_0;
  wire vid_io_out_ce;
  wire [0:0]vid_io_out_ce_0;
  wire vid_io_out_clk;
  wire wr_en;
  wire wr_rst_busy;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_fifo_async \generate_async_fifo.FIFO_INST 
       (.D(D),
        .E(E),
        .\FSM_onehot_aclk_state_reg[2] (\FSM_onehot_aclk_state_reg[2] ),
        .\FSM_onehot_state_reg[4] (\FSM_onehot_state_reg[4] ),
        .\FSM_onehot_state_reg[8] (\FSM_onehot_state_reg[8] ),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .dest_out(dest_out),
        .din(din),
        .dout(dout),
        .empty(empty),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re(fifo_eol_re),
        .fifo_read_level(fifo_read_level),
        .fifo_sof_dly(fifo_sof_dly),
        .full(full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ),
        .overflow(overflow),
        .underflow(underflow),
        .underflow_0(underflow_0),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_io_out_ce_0(vid_io_out_ce_0),
        .vid_io_out_clk(vid_io_out_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_fifo_async
   (full,
    overflow,
    wr_rst_busy,
    dout,
    empty,
    fifo_read_level,
    \FSM_onehot_aclk_state_reg[2] ,
    aresetn_0,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    D,
    \FSM_onehot_state_reg[8] ,
    fifo_eol_re,
    underflow,
    vid_io_out_ce_0,
    aclk,
    wr_en,
    din,
    vid_io_out_clk,
    E,
    Q,
    aclken,
    dest_out,
    aresetn,
    \FSM_onehot_state_reg[4] ,
    fifo_eol_dly,
    underflow_0,
    vid_io_out_ce,
    fifo_sof_dly);
  output full;
  output overflow;
  output wr_rst_busy;
  output [98:0]dout;
  output empty;
  output [10:0]fifo_read_level;
  output \FSM_onehot_aclk_state_reg[2] ;
  output aresetn_0;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  output [0:0]D;
  output \FSM_onehot_state_reg[8] ;
  output fifo_eol_re;
  output underflow;
  output [0:0]vid_io_out_ce_0;
  input aclk;
  input wr_en;
  input [98:0]din;
  input vid_io_out_clk;
  input [0:0]E;
  input [1:0]Q;
  input aclken;
  input dest_out;
  input aresetn;
  input [2:0]\FSM_onehot_state_reg[4] ;
  input fifo_eol_dly;
  input underflow_0;
  input vid_io_out_ce;
  input fifo_sof_dly;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_aclk_state_reg[2] ;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire [2:0]\FSM_onehot_state_reg[4] ;
  wire \FSM_onehot_state_reg[8] ;
  wire [1:0]Q;
  wire XPM_FIFO_ASYNC_INST_n_10;
  wire XPM_FIFO_ASYNC_INST_n_11;
  wire XPM_FIFO_ASYNC_INST_n_12;
  wire XPM_FIFO_ASYNC_INST_n_130;
  wire XPM_FIFO_ASYNC_INST_n_2;
  wire XPM_FIFO_ASYNC_INST_n_3;
  wire XPM_FIFO_ASYNC_INST_n_4;
  wire XPM_FIFO_ASYNC_INST_n_5;
  wire XPM_FIFO_ASYNC_INST_n_6;
  wire XPM_FIFO_ASYNC_INST_n_7;
  wire XPM_FIFO_ASYNC_INST_n_8;
  wire XPM_FIFO_ASYNC_INST_n_9;
  wire aclk;
  wire aclk_reset00_in;
  wire aclken;
  wire aresetn;
  wire aresetn_0;
  wire dest_out;
  wire [98:0]din;
  wire [98:0]dout;
  wire empty;
  wire fifo_eol_dly;
  wire fifo_eol_re;
  wire [10:0]fifo_read_level;
  wire fifo_sof_dly;
  wire fifo_underflow_from_coupler;
  wire full;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire overflow;
  wire underflow;
  wire underflow_0;
  wire vid_io_out_ce;
  wire [0:0]vid_io_out_ce_0;
  wire vid_io_out_clk;
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

  LUT5 #(
    .INIT(32'h00202222)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg[8] ),
        .I1(\FSM_onehot_state_reg[4] [0]),
        .I2(dout[97]),
        .I3(dout[98]),
        .I4(\FSM_onehot_state_reg[4] [2]),
        .O(D));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\FSM_onehot_state_reg[4] [2]),
        .I1(\FSM_onehot_state[4]_i_3_n_0 ),
        .I2(fifo_read_level[7]),
        .I3(fifo_read_level[6]),
        .I4(fifo_read_level[10]),
        .I5(fifo_read_level[8]),
        .O(\FSM_onehot_state_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFFFFFFF)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(fifo_read_level[3]),
        .I1(fifo_read_level[2]),
        .I2(fifo_read_level[5]),
        .I3(fifo_read_level[9]),
        .I4(fifo_read_level[4]),
        .I5(\FSM_onehot_state_reg[4] [1]),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  (* CASCADE_HEIGHT = "1" *) 
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
  (* READ_DATA_WIDTH = "99" *) 
  (* READ_MODE = "0" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "99" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async XPM_FIFO_ASYNC_INST
       (.almost_empty(NLW_XPM_FIFO_ASYNC_INST_almost_empty_UNCONNECTED),
        .almost_full(NLW_XPM_FIFO_ASYNC_INST_almost_full_UNCONNECTED),
        .data_valid(NLW_XPM_FIFO_ASYNC_INST_data_valid_UNCONNECTED),
        .dbiterr(NLW_XPM_FIFO_ASYNC_INST_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(NLW_XPM_FIFO_ASYNC_INST_prog_empty_UNCONNECTED),
        .prog_full(NLW_XPM_FIFO_ASYNC_INST_prog_full_UNCONNECTED),
        .rd_clk(vid_io_out_clk),
        .rd_data_count(fifo_read_level),
        .rd_en(E),
        .rd_rst_busy(XPM_FIFO_ASYNC_INST_n_130),
        .rst(aclk_reset00_in),
        .sbiterr(NLW_XPM_FIFO_ASYNC_INST_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(fifo_underflow_from_coupler),
        .wr_ack(NLW_XPM_FIFO_ASYNC_INST_wr_ack_UNCONNECTED),
        .wr_clk(aclk),
        .wr_data_count({XPM_FIFO_ASYNC_INST_n_2,XPM_FIFO_ASYNC_INST_n_3,XPM_FIFO_ASYNC_INST_n_4,XPM_FIFO_ASYNC_INST_n_5,XPM_FIFO_ASYNC_INST_n_6,XPM_FIFO_ASYNC_INST_n_7,XPM_FIFO_ASYNC_INST_n_8,XPM_FIFO_ASYNC_INST_n_9,XPM_FIFO_ASYNC_INST_n_10,XPM_FIFO_ASYNC_INST_n_11,XPM_FIFO_ASYNC_INST_n_12}),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XPM_FIFO_ASYNC_INST_i_1
       (.I0(aresetn),
        .O(aclk_reset00_in));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    aclk_tuser_dly_i_3
       (.I0(full),
        .I1(wr_rst_busy),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h04040400)) 
    aclk_tuser_dly_i_9
       (.I0(Q[1]),
        .I1(aclken),
        .I2(dest_out),
        .I3(wr_rst_busy),
        .I4(full),
        .O(\FSM_onehot_aclk_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    aclk_tuser_i_3
       (.I0(aresetn),
        .I1(full),
        .I2(wr_rst_busy),
        .I3(Q[0]),
        .O(aresetn_0));
  LUT3 #(
    .INIT(8'h20)) 
    \fifo_eol_cnt_dly[12]_i_1 
       (.I0(vid_io_out_ce),
        .I1(dout[97]),
        .I2(fifo_sof_dly),
        .O(vid_io_out_ce_0));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_eol_re_dly_i_1
       (.I0(dout[96]),
        .I1(fifo_eol_dly),
        .O(fifo_eol_re));
  LUT3 #(
    .INIT(8'hEF)) 
    s_axis_video_tready_INST_0_i_2
       (.I0(wr_rst_busy),
        .I1(full),
        .I2(aresetn),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT2 #(
    .INIT(4'hE)) 
    underflow_INST_0
       (.I0(fifo_underflow_from_coupler),
        .I1(underflow_0),
        .O(underflow));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_fifo_sync
   (overflow,
    dout,
    underflow,
    reset,
    s_axis_video_tdata_8_sp_1,
    s_axis_video_tdata_9_sp_1,
    s_axis_video_tdata_10_sp_1,
    s_axis_video_tdata_11_sp_1,
    s_axis_video_tdata_12_sp_1,
    s_axis_video_tdata_13_sp_1,
    s_axis_video_tdata_14_sp_1,
    s_axis_video_tdata_15_sp_1,
    \s_axis_video_tdata[32] ,
    \s_axis_video_tdata[33] ,
    \s_axis_video_tdata[34] ,
    \s_axis_video_tdata[35] ,
    \s_axis_video_tdata[36] ,
    \s_axis_video_tdata[37] ,
    \s_axis_video_tdata[38] ,
    \s_axis_video_tdata[39] ,
    \s_axis_video_tdata[56] ,
    \s_axis_video_tdata[57] ,
    \s_axis_video_tdata[58] ,
    \s_axis_video_tdata[59] ,
    \s_axis_video_tdata[60] ,
    \s_axis_video_tdata[61] ,
    \s_axis_video_tdata[62] ,
    \s_axis_video_tdata[63] ,
    \s_axis_video_tdata[80] ,
    \s_axis_video_tdata[81] ,
    \s_axis_video_tdata[82] ,
    \s_axis_video_tdata[83] ,
    \s_axis_video_tdata[84] ,
    \s_axis_video_tdata[85] ,
    \s_axis_video_tdata[86] ,
    \s_axis_video_tdata[87] ,
    aclk_tlast_reg,
    s_axis_video_tuser_0,
    \s_axis_video_tdata[8]_0 ,
    \s_axis_video_tdata[9]_0 ,
    \s_axis_video_tdata[10]_0 ,
    \s_axis_video_tdata[11]_0 ,
    \s_axis_video_tdata[12]_0 ,
    \s_axis_video_tdata[13]_0 ,
    \s_axis_video_tdata[14]_0 ,
    \s_axis_video_tdata[15]_0 ,
    \s_axis_video_tdata[32]_0 ,
    \s_axis_video_tdata[33]_0 ,
    \s_axis_video_tdata[34]_0 ,
    \s_axis_video_tdata[35]_0 ,
    \s_axis_video_tdata[36]_0 ,
    \s_axis_video_tdata[37]_0 ,
    \s_axis_video_tdata[38]_0 ,
    \s_axis_video_tdata[39]_0 ,
    \s_axis_video_tdata[56]_0 ,
    \s_axis_video_tdata[57]_0 ,
    \s_axis_video_tdata[58]_0 ,
    \s_axis_video_tdata[59]_0 ,
    \s_axis_video_tdata[60]_0 ,
    \s_axis_video_tdata[61]_0 ,
    \s_axis_video_tdata[62]_0 ,
    \s_axis_video_tdata[63]_0 ,
    \s_axis_video_tdata[80]_0 ,
    \s_axis_video_tdata[81]_0 ,
    \s_axis_video_tdata[82]_0 ,
    \s_axis_video_tdata[83]_0 ,
    \s_axis_video_tdata[84]_0 ,
    \s_axis_video_tdata[85]_0 ,
    \s_axis_video_tdata[86]_0 ,
    \s_axis_video_tdata[87]_0 ,
    din,
    \s_axis_video_tdata[87]_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ,
    aclk,
    wr_en,
    aclk_wr_data,
    rd_en,
    \aclk_tdata_reg[87] ,
    s_axis_video_tdata,
    Q,
    aclk_tlast_reg_0,
    aclk_tlast_reg_1,
    \aclk_tdata_dly_reg[87] ,
    aclk_tlast_reg_2,
    s_axis_video_tuser,
    first_sof,
    s_axis_video_tvalid,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ,
    dest_out,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ,
    aclk_reset,
    aclk_tlast_reg_3);
  output overflow;
  output [0:0]dout;
  output underflow;
  output reset;
  output s_axis_video_tdata_8_sp_1;
  output s_axis_video_tdata_9_sp_1;
  output s_axis_video_tdata_10_sp_1;
  output s_axis_video_tdata_11_sp_1;
  output s_axis_video_tdata_12_sp_1;
  output s_axis_video_tdata_13_sp_1;
  output s_axis_video_tdata_14_sp_1;
  output s_axis_video_tdata_15_sp_1;
  output \s_axis_video_tdata[32] ;
  output \s_axis_video_tdata[33] ;
  output \s_axis_video_tdata[34] ;
  output \s_axis_video_tdata[35] ;
  output \s_axis_video_tdata[36] ;
  output \s_axis_video_tdata[37] ;
  output \s_axis_video_tdata[38] ;
  output \s_axis_video_tdata[39] ;
  output \s_axis_video_tdata[56] ;
  output \s_axis_video_tdata[57] ;
  output \s_axis_video_tdata[58] ;
  output \s_axis_video_tdata[59] ;
  output \s_axis_video_tdata[60] ;
  output \s_axis_video_tdata[61] ;
  output \s_axis_video_tdata[62] ;
  output \s_axis_video_tdata[63] ;
  output \s_axis_video_tdata[80] ;
  output \s_axis_video_tdata[81] ;
  output \s_axis_video_tdata[82] ;
  output \s_axis_video_tdata[83] ;
  output \s_axis_video_tdata[84] ;
  output \s_axis_video_tdata[85] ;
  output \s_axis_video_tdata[86] ;
  output \s_axis_video_tdata[87] ;
  output aclk_tlast_reg;
  output s_axis_video_tuser_0;
  output \s_axis_video_tdata[8]_0 ;
  output \s_axis_video_tdata[9]_0 ;
  output \s_axis_video_tdata[10]_0 ;
  output \s_axis_video_tdata[11]_0 ;
  output \s_axis_video_tdata[12]_0 ;
  output \s_axis_video_tdata[13]_0 ;
  output \s_axis_video_tdata[14]_0 ;
  output \s_axis_video_tdata[15]_0 ;
  output \s_axis_video_tdata[32]_0 ;
  output \s_axis_video_tdata[33]_0 ;
  output \s_axis_video_tdata[34]_0 ;
  output \s_axis_video_tdata[35]_0 ;
  output \s_axis_video_tdata[36]_0 ;
  output \s_axis_video_tdata[37]_0 ;
  output \s_axis_video_tdata[38]_0 ;
  output \s_axis_video_tdata[39]_0 ;
  output \s_axis_video_tdata[56]_0 ;
  output \s_axis_video_tdata[57]_0 ;
  output \s_axis_video_tdata[58]_0 ;
  output \s_axis_video_tdata[59]_0 ;
  output \s_axis_video_tdata[60]_0 ;
  output \s_axis_video_tdata[61]_0 ;
  output \s_axis_video_tdata[62]_0 ;
  output \s_axis_video_tdata[63]_0 ;
  output \s_axis_video_tdata[80]_0 ;
  output \s_axis_video_tdata[81]_0 ;
  output \s_axis_video_tdata[82]_0 ;
  output \s_axis_video_tdata[83]_0 ;
  output \s_axis_video_tdata[84]_0 ;
  output \s_axis_video_tdata[85]_0 ;
  output \s_axis_video_tdata[86]_0 ;
  output \s_axis_video_tdata[87]_0 ;
  output [0:0]din;
  output [31:0]\s_axis_video_tdata[87]_1 ;
  output \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  input aclk;
  input wr_en;
  input [32:0]aclk_wr_data;
  input rd_en;
  input \aclk_tdata_reg[87] ;
  input [31:0]s_axis_video_tdata;
  input [15:0]Q;
  input aclk_tlast_reg_0;
  input aclk_tlast_reg_1;
  input [15:0]\aclk_tdata_dly_reg[87] ;
  input aclk_tlast_reg_2;
  input s_axis_video_tuser;
  input first_sof;
  input s_axis_video_tvalid;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ;
  input dest_out;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ;
  input aclk_reset;
  input [3:0]aclk_tlast_reg_3;

  wire [15:0]Q;
  wire aclk;
  wire [31:0]aclk_rd_data;
  wire aclk_reset;
  wire [15:0]\aclk_tdata_dly_reg[87] ;
  wire \aclk_tdata_reg[87] ;
  wire aclk_tlast_reg;
  wire aclk_tlast_reg_0;
  wire aclk_tlast_reg_1;
  wire aclk_tlast_reg_2;
  wire [3:0]aclk_tlast_reg_3;
  wire [32:0]aclk_wr_data;
  wire dest_out;
  wire [0:0]din;
  wire [0:0]dout;
  wire first_sof;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ;
  wire overflow;
  wire rd_en;
  wire reset;
  wire [31:0]s_axis_video_tdata;
  wire \s_axis_video_tdata[10]_0 ;
  wire \s_axis_video_tdata[11]_0 ;
  wire \s_axis_video_tdata[12]_0 ;
  wire \s_axis_video_tdata[13]_0 ;
  wire \s_axis_video_tdata[14]_0 ;
  wire \s_axis_video_tdata[15]_0 ;
  wire \s_axis_video_tdata[32] ;
  wire \s_axis_video_tdata[32]_0 ;
  wire \s_axis_video_tdata[33] ;
  wire \s_axis_video_tdata[33]_0 ;
  wire \s_axis_video_tdata[34] ;
  wire \s_axis_video_tdata[34]_0 ;
  wire \s_axis_video_tdata[35] ;
  wire \s_axis_video_tdata[35]_0 ;
  wire \s_axis_video_tdata[36] ;
  wire \s_axis_video_tdata[36]_0 ;
  wire \s_axis_video_tdata[37] ;
  wire \s_axis_video_tdata[37]_0 ;
  wire \s_axis_video_tdata[38] ;
  wire \s_axis_video_tdata[38]_0 ;
  wire \s_axis_video_tdata[39] ;
  wire \s_axis_video_tdata[39]_0 ;
  wire \s_axis_video_tdata[56] ;
  wire \s_axis_video_tdata[56]_0 ;
  wire \s_axis_video_tdata[57] ;
  wire \s_axis_video_tdata[57]_0 ;
  wire \s_axis_video_tdata[58] ;
  wire \s_axis_video_tdata[58]_0 ;
  wire \s_axis_video_tdata[59] ;
  wire \s_axis_video_tdata[59]_0 ;
  wire \s_axis_video_tdata[60] ;
  wire \s_axis_video_tdata[60]_0 ;
  wire \s_axis_video_tdata[61] ;
  wire \s_axis_video_tdata[61]_0 ;
  wire \s_axis_video_tdata[62] ;
  wire \s_axis_video_tdata[62]_0 ;
  wire \s_axis_video_tdata[63] ;
  wire \s_axis_video_tdata[63]_0 ;
  wire \s_axis_video_tdata[80] ;
  wire \s_axis_video_tdata[80]_0 ;
  wire \s_axis_video_tdata[81] ;
  wire \s_axis_video_tdata[81]_0 ;
  wire \s_axis_video_tdata[82] ;
  wire \s_axis_video_tdata[82]_0 ;
  wire \s_axis_video_tdata[83] ;
  wire \s_axis_video_tdata[83]_0 ;
  wire \s_axis_video_tdata[84] ;
  wire \s_axis_video_tdata[84]_0 ;
  wire \s_axis_video_tdata[85] ;
  wire \s_axis_video_tdata[85]_0 ;
  wire \s_axis_video_tdata[86] ;
  wire \s_axis_video_tdata[86]_0 ;
  wire \s_axis_video_tdata[87] ;
  wire \s_axis_video_tdata[87]_0 ;
  wire [31:0]\s_axis_video_tdata[87]_1 ;
  wire \s_axis_video_tdata[8]_0 ;
  wire \s_axis_video_tdata[9]_0 ;
  wire s_axis_video_tdata_10_sn_1;
  wire s_axis_video_tdata_11_sn_1;
  wire s_axis_video_tdata_12_sn_1;
  wire s_axis_video_tdata_13_sn_1;
  wire s_axis_video_tdata_14_sn_1;
  wire s_axis_video_tdata_15_sn_1;
  wire s_axis_video_tdata_8_sn_1;
  wire s_axis_video_tdata_9_sn_1;
  wire s_axis_video_tuser;
  wire s_axis_video_tuser_0;
  wire s_axis_video_tvalid;
  wire underflow;
  wire wr_en;
  wire NLW_XPM_FIFO_SYNC_INST_almost_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_almost_full_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_data_valid_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_dbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_full_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_prog_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_prog_full_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_rd_rst_busy_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_sbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_wr_ack_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_wr_rst_busy_UNCONNECTED;
  wire [10:0]NLW_XPM_FIFO_SYNC_INST_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_XPM_FIFO_SYNC_INST_wr_data_count_UNCONNECTED;

  assign s_axis_video_tdata_10_sp_1 = s_axis_video_tdata_10_sn_1;
  assign s_axis_video_tdata_11_sp_1 = s_axis_video_tdata_11_sn_1;
  assign s_axis_video_tdata_12_sp_1 = s_axis_video_tdata_12_sn_1;
  assign s_axis_video_tdata_13_sp_1 = s_axis_video_tdata_13_sn_1;
  assign s_axis_video_tdata_14_sp_1 = s_axis_video_tdata_14_sn_1;
  assign s_axis_video_tdata_15_sp_1 = s_axis_video_tdata_15_sn_1;
  assign s_axis_video_tdata_8_sp_1 = s_axis_video_tdata_8_sn_1;
  assign s_axis_video_tdata_9_sp_1 = s_axis_video_tdata_9_sn_1;
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_112
       (.I0(s_axis_video_tdata[31]),
        .I1(\aclk_tdata_dly_reg[87] [15]),
        .I2(aclk_rd_data[31]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[87]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_113
       (.I0(s_axis_video_tdata[30]),
        .I1(\aclk_tdata_dly_reg[87] [14]),
        .I2(aclk_rd_data[30]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[86]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_114
       (.I0(s_axis_video_tdata[29]),
        .I1(\aclk_tdata_dly_reg[87] [13]),
        .I2(aclk_rd_data[29]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[85]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_115
       (.I0(s_axis_video_tdata[28]),
        .I1(\aclk_tdata_dly_reg[87] [12]),
        .I2(aclk_rd_data[28]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[84]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_116
       (.I0(s_axis_video_tdata[27]),
        .I1(\aclk_tdata_dly_reg[87] [11]),
        .I2(aclk_rd_data[27]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[83]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_117
       (.I0(s_axis_video_tdata[26]),
        .I1(\aclk_tdata_dly_reg[87] [10]),
        .I2(aclk_rd_data[26]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[82]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_118
       (.I0(s_axis_video_tdata[25]),
        .I1(\aclk_tdata_dly_reg[87] [9]),
        .I2(aclk_rd_data[25]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[81]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_119
       (.I0(s_axis_video_tdata[24]),
        .I1(\aclk_tdata_dly_reg[87] [8]),
        .I2(aclk_rd_data[24]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[80]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_131
       (.I0(s_axis_video_tdata[23]),
        .I1(\aclk_tdata_dly_reg[87] [7]),
        .I2(aclk_rd_data[23]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[63]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_133
       (.I0(s_axis_video_tdata[22]),
        .I1(\aclk_tdata_dly_reg[87] [6]),
        .I2(aclk_rd_data[22]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[62]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_135
       (.I0(s_axis_video_tdata[21]),
        .I1(\aclk_tdata_dly_reg[87] [5]),
        .I2(aclk_rd_data[21]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[61]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_137
       (.I0(s_axis_video_tdata[20]),
        .I1(\aclk_tdata_dly_reg[87] [4]),
        .I2(aclk_rd_data[20]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[60]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_139
       (.I0(s_axis_video_tdata[19]),
        .I1(\aclk_tdata_dly_reg[87] [3]),
        .I2(aclk_rd_data[19]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[59]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_141
       (.I0(s_axis_video_tdata[18]),
        .I1(\aclk_tdata_dly_reg[87] [2]),
        .I2(aclk_rd_data[18]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[58]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_143
       (.I0(s_axis_video_tdata[17]),
        .I1(\aclk_tdata_dly_reg[87] [1]),
        .I2(aclk_rd_data[17]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[57]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_145
       (.I0(s_axis_video_tdata[16]),
        .I1(\aclk_tdata_dly_reg[87] [0]),
        .I2(aclk_rd_data[16]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[56]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_162
       (.I0(s_axis_video_tdata[15]),
        .I1(Q[15]),
        .I2(aclk_rd_data[15]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[39]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_163
       (.I0(s_axis_video_tdata[14]),
        .I1(Q[14]),
        .I2(aclk_rd_data[14]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[38]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_164
       (.I0(s_axis_video_tdata[13]),
        .I1(Q[13]),
        .I2(aclk_rd_data[13]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[37]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_165
       (.I0(s_axis_video_tdata[12]),
        .I1(Q[12]),
        .I2(aclk_rd_data[12]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[36]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_166
       (.I0(s_axis_video_tdata[11]),
        .I1(Q[11]),
        .I2(aclk_rd_data[11]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[35]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_167
       (.I0(s_axis_video_tdata[10]),
        .I1(Q[10]),
        .I2(aclk_rd_data[10]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[34]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_168
       (.I0(s_axis_video_tdata[9]),
        .I1(Q[9]),
        .I2(aclk_rd_data[9]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[33]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_169
       (.I0(s_axis_video_tdata[8]),
        .I1(Q[8]),
        .I2(aclk_rd_data[8]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[32]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_196
       (.I0(s_axis_video_tdata[7]),
        .I1(Q[7]),
        .I2(aclk_rd_data[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[15]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_198
       (.I0(s_axis_video_tdata[6]),
        .I1(Q[6]),
        .I2(aclk_rd_data[6]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[14]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_200
       (.I0(s_axis_video_tdata[5]),
        .I1(Q[5]),
        .I2(aclk_rd_data[5]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[13]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_202
       (.I0(s_axis_video_tdata[4]),
        .I1(Q[4]),
        .I2(aclk_rd_data[4]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[12]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_204
       (.I0(s_axis_video_tdata[3]),
        .I1(Q[3]),
        .I2(aclk_rd_data[3]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[11]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_206
       (.I0(s_axis_video_tdata[2]),
        .I1(Q[2]),
        .I2(aclk_rd_data[2]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[10]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_208
       (.I0(s_axis_video_tdata[1]),
        .I1(Q[1]),
        .I2(aclk_rd_data[1]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[9]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    XPM_FIFO_ASYNC_INST_i_210
       (.I0(s_axis_video_tdata[0]),
        .I1(Q[0]),
        .I2(aclk_rd_data[0]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[8]_0 ));
  LUT6 #(
    .INIT(64'hAAFAAAAAAAEEAAAA)) 
    XPM_FIFO_ASYNC_INST_i_5
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ),
        .I1(aclk_wr_data[32]),
        .I2(dout),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .I4(dest_out),
        .I5(aclk_tlast_reg_1),
        .O(din));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "33" *) 
  (* READ_MODE = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "33" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync XPM_FIFO_SYNC_INST
       (.almost_empty(NLW_XPM_FIFO_SYNC_INST_almost_empty_UNCONNECTED),
        .almost_full(NLW_XPM_FIFO_SYNC_INST_almost_full_UNCONNECTED),
        .data_valid(NLW_XPM_FIFO_SYNC_INST_data_valid_UNCONNECTED),
        .dbiterr(NLW_XPM_FIFO_SYNC_INST_dbiterr_UNCONNECTED),
        .din(aclk_wr_data),
        .dout({dout,aclk_rd_data}),
        .empty(NLW_XPM_FIFO_SYNC_INST_empty_UNCONNECTED),
        .full(NLW_XPM_FIFO_SYNC_INST_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(NLW_XPM_FIFO_SYNC_INST_prog_empty_UNCONNECTED),
        .prog_full(NLW_XPM_FIFO_SYNC_INST_prog_full_UNCONNECTED),
        .rd_data_count(NLW_XPM_FIFO_SYNC_INST_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_XPM_FIFO_SYNC_INST_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .sbiterr(NLW_XPM_FIFO_SYNC_INST_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(underflow),
        .wr_ack(NLW_XPM_FIFO_SYNC_INST_wr_ack_UNCONNECTED),
        .wr_clk(aclk),
        .wr_data_count(NLW_XPM_FIFO_SYNC_INST_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_XPM_FIFO_SYNC_INST_wr_rst_busy_UNCONNECTED));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    XPM_FIFO_SYNC_INST_i_1
       (.I0(aclk_reset),
        .I1(aclk_tlast_reg_3[2]),
        .I2(aclk_tlast_reg_3[3]),
        .I3(aclk_tlast_reg_3[1]),
        .I4(aclk_tlast_reg_3[0]),
        .O(reset));
  LUT3 #(
    .INIT(8'h1F)) 
    XPM_FIFO_SYNC_INST_i_3
       (.I0(s_axis_video_tuser),
        .I1(first_sof),
        .I2(s_axis_video_tvalid),
        .O(s_axis_video_tuser_0));
  LUT4 #(
    .INIT(16'hA0C0)) 
    aclk_line_phase_i_5
       (.I0(dout),
        .I1(aclk_wr_data[32]),
        .I2(dest_out),
        .I3(aclk_tlast_reg_1),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[10]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[2]),
        .I2(Q[2]),
        .I3(aclk_rd_data[2]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(s_axis_video_tdata_10_sn_1));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[11]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[3]),
        .I2(Q[3]),
        .I3(aclk_rd_data[3]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(s_axis_video_tdata_11_sn_1));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[12]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[4]),
        .I2(Q[4]),
        .I3(aclk_rd_data[4]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(s_axis_video_tdata_12_sn_1));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[13]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[5]),
        .I2(Q[5]),
        .I3(aclk_rd_data[5]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(s_axis_video_tdata_13_sn_1));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[14]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[6]),
        .I2(Q[6]),
        .I3(aclk_rd_data[6]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(s_axis_video_tdata_14_sn_1));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[15]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[7]),
        .I2(Q[7]),
        .I3(aclk_rd_data[7]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(s_axis_video_tdata_15_sn_1));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[32]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[8]),
        .I2(Q[8]),
        .I3(aclk_rd_data[8]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[32] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[33]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[9]),
        .I2(Q[9]),
        .I3(aclk_rd_data[9]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[33] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[34]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[10]),
        .I2(Q[10]),
        .I3(aclk_rd_data[10]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[34] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[35]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[11]),
        .I2(Q[11]),
        .I3(aclk_rd_data[11]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[35] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[36]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[12]),
        .I2(Q[12]),
        .I3(aclk_rd_data[12]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[36] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[37]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[13]),
        .I2(Q[13]),
        .I3(aclk_rd_data[13]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[37] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[38]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[14]),
        .I2(Q[14]),
        .I3(aclk_rd_data[14]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[38] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[39]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[15]),
        .I2(Q[15]),
        .I3(aclk_rd_data[15]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[39] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[56]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[16]),
        .I2(\aclk_tdata_dly_reg[87] [0]),
        .I3(aclk_rd_data[16]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[56] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[57]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[17]),
        .I2(\aclk_tdata_dly_reg[87] [1]),
        .I3(aclk_rd_data[17]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[57] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[58]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[18]),
        .I2(\aclk_tdata_dly_reg[87] [2]),
        .I3(aclk_rd_data[18]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[58] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[59]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[19]),
        .I2(\aclk_tdata_dly_reg[87] [3]),
        .I3(aclk_rd_data[19]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[59] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[60]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[20]),
        .I2(\aclk_tdata_dly_reg[87] [4]),
        .I3(aclk_rd_data[20]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[60] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[61]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[21]),
        .I2(\aclk_tdata_dly_reg[87] [5]),
        .I3(aclk_rd_data[21]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[61] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[62]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[22]),
        .I2(\aclk_tdata_dly_reg[87] [6]),
        .I3(aclk_rd_data[22]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[62] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[63]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[23]),
        .I2(\aclk_tdata_dly_reg[87] [7]),
        .I3(aclk_rd_data[23]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[63] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[80]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[24]),
        .I2(\aclk_tdata_dly_reg[87] [8]),
        .I3(aclk_rd_data[24]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[80] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[81]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[25]),
        .I2(\aclk_tdata_dly_reg[87] [9]),
        .I3(aclk_rd_data[25]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[81] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[82]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[26]),
        .I2(\aclk_tdata_dly_reg[87] [10]),
        .I3(aclk_rd_data[26]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[82] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[83]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[27]),
        .I2(\aclk_tdata_dly_reg[87] [11]),
        .I3(aclk_rd_data[27]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[83] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[84]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[28]),
        .I2(\aclk_tdata_dly_reg[87] [12]),
        .I3(aclk_rd_data[28]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[84] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[85]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[29]),
        .I2(\aclk_tdata_dly_reg[87] [13]),
        .I3(aclk_rd_data[29]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[85] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[86]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[30]),
        .I2(\aclk_tdata_dly_reg[87] [14]),
        .I3(aclk_rd_data[30]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[86] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[87]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[31]),
        .I2(\aclk_tdata_dly_reg[87] [15]),
        .I3(aclk_rd_data[31]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(\s_axis_video_tdata[87] ));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[8]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[0]),
        .I2(Q[0]),
        .I3(aclk_rd_data[0]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(s_axis_video_tdata_8_sn_1));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \aclk_tdata[9]_i_2 
       (.I0(\aclk_tdata_reg[87] ),
        .I1(s_axis_video_tdata[1]),
        .I2(Q[1]),
        .I3(aclk_rd_data[1]),
        .I4(aclk_tlast_reg_0),
        .I5(aclk_tlast_reg_1),
        .O(s_axis_video_tdata_9_sn_1));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[10]_i_1 
       (.I0(s_axis_video_tdata[2]),
        .I1(Q[2]),
        .I2(aclk_rd_data[2]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [2]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[11]_i_1 
       (.I0(s_axis_video_tdata[3]),
        .I1(Q[3]),
        .I2(aclk_rd_data[3]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [3]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[12]_i_1 
       (.I0(s_axis_video_tdata[4]),
        .I1(Q[4]),
        .I2(aclk_rd_data[4]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [4]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[13]_i_1 
       (.I0(s_axis_video_tdata[5]),
        .I1(Q[5]),
        .I2(aclk_rd_data[5]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [5]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[14]_i_1 
       (.I0(s_axis_video_tdata[6]),
        .I1(Q[6]),
        .I2(aclk_rd_data[6]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [6]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[15]_i_1 
       (.I0(s_axis_video_tdata[7]),
        .I1(Q[7]),
        .I2(aclk_rd_data[7]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [7]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[32]_i_1 
       (.I0(s_axis_video_tdata[8]),
        .I1(Q[8]),
        .I2(aclk_rd_data[8]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [8]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[33]_i_1 
       (.I0(s_axis_video_tdata[9]),
        .I1(Q[9]),
        .I2(aclk_rd_data[9]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [9]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[34]_i_1 
       (.I0(s_axis_video_tdata[10]),
        .I1(Q[10]),
        .I2(aclk_rd_data[10]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [10]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[35]_i_1 
       (.I0(s_axis_video_tdata[11]),
        .I1(Q[11]),
        .I2(aclk_rd_data[11]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [11]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[36]_i_1 
       (.I0(s_axis_video_tdata[12]),
        .I1(Q[12]),
        .I2(aclk_rd_data[12]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [12]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[37]_i_1 
       (.I0(s_axis_video_tdata[13]),
        .I1(Q[13]),
        .I2(aclk_rd_data[13]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [13]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[38]_i_1 
       (.I0(s_axis_video_tdata[14]),
        .I1(Q[14]),
        .I2(aclk_rd_data[14]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [14]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[39]_i_1 
       (.I0(s_axis_video_tdata[15]),
        .I1(Q[15]),
        .I2(aclk_rd_data[15]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [15]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[56]_i_1 
       (.I0(s_axis_video_tdata[16]),
        .I1(\aclk_tdata_dly_reg[87] [0]),
        .I2(aclk_rd_data[16]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [16]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[57]_i_1 
       (.I0(s_axis_video_tdata[17]),
        .I1(\aclk_tdata_dly_reg[87] [1]),
        .I2(aclk_rd_data[17]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [17]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[58]_i_1 
       (.I0(s_axis_video_tdata[18]),
        .I1(\aclk_tdata_dly_reg[87] [2]),
        .I2(aclk_rd_data[18]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [18]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[59]_i_1 
       (.I0(s_axis_video_tdata[19]),
        .I1(\aclk_tdata_dly_reg[87] [3]),
        .I2(aclk_rd_data[19]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [19]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[60]_i_1 
       (.I0(s_axis_video_tdata[20]),
        .I1(\aclk_tdata_dly_reg[87] [4]),
        .I2(aclk_rd_data[20]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [20]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[61]_i_1 
       (.I0(s_axis_video_tdata[21]),
        .I1(\aclk_tdata_dly_reg[87] [5]),
        .I2(aclk_rd_data[21]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [21]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[62]_i_1 
       (.I0(s_axis_video_tdata[22]),
        .I1(\aclk_tdata_dly_reg[87] [6]),
        .I2(aclk_rd_data[22]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [22]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[63]_i_1 
       (.I0(s_axis_video_tdata[23]),
        .I1(\aclk_tdata_dly_reg[87] [7]),
        .I2(aclk_rd_data[23]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [23]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[80]_i_1 
       (.I0(s_axis_video_tdata[24]),
        .I1(\aclk_tdata_dly_reg[87] [8]),
        .I2(aclk_rd_data[24]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [24]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[81]_i_1 
       (.I0(s_axis_video_tdata[25]),
        .I1(\aclk_tdata_dly_reg[87] [9]),
        .I2(aclk_rd_data[25]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [25]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[82]_i_1 
       (.I0(s_axis_video_tdata[26]),
        .I1(\aclk_tdata_dly_reg[87] [10]),
        .I2(aclk_rd_data[26]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [26]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[83]_i_1 
       (.I0(s_axis_video_tdata[27]),
        .I1(\aclk_tdata_dly_reg[87] [11]),
        .I2(aclk_rd_data[27]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [27]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[84]_i_1 
       (.I0(s_axis_video_tdata[28]),
        .I1(\aclk_tdata_dly_reg[87] [12]),
        .I2(aclk_rd_data[28]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [28]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[85]_i_1 
       (.I0(s_axis_video_tdata[29]),
        .I1(\aclk_tdata_dly_reg[87] [13]),
        .I2(aclk_rd_data[29]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [29]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[86]_i_1 
       (.I0(s_axis_video_tdata[30]),
        .I1(\aclk_tdata_dly_reg[87] [14]),
        .I2(aclk_rd_data[30]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [30]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[87]_i_1 
       (.I0(s_axis_video_tdata[31]),
        .I1(\aclk_tdata_dly_reg[87] [15]),
        .I2(aclk_rd_data[31]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [31]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[8]_i_1 
       (.I0(s_axis_video_tdata[0]),
        .I1(Q[0]),
        .I2(aclk_rd_data[0]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [0]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \aclk_tdata_dly[9]_i_1 
       (.I0(s_axis_video_tdata[1]),
        .I1(Q[1]),
        .I2(aclk_rd_data[1]),
        .I3(aclk_tlast_reg_1),
        .I4(dest_out),
        .O(\s_axis_video_tdata[87]_1 [1]));
  LUT5 #(
    .INIT(32'hFAAAEEAA)) 
    aclk_tlast_i_1
       (.I0(aclk_tlast_reg_2),
        .I1(aclk_wr_data[32]),
        .I2(dout),
        .I3(aclk_tlast_reg_0),
        .I4(aclk_tlast_reg_1),
        .O(aclk_tlast_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_formatter
   (vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    fivid_reset_full_frame,
    vid_data,
    vid_io_out_ce,
    vtg_vblank,
    vid_io_out_clk,
    SR,
    vtg_active_video,
    vtg_vsync,
    vtg_hsync,
    vtg_hblank,
    vtg_field_id,
    locked,
    vid_io_out_reset,
    E,
    D);
  output vid_active_video;
  output vid_vsync;
  output vid_hsync;
  output vid_vblank;
  output vid_hblank;
  output vid_field_id;
  output fivid_reset_full_frame;
  output [95:0]vid_data;
  input vid_io_out_ce;
  input vtg_vblank;
  input vid_io_out_clk;
  input [0:0]SR;
  input vtg_active_video;
  input vtg_vsync;
  input vtg_hsync;
  input vtg_hblank;
  input vtg_field_id;
  input locked;
  input vid_io_out_reset;
  input [0:0]E;
  input [95:0]D;

  wire [95:0]D;
  wire [0:0]E;
  wire [0:0]SR;
  wire fivid_reset_full_frame;
  wire fivid_reset_full_frame_i_1_n_0;
  wire locked;
  wire vblank_rising;
  wire vblank_rising0;
  wire vid_active_video;
  wire [95:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_out_ce;
  wire vid_io_out_clk;
  wire vid_io_out_reset;
  wire vid_vblank;
  wire vid_vsync;
  wire vtg_active_video;
  wire vtg_field_id;
  wire vtg_hblank;
  wire vtg_hsync;
  wire vtg_vblank;
  wire vtg_vblank_1;
  wire vtg_vsync;

  LUT5 #(
    .INIT(32'h0000EA00)) 
    fivid_reset_full_frame_i_1
       (.I0(fivid_reset_full_frame),
        .I1(vid_io_out_ce),
        .I2(vblank_rising),
        .I3(locked),
        .I4(vid_io_out_reset),
        .O(fivid_reset_full_frame_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fivid_reset_full_frame_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(fivid_reset_full_frame_i_1_n_0),
        .Q(fivid_reset_full_frame),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[0] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[0]),
        .Q(vid_data[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[10] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[10]),
        .Q(vid_data[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[11] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[11]),
        .Q(vid_data[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[12] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[12]),
        .Q(vid_data[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[13] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[13]),
        .Q(vid_data[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[14] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[14]),
        .Q(vid_data[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[15] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[15]),
        .Q(vid_data[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[16] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[16]),
        .Q(vid_data[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[17] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[17]),
        .Q(vid_data[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[18] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[18]),
        .Q(vid_data[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[19] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[19]),
        .Q(vid_data[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[1] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[1]),
        .Q(vid_data[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[20] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[20]),
        .Q(vid_data[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[21] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[21]),
        .Q(vid_data[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[22] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[22]),
        .Q(vid_data[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[23] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[23]),
        .Q(vid_data[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[24] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[24]),
        .Q(vid_data[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[25] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[25]),
        .Q(vid_data[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[26] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[26]),
        .Q(vid_data[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[27] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[27]),
        .Q(vid_data[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[28] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[28]),
        .Q(vid_data[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[29] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[29]),
        .Q(vid_data[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[2] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[2]),
        .Q(vid_data[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[30] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[30]),
        .Q(vid_data[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[31] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[31]),
        .Q(vid_data[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[32] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[32]),
        .Q(vid_data[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[33] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[33]),
        .Q(vid_data[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[34] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[34]),
        .Q(vid_data[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[35] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[35]),
        .Q(vid_data[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[36] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[36]),
        .Q(vid_data[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[37] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[37]),
        .Q(vid_data[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[38] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[38]),
        .Q(vid_data[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[39] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[39]),
        .Q(vid_data[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[3] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[3]),
        .Q(vid_data[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[40] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[40]),
        .Q(vid_data[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[41] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[41]),
        .Q(vid_data[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[42] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[42]),
        .Q(vid_data[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[43] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[43]),
        .Q(vid_data[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[44] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[44]),
        .Q(vid_data[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[45] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[45]),
        .Q(vid_data[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[46] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[46]),
        .Q(vid_data[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[47] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[47]),
        .Q(vid_data[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[48] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[48]),
        .Q(vid_data[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[49] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[49]),
        .Q(vid_data[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[4] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[4]),
        .Q(vid_data[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[50] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[50]),
        .Q(vid_data[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[51] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[51]),
        .Q(vid_data[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[52] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[52]),
        .Q(vid_data[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[53] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[53]),
        .Q(vid_data[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[54] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[54]),
        .Q(vid_data[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[55] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[55]),
        .Q(vid_data[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[56] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[56]),
        .Q(vid_data[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[57] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[57]),
        .Q(vid_data[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[58] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[58]),
        .Q(vid_data[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[59] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[59]),
        .Q(vid_data[59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[5] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[5]),
        .Q(vid_data[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[60] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[60]),
        .Q(vid_data[60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[61] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[61]),
        .Q(vid_data[61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[62] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[62]),
        .Q(vid_data[62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[63] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[63]),
        .Q(vid_data[63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[64] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[64]),
        .Q(vid_data[64]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[65] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[65]),
        .Q(vid_data[65]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[66] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[66]),
        .Q(vid_data[66]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[67] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[67]),
        .Q(vid_data[67]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[68] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[68]),
        .Q(vid_data[68]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[69] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[69]),
        .Q(vid_data[69]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[6] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[6]),
        .Q(vid_data[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[70] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[70]),
        .Q(vid_data[70]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[71] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[71]),
        .Q(vid_data[71]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[72] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[72]),
        .Q(vid_data[72]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[73] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[73]),
        .Q(vid_data[73]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[74] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[74]),
        .Q(vid_data[74]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[75] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[75]),
        .Q(vid_data[75]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[76] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[76]),
        .Q(vid_data[76]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[77] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[77]),
        .Q(vid_data[77]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[78] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[78]),
        .Q(vid_data[78]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[79] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[79]),
        .Q(vid_data[79]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[7] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[7]),
        .Q(vid_data[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[80] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[80]),
        .Q(vid_data[80]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[81] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[81]),
        .Q(vid_data[81]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[82] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[82]),
        .Q(vid_data[82]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[83] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[83]),
        .Q(vid_data[83]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[84] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[84]),
        .Q(vid_data[84]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[85] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[85]),
        .Q(vid_data[85]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[86] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[86]),
        .Q(vid_data[86]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[87] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[87]),
        .Q(vid_data[87]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[88] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[88]),
        .Q(vid_data[88]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[89] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[89]),
        .Q(vid_data[89]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[8] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[8]),
        .Q(vid_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[90] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[90]),
        .Q(vid_data[90]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[91] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[91]),
        .Q(vid_data[91]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[92] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[92]),
        .Q(vid_data[92]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[93] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[93]),
        .Q(vid_data[93]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[94] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[94]),
        .Q(vid_data[94]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[95] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[95]),
        .Q(vid_data[95]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[9] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[9]),
        .Q(vid_data[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_de_mux_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_active_video),
        .Q(vid_active_video),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    in_field_id_mux_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_field_id),
        .Q(vid_field_id),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_hblank_mux_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_hblank),
        .Q(vid_hblank),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_hsync_mux_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_hsync),
        .Q(vid_hsync),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_vblank_mux_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_vblank),
        .Q(vid_vblank),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_vsync_mux_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_vsync),
        .Q(vid_vsync),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    vblank_rising_i_1
       (.I0(vtg_vblank),
        .I1(vtg_vblank_1),
        .O(vblank_rising0));
  FDRE #(
    .INIT(1'b0)) 
    vblank_rising_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vblank_rising0),
        .Q(vblank_rising),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vblank_1_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_vblank),
        .Q(vtg_vblank_1),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_remap
   (dest_out,
    aclk_tuser_reg_0,
    s_axis_video_tuser_0,
    \FSM_onehot_aclk_state_reg[1]_0 ,
    Q,
    aclk_fid_reg_0,
    \FSM_onehot_aclk_state_reg[1]_1 ,
    s_axis_video_tdata_8_sp_1,
    s_axis_video_tdata_9_sp_1,
    s_axis_video_tdata_10_sp_1,
    s_axis_video_tdata_11_sp_1,
    s_axis_video_tdata_12_sp_1,
    s_axis_video_tdata_13_sp_1,
    s_axis_video_tdata_14_sp_1,
    s_axis_video_tdata_15_sp_1,
    s_axis_video_tdata_32_sp_1,
    s_axis_video_tdata_33_sp_1,
    s_axis_video_tdata_34_sp_1,
    s_axis_video_tdata_35_sp_1,
    s_axis_video_tdata_36_sp_1,
    s_axis_video_tdata_37_sp_1,
    s_axis_video_tdata_38_sp_1,
    s_axis_video_tdata_39_sp_1,
    s_axis_video_tdata_56_sp_1,
    s_axis_video_tdata_57_sp_1,
    s_axis_video_tdata_58_sp_1,
    s_axis_video_tdata_59_sp_1,
    s_axis_video_tdata_60_sp_1,
    s_axis_video_tdata_61_sp_1,
    s_axis_video_tdata_62_sp_1,
    s_axis_video_tdata_63_sp_1,
    s_axis_video_tdata_80_sp_1,
    s_axis_video_tdata_81_sp_1,
    s_axis_video_tdata_82_sp_1,
    s_axis_video_tdata_83_sp_1,
    s_axis_video_tdata_84_sp_1,
    s_axis_video_tdata_85_sp_1,
    s_axis_video_tdata_86_sp_1,
    s_axis_video_tdata_87_sp_1,
    aclk_tlast_reg_0,
    aclk_tuser_dly_reg_0,
    aresetn_0,
    sof_state_out_reg,
    \FSM_onehot_aclk_state_reg[1]_2 ,
    \FSM_onehot_aclk_state_reg[1]_3 ,
    \syncstages_ff_reg[3] ,
    D,
    \FSM_onehot_aclk_state_reg[3]_0 ,
    \syncstages_ff_reg[3]_0 ,
    \syncstages_ff_reg[3]_1 ,
    \s_axis_video_tdata[8]_0 ,
    \s_axis_video_tdata[9]_0 ,
    \s_axis_video_tdata[10]_0 ,
    \s_axis_video_tdata[11]_0 ,
    \s_axis_video_tdata[12]_0 ,
    \s_axis_video_tdata[13]_0 ,
    \s_axis_video_tdata[14]_0 ,
    \s_axis_video_tdata[15]_0 ,
    \s_axis_video_tdata[32]_0 ,
    \s_axis_video_tdata[33]_0 ,
    \s_axis_video_tdata[34]_0 ,
    \s_axis_video_tdata[35]_0 ,
    \s_axis_video_tdata[36]_0 ,
    \s_axis_video_tdata[37]_0 ,
    \s_axis_video_tdata[38]_0 ,
    \s_axis_video_tdata[39]_0 ,
    \s_axis_video_tdata[56]_0 ,
    \s_axis_video_tdata[57]_0 ,
    \s_axis_video_tdata[58]_0 ,
    \s_axis_video_tdata[59]_0 ,
    \s_axis_video_tdata[60]_0 ,
    \s_axis_video_tdata[61]_0 ,
    \s_axis_video_tdata[62]_0 ,
    \s_axis_video_tdata[63]_0 ,
    \s_axis_video_tdata[80]_0 ,
    \s_axis_video_tdata[81]_0 ,
    \s_axis_video_tdata[82]_0 ,
    \s_axis_video_tdata[83]_0 ,
    \s_axis_video_tdata[84]_0 ,
    \s_axis_video_tdata[85]_0 ,
    \s_axis_video_tdata[86]_0 ,
    \s_axis_video_tdata[87]_0 ,
    din,
    tuser_from_remap,
    fid_from_remap,
    \aclk_tdata_odd_reg[55]_0 ,
    tlast_from_remap,
    overflow,
    \aclk_tdata_even_reg[55]_0 ,
    \aclk_tdata_odd_reg[55]_1 ,
    \syncstages_ff_reg[3]_2 ,
    remap_420_en,
    aclk,
    s_axis_video_tuser,
    fid,
    aclken,
    s_axis_video_tlast,
    \FSM_onehot_aclk_state_reg[1]_4 ,
    \FSM_onehot_aclk_state_reg[3]_1 ,
    aclk_fid_reg_1,
    aclk_fid_reg_2,
    s_axis_video_tdata,
    aclk_tlast_reg_1,
    aclk_tuser_reg_1,
    aclk_tuser_reg_2,
    aclk_tuser_reg_3,
    \FSM_onehot_aclk_state_reg[3]_2 ,
    \aclk_tdata_dly_reg[95] ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ,
    aclk_fid_reg_3,
    \FSM_onehot_aclk_state_reg[2]_0 ,
    s_axis_video_tready,
    \FSM_onehot_aclk_state_reg[3]_3 ,
    aclk_tuser_reg_4,
    aclk_reset,
    first_sof,
    s_axis_video_tvalid,
    aresetn,
    locked_from_sync_dly,
    first_sof_reg,
    sof_state_out,
    \aclk_tdata_dly_reg[95]_0 ,
    aclk_fid_reg_4,
    aclk_fid_reg_5,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ,
    overflow_1);
  output dest_out;
  output aclk_tuser_reg_0;
  output s_axis_video_tuser_0;
  output \FSM_onehot_aclk_state_reg[1]_0 ;
  output [0:0]Q;
  output aclk_fid_reg_0;
  output \FSM_onehot_aclk_state_reg[1]_1 ;
  output s_axis_video_tdata_8_sp_1;
  output s_axis_video_tdata_9_sp_1;
  output s_axis_video_tdata_10_sp_1;
  output s_axis_video_tdata_11_sp_1;
  output s_axis_video_tdata_12_sp_1;
  output s_axis_video_tdata_13_sp_1;
  output s_axis_video_tdata_14_sp_1;
  output s_axis_video_tdata_15_sp_1;
  output s_axis_video_tdata_32_sp_1;
  output s_axis_video_tdata_33_sp_1;
  output s_axis_video_tdata_34_sp_1;
  output s_axis_video_tdata_35_sp_1;
  output s_axis_video_tdata_36_sp_1;
  output s_axis_video_tdata_37_sp_1;
  output s_axis_video_tdata_38_sp_1;
  output s_axis_video_tdata_39_sp_1;
  output s_axis_video_tdata_56_sp_1;
  output s_axis_video_tdata_57_sp_1;
  output s_axis_video_tdata_58_sp_1;
  output s_axis_video_tdata_59_sp_1;
  output s_axis_video_tdata_60_sp_1;
  output s_axis_video_tdata_61_sp_1;
  output s_axis_video_tdata_62_sp_1;
  output s_axis_video_tdata_63_sp_1;
  output s_axis_video_tdata_80_sp_1;
  output s_axis_video_tdata_81_sp_1;
  output s_axis_video_tdata_82_sp_1;
  output s_axis_video_tdata_83_sp_1;
  output s_axis_video_tdata_84_sp_1;
  output s_axis_video_tdata_85_sp_1;
  output s_axis_video_tdata_86_sp_1;
  output s_axis_video_tdata_87_sp_1;
  output aclk_tlast_reg_0;
  output aclk_tuser_dly_reg_0;
  output aresetn_0;
  output sof_state_out_reg;
  output \FSM_onehot_aclk_state_reg[1]_2 ;
  output \FSM_onehot_aclk_state_reg[1]_3 ;
  output \syncstages_ff_reg[3] ;
  output [0:0]D;
  output \FSM_onehot_aclk_state_reg[3]_0 ;
  output \syncstages_ff_reg[3]_0 ;
  output \syncstages_ff_reg[3]_1 ;
  output \s_axis_video_tdata[8]_0 ;
  output \s_axis_video_tdata[9]_0 ;
  output \s_axis_video_tdata[10]_0 ;
  output \s_axis_video_tdata[11]_0 ;
  output \s_axis_video_tdata[12]_0 ;
  output \s_axis_video_tdata[13]_0 ;
  output \s_axis_video_tdata[14]_0 ;
  output \s_axis_video_tdata[15]_0 ;
  output \s_axis_video_tdata[32]_0 ;
  output \s_axis_video_tdata[33]_0 ;
  output \s_axis_video_tdata[34]_0 ;
  output \s_axis_video_tdata[35]_0 ;
  output \s_axis_video_tdata[36]_0 ;
  output \s_axis_video_tdata[37]_0 ;
  output \s_axis_video_tdata[38]_0 ;
  output \s_axis_video_tdata[39]_0 ;
  output \s_axis_video_tdata[56]_0 ;
  output \s_axis_video_tdata[57]_0 ;
  output \s_axis_video_tdata[58]_0 ;
  output \s_axis_video_tdata[59]_0 ;
  output \s_axis_video_tdata[60]_0 ;
  output \s_axis_video_tdata[61]_0 ;
  output \s_axis_video_tdata[62]_0 ;
  output \s_axis_video_tdata[63]_0 ;
  output \s_axis_video_tdata[80]_0 ;
  output \s_axis_video_tdata[81]_0 ;
  output \s_axis_video_tdata[82]_0 ;
  output \s_axis_video_tdata[83]_0 ;
  output \s_axis_video_tdata[84]_0 ;
  output \s_axis_video_tdata[85]_0 ;
  output \s_axis_video_tdata[86]_0 ;
  output \s_axis_video_tdata[87]_0 ;
  output [1:0]din;
  output tuser_from_remap;
  output fid_from_remap;
  output [95:0]\aclk_tdata_odd_reg[55]_0 ;
  output tlast_from_remap;
  output overflow;
  output [31:0]\aclk_tdata_even_reg[55]_0 ;
  output [31:0]\aclk_tdata_odd_reg[55]_1 ;
  output \syncstages_ff_reg[3]_2 ;
  input remap_420_en;
  input aclk;
  input s_axis_video_tuser;
  input fid;
  input aclken;
  input s_axis_video_tlast;
  input \FSM_onehot_aclk_state_reg[1]_4 ;
  input \FSM_onehot_aclk_state_reg[3]_1 ;
  input aclk_fid_reg_1;
  input aclk_fid_reg_2;
  input [95:0]s_axis_video_tdata;
  input aclk_tlast_reg_1;
  input aclk_tuser_reg_1;
  input aclk_tuser_reg_2;
  input aclk_tuser_reg_3;
  input \FSM_onehot_aclk_state_reg[3]_2 ;
  input [2:0]\aclk_tdata_dly_reg[95] ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ;
  input aclk_fid_reg_3;
  input \FSM_onehot_aclk_state_reg[2]_0 ;
  input s_axis_video_tready;
  input \FSM_onehot_aclk_state_reg[3]_3 ;
  input aclk_tuser_reg_4;
  input aclk_reset;
  input first_sof;
  input s_axis_video_tvalid;
  input aresetn;
  input locked_from_sync_dly;
  input first_sof_reg;
  input sof_state_out;
  input \aclk_tdata_dly_reg[95]_0 ;
  input aclk_fid_reg_4;
  input aclk_fid_reg_5;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ;
  input overflow_1;

  wire CDC_SINGLE_INST_n_1;
  wire CDC_SINGLE_INST_n_11;
  wire CDC_SINGLE_INST_n_12;
  wire CDC_SINGLE_INST_n_13;
  wire CDC_SINGLE_INST_n_14;
  wire CDC_SINGLE_INST_n_15;
  wire CDC_SINGLE_INST_n_16;
  wire CDC_SINGLE_INST_n_17;
  wire CDC_SINGLE_INST_n_18;
  wire CDC_SINGLE_INST_n_19;
  wire CDC_SINGLE_INST_n_2;
  wire CDC_SINGLE_INST_n_20;
  wire CDC_SINGLE_INST_n_21;
  wire CDC_SINGLE_INST_n_22;
  wire CDC_SINGLE_INST_n_23;
  wire CDC_SINGLE_INST_n_24;
  wire CDC_SINGLE_INST_n_25;
  wire CDC_SINGLE_INST_n_26;
  wire CDC_SINGLE_INST_n_27;
  wire CDC_SINGLE_INST_n_28;
  wire CDC_SINGLE_INST_n_29;
  wire CDC_SINGLE_INST_n_3;
  wire CDC_SINGLE_INST_n_30;
  wire CDC_SINGLE_INST_n_31;
  wire CDC_SINGLE_INST_n_32;
  wire CDC_SINGLE_INST_n_33;
  wire CDC_SINGLE_INST_n_34;
  wire CDC_SINGLE_INST_n_35;
  wire CDC_SINGLE_INST_n_36;
  wire CDC_SINGLE_INST_n_37;
  wire CDC_SINGLE_INST_n_38;
  wire CDC_SINGLE_INST_n_39;
  wire CDC_SINGLE_INST_n_4;
  wire CDC_SINGLE_INST_n_40;
  wire CDC_SINGLE_INST_n_41;
  wire CDC_SINGLE_INST_n_42;
  wire CDC_SINGLE_INST_n_43;
  wire CDC_SINGLE_INST_n_44;
  wire CDC_SINGLE_INST_n_45;
  wire CDC_SINGLE_INST_n_46;
  wire CDC_SINGLE_INST_n_47;
  wire CDC_SINGLE_INST_n_48;
  wire CDC_SINGLE_INST_n_49;
  wire CDC_SINGLE_INST_n_5;
  wire CDC_SINGLE_INST_n_50;
  wire CDC_SINGLE_INST_n_51;
  wire CDC_SINGLE_INST_n_52;
  wire CDC_SINGLE_INST_n_53;
  wire CDC_SINGLE_INST_n_54;
  wire CDC_SINGLE_INST_n_55;
  wire CDC_SINGLE_INST_n_56;
  wire CDC_SINGLE_INST_n_57;
  wire CDC_SINGLE_INST_n_58;
  wire CDC_SINGLE_INST_n_59;
  wire CDC_SINGLE_INST_n_6;
  wire CDC_SINGLE_INST_n_60;
  wire CDC_SINGLE_INST_n_61;
  wire CDC_SINGLE_INST_n_62;
  wire CDC_SINGLE_INST_n_63;
  wire CDC_SINGLE_INST_n_64;
  wire CDC_SINGLE_INST_n_65;
  wire CDC_SINGLE_INST_n_66;
  wire CDC_SINGLE_INST_n_67;
  wire CDC_SINGLE_INST_n_68;
  wire CDC_SINGLE_INST_n_69;
  wire CDC_SINGLE_INST_n_70;
  wire CDC_SINGLE_INST_n_71;
  wire CDC_SINGLE_INST_n_72;
  wire CDC_SINGLE_INST_n_73;
  wire CDC_SINGLE_INST_n_74;
  wire CDC_SINGLE_INST_n_75;
  wire CDC_SINGLE_INST_n_76;
  wire CDC_SINGLE_INST_n_78;
  wire CDC_SINGLE_INST_n_79;
  wire CDC_SINGLE_INST_n_80;
  wire [0:0]D;
  wire FIFO_INST_n_103;
  wire \FSM_onehot_aclk_state[0]_i_2_n_0 ;
  wire \FSM_onehot_aclk_state[1]_i_3_n_0 ;
  wire \FSM_onehot_aclk_state[1]_i_4_n_0 ;
  wire \FSM_onehot_aclk_state[2]_i_6_n_0 ;
  wire \FSM_onehot_aclk_state[2]_i_9_n_0 ;
  wire \FSM_onehot_aclk_state[3]_i_3_n_0 ;
  wire \FSM_onehot_aclk_state[3]_i_4_n_0 ;
  wire \FSM_onehot_aclk_state[3]_i_5_n_0 ;
  wire \FSM_onehot_aclk_state[4]_i_2__0_n_0 ;
  wire \FSM_onehot_aclk_state[4]_i_4_n_0 ;
  wire \FSM_onehot_aclk_state_reg[1]_0 ;
  wire \FSM_onehot_aclk_state_reg[1]_1 ;
  wire \FSM_onehot_aclk_state_reg[1]_2 ;
  wire \FSM_onehot_aclk_state_reg[1]_3 ;
  wire \FSM_onehot_aclk_state_reg[1]_4 ;
  wire \FSM_onehot_aclk_state_reg[2]_0 ;
  wire \FSM_onehot_aclk_state_reg[3]_0 ;
  wire \FSM_onehot_aclk_state_reg[3]_1 ;
  wire \FSM_onehot_aclk_state_reg[3]_2 ;
  wire \FSM_onehot_aclk_state_reg[3]_3 ;
  wire \FSM_onehot_aclk_state_reg_n_0_[3] ;
  wire \FSM_onehot_aclk_state_reg_n_0_[4] ;
  wire \FSM_onehot_aclk_state_reg_n_0_[5] ;
  wire [0:0]Q;
  wire XPM_FIFO_SYNC_INST_i_5_n_0;
  wire aclk;
  wire aclk_fid_dly;
  wire aclk_fid_dly6_out;
  wire aclk_fid_reg_0;
  wire aclk_fid_reg_1;
  wire aclk_fid_reg_2;
  wire aclk_fid_reg_3;
  wire aclk_fid_reg_4;
  wire aclk_fid_reg_5;
  wire aclk_fid_reg_n_0;
  wire aclk_line_phase;
  wire aclk_line_phase_i_2_n_0;
  wire aclk_line_phase_reg_n_0;
  wire [32:32]aclk_rd_data;
  wire aclk_rd_en;
  wire aclk_reset;
  wire [2:0]\aclk_tdata_dly_reg[95] ;
  wire \aclk_tdata_dly_reg[95]_0 ;
  wire \aclk_tdata_even_dly_reg_n_0_[0] ;
  wire \aclk_tdata_even_dly_reg_n_0_[10] ;
  wire \aclk_tdata_even_dly_reg_n_0_[11] ;
  wire \aclk_tdata_even_dly_reg_n_0_[12] ;
  wire \aclk_tdata_even_dly_reg_n_0_[13] ;
  wire \aclk_tdata_even_dly_reg_n_0_[14] ;
  wire \aclk_tdata_even_dly_reg_n_0_[15] ;
  wire \aclk_tdata_even_dly_reg_n_0_[16] ;
  wire \aclk_tdata_even_dly_reg_n_0_[17] ;
  wire \aclk_tdata_even_dly_reg_n_0_[18] ;
  wire \aclk_tdata_even_dly_reg_n_0_[19] ;
  wire \aclk_tdata_even_dly_reg_n_0_[1] ;
  wire \aclk_tdata_even_dly_reg_n_0_[20] ;
  wire \aclk_tdata_even_dly_reg_n_0_[21] ;
  wire \aclk_tdata_even_dly_reg_n_0_[22] ;
  wire \aclk_tdata_even_dly_reg_n_0_[23] ;
  wire \aclk_tdata_even_dly_reg_n_0_[24] ;
  wire \aclk_tdata_even_dly_reg_n_0_[25] ;
  wire \aclk_tdata_even_dly_reg_n_0_[26] ;
  wire \aclk_tdata_even_dly_reg_n_0_[27] ;
  wire \aclk_tdata_even_dly_reg_n_0_[28] ;
  wire \aclk_tdata_even_dly_reg_n_0_[29] ;
  wire \aclk_tdata_even_dly_reg_n_0_[2] ;
  wire \aclk_tdata_even_dly_reg_n_0_[30] ;
  wire \aclk_tdata_even_dly_reg_n_0_[31] ;
  wire \aclk_tdata_even_dly_reg_n_0_[32] ;
  wire \aclk_tdata_even_dly_reg_n_0_[33] ;
  wire \aclk_tdata_even_dly_reg_n_0_[34] ;
  wire \aclk_tdata_even_dly_reg_n_0_[35] ;
  wire \aclk_tdata_even_dly_reg_n_0_[36] ;
  wire \aclk_tdata_even_dly_reg_n_0_[37] ;
  wire \aclk_tdata_even_dly_reg_n_0_[38] ;
  wire \aclk_tdata_even_dly_reg_n_0_[39] ;
  wire \aclk_tdata_even_dly_reg_n_0_[3] ;
  wire \aclk_tdata_even_dly_reg_n_0_[40] ;
  wire \aclk_tdata_even_dly_reg_n_0_[41] ;
  wire \aclk_tdata_even_dly_reg_n_0_[42] ;
  wire \aclk_tdata_even_dly_reg_n_0_[43] ;
  wire \aclk_tdata_even_dly_reg_n_0_[44] ;
  wire \aclk_tdata_even_dly_reg_n_0_[45] ;
  wire \aclk_tdata_even_dly_reg_n_0_[46] ;
  wire \aclk_tdata_even_dly_reg_n_0_[47] ;
  wire \aclk_tdata_even_dly_reg_n_0_[48] ;
  wire \aclk_tdata_even_dly_reg_n_0_[49] ;
  wire \aclk_tdata_even_dly_reg_n_0_[4] ;
  wire \aclk_tdata_even_dly_reg_n_0_[50] ;
  wire \aclk_tdata_even_dly_reg_n_0_[51] ;
  wire \aclk_tdata_even_dly_reg_n_0_[52] ;
  wire \aclk_tdata_even_dly_reg_n_0_[53] ;
  wire \aclk_tdata_even_dly_reg_n_0_[54] ;
  wire \aclk_tdata_even_dly_reg_n_0_[55] ;
  wire \aclk_tdata_even_dly_reg_n_0_[56] ;
  wire \aclk_tdata_even_dly_reg_n_0_[57] ;
  wire \aclk_tdata_even_dly_reg_n_0_[58] ;
  wire \aclk_tdata_even_dly_reg_n_0_[59] ;
  wire \aclk_tdata_even_dly_reg_n_0_[5] ;
  wire \aclk_tdata_even_dly_reg_n_0_[60] ;
  wire \aclk_tdata_even_dly_reg_n_0_[61] ;
  wire \aclk_tdata_even_dly_reg_n_0_[62] ;
  wire \aclk_tdata_even_dly_reg_n_0_[63] ;
  wire \aclk_tdata_even_dly_reg_n_0_[6] ;
  wire \aclk_tdata_even_dly_reg_n_0_[7] ;
  wire \aclk_tdata_even_dly_reg_n_0_[8] ;
  wire \aclk_tdata_even_dly_reg_n_0_[9] ;
  wire [31:0]\aclk_tdata_even_reg[55]_0 ;
  wire \aclk_tdata_even_reg_n_0_[10] ;
  wire \aclk_tdata_even_reg_n_0_[11] ;
  wire \aclk_tdata_even_reg_n_0_[12] ;
  wire \aclk_tdata_even_reg_n_0_[13] ;
  wire \aclk_tdata_even_reg_n_0_[14] ;
  wire \aclk_tdata_even_reg_n_0_[15] ;
  wire \aclk_tdata_even_reg_n_0_[40] ;
  wire \aclk_tdata_even_reg_n_0_[41] ;
  wire \aclk_tdata_even_reg_n_0_[42] ;
  wire \aclk_tdata_even_reg_n_0_[43] ;
  wire \aclk_tdata_even_reg_n_0_[44] ;
  wire \aclk_tdata_even_reg_n_0_[45] ;
  wire \aclk_tdata_even_reg_n_0_[46] ;
  wire \aclk_tdata_even_reg_n_0_[47] ;
  wire \aclk_tdata_even_reg_n_0_[8] ;
  wire \aclk_tdata_even_reg_n_0_[9] ;
  wire [95:0]\aclk_tdata_odd_reg[55]_0 ;
  wire [31:0]\aclk_tdata_odd_reg[55]_1 ;
  wire \aclk_tdata_odd_reg_n_0_[10] ;
  wire \aclk_tdata_odd_reg_n_0_[11] ;
  wire \aclk_tdata_odd_reg_n_0_[12] ;
  wire \aclk_tdata_odd_reg_n_0_[13] ;
  wire \aclk_tdata_odd_reg_n_0_[14] ;
  wire \aclk_tdata_odd_reg_n_0_[15] ;
  wire \aclk_tdata_odd_reg_n_0_[40] ;
  wire \aclk_tdata_odd_reg_n_0_[41] ;
  wire \aclk_tdata_odd_reg_n_0_[42] ;
  wire \aclk_tdata_odd_reg_n_0_[43] ;
  wire \aclk_tdata_odd_reg_n_0_[44] ;
  wire \aclk_tdata_odd_reg_n_0_[45] ;
  wire \aclk_tdata_odd_reg_n_0_[46] ;
  wire \aclk_tdata_odd_reg_n_0_[47] ;
  wire \aclk_tdata_odd_reg_n_0_[8] ;
  wire \aclk_tdata_odd_reg_n_0_[9] ;
  wire aclk_tlast;
  wire aclk_tlast_reg_0;
  wire aclk_tlast_reg_1;
  wire aclk_tuser_dly;
  wire aclk_tuser_dly_i_2_n_0;
  wire aclk_tuser_dly_reg_0;
  wire aclk_tuser_i_4__0_n_0;
  wire aclk_tuser_i_5_n_0;
  wire aclk_tuser_reg_0;
  wire aclk_tuser_reg_1;
  wire aclk_tuser_reg_2;
  wire aclk_tuser_reg_3;
  wire aclk_tuser_reg_4;
  wire [32:0]aclk_wr_data;
  wire aclk_wr_en;
  wire aclk_wr_en0;
  wire aclken;
  wire aresetn;
  wire aresetn_0;
  wire dest_out;
  wire [1:0]din;
  wire fid;
  wire fid_from_remap;
  wire first_sof;
  wire first_sof_reg;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ;
  wire locked_from_sync_dly;
  wire overflow;
  wire overflow_0;
  wire overflow_1;
  wire [2:0]p_0_in;
  wire remap_420_en;
  wire reset;
  wire reset_pulse0;
  wire \reset_pulse_reg_n_0_[0] ;
  wire [95:0]s_axis_video_tdata;
  wire \s_axis_video_tdata[10]_0 ;
  wire \s_axis_video_tdata[11]_0 ;
  wire \s_axis_video_tdata[12]_0 ;
  wire \s_axis_video_tdata[13]_0 ;
  wire \s_axis_video_tdata[14]_0 ;
  wire \s_axis_video_tdata[15]_0 ;
  wire \s_axis_video_tdata[32]_0 ;
  wire \s_axis_video_tdata[33]_0 ;
  wire \s_axis_video_tdata[34]_0 ;
  wire \s_axis_video_tdata[35]_0 ;
  wire \s_axis_video_tdata[36]_0 ;
  wire \s_axis_video_tdata[37]_0 ;
  wire \s_axis_video_tdata[38]_0 ;
  wire \s_axis_video_tdata[39]_0 ;
  wire \s_axis_video_tdata[56]_0 ;
  wire \s_axis_video_tdata[57]_0 ;
  wire \s_axis_video_tdata[58]_0 ;
  wire \s_axis_video_tdata[59]_0 ;
  wire \s_axis_video_tdata[60]_0 ;
  wire \s_axis_video_tdata[61]_0 ;
  wire \s_axis_video_tdata[62]_0 ;
  wire \s_axis_video_tdata[63]_0 ;
  wire \s_axis_video_tdata[80]_0 ;
  wire \s_axis_video_tdata[81]_0 ;
  wire \s_axis_video_tdata[82]_0 ;
  wire \s_axis_video_tdata[83]_0 ;
  wire \s_axis_video_tdata[84]_0 ;
  wire \s_axis_video_tdata[85]_0 ;
  wire \s_axis_video_tdata[86]_0 ;
  wire \s_axis_video_tdata[87]_0 ;
  wire \s_axis_video_tdata[8]_0 ;
  wire \s_axis_video_tdata[9]_0 ;
  wire s_axis_video_tdata_10_sn_1;
  wire s_axis_video_tdata_11_sn_1;
  wire s_axis_video_tdata_12_sn_1;
  wire s_axis_video_tdata_13_sn_1;
  wire s_axis_video_tdata_14_sn_1;
  wire s_axis_video_tdata_15_sn_1;
  wire s_axis_video_tdata_32_sn_1;
  wire s_axis_video_tdata_33_sn_1;
  wire s_axis_video_tdata_34_sn_1;
  wire s_axis_video_tdata_35_sn_1;
  wire s_axis_video_tdata_36_sn_1;
  wire s_axis_video_tdata_37_sn_1;
  wire s_axis_video_tdata_38_sn_1;
  wire s_axis_video_tdata_39_sn_1;
  wire s_axis_video_tdata_56_sn_1;
  wire s_axis_video_tdata_57_sn_1;
  wire s_axis_video_tdata_58_sn_1;
  wire s_axis_video_tdata_59_sn_1;
  wire s_axis_video_tdata_60_sn_1;
  wire s_axis_video_tdata_61_sn_1;
  wire s_axis_video_tdata_62_sn_1;
  wire s_axis_video_tdata_63_sn_1;
  wire s_axis_video_tdata_80_sn_1;
  wire s_axis_video_tdata_81_sn_1;
  wire s_axis_video_tdata_82_sn_1;
  wire s_axis_video_tdata_83_sn_1;
  wire s_axis_video_tdata_84_sn_1;
  wire s_axis_video_tdata_85_sn_1;
  wire s_axis_video_tdata_86_sn_1;
  wire s_axis_video_tdata_87_sn_1;
  wire s_axis_video_tdata_8_sn_1;
  wire s_axis_video_tdata_9_sn_1;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tuser_0;
  wire s_axis_video_tvalid;
  wire sof_state_out;
  wire sof_state_out_reg;
  wire \syncstages_ff_reg[3] ;
  wire \syncstages_ff_reg[3]_0 ;
  wire \syncstages_ff_reg[3]_1 ;
  wire \syncstages_ff_reg[3]_2 ;
  wire tlast_from_remap;
  wire tuser_from_remap;
  wire underflow;

  assign s_axis_video_tdata_10_sp_1 = s_axis_video_tdata_10_sn_1;
  assign s_axis_video_tdata_11_sp_1 = s_axis_video_tdata_11_sn_1;
  assign s_axis_video_tdata_12_sp_1 = s_axis_video_tdata_12_sn_1;
  assign s_axis_video_tdata_13_sp_1 = s_axis_video_tdata_13_sn_1;
  assign s_axis_video_tdata_14_sp_1 = s_axis_video_tdata_14_sn_1;
  assign s_axis_video_tdata_15_sp_1 = s_axis_video_tdata_15_sn_1;
  assign s_axis_video_tdata_32_sp_1 = s_axis_video_tdata_32_sn_1;
  assign s_axis_video_tdata_33_sp_1 = s_axis_video_tdata_33_sn_1;
  assign s_axis_video_tdata_34_sp_1 = s_axis_video_tdata_34_sn_1;
  assign s_axis_video_tdata_35_sp_1 = s_axis_video_tdata_35_sn_1;
  assign s_axis_video_tdata_36_sp_1 = s_axis_video_tdata_36_sn_1;
  assign s_axis_video_tdata_37_sp_1 = s_axis_video_tdata_37_sn_1;
  assign s_axis_video_tdata_38_sp_1 = s_axis_video_tdata_38_sn_1;
  assign s_axis_video_tdata_39_sp_1 = s_axis_video_tdata_39_sn_1;
  assign s_axis_video_tdata_56_sp_1 = s_axis_video_tdata_56_sn_1;
  assign s_axis_video_tdata_57_sp_1 = s_axis_video_tdata_57_sn_1;
  assign s_axis_video_tdata_58_sp_1 = s_axis_video_tdata_58_sn_1;
  assign s_axis_video_tdata_59_sp_1 = s_axis_video_tdata_59_sn_1;
  assign s_axis_video_tdata_60_sp_1 = s_axis_video_tdata_60_sn_1;
  assign s_axis_video_tdata_61_sp_1 = s_axis_video_tdata_61_sn_1;
  assign s_axis_video_tdata_62_sp_1 = s_axis_video_tdata_62_sn_1;
  assign s_axis_video_tdata_63_sp_1 = s_axis_video_tdata_63_sn_1;
  assign s_axis_video_tdata_80_sp_1 = s_axis_video_tdata_80_sn_1;
  assign s_axis_video_tdata_81_sp_1 = s_axis_video_tdata_81_sn_1;
  assign s_axis_video_tdata_82_sp_1 = s_axis_video_tdata_82_sn_1;
  assign s_axis_video_tdata_83_sp_1 = s_axis_video_tdata_83_sn_1;
  assign s_axis_video_tdata_84_sp_1 = s_axis_video_tdata_84_sn_1;
  assign s_axis_video_tdata_85_sp_1 = s_axis_video_tdata_85_sn_1;
  assign s_axis_video_tdata_86_sp_1 = s_axis_video_tdata_86_sn_1;
  assign s_axis_video_tdata_87_sp_1 = s_axis_video_tdata_87_sn_1;
  assign s_axis_video_tdata_8_sp_1 = s_axis_video_tdata_8_sn_1;
  assign s_axis_video_tdata_9_sp_1 = s_axis_video_tdata_9_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_cdc_single_3 CDC_SINGLE_INST
       (.D({CDC_SINGLE_INST_n_1,CDC_SINGLE_INST_n_2,CDC_SINGLE_INST_n_3,CDC_SINGLE_INST_n_4,CDC_SINGLE_INST_n_5,CDC_SINGLE_INST_n_6}),
        .E(CDC_SINGLE_INST_n_79),
        .\FSM_onehot_aclk_state_reg[0] (CDC_SINGLE_INST_n_78),
        .\FSM_onehot_aclk_state_reg[0]_0 (\FSM_onehot_aclk_state[0]_i_2_n_0 ),
        .\FSM_onehot_aclk_state_reg[1] (\FSM_onehot_aclk_state_reg[1]_0 ),
        .\FSM_onehot_aclk_state_reg[1]_0 (\FSM_onehot_aclk_state_reg[1]_1 ),
        .\FSM_onehot_aclk_state_reg[1]_1 (\FSM_onehot_aclk_state_reg[1]_2 ),
        .\FSM_onehot_aclk_state_reg[1]_2 (\FSM_onehot_aclk_state_reg[1]_3 ),
        .\FSM_onehot_aclk_state_reg[1]_3 (\FSM_onehot_aclk_state_reg[1]_4 ),
        .\FSM_onehot_aclk_state_reg[1]_4 (\FSM_onehot_aclk_state[1]_i_3_n_0 ),
        .\FSM_onehot_aclk_state_reg[1]_5 (\FSM_onehot_aclk_state[1]_i_4_n_0 ),
        .\FSM_onehot_aclk_state_reg[2] (\FSM_onehot_aclk_state_reg[2]_0 ),
        .\FSM_onehot_aclk_state_reg[2]_0 (\FSM_onehot_aclk_state[2]_i_6_n_0 ),
        .\FSM_onehot_aclk_state_reg[2]_1 (\FSM_onehot_aclk_state[2]_i_9_n_0 ),
        .\FSM_onehot_aclk_state_reg[3] (\FSM_onehot_aclk_state_reg[3]_0 ),
        .\FSM_onehot_aclk_state_reg[3]_0 (\FSM_onehot_aclk_state_reg[3]_1 ),
        .\FSM_onehot_aclk_state_reg[3]_1 (\FSM_onehot_aclk_state[3]_i_3_n_0 ),
        .\FSM_onehot_aclk_state_reg[3]_2 (\FSM_onehot_aclk_state[3]_i_4_n_0 ),
        .\FSM_onehot_aclk_state_reg[3]_3 (\FSM_onehot_aclk_state[3]_i_5_n_0 ),
        .\FSM_onehot_aclk_state_reg[3]_4 (\FSM_onehot_aclk_state_reg[3]_2 ),
        .\FSM_onehot_aclk_state_reg[3]_5 (\FSM_onehot_aclk_state_reg[3]_3 ),
        .\FSM_onehot_aclk_state_reg[4] (\FSM_onehot_aclk_state[4]_i_2__0_n_0 ),
        .\FSM_onehot_aclk_state_reg[4]_0 (\FSM_onehot_aclk_state[4]_i_4_n_0 ),
        .Q({\FSM_onehot_aclk_state_reg_n_0_[5] ,\FSM_onehot_aclk_state_reg_n_0_[4] ,\FSM_onehot_aclk_state_reg_n_0_[3] ,aclk_tlast,Q,aclk_line_phase}),
        .aclk(aclk),
        .aclk_fid_dly(aclk_fid_dly),
        .aclk_fid_dly_reg(CDC_SINGLE_INST_n_75),
        .aclk_fid_reg(aclk_fid_reg_0),
        .aclk_fid_reg_0(aclk_fid_reg_n_0),
        .aclk_fid_reg_1(aclk_fid_reg_1),
        .aclk_fid_reg_2(aclk_fid_reg_2),
        .aclk_fid_reg_3(aclk_fid_reg_3),
        .aclk_fid_reg_4(aclk_tuser_dly_i_2_n_0),
        .aclk_fid_reg_5(aclk_fid_reg_4),
        .aclk_fid_reg_6(aclk_fid_reg_5),
        .aclk_line_phase_reg(aclk_line_phase_i_2_n_0),
        .aclk_line_phase_reg_0(p_0_in[2]),
        .aclk_line_phase_reg_1(FIFO_INST_n_103),
        .aclk_reset(aclk_reset),
        .\aclk_tdata_dly_reg[47] (\aclk_tdata_even_reg[55]_0 ),
        .\aclk_tdata_dly_reg[95] (\aclk_tdata_dly_reg[95] ),
        .\aclk_tdata_dly_reg[95]_0 (\aclk_tdata_dly_reg[95]_0 ),
        .\aclk_tdata_dly_reg[95]_1 (\aclk_tdata_odd_reg[55]_1 ),
        .\aclk_tdata_even_dly_reg[63] ({CDC_SINGLE_INST_n_11,CDC_SINGLE_INST_n_12,CDC_SINGLE_INST_n_13,CDC_SINGLE_INST_n_14,CDC_SINGLE_INST_n_15,CDC_SINGLE_INST_n_16,CDC_SINGLE_INST_n_17,CDC_SINGLE_INST_n_18,CDC_SINGLE_INST_n_19,CDC_SINGLE_INST_n_20,CDC_SINGLE_INST_n_21,CDC_SINGLE_INST_n_22,CDC_SINGLE_INST_n_23,CDC_SINGLE_INST_n_24,CDC_SINGLE_INST_n_25,CDC_SINGLE_INST_n_26,CDC_SINGLE_INST_n_27,CDC_SINGLE_INST_n_28,CDC_SINGLE_INST_n_29,CDC_SINGLE_INST_n_30,CDC_SINGLE_INST_n_31,CDC_SINGLE_INST_n_32,CDC_SINGLE_INST_n_33,CDC_SINGLE_INST_n_34,CDC_SINGLE_INST_n_35,CDC_SINGLE_INST_n_36,CDC_SINGLE_INST_n_37,CDC_SINGLE_INST_n_38,CDC_SINGLE_INST_n_39,CDC_SINGLE_INST_n_40,CDC_SINGLE_INST_n_41,CDC_SINGLE_INST_n_42,CDC_SINGLE_INST_n_43,CDC_SINGLE_INST_n_44,CDC_SINGLE_INST_n_45,CDC_SINGLE_INST_n_46,CDC_SINGLE_INST_n_47,CDC_SINGLE_INST_n_48,CDC_SINGLE_INST_n_49,CDC_SINGLE_INST_n_50,CDC_SINGLE_INST_n_51,CDC_SINGLE_INST_n_52,CDC_SINGLE_INST_n_53,CDC_SINGLE_INST_n_54,CDC_SINGLE_INST_n_55,CDC_SINGLE_INST_n_56,CDC_SINGLE_INST_n_57,CDC_SINGLE_INST_n_58,CDC_SINGLE_INST_n_59,CDC_SINGLE_INST_n_60,CDC_SINGLE_INST_n_61,CDC_SINGLE_INST_n_62,CDC_SINGLE_INST_n_63,CDC_SINGLE_INST_n_64,CDC_SINGLE_INST_n_65,CDC_SINGLE_INST_n_66,CDC_SINGLE_INST_n_67,CDC_SINGLE_INST_n_68,CDC_SINGLE_INST_n_69,CDC_SINGLE_INST_n_70,CDC_SINGLE_INST_n_71,CDC_SINGLE_INST_n_72,CDC_SINGLE_INST_n_73,CDC_SINGLE_INST_n_74}),
        .\aclk_tdata_even_reg[63] ({\aclk_tdata_even_dly_reg_n_0_[63] ,\aclk_tdata_even_dly_reg_n_0_[62] ,\aclk_tdata_even_dly_reg_n_0_[61] ,\aclk_tdata_even_dly_reg_n_0_[60] ,\aclk_tdata_even_dly_reg_n_0_[59] ,\aclk_tdata_even_dly_reg_n_0_[58] ,\aclk_tdata_even_dly_reg_n_0_[57] ,\aclk_tdata_even_dly_reg_n_0_[56] ,\aclk_tdata_even_dly_reg_n_0_[55] ,\aclk_tdata_even_dly_reg_n_0_[54] ,\aclk_tdata_even_dly_reg_n_0_[53] ,\aclk_tdata_even_dly_reg_n_0_[52] ,\aclk_tdata_even_dly_reg_n_0_[51] ,\aclk_tdata_even_dly_reg_n_0_[50] ,\aclk_tdata_even_dly_reg_n_0_[49] ,\aclk_tdata_even_dly_reg_n_0_[48] ,\aclk_tdata_even_dly_reg_n_0_[47] ,\aclk_tdata_even_dly_reg_n_0_[46] ,\aclk_tdata_even_dly_reg_n_0_[45] ,\aclk_tdata_even_dly_reg_n_0_[44] ,\aclk_tdata_even_dly_reg_n_0_[43] ,\aclk_tdata_even_dly_reg_n_0_[42] ,\aclk_tdata_even_dly_reg_n_0_[41] ,\aclk_tdata_even_dly_reg_n_0_[40] ,\aclk_tdata_even_dly_reg_n_0_[39] ,\aclk_tdata_even_dly_reg_n_0_[38] ,\aclk_tdata_even_dly_reg_n_0_[37] ,\aclk_tdata_even_dly_reg_n_0_[36] ,\aclk_tdata_even_dly_reg_n_0_[35] ,\aclk_tdata_even_dly_reg_n_0_[34] ,\aclk_tdata_even_dly_reg_n_0_[33] ,\aclk_tdata_even_dly_reg_n_0_[32] ,\aclk_tdata_even_dly_reg_n_0_[31] ,\aclk_tdata_even_dly_reg_n_0_[30] ,\aclk_tdata_even_dly_reg_n_0_[29] ,\aclk_tdata_even_dly_reg_n_0_[28] ,\aclk_tdata_even_dly_reg_n_0_[27] ,\aclk_tdata_even_dly_reg_n_0_[26] ,\aclk_tdata_even_dly_reg_n_0_[25] ,\aclk_tdata_even_dly_reg_n_0_[24] ,\aclk_tdata_even_dly_reg_n_0_[23] ,\aclk_tdata_even_dly_reg_n_0_[22] ,\aclk_tdata_even_dly_reg_n_0_[21] ,\aclk_tdata_even_dly_reg_n_0_[20] ,\aclk_tdata_even_dly_reg_n_0_[19] ,\aclk_tdata_even_dly_reg_n_0_[18] ,\aclk_tdata_even_dly_reg_n_0_[17] ,\aclk_tdata_even_dly_reg_n_0_[16] ,\aclk_tdata_even_dly_reg_n_0_[15] ,\aclk_tdata_even_dly_reg_n_0_[14] ,\aclk_tdata_even_dly_reg_n_0_[13] ,\aclk_tdata_even_dly_reg_n_0_[12] ,\aclk_tdata_even_dly_reg_n_0_[11] ,\aclk_tdata_even_dly_reg_n_0_[10] ,\aclk_tdata_even_dly_reg_n_0_[9] ,\aclk_tdata_even_dly_reg_n_0_[8] ,\aclk_tdata_even_dly_reg_n_0_[7] ,\aclk_tdata_even_dly_reg_n_0_[6] ,\aclk_tdata_even_dly_reg_n_0_[5] ,\aclk_tdata_even_dly_reg_n_0_[4] ,\aclk_tdata_even_dly_reg_n_0_[3] ,\aclk_tdata_even_dly_reg_n_0_[2] ,\aclk_tdata_even_dly_reg_n_0_[1] ,\aclk_tdata_even_dly_reg_n_0_[0] }),
        .\aclk_tdata_odd_reg[55] ({\aclk_tdata_odd_reg[55]_0 [95:88],\aclk_tdata_odd_reg[55]_0 [79:64],\aclk_tdata_odd_reg[55]_0 [55:40],\aclk_tdata_odd_reg[55]_0 [31:16],\aclk_tdata_odd_reg[55]_0 [7:0]}),
        .aclk_tlast_reg(s_axis_video_tuser_0),
        .aclk_tuser_dly(aclk_tuser_dly),
        .aclk_tuser_dly_reg(aclk_tuser_dly_reg_0),
        .aclk_tuser_dly_reg_0(CDC_SINGLE_INST_n_76),
        .aclk_tuser_dly_reg_1(aclk_tuser_reg_0),
        .aclk_tuser_reg(aclk_tuser_reg_1),
        .aclk_tuser_reg_0(aclk_tuser_reg_2),
        .aclk_tuser_reg_1(aclk_tuser_reg_3),
        .aclk_tuser_reg_2(aclk_tuser_i_4__0_n_0),
        .aclk_tuser_reg_3(aclk_tuser_i_5_n_0),
        .aclk_tuser_reg_4(aclk_tuser_reg_4),
        .aclk_wr_data(aclk_wr_data[32]),
        .aclk_wr_en0(aclk_wr_en0),
        .aclk_wr_en_reg(aclk_line_phase_reg_n_0),
        .aclken(aclken),
        .aclken_0(CDC_SINGLE_INST_n_80),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .dest_out(dest_out),
        .din(din[1]),
        .dout(aclk_rd_data),
        .fid(fid),
        .fid_from_remap(fid_from_remap),
        .first_sof(first_sof),
        .first_sof_reg(first_sof_reg),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .\guf.underflow_i_reg (XPM_FIFO_SYNC_INST_i_5_n_0),
        .locked_from_sync_dly(locked_from_sync_dly),
        .overflow(overflow),
        .overflow_0(overflow_0),
        .overflow_1(overflow_1),
        .rd_en(aclk_rd_en),
        .remap_420_en(remap_420_en),
        .s_axis_video_tdata({s_axis_video_tdata[95:88],s_axis_video_tdata[79:0]}),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .sof_state_out(sof_state_out),
        .sof_state_out_reg(sof_state_out_reg),
        .\syncstages_ff_reg[3] (\syncstages_ff_reg[3] ),
        .\syncstages_ff_reg[3]_0 (D),
        .\syncstages_ff_reg[3]_1 (\syncstages_ff_reg[3]_0 ),
        .\syncstages_ff_reg[3]_2 (\syncstages_ff_reg[3]_1 ),
        .\syncstages_ff_reg[3]_3 (\syncstages_ff_reg[3]_2 ),
        .tlast_from_remap(tlast_from_remap),
        .tuser_from_remap(tuser_from_remap),
        .underflow(underflow));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_fifo_sync FIFO_INST
       (.Q({\aclk_tdata_even_reg_n_0_[47] ,\aclk_tdata_even_reg_n_0_[46] ,\aclk_tdata_even_reg_n_0_[45] ,\aclk_tdata_even_reg_n_0_[44] ,\aclk_tdata_even_reg_n_0_[43] ,\aclk_tdata_even_reg_n_0_[42] ,\aclk_tdata_even_reg_n_0_[41] ,\aclk_tdata_even_reg_n_0_[40] ,\aclk_tdata_even_reg_n_0_[15] ,\aclk_tdata_even_reg_n_0_[14] ,\aclk_tdata_even_reg_n_0_[13] ,\aclk_tdata_even_reg_n_0_[12] ,\aclk_tdata_even_reg_n_0_[11] ,\aclk_tdata_even_reg_n_0_[10] ,\aclk_tdata_even_reg_n_0_[9] ,\aclk_tdata_even_reg_n_0_[8] }),
        .aclk(aclk),
        .aclk_reset(aclk_reset),
        .\aclk_tdata_dly_reg[87] ({\aclk_tdata_odd_reg_n_0_[47] ,\aclk_tdata_odd_reg_n_0_[46] ,\aclk_tdata_odd_reg_n_0_[45] ,\aclk_tdata_odd_reg_n_0_[44] ,\aclk_tdata_odd_reg_n_0_[43] ,\aclk_tdata_odd_reg_n_0_[42] ,\aclk_tdata_odd_reg_n_0_[41] ,\aclk_tdata_odd_reg_n_0_[40] ,\aclk_tdata_odd_reg_n_0_[15] ,\aclk_tdata_odd_reg_n_0_[14] ,\aclk_tdata_odd_reg_n_0_[13] ,\aclk_tdata_odd_reg_n_0_[12] ,\aclk_tdata_odd_reg_n_0_[11] ,\aclk_tdata_odd_reg_n_0_[10] ,\aclk_tdata_odd_reg_n_0_[9] ,\aclk_tdata_odd_reg_n_0_[8] }),
        .\aclk_tdata_reg[87] (aclk_fid_reg_2),
        .aclk_tlast_reg(aclk_tlast_reg_0),
        .aclk_tlast_reg_0(\FSM_onehot_aclk_state_reg[1]_1 ),
        .aclk_tlast_reg_1(aclk_line_phase_reg_n_0),
        .aclk_tlast_reg_2(aclk_tlast_reg_1),
        .aclk_tlast_reg_3({p_0_in,\reset_pulse_reg_n_0_[0] }),
        .aclk_wr_data(aclk_wr_data),
        .dest_out(dest_out),
        .din(din[0]),
        .dout(aclk_rd_data),
        .first_sof(first_sof),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0 (FIFO_INST_n_103),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ),
        .overflow(overflow_0),
        .rd_en(aclk_rd_en),
        .reset(reset),
        .s_axis_video_tdata({s_axis_video_tdata[87:80],s_axis_video_tdata[63:56],s_axis_video_tdata[39:32],s_axis_video_tdata[15:8]}),
        .\s_axis_video_tdata[10]_0 (\s_axis_video_tdata[10]_0 ),
        .\s_axis_video_tdata[11]_0 (\s_axis_video_tdata[11]_0 ),
        .\s_axis_video_tdata[12]_0 (\s_axis_video_tdata[12]_0 ),
        .\s_axis_video_tdata[13]_0 (\s_axis_video_tdata[13]_0 ),
        .\s_axis_video_tdata[14]_0 (\s_axis_video_tdata[14]_0 ),
        .\s_axis_video_tdata[15]_0 (\s_axis_video_tdata[15]_0 ),
        .\s_axis_video_tdata[32] (s_axis_video_tdata_32_sn_1),
        .\s_axis_video_tdata[32]_0 (\s_axis_video_tdata[32]_0 ),
        .\s_axis_video_tdata[33] (s_axis_video_tdata_33_sn_1),
        .\s_axis_video_tdata[33]_0 (\s_axis_video_tdata[33]_0 ),
        .\s_axis_video_tdata[34] (s_axis_video_tdata_34_sn_1),
        .\s_axis_video_tdata[34]_0 (\s_axis_video_tdata[34]_0 ),
        .\s_axis_video_tdata[35] (s_axis_video_tdata_35_sn_1),
        .\s_axis_video_tdata[35]_0 (\s_axis_video_tdata[35]_0 ),
        .\s_axis_video_tdata[36] (s_axis_video_tdata_36_sn_1),
        .\s_axis_video_tdata[36]_0 (\s_axis_video_tdata[36]_0 ),
        .\s_axis_video_tdata[37] (s_axis_video_tdata_37_sn_1),
        .\s_axis_video_tdata[37]_0 (\s_axis_video_tdata[37]_0 ),
        .\s_axis_video_tdata[38] (s_axis_video_tdata_38_sn_1),
        .\s_axis_video_tdata[38]_0 (\s_axis_video_tdata[38]_0 ),
        .\s_axis_video_tdata[39] (s_axis_video_tdata_39_sn_1),
        .\s_axis_video_tdata[39]_0 (\s_axis_video_tdata[39]_0 ),
        .\s_axis_video_tdata[56] (s_axis_video_tdata_56_sn_1),
        .\s_axis_video_tdata[56]_0 (\s_axis_video_tdata[56]_0 ),
        .\s_axis_video_tdata[57] (s_axis_video_tdata_57_sn_1),
        .\s_axis_video_tdata[57]_0 (\s_axis_video_tdata[57]_0 ),
        .\s_axis_video_tdata[58] (s_axis_video_tdata_58_sn_1),
        .\s_axis_video_tdata[58]_0 (\s_axis_video_tdata[58]_0 ),
        .\s_axis_video_tdata[59] (s_axis_video_tdata_59_sn_1),
        .\s_axis_video_tdata[59]_0 (\s_axis_video_tdata[59]_0 ),
        .\s_axis_video_tdata[60] (s_axis_video_tdata_60_sn_1),
        .\s_axis_video_tdata[60]_0 (\s_axis_video_tdata[60]_0 ),
        .\s_axis_video_tdata[61] (s_axis_video_tdata_61_sn_1),
        .\s_axis_video_tdata[61]_0 (\s_axis_video_tdata[61]_0 ),
        .\s_axis_video_tdata[62] (s_axis_video_tdata_62_sn_1),
        .\s_axis_video_tdata[62]_0 (\s_axis_video_tdata[62]_0 ),
        .\s_axis_video_tdata[63] (s_axis_video_tdata_63_sn_1),
        .\s_axis_video_tdata[63]_0 (\s_axis_video_tdata[63]_0 ),
        .\s_axis_video_tdata[80] (s_axis_video_tdata_80_sn_1),
        .\s_axis_video_tdata[80]_0 (\s_axis_video_tdata[80]_0 ),
        .\s_axis_video_tdata[81] (s_axis_video_tdata_81_sn_1),
        .\s_axis_video_tdata[81]_0 (\s_axis_video_tdata[81]_0 ),
        .\s_axis_video_tdata[82] (s_axis_video_tdata_82_sn_1),
        .\s_axis_video_tdata[82]_0 (\s_axis_video_tdata[82]_0 ),
        .\s_axis_video_tdata[83] (s_axis_video_tdata_83_sn_1),
        .\s_axis_video_tdata[83]_0 (\s_axis_video_tdata[83]_0 ),
        .\s_axis_video_tdata[84] (s_axis_video_tdata_84_sn_1),
        .\s_axis_video_tdata[84]_0 (\s_axis_video_tdata[84]_0 ),
        .\s_axis_video_tdata[85] (s_axis_video_tdata_85_sn_1),
        .\s_axis_video_tdata[85]_0 (\s_axis_video_tdata[85]_0 ),
        .\s_axis_video_tdata[86] (s_axis_video_tdata_86_sn_1),
        .\s_axis_video_tdata[86]_0 (\s_axis_video_tdata[86]_0 ),
        .\s_axis_video_tdata[87] (s_axis_video_tdata_87_sn_1),
        .\s_axis_video_tdata[87]_0 (\s_axis_video_tdata[87]_0 ),
        .\s_axis_video_tdata[87]_1 ({\aclk_tdata_odd_reg[55]_0 [87:80],\aclk_tdata_odd_reg[55]_0 [63:56],\aclk_tdata_odd_reg[55]_0 [39:32],\aclk_tdata_odd_reg[55]_0 [15:8]}),
        .\s_axis_video_tdata[8]_0 (\s_axis_video_tdata[8]_0 ),
        .\s_axis_video_tdata[9]_0 (\s_axis_video_tdata[9]_0 ),
        .s_axis_video_tdata_10_sp_1(s_axis_video_tdata_10_sn_1),
        .s_axis_video_tdata_11_sp_1(s_axis_video_tdata_11_sn_1),
        .s_axis_video_tdata_12_sp_1(s_axis_video_tdata_12_sn_1),
        .s_axis_video_tdata_13_sp_1(s_axis_video_tdata_13_sn_1),
        .s_axis_video_tdata_14_sp_1(s_axis_video_tdata_14_sn_1),
        .s_axis_video_tdata_15_sp_1(s_axis_video_tdata_15_sn_1),
        .s_axis_video_tdata_8_sp_1(s_axis_video_tdata_8_sn_1),
        .s_axis_video_tdata_9_sp_1(s_axis_video_tdata_9_sn_1),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tuser_0(s_axis_video_tuser_0),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .underflow(underflow),
        .wr_en(aclk_wr_en));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_aclk_state[0]_i_2 
       (.I0(aclk_fid_reg_n_0),
        .I1(aclk_tuser_reg_0),
        .O(\FSM_onehot_aclk_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \FSM_onehot_aclk_state[1]_i_3 
       (.I0(s_axis_video_tlast),
        .I1(s_axis_video_tuser_0),
        .I2(Q),
        .I3(\FSM_onehot_aclk_state_reg_n_0_[3] ),
        .I4(aclk_tuser_dly_i_2_n_0),
        .I5(aclk_tlast),
        .O(\FSM_onehot_aclk_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_aclk_state[1]_i_4 
       (.I0(\FSM_onehot_aclk_state_reg_n_0_[3] ),
        .I1(Q),
        .I2(aclk_tlast),
        .I3(aclk_line_phase),
        .I4(\FSM_onehot_aclk_state_reg_n_0_[5] ),
        .O(\FSM_onehot_aclk_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_aclk_state[2]_i_6 
       (.I0(aclk_tlast),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[5] ),
        .O(\FSM_onehot_aclk_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_aclk_state[2]_i_9 
       (.I0(\FSM_onehot_aclk_state_reg_n_0_[5] ),
        .I1(aclk_line_phase),
        .I2(aclk_tlast),
        .O(\FSM_onehot_aclk_state[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \FSM_onehot_aclk_state[3]_i_3 
       (.I0(aclk_line_phase),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[5] ),
        .I2(aclk_tlast),
        .I3(s_axis_video_tuser),
        .I4(s_axis_video_tvalid),
        .I5(first_sof),
        .O(\FSM_onehot_aclk_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'hFF57)) 
    \FSM_onehot_aclk_state[3]_i_4 
       (.I0(s_axis_video_tvalid),
        .I1(first_sof),
        .I2(s_axis_video_tuser),
        .I3(Q),
        .O(\FSM_onehot_aclk_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_onehot_aclk_state[3]_i_5 
       (.I0(aclk_tlast),
        .I1(aclk_line_phase),
        .I2(\FSM_onehot_aclk_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_aclk_state_reg_n_0_[3] ),
        .O(\FSM_onehot_aclk_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \FSM_onehot_aclk_state[4]_i_2__0 
       (.I0(aclk_line_phase),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[5] ),
        .I2(aclk_tlast),
        .I3(s_axis_video_tuser),
        .I4(s_axis_video_tvalid),
        .O(\FSM_onehot_aclk_state[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00000A2A00000)) 
    \FSM_onehot_aclk_state[4]_i_4 
       (.I0(\FSM_onehot_aclk_state_reg_n_0_[3] ),
        .I1(aclk_tlast),
        .I2(s_axis_video_tuser),
        .I3(first_sof),
        .I4(s_axis_video_tvalid),
        .I5(\FSM_onehot_aclk_state_reg_n_0_[5] ),
        .O(\FSM_onehot_aclk_state[4]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:000001,C_STATE_ACTIVE:100000,C_STATE_ODD:001000,iSTATE:010000,C_STATE_WAIT:000010,C_STATE_EVEN:000100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_aclk_state_reg[0] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_6),
        .Q(aclk_line_phase),
        .S(reset));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:000001,C_STATE_ACTIVE:100000,C_STATE_ODD:001000,iSTATE:010000,C_STATE_WAIT:000010,C_STATE_EVEN:000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[1] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_5),
        .Q(Q),
        .R(reset));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:000001,C_STATE_ACTIVE:100000,C_STATE_ODD:001000,iSTATE:010000,C_STATE_WAIT:000010,C_STATE_EVEN:000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[2] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_4),
        .Q(aclk_tlast),
        .R(reset));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:000001,C_STATE_ACTIVE:100000,C_STATE_ODD:001000,iSTATE:010000,C_STATE_WAIT:000010,C_STATE_EVEN:000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[3] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_3),
        .Q(\FSM_onehot_aclk_state_reg_n_0_[3] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:000001,C_STATE_ACTIVE:100000,C_STATE_ODD:001000,iSTATE:010000,C_STATE_WAIT:000010,C_STATE_EVEN:000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[4] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_2),
        .Q(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:000001,C_STATE_ACTIVE:100000,C_STATE_ODD:001000,iSTATE:010000,C_STATE_WAIT:000010,C_STATE_EVEN:000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[5] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_1),
        .Q(\FSM_onehot_aclk_state_reg_n_0_[5] ),
        .R(reset));
  LUT2 #(
    .INIT(4'hE)) 
    XPM_FIFO_SYNC_INST_i_5
       (.I0(Q),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[3] ),
        .O(XPM_FIFO_SYNC_INST_i_5_n_0));
  FDRE aclk_fid_dly_reg
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(fid),
        .Q(aclk_fid_dly),
        .R(reset));
  FDRE aclk_fid_reg
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_75),
        .Q(aclk_fid_reg_n_0),
        .R(reset));
  LUT3 #(
    .INIT(8'h01)) 
    aclk_line_phase_i_2
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\reset_pulse_reg_n_0_[0] ),
        .O(aclk_line_phase_i_2_n_0));
  FDRE aclk_line_phase_reg
       (.C(aclk),
        .CE(1'b1),
        .D(CDC_SINGLE_INST_n_78),
        .Q(aclk_line_phase_reg_n_0),
        .R(1'b0));
  FDRE \aclk_tdata_even_dly_reg[0] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[0]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[0] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[10] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[10]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[10] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[11] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[11]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[11] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[12] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[12]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[12] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[13] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[13]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[13] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[14] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[14]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[14] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[15] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[15]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[15] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[16] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[16]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[16] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[17] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[17]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[17] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[18] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[18]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[18] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[19] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[19]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[19] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[1] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[1]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[1] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[20] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[20]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[20] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[21] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[21]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[21] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[22] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[22]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[22] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[23] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[23]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[23] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[24] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[24]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[24] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[25] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[25]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[25] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[26] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[26]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[26] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[27] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[27]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[27] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[28] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[28]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[28] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[29] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[29]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[29] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[2] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[2]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[2] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[30] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[30]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[30] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[31] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[31]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[31] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[32] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[32]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[32] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[33] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[33]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[33] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[34] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[34]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[34] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[35] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[35]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[35] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[36] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[36]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[36] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[37] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[37]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[37] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[38] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[38]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[38] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[39] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[39]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[39] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[3] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[3]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[3] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[40] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[40]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[40] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[41] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[41]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[41] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[42] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[42]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[42] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[43] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[43]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[43] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[44] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[44]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[44] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[45] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[45]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[45] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[46] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[46]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[46] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[47] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[47]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[47] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[48] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[48]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[48] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[49] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[49]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[49] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[4] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[4]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[4] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[50] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[50]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[50] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[51] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[51]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[51] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[52] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[52]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[52] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[53] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[53]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[53] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[54] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[54]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[54] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[55] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[55]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[55] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[56] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[56]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[56] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[57] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[57]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[57] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[58] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[58]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[58] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[59] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[59]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[59] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[5] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[5]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[5] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[60] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[60]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[60] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[61] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[61]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[61] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[62] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[62]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[62] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[63] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[63]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[63] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[6] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[6]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[6] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[7] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[7]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[7] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[8] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[8]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[8] ),
        .R(reset));
  FDRE \aclk_tdata_even_dly_reg[9] 
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tdata[9]),
        .Q(\aclk_tdata_even_dly_reg_n_0_[9] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[0] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_74),
        .Q(\aclk_tdata_even_reg[55]_0 [0]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[10] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_64),
        .Q(\aclk_tdata_even_reg_n_0_[10] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[11] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_63),
        .Q(\aclk_tdata_even_reg_n_0_[11] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[12] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_62),
        .Q(\aclk_tdata_even_reg_n_0_[12] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[13] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_61),
        .Q(\aclk_tdata_even_reg_n_0_[13] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[14] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_60),
        .Q(\aclk_tdata_even_reg_n_0_[14] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[15] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_59),
        .Q(\aclk_tdata_even_reg_n_0_[15] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[16] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_58),
        .Q(\aclk_tdata_even_reg[55]_0 [8]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[17] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_57),
        .Q(\aclk_tdata_even_reg[55]_0 [9]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[18] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_56),
        .Q(\aclk_tdata_even_reg[55]_0 [10]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[19] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_55),
        .Q(\aclk_tdata_even_reg[55]_0 [11]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[1] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_73),
        .Q(\aclk_tdata_even_reg[55]_0 [1]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[20] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_54),
        .Q(\aclk_tdata_even_reg[55]_0 [12]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[21] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_53),
        .Q(\aclk_tdata_even_reg[55]_0 [13]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[22] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_52),
        .Q(\aclk_tdata_even_reg[55]_0 [14]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[23] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_51),
        .Q(\aclk_tdata_even_reg[55]_0 [15]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[24] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_50),
        .Q(aclk_wr_data[0]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[25] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_49),
        .Q(aclk_wr_data[1]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[26] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_48),
        .Q(aclk_wr_data[2]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[27] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_47),
        .Q(aclk_wr_data[3]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[28] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_46),
        .Q(aclk_wr_data[4]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[29] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_45),
        .Q(aclk_wr_data[5]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[2] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_72),
        .Q(\aclk_tdata_even_reg[55]_0 [2]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[30] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_44),
        .Q(aclk_wr_data[6]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[31] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_43),
        .Q(aclk_wr_data[7]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[32] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_42),
        .Q(\aclk_tdata_even_reg[55]_0 [16]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[33] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_41),
        .Q(\aclk_tdata_even_reg[55]_0 [17]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[34] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_40),
        .Q(\aclk_tdata_even_reg[55]_0 [18]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[35] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_39),
        .Q(\aclk_tdata_even_reg[55]_0 [19]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[36] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_38),
        .Q(\aclk_tdata_even_reg[55]_0 [20]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[37] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_37),
        .Q(\aclk_tdata_even_reg[55]_0 [21]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[38] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_36),
        .Q(\aclk_tdata_even_reg[55]_0 [22]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[39] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_35),
        .Q(\aclk_tdata_even_reg[55]_0 [23]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[3] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_71),
        .Q(\aclk_tdata_even_reg[55]_0 [3]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[40] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_34),
        .Q(\aclk_tdata_even_reg_n_0_[40] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[41] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_33),
        .Q(\aclk_tdata_even_reg_n_0_[41] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[42] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_32),
        .Q(\aclk_tdata_even_reg_n_0_[42] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[43] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_31),
        .Q(\aclk_tdata_even_reg_n_0_[43] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[44] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_30),
        .Q(\aclk_tdata_even_reg_n_0_[44] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[45] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_29),
        .Q(\aclk_tdata_even_reg_n_0_[45] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[46] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_28),
        .Q(\aclk_tdata_even_reg_n_0_[46] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[47] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_27),
        .Q(\aclk_tdata_even_reg_n_0_[47] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[48] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_26),
        .Q(\aclk_tdata_even_reg[55]_0 [24]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[49] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_25),
        .Q(\aclk_tdata_even_reg[55]_0 [25]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[4] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_70),
        .Q(\aclk_tdata_even_reg[55]_0 [4]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[50] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_24),
        .Q(\aclk_tdata_even_reg[55]_0 [26]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[51] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_23),
        .Q(\aclk_tdata_even_reg[55]_0 [27]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[52] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_22),
        .Q(\aclk_tdata_even_reg[55]_0 [28]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[53] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_21),
        .Q(\aclk_tdata_even_reg[55]_0 [29]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[54] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_20),
        .Q(\aclk_tdata_even_reg[55]_0 [30]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[55] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_19),
        .Q(\aclk_tdata_even_reg[55]_0 [31]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[56] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_18),
        .Q(aclk_wr_data[8]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[57] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_17),
        .Q(aclk_wr_data[9]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[58] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_16),
        .Q(aclk_wr_data[10]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[59] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_15),
        .Q(aclk_wr_data[11]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[5] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_69),
        .Q(\aclk_tdata_even_reg[55]_0 [5]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[60] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_14),
        .Q(aclk_wr_data[12]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[61] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_13),
        .Q(aclk_wr_data[13]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[62] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_12),
        .Q(aclk_wr_data[14]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[63] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_11),
        .Q(aclk_wr_data[15]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[6] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_68),
        .Q(\aclk_tdata_even_reg[55]_0 [6]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[7] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_67),
        .Q(\aclk_tdata_even_reg[55]_0 [7]),
        .R(reset));
  FDRE \aclk_tdata_even_reg[8] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_66),
        .Q(\aclk_tdata_even_reg_n_0_[8] ),
        .R(reset));
  FDRE \aclk_tdata_even_reg[9] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_65),
        .Q(\aclk_tdata_even_reg_n_0_[9] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[0] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[0]),
        .Q(\aclk_tdata_odd_reg[55]_1 [0]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[10] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[10]),
        .Q(\aclk_tdata_odd_reg_n_0_[10] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[11] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[11]),
        .Q(\aclk_tdata_odd_reg_n_0_[11] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[12] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[12]),
        .Q(\aclk_tdata_odd_reg_n_0_[12] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[13] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[13]),
        .Q(\aclk_tdata_odd_reg_n_0_[13] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[14] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[14]),
        .Q(\aclk_tdata_odd_reg_n_0_[14] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[15] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[15]),
        .Q(\aclk_tdata_odd_reg_n_0_[15] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[16] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[16]),
        .Q(\aclk_tdata_odd_reg[55]_1 [8]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[17] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[17]),
        .Q(\aclk_tdata_odd_reg[55]_1 [9]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[18] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[18]),
        .Q(\aclk_tdata_odd_reg[55]_1 [10]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[19] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[19]),
        .Q(\aclk_tdata_odd_reg[55]_1 [11]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[1] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[1]),
        .Q(\aclk_tdata_odd_reg[55]_1 [1]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[20] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[20]),
        .Q(\aclk_tdata_odd_reg[55]_1 [12]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[21] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[21]),
        .Q(\aclk_tdata_odd_reg[55]_1 [13]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[22] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[22]),
        .Q(\aclk_tdata_odd_reg[55]_1 [14]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[23] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[23]),
        .Q(\aclk_tdata_odd_reg[55]_1 [15]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[24] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[24]),
        .Q(aclk_wr_data[16]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[25] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[25]),
        .Q(aclk_wr_data[17]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[26] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[26]),
        .Q(aclk_wr_data[18]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[27] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[27]),
        .Q(aclk_wr_data[19]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[28] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[28]),
        .Q(aclk_wr_data[20]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[29] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[29]),
        .Q(aclk_wr_data[21]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[2] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[2]),
        .Q(\aclk_tdata_odd_reg[55]_1 [2]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[30] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[30]),
        .Q(aclk_wr_data[22]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[31] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[31]),
        .Q(aclk_wr_data[23]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[32] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[32]),
        .Q(\aclk_tdata_odd_reg[55]_1 [16]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[33] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[33]),
        .Q(\aclk_tdata_odd_reg[55]_1 [17]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[34] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[34]),
        .Q(\aclk_tdata_odd_reg[55]_1 [18]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[35] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[35]),
        .Q(\aclk_tdata_odd_reg[55]_1 [19]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[36] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[36]),
        .Q(\aclk_tdata_odd_reg[55]_1 [20]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[37] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[37]),
        .Q(\aclk_tdata_odd_reg[55]_1 [21]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[38] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[38]),
        .Q(\aclk_tdata_odd_reg[55]_1 [22]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[39] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[39]),
        .Q(\aclk_tdata_odd_reg[55]_1 [23]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[3] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[3]),
        .Q(\aclk_tdata_odd_reg[55]_1 [3]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[40] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[40]),
        .Q(\aclk_tdata_odd_reg_n_0_[40] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[41] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[41]),
        .Q(\aclk_tdata_odd_reg_n_0_[41] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[42] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[42]),
        .Q(\aclk_tdata_odd_reg_n_0_[42] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[43] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[43]),
        .Q(\aclk_tdata_odd_reg_n_0_[43] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[44] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[44]),
        .Q(\aclk_tdata_odd_reg_n_0_[44] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[45] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[45]),
        .Q(\aclk_tdata_odd_reg_n_0_[45] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[46] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[46]),
        .Q(\aclk_tdata_odd_reg_n_0_[46] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[47] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[47]),
        .Q(\aclk_tdata_odd_reg_n_0_[47] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[48] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[48]),
        .Q(\aclk_tdata_odd_reg[55]_1 [24]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[49] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[49]),
        .Q(\aclk_tdata_odd_reg[55]_1 [25]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[4] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[4]),
        .Q(\aclk_tdata_odd_reg[55]_1 [4]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[50] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[50]),
        .Q(\aclk_tdata_odd_reg[55]_1 [26]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[51] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[51]),
        .Q(\aclk_tdata_odd_reg[55]_1 [27]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[52] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[52]),
        .Q(\aclk_tdata_odd_reg[55]_1 [28]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[53] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[53]),
        .Q(\aclk_tdata_odd_reg[55]_1 [29]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[54] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[54]),
        .Q(\aclk_tdata_odd_reg[55]_1 [30]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[55] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[55]),
        .Q(\aclk_tdata_odd_reg[55]_1 [31]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[56] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[56]),
        .Q(aclk_wr_data[24]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[57] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[57]),
        .Q(aclk_wr_data[25]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[58] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[58]),
        .Q(aclk_wr_data[26]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[59] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[59]),
        .Q(aclk_wr_data[27]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[5] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[5]),
        .Q(\aclk_tdata_odd_reg[55]_1 [5]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[60] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[60]),
        .Q(aclk_wr_data[28]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[61] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[61]),
        .Q(aclk_wr_data[29]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[62] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[62]),
        .Q(aclk_wr_data[30]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[63] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[63]),
        .Q(aclk_wr_data[31]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[6] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[6]),
        .Q(\aclk_tdata_odd_reg[55]_1 [6]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[7] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[7]),
        .Q(\aclk_tdata_odd_reg[55]_1 [7]),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[8] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[8]),
        .Q(\aclk_tdata_odd_reg_n_0_[8] ),
        .R(reset));
  FDRE \aclk_tdata_odd_reg[9] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tdata[9]),
        .Q(\aclk_tdata_odd_reg_n_0_[9] ),
        .R(reset));
  FDRE aclk_tlast_reg
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_80),
        .D(s_axis_video_tlast),
        .Q(aclk_wr_data[32]),
        .R(reset));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    aclk_tuser_dly_i_1__0
       (.I0(s_axis_video_tuser_0),
        .I1(Q),
        .I2(aclk_tuser_dly_i_2_n_0),
        .I3(aclken),
        .I4(\FSM_onehot_aclk_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_aclk_state_reg[1]_4 ),
        .O(aclk_fid_dly6_out));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'hE)) 
    aclk_tuser_dly_i_2
       (.I0(aclk_line_phase),
        .I1(\FSM_onehot_aclk_state_reg_n_0_[5] ),
        .O(aclk_tuser_dly_i_2_n_0));
  FDRE aclk_tuser_dly_reg
       (.C(aclk),
        .CE(aclk_fid_dly6_out),
        .D(s_axis_video_tuser),
        .Q(aclk_tuser_dly),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h7)) 
    aclk_tuser_i_4__0
       (.I0(first_sof),
        .I1(s_axis_video_tvalid),
        .O(aclk_tuser_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    aclk_tuser_i_5
       (.I0(s_axis_video_tvalid),
        .I1(s_axis_video_tuser),
        .O(aclk_tuser_i_5_n_0));
  FDRE aclk_tuser_reg
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_79),
        .D(CDC_SINGLE_INST_n_76),
        .Q(aclk_tuser_reg_0),
        .R(reset));
  FDRE aclk_wr_en_reg
       (.C(aclk),
        .CE(aclken),
        .D(aclk_wr_en0),
        .Q(aclk_wr_en),
        .R(reset));
  LUT3 #(
    .INIT(8'hF8)) 
    \reset_pulse[3]_i_1 
       (.I0(aclk_tuser_reg_0),
        .I1(aclk_line_phase_reg_n_0),
        .I2(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .O(reset_pulse0));
  FDSE \reset_pulse_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\reset_pulse_reg_n_0_[0] ),
        .S(reset_pulse0));
  FDSE \reset_pulse_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[0]),
        .S(reset_pulse0));
  FDSE \reset_pulse_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[1]),
        .S(reset_pulse0));
  FDSE \reset_pulse_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(p_0_in[2]),
        .S(reset_pulse0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_repeat
   (dest_out,
    aclk_tuser_dly_reg_0,
    aclk_reset,
    aclk_fid_reg_0,
    Q,
    \FSM_onehot_aclk_state_reg[1]_0 ,
    wr_en,
    \FSM_onehot_aclk_state_reg[0]_0 ,
    \syncstages_ff_reg[3] ,
    \FSM_onehot_aclk_state_reg[1]_1 ,
    aclk_fid_dly_reg_0,
    s_axis_video_tlast_0,
    aclk_tuser_dly_reg_1,
    s_axis_video_tlast_1,
    \syncstages_ff_reg[3]_0 ,
    \FSM_onehot_aclk_state_reg[4]_0 ,
    \syncstages_ff_reg[3]_1 ,
    \FSM_onehot_aclk_state_reg[0]_1 ,
    s_axis_video_tuser_0,
    din,
    s_axis_video_tlast_2,
    \syncstages_ff_reg[3]_2 ,
    repeat_en,
    aclk,
    tuser_from_remap,
    tlast_from_remap,
    fid_from_remap,
    aclk_tuser_reg_0,
    aclk_tlast_reg_0,
    aclk_fid_reg_1,
    \aclk_tdata_dly_reg[95]_0 ,
    \aclk_tdata_dly_reg[95]_1 ,
    aclken,
    \aclk_tdata_dly_reg[95]_2 ,
    \aclk_tdata_dly_reg[95]_3 ,
    s_axis_video_tvalid,
    first_sof,
    s_axis_video_tuser,
    fid,
    \count_value_i_reg[9] ,
    aclk_fid_reg_2,
    \FSM_onehot_aclk_state_reg[2]_0 ,
    \FSM_onehot_aclk_state_reg[4]_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ,
    aclk_fid_reg_3,
    s_axis_video_tdata,
    \aclk_tdata_reg[95]_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 ,
    \aclk_tdata_reg[8]_0 ,
    \aclk_tdata_reg[9]_0 ,
    \aclk_tdata_reg[10]_0 ,
    \aclk_tdata_reg[11]_0 ,
    \aclk_tdata_reg[12]_0 ,
    \aclk_tdata_reg[13]_0 ,
    \aclk_tdata_reg[14]_0 ,
    \aclk_tdata_reg[15]_0 ,
    \aclk_tdata_reg[32]_0 ,
    \aclk_tdata_reg[33]_0 ,
    \aclk_tdata_reg[34]_0 ,
    \aclk_tdata_reg[35]_0 ,
    \aclk_tdata_reg[36]_0 ,
    \aclk_tdata_reg[37]_0 ,
    \aclk_tdata_reg[38]_0 ,
    \aclk_tdata_reg[39]_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ,
    \aclk_tdata_reg[56]_0 ,
    \aclk_tdata_reg[57]_0 ,
    \aclk_tdata_reg[58]_0 ,
    \aclk_tdata_reg[59]_0 ,
    \aclk_tdata_reg[60]_0 ,
    \aclk_tdata_reg[61]_0 ,
    \aclk_tdata_reg[62]_0 ,
    \aclk_tdata_reg[63]_0 ,
    \aclk_tdata_reg[80]_0 ,
    \aclk_tdata_reg[81]_0 ,
    \aclk_tdata_reg[82]_0 ,
    \aclk_tdata_reg[83]_0 ,
    \aclk_tdata_reg[84]_0 ,
    \aclk_tdata_reg[85]_0 ,
    \aclk_tdata_reg[86]_0 ,
    \aclk_tdata_reg[87]_0 ,
    wr_rst_busy,
    full,
    aresetn,
    s_axis_video_tlast,
    aclk_tuser_reg_1,
    aclk_fid_reg_4,
    aclk_fid_reg_5,
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
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_2 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_3 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_4 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_5 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_6 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_7 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_8 ,
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2_9 ,
    aclk_tlast_reg_1,
    video_format,
    D,
    \aclk_tdata_dly_reg[95]_4 );
  output dest_out;
  output aclk_tuser_dly_reg_0;
  output aclk_reset;
  output aclk_fid_reg_0;
  output [2:0]Q;
  output \FSM_onehot_aclk_state_reg[1]_0 ;
  output wr_en;
  output \FSM_onehot_aclk_state_reg[0]_0 ;
  output \syncstages_ff_reg[3] ;
  output \FSM_onehot_aclk_state_reg[1]_1 ;
  output aclk_fid_dly_reg_0;
  output s_axis_video_tlast_0;
  output aclk_tuser_dly_reg_1;
  output s_axis_video_tlast_1;
  output \syncstages_ff_reg[3]_0 ;
  output \FSM_onehot_aclk_state_reg[4]_0 ;
  output \syncstages_ff_reg[3]_1 ;
  output \FSM_onehot_aclk_state_reg[0]_1 ;
  output s_axis_video_tuser_0;
  output [96:0]din;
  output s_axis_video_tlast_2;
  output \syncstages_ff_reg[3]_2 ;
  input repeat_en;
  input aclk;
  input tuser_from_remap;
  input tlast_from_remap;
  input fid_from_remap;
  input aclk_tuser_reg_0;
  input aclk_tlast_reg_0;
  input aclk_fid_reg_1;
  input \aclk_tdata_dly_reg[95]_0 ;
  input \aclk_tdata_dly_reg[95]_1 ;
  input aclken;
  input \aclk_tdata_dly_reg[95]_2 ;
  input \aclk_tdata_dly_reg[95]_3 ;
  input s_axis_video_tvalid;
  input first_sof;
  input s_axis_video_tuser;
  input fid;
  input \count_value_i_reg[9] ;
  input aclk_fid_reg_2;
  input \FSM_onehot_aclk_state_reg[2]_0 ;
  input \FSM_onehot_aclk_state_reg[4]_1 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ;
  input aclk_fid_reg_3;
  input [63:0]s_axis_video_tdata;
  input \aclk_tdata_reg[95]_0 ;
  input [31:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  input \aclk_tdata_reg[8]_0 ;
  input \aclk_tdata_reg[9]_0 ;
  input \aclk_tdata_reg[10]_0 ;
  input \aclk_tdata_reg[11]_0 ;
  input \aclk_tdata_reg[12]_0 ;
  input \aclk_tdata_reg[13]_0 ;
  input \aclk_tdata_reg[14]_0 ;
  input \aclk_tdata_reg[15]_0 ;
  input \aclk_tdata_reg[32]_0 ;
  input \aclk_tdata_reg[33]_0 ;
  input \aclk_tdata_reg[34]_0 ;
  input \aclk_tdata_reg[35]_0 ;
  input \aclk_tdata_reg[36]_0 ;
  input \aclk_tdata_reg[37]_0 ;
  input \aclk_tdata_reg[38]_0 ;
  input \aclk_tdata_reg[39]_0 ;
  input [31:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ;
  input \aclk_tdata_reg[56]_0 ;
  input \aclk_tdata_reg[57]_0 ;
  input \aclk_tdata_reg[58]_0 ;
  input \aclk_tdata_reg[59]_0 ;
  input \aclk_tdata_reg[60]_0 ;
  input \aclk_tdata_reg[61]_0 ;
  input \aclk_tdata_reg[62]_0 ;
  input \aclk_tdata_reg[63]_0 ;
  input \aclk_tdata_reg[80]_0 ;
  input \aclk_tdata_reg[81]_0 ;
  input \aclk_tdata_reg[82]_0 ;
  input \aclk_tdata_reg[83]_0 ;
  input \aclk_tdata_reg[84]_0 ;
  input \aclk_tdata_reg[85]_0 ;
  input \aclk_tdata_reg[86]_0 ;
  input \aclk_tdata_reg[87]_0 ;
  input wr_rst_busy;
  input full;
  input aresetn;
  input s_axis_video_tlast;
  input aclk_tuser_reg_1;
  input aclk_fid_reg_4;
  input [0:0]aclk_fid_reg_5;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_2 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_3 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_4 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_5 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_6 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_7 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_8 ;
  input \gen_wr_a.gen_word_narrow.mem_reg_bram_2_9 ;
  input [3:0]aclk_tlast_reg_1;
  input [1:0]video_format;
  input [0:0]D;
  input [95:0]\aclk_tdata_dly_reg[95]_4 ;

  wire CDC_SINGLE_INST_n_155;
  wire CDC_SINGLE_INST_n_156;
  wire CDC_SINGLE_INST_n_157;
  wire CDC_SINGLE_INST_n_158;
  wire CDC_SINGLE_INST_n_159;
  wire CDC_SINGLE_INST_n_160;
  wire CDC_SINGLE_INST_n_161;
  wire CDC_SINGLE_INST_n_162;
  wire CDC_SINGLE_INST_n_163;
  wire CDC_SINGLE_INST_n_164;
  wire CDC_SINGLE_INST_n_165;
  wire CDC_SINGLE_INST_n_166;
  wire CDC_SINGLE_INST_n_167;
  wire CDC_SINGLE_INST_n_168;
  wire CDC_SINGLE_INST_n_169;
  wire CDC_SINGLE_INST_n_170;
  wire CDC_SINGLE_INST_n_171;
  wire CDC_SINGLE_INST_n_172;
  wire CDC_SINGLE_INST_n_173;
  wire CDC_SINGLE_INST_n_174;
  wire CDC_SINGLE_INST_n_175;
  wire CDC_SINGLE_INST_n_176;
  wire CDC_SINGLE_INST_n_177;
  wire CDC_SINGLE_INST_n_178;
  wire CDC_SINGLE_INST_n_180;
  wire CDC_SINGLE_INST_n_3;
  wire CDC_SINGLE_INST_n_4;
  wire CDC_SINGLE_INST_n_5;
  wire CDC_SINGLE_INST_n_6;
  wire CDC_SINGLE_INST_n_9;
  wire CDC_YUV422_EN_INST_n_57;
  wire CDC_YUV422_EN_INST_n_58;
  wire CDC_YUV422_EN_INST_n_59;
  wire CDC_YUV422_EN_INST_n_60;
  wire CDC_YUV422_EN_INST_n_61;
  wire CDC_YUV422_EN_INST_n_62;
  wire CDC_YUV422_EN_INST_n_63;
  wire CDC_YUV422_EN_INST_n_64;
  wire CDC_YUV422_EN_INST_n_65;
  wire CDC_YUV422_EN_INST_n_66;
  wire CDC_YUV422_EN_INST_n_67;
  wire CDC_YUV422_EN_INST_n_68;
  wire CDC_YUV422_EN_INST_n_69;
  wire CDC_YUV422_EN_INST_n_70;
  wire CDC_YUV422_EN_INST_n_71;
  wire CDC_YUV422_EN_INST_n_72;
  wire CDC_YUV422_EN_INST_n_73;
  wire [0:0]D;
  wire \FSM_onehot_aclk_state_reg[0]_0 ;
  wire \FSM_onehot_aclk_state_reg[0]_1 ;
  wire \FSM_onehot_aclk_state_reg[1]_0 ;
  wire \FSM_onehot_aclk_state_reg[1]_1 ;
  wire \FSM_onehot_aclk_state_reg[2]_0 ;
  wire \FSM_onehot_aclk_state_reg[4]_0 ;
  wire \FSM_onehot_aclk_state_reg[4]_1 ;
  wire \FSM_onehot_aclk_state_reg_n_0_[4] ;
  wire [2:0]Q;
  wire aclk;
  wire aclk_fid_dly_reg_0;
  wire aclk_fid_dly_reg_n_0;
  wire aclk_fid_reg_0;
  wire aclk_fid_reg_1;
  wire aclk_fid_reg_2;
  wire aclk_fid_reg_3;
  wire aclk_fid_reg_4;
  wire [0:0]aclk_fid_reg_5;
  wire aclk_reset;
  wire \aclk_tdata[95]_i_10_n_0 ;
  wire \aclk_tdata_dly_reg[95]_0 ;
  wire \aclk_tdata_dly_reg[95]_1 ;
  wire \aclk_tdata_dly_reg[95]_2 ;
  wire \aclk_tdata_dly_reg[95]_3 ;
  wire [95:0]\aclk_tdata_dly_reg[95]_4 ;
  wire \aclk_tdata_dly_reg_n_0_[0] ;
  wire \aclk_tdata_dly_reg_n_0_[10] ;
  wire \aclk_tdata_dly_reg_n_0_[11] ;
  wire \aclk_tdata_dly_reg_n_0_[12] ;
  wire \aclk_tdata_dly_reg_n_0_[13] ;
  wire \aclk_tdata_dly_reg_n_0_[14] ;
  wire \aclk_tdata_dly_reg_n_0_[15] ;
  wire \aclk_tdata_dly_reg_n_0_[16] ;
  wire \aclk_tdata_dly_reg_n_0_[17] ;
  wire \aclk_tdata_dly_reg_n_0_[18] ;
  wire \aclk_tdata_dly_reg_n_0_[19] ;
  wire \aclk_tdata_dly_reg_n_0_[1] ;
  wire \aclk_tdata_dly_reg_n_0_[20] ;
  wire \aclk_tdata_dly_reg_n_0_[21] ;
  wire \aclk_tdata_dly_reg_n_0_[22] ;
  wire \aclk_tdata_dly_reg_n_0_[23] ;
  wire \aclk_tdata_dly_reg_n_0_[24] ;
  wire \aclk_tdata_dly_reg_n_0_[25] ;
  wire \aclk_tdata_dly_reg_n_0_[26] ;
  wire \aclk_tdata_dly_reg_n_0_[27] ;
  wire \aclk_tdata_dly_reg_n_0_[28] ;
  wire \aclk_tdata_dly_reg_n_0_[29] ;
  wire \aclk_tdata_dly_reg_n_0_[2] ;
  wire \aclk_tdata_dly_reg_n_0_[30] ;
  wire \aclk_tdata_dly_reg_n_0_[31] ;
  wire \aclk_tdata_dly_reg_n_0_[32] ;
  wire \aclk_tdata_dly_reg_n_0_[33] ;
  wire \aclk_tdata_dly_reg_n_0_[34] ;
  wire \aclk_tdata_dly_reg_n_0_[35] ;
  wire \aclk_tdata_dly_reg_n_0_[36] ;
  wire \aclk_tdata_dly_reg_n_0_[37] ;
  wire \aclk_tdata_dly_reg_n_0_[38] ;
  wire \aclk_tdata_dly_reg_n_0_[39] ;
  wire \aclk_tdata_dly_reg_n_0_[3] ;
  wire \aclk_tdata_dly_reg_n_0_[40] ;
  wire \aclk_tdata_dly_reg_n_0_[41] ;
  wire \aclk_tdata_dly_reg_n_0_[42] ;
  wire \aclk_tdata_dly_reg_n_0_[43] ;
  wire \aclk_tdata_dly_reg_n_0_[44] ;
  wire \aclk_tdata_dly_reg_n_0_[45] ;
  wire \aclk_tdata_dly_reg_n_0_[46] ;
  wire \aclk_tdata_dly_reg_n_0_[47] ;
  wire \aclk_tdata_dly_reg_n_0_[48] ;
  wire \aclk_tdata_dly_reg_n_0_[49] ;
  wire \aclk_tdata_dly_reg_n_0_[4] ;
  wire \aclk_tdata_dly_reg_n_0_[50] ;
  wire \aclk_tdata_dly_reg_n_0_[51] ;
  wire \aclk_tdata_dly_reg_n_0_[52] ;
  wire \aclk_tdata_dly_reg_n_0_[53] ;
  wire \aclk_tdata_dly_reg_n_0_[54] ;
  wire \aclk_tdata_dly_reg_n_0_[55] ;
  wire \aclk_tdata_dly_reg_n_0_[56] ;
  wire \aclk_tdata_dly_reg_n_0_[57] ;
  wire \aclk_tdata_dly_reg_n_0_[58] ;
  wire \aclk_tdata_dly_reg_n_0_[59] ;
  wire \aclk_tdata_dly_reg_n_0_[5] ;
  wire \aclk_tdata_dly_reg_n_0_[60] ;
  wire \aclk_tdata_dly_reg_n_0_[61] ;
  wire \aclk_tdata_dly_reg_n_0_[62] ;
  wire \aclk_tdata_dly_reg_n_0_[63] ;
  wire \aclk_tdata_dly_reg_n_0_[64] ;
  wire \aclk_tdata_dly_reg_n_0_[65] ;
  wire \aclk_tdata_dly_reg_n_0_[66] ;
  wire \aclk_tdata_dly_reg_n_0_[67] ;
  wire \aclk_tdata_dly_reg_n_0_[68] ;
  wire \aclk_tdata_dly_reg_n_0_[69] ;
  wire \aclk_tdata_dly_reg_n_0_[6] ;
  wire \aclk_tdata_dly_reg_n_0_[70] ;
  wire \aclk_tdata_dly_reg_n_0_[71] ;
  wire \aclk_tdata_dly_reg_n_0_[72] ;
  wire \aclk_tdata_dly_reg_n_0_[73] ;
  wire \aclk_tdata_dly_reg_n_0_[74] ;
  wire \aclk_tdata_dly_reg_n_0_[75] ;
  wire \aclk_tdata_dly_reg_n_0_[76] ;
  wire \aclk_tdata_dly_reg_n_0_[77] ;
  wire \aclk_tdata_dly_reg_n_0_[78] ;
  wire \aclk_tdata_dly_reg_n_0_[79] ;
  wire \aclk_tdata_dly_reg_n_0_[7] ;
  wire \aclk_tdata_dly_reg_n_0_[80] ;
  wire \aclk_tdata_dly_reg_n_0_[81] ;
  wire \aclk_tdata_dly_reg_n_0_[82] ;
  wire \aclk_tdata_dly_reg_n_0_[83] ;
  wire \aclk_tdata_dly_reg_n_0_[84] ;
  wire \aclk_tdata_dly_reg_n_0_[85] ;
  wire \aclk_tdata_dly_reg_n_0_[86] ;
  wire \aclk_tdata_dly_reg_n_0_[87] ;
  wire \aclk_tdata_dly_reg_n_0_[88] ;
  wire \aclk_tdata_dly_reg_n_0_[89] ;
  wire \aclk_tdata_dly_reg_n_0_[8] ;
  wire \aclk_tdata_dly_reg_n_0_[90] ;
  wire \aclk_tdata_dly_reg_n_0_[91] ;
  wire \aclk_tdata_dly_reg_n_0_[92] ;
  wire \aclk_tdata_dly_reg_n_0_[93] ;
  wire \aclk_tdata_dly_reg_n_0_[94] ;
  wire \aclk_tdata_dly_reg_n_0_[95] ;
  wire \aclk_tdata_dly_reg_n_0_[9] ;
  wire \aclk_tdata_reg[10]_0 ;
  wire \aclk_tdata_reg[11]_0 ;
  wire \aclk_tdata_reg[12]_0 ;
  wire \aclk_tdata_reg[13]_0 ;
  wire \aclk_tdata_reg[14]_0 ;
  wire \aclk_tdata_reg[15]_0 ;
  wire \aclk_tdata_reg[32]_0 ;
  wire \aclk_tdata_reg[33]_0 ;
  wire \aclk_tdata_reg[34]_0 ;
  wire \aclk_tdata_reg[35]_0 ;
  wire \aclk_tdata_reg[36]_0 ;
  wire \aclk_tdata_reg[37]_0 ;
  wire \aclk_tdata_reg[38]_0 ;
  wire \aclk_tdata_reg[39]_0 ;
  wire \aclk_tdata_reg[56]_0 ;
  wire \aclk_tdata_reg[57]_0 ;
  wire \aclk_tdata_reg[58]_0 ;
  wire \aclk_tdata_reg[59]_0 ;
  wire \aclk_tdata_reg[60]_0 ;
  wire \aclk_tdata_reg[61]_0 ;
  wire \aclk_tdata_reg[62]_0 ;
  wire \aclk_tdata_reg[63]_0 ;
  wire \aclk_tdata_reg[80]_0 ;
  wire \aclk_tdata_reg[81]_0 ;
  wire \aclk_tdata_reg[82]_0 ;
  wire \aclk_tdata_reg[83]_0 ;
  wire \aclk_tdata_reg[84]_0 ;
  wire \aclk_tdata_reg[85]_0 ;
  wire \aclk_tdata_reg[86]_0 ;
  wire \aclk_tdata_reg[87]_0 ;
  wire \aclk_tdata_reg[8]_0 ;
  wire \aclk_tdata_reg[95]_0 ;
  wire \aclk_tdata_reg[9]_0 ;
  wire \aclk_tdata_reg_n_0_[0] ;
  wire \aclk_tdata_reg_n_0_[10] ;
  wire \aclk_tdata_reg_n_0_[11] ;
  wire \aclk_tdata_reg_n_0_[12] ;
  wire \aclk_tdata_reg_n_0_[13] ;
  wire \aclk_tdata_reg_n_0_[14] ;
  wire \aclk_tdata_reg_n_0_[15] ;
  wire \aclk_tdata_reg_n_0_[16] ;
  wire \aclk_tdata_reg_n_0_[17] ;
  wire \aclk_tdata_reg_n_0_[18] ;
  wire \aclk_tdata_reg_n_0_[19] ;
  wire \aclk_tdata_reg_n_0_[1] ;
  wire \aclk_tdata_reg_n_0_[20] ;
  wire \aclk_tdata_reg_n_0_[21] ;
  wire \aclk_tdata_reg_n_0_[22] ;
  wire \aclk_tdata_reg_n_0_[23] ;
  wire \aclk_tdata_reg_n_0_[24] ;
  wire \aclk_tdata_reg_n_0_[25] ;
  wire \aclk_tdata_reg_n_0_[26] ;
  wire \aclk_tdata_reg_n_0_[27] ;
  wire \aclk_tdata_reg_n_0_[28] ;
  wire \aclk_tdata_reg_n_0_[29] ;
  wire \aclk_tdata_reg_n_0_[2] ;
  wire \aclk_tdata_reg_n_0_[30] ;
  wire \aclk_tdata_reg_n_0_[31] ;
  wire \aclk_tdata_reg_n_0_[32] ;
  wire \aclk_tdata_reg_n_0_[33] ;
  wire \aclk_tdata_reg_n_0_[34] ;
  wire \aclk_tdata_reg_n_0_[35] ;
  wire \aclk_tdata_reg_n_0_[36] ;
  wire \aclk_tdata_reg_n_0_[37] ;
  wire \aclk_tdata_reg_n_0_[38] ;
  wire \aclk_tdata_reg_n_0_[39] ;
  wire \aclk_tdata_reg_n_0_[3] ;
  wire \aclk_tdata_reg_n_0_[40] ;
  wire \aclk_tdata_reg_n_0_[41] ;
  wire \aclk_tdata_reg_n_0_[42] ;
  wire \aclk_tdata_reg_n_0_[43] ;
  wire \aclk_tdata_reg_n_0_[44] ;
  wire \aclk_tdata_reg_n_0_[45] ;
  wire \aclk_tdata_reg_n_0_[46] ;
  wire \aclk_tdata_reg_n_0_[47] ;
  wire \aclk_tdata_reg_n_0_[48] ;
  wire \aclk_tdata_reg_n_0_[49] ;
  wire \aclk_tdata_reg_n_0_[4] ;
  wire \aclk_tdata_reg_n_0_[50] ;
  wire \aclk_tdata_reg_n_0_[51] ;
  wire \aclk_tdata_reg_n_0_[52] ;
  wire \aclk_tdata_reg_n_0_[53] ;
  wire \aclk_tdata_reg_n_0_[54] ;
  wire \aclk_tdata_reg_n_0_[55] ;
  wire \aclk_tdata_reg_n_0_[56] ;
  wire \aclk_tdata_reg_n_0_[57] ;
  wire \aclk_tdata_reg_n_0_[58] ;
  wire \aclk_tdata_reg_n_0_[59] ;
  wire \aclk_tdata_reg_n_0_[5] ;
  wire \aclk_tdata_reg_n_0_[60] ;
  wire \aclk_tdata_reg_n_0_[61] ;
  wire \aclk_tdata_reg_n_0_[62] ;
  wire \aclk_tdata_reg_n_0_[63] ;
  wire \aclk_tdata_reg_n_0_[64] ;
  wire \aclk_tdata_reg_n_0_[65] ;
  wire \aclk_tdata_reg_n_0_[66] ;
  wire \aclk_tdata_reg_n_0_[67] ;
  wire \aclk_tdata_reg_n_0_[68] ;
  wire \aclk_tdata_reg_n_0_[69] ;
  wire \aclk_tdata_reg_n_0_[6] ;
  wire \aclk_tdata_reg_n_0_[70] ;
  wire \aclk_tdata_reg_n_0_[71] ;
  wire \aclk_tdata_reg_n_0_[72] ;
  wire \aclk_tdata_reg_n_0_[73] ;
  wire \aclk_tdata_reg_n_0_[74] ;
  wire \aclk_tdata_reg_n_0_[75] ;
  wire \aclk_tdata_reg_n_0_[76] ;
  wire \aclk_tdata_reg_n_0_[77] ;
  wire \aclk_tdata_reg_n_0_[78] ;
  wire \aclk_tdata_reg_n_0_[79] ;
  wire \aclk_tdata_reg_n_0_[7] ;
  wire \aclk_tdata_reg_n_0_[80] ;
  wire \aclk_tdata_reg_n_0_[81] ;
  wire \aclk_tdata_reg_n_0_[82] ;
  wire \aclk_tdata_reg_n_0_[83] ;
  wire \aclk_tdata_reg_n_0_[84] ;
  wire \aclk_tdata_reg_n_0_[85] ;
  wire \aclk_tdata_reg_n_0_[86] ;
  wire \aclk_tdata_reg_n_0_[87] ;
  wire \aclk_tdata_reg_n_0_[88] ;
  wire \aclk_tdata_reg_n_0_[89] ;
  wire \aclk_tdata_reg_n_0_[8] ;
  wire \aclk_tdata_reg_n_0_[90] ;
  wire \aclk_tdata_reg_n_0_[91] ;
  wire \aclk_tdata_reg_n_0_[92] ;
  wire \aclk_tdata_reg_n_0_[93] ;
  wire \aclk_tdata_reg_n_0_[94] ;
  wire \aclk_tdata_reg_n_0_[95] ;
  wire \aclk_tdata_reg_n_0_[9] ;
  wire aclk_tlast_dly;
  wire aclk_tlast_reg_0;
  wire [3:0]aclk_tlast_reg_1;
  wire aclk_tlast_reg_n_0;
  wire aclk_tuser_dly;
  wire aclk_tuser_dly_i_5_n_0;
  wire aclk_tuser_dly_i_6_n_0;
  wire aclk_tuser_dly_reg_0;
  wire aclk_tuser_dly_reg_1;
  wire aclk_tuser_reg_0;
  wire aclk_tuser_reg_1;
  wire aclk_tuser_reg_n_0;
  wire aclken;
  wire aresetn;
  wire \count_value_i_reg[9] ;
  wire dest_out;
  wire [96:0]din;
  wire fid;
  wire fid_from_remap;
  wire first_sof;
  wire full;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ;
  wire [31:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2 ;
  wire [31:0]\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_9 ;
  wire p_1_in;
  wire [95:0]p_1_in__0;
  wire repeat_en;
  wire [63:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tlast_0;
  wire s_axis_video_tlast_1;
  wire s_axis_video_tlast_2;
  wire s_axis_video_tuser;
  wire s_axis_video_tuser_0;
  wire s_axis_video_tvalid;
  wire \syncstages_ff_reg[3] ;
  wire \syncstages_ff_reg[3]_0 ;
  wire \syncstages_ff_reg[3]_1 ;
  wire \syncstages_ff_reg[3]_2 ;
  wire tlast_from_remap;
  wire tuser_from_remap;
  wire [1:0]video_format;
  wire wr_en;
  wire wr_rst_busy;
  wire yuv422_en_sync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_cdc_single_1 CDC_SINGLE_INST
       (.D({CDC_SINGLE_INST_n_3,CDC_SINGLE_INST_n_4,CDC_SINGLE_INST_n_5,CDC_SINGLE_INST_n_6}),
        .E(aclk_tuser_dly),
        .\FSM_onehot_aclk_state_reg[0] (\FSM_onehot_aclk_state_reg[0]_0 ),
        .\FSM_onehot_aclk_state_reg[0]_0 (\FSM_onehot_aclk_state_reg[0]_1 ),
        .\FSM_onehot_aclk_state_reg[1] (\FSM_onehot_aclk_state_reg[1]_1 ),
        .\FSM_onehot_aclk_state_reg[2] (\FSM_onehot_aclk_state_reg[2]_0 ),
        .\FSM_onehot_aclk_state_reg[4] (\FSM_onehot_aclk_state_reg[4]_0 ),
        .\FSM_onehot_aclk_state_reg[4]_0 (\FSM_onehot_aclk_state_reg[4]_1 ),
        .Q({\FSM_onehot_aclk_state_reg_n_0_[4] ,p_1_in,Q}),
        .SR(aclk_reset),
        .aclk(aclk),
        .aclk_fid_reg(aclk_fid_reg_2),
        .aclk_fid_reg_0(aclk_fid_reg_3),
        .aclk_fid_reg_1(aclk_fid_reg_4),
        .aclk_fid_reg_2(\aclk_tdata[95]_i_10_n_0 ),
        .aclk_fid_reg_3(aclk_fid_reg_5),
        .\aclk_tdata_dly_reg[95] (\aclk_tdata_dly_reg[95]_0 ),
        .\aclk_tdata_dly_reg[95]_0 (\aclk_tdata_dly_reg[95]_1 ),
        .\aclk_tdata_dly_reg[95]_1 (aclk_tuser_dly_i_5_n_0),
        .\aclk_tdata_dly_reg[95]_2 (aclk_tuser_dly_i_6_n_0),
        .\aclk_tdata_reg[10] (\aclk_tdata_reg[10]_0 ),
        .\aclk_tdata_reg[11] (\aclk_tdata_reg[11]_0 ),
        .\aclk_tdata_reg[12] (\aclk_tdata_reg[12]_0 ),
        .\aclk_tdata_reg[13] (\aclk_tdata_reg[13]_0 ),
        .\aclk_tdata_reg[14] (\aclk_tdata_reg[14]_0 ),
        .\aclk_tdata_reg[15] (\aclk_tdata_reg[15]_0 ),
        .\aclk_tdata_reg[16] (CDC_SINGLE_INST_n_171),
        .\aclk_tdata_reg[17] (CDC_SINGLE_INST_n_172),
        .\aclk_tdata_reg[18] (CDC_SINGLE_INST_n_173),
        .\aclk_tdata_reg[19] (CDC_SINGLE_INST_n_174),
        .\aclk_tdata_reg[20] (CDC_SINGLE_INST_n_175),
        .\aclk_tdata_reg[21] (CDC_SINGLE_INST_n_176),
        .\aclk_tdata_reg[22] (CDC_SINGLE_INST_n_177),
        .\aclk_tdata_reg[23] (CDC_SINGLE_INST_n_178),
        .\aclk_tdata_reg[24] (CDC_SINGLE_INST_n_163),
        .\aclk_tdata_reg[25] (CDC_SINGLE_INST_n_164),
        .\aclk_tdata_reg[26] (CDC_SINGLE_INST_n_165),
        .\aclk_tdata_reg[27] (CDC_SINGLE_INST_n_166),
        .\aclk_tdata_reg[28] (CDC_SINGLE_INST_n_167),
        .\aclk_tdata_reg[29] (CDC_SINGLE_INST_n_168),
        .\aclk_tdata_reg[30] (CDC_SINGLE_INST_n_169),
        .\aclk_tdata_reg[31] (CDC_SINGLE_INST_n_170),
        .\aclk_tdata_reg[32] (\aclk_tdata_reg[32]_0 ),
        .\aclk_tdata_reg[33] (\aclk_tdata_reg[33]_0 ),
        .\aclk_tdata_reg[34] (\aclk_tdata_reg[34]_0 ),
        .\aclk_tdata_reg[35] (\aclk_tdata_reg[35]_0 ),
        .\aclk_tdata_reg[36] (\aclk_tdata_reg[36]_0 ),
        .\aclk_tdata_reg[37] (\aclk_tdata_reg[37]_0 ),
        .\aclk_tdata_reg[38] (\aclk_tdata_reg[38]_0 ),
        .\aclk_tdata_reg[39] (\aclk_tdata_reg[39]_0 ),
        .\aclk_tdata_reg[56] (\aclk_tdata_reg[56]_0 ),
        .\aclk_tdata_reg[57] (\aclk_tdata_reg[57]_0 ),
        .\aclk_tdata_reg[58] (\aclk_tdata_reg[58]_0 ),
        .\aclk_tdata_reg[59] (\aclk_tdata_reg[59]_0 ),
        .\aclk_tdata_reg[60] (\aclk_tdata_reg[60]_0 ),
        .\aclk_tdata_reg[61] (\aclk_tdata_reg[61]_0 ),
        .\aclk_tdata_reg[62] (\aclk_tdata_reg[62]_0 ),
        .\aclk_tdata_reg[63] (\aclk_tdata_reg[63]_0 ),
        .\aclk_tdata_reg[80] (\aclk_tdata_reg[80]_0 ),
        .\aclk_tdata_reg[81] (\aclk_tdata_reg[81]_0 ),
        .\aclk_tdata_reg[82] (\aclk_tdata_reg[82]_0 ),
        .\aclk_tdata_reg[83] (\aclk_tdata_reg[83]_0 ),
        .\aclk_tdata_reg[84] (\aclk_tdata_reg[84]_0 ),
        .\aclk_tdata_reg[85] (\aclk_tdata_reg[85]_0 ),
        .\aclk_tdata_reg[86] (\aclk_tdata_reg[86]_0 ),
        .\aclk_tdata_reg[87] (\aclk_tdata_reg[87]_0 ),
        .\aclk_tdata_reg[8] (\aclk_tdata_reg[8]_0 ),
        .\aclk_tdata_reg[95] (\aclk_tdata_reg[95]_0 ),
        .\aclk_tdata_reg[95]_0 ({\aclk_tdata_dly_reg_n_0_[95] ,\aclk_tdata_dly_reg_n_0_[94] ,\aclk_tdata_dly_reg_n_0_[93] ,\aclk_tdata_dly_reg_n_0_[92] ,\aclk_tdata_dly_reg_n_0_[91] ,\aclk_tdata_dly_reg_n_0_[90] ,\aclk_tdata_dly_reg_n_0_[89] ,\aclk_tdata_dly_reg_n_0_[88] ,\aclk_tdata_dly_reg_n_0_[87] ,\aclk_tdata_dly_reg_n_0_[86] ,\aclk_tdata_dly_reg_n_0_[85] ,\aclk_tdata_dly_reg_n_0_[84] ,\aclk_tdata_dly_reg_n_0_[83] ,\aclk_tdata_dly_reg_n_0_[82] ,\aclk_tdata_dly_reg_n_0_[81] ,\aclk_tdata_dly_reg_n_0_[80] ,\aclk_tdata_dly_reg_n_0_[79] ,\aclk_tdata_dly_reg_n_0_[78] ,\aclk_tdata_dly_reg_n_0_[77] ,\aclk_tdata_dly_reg_n_0_[76] ,\aclk_tdata_dly_reg_n_0_[75] ,\aclk_tdata_dly_reg_n_0_[74] ,\aclk_tdata_dly_reg_n_0_[73] ,\aclk_tdata_dly_reg_n_0_[72] ,\aclk_tdata_dly_reg_n_0_[71] ,\aclk_tdata_dly_reg_n_0_[70] ,\aclk_tdata_dly_reg_n_0_[69] ,\aclk_tdata_dly_reg_n_0_[68] ,\aclk_tdata_dly_reg_n_0_[67] ,\aclk_tdata_dly_reg_n_0_[66] ,\aclk_tdata_dly_reg_n_0_[65] ,\aclk_tdata_dly_reg_n_0_[64] ,\aclk_tdata_dly_reg_n_0_[63] ,\aclk_tdata_dly_reg_n_0_[62] ,\aclk_tdata_dly_reg_n_0_[61] ,\aclk_tdata_dly_reg_n_0_[60] ,\aclk_tdata_dly_reg_n_0_[59] ,\aclk_tdata_dly_reg_n_0_[58] ,\aclk_tdata_dly_reg_n_0_[57] ,\aclk_tdata_dly_reg_n_0_[56] ,\aclk_tdata_dly_reg_n_0_[55] ,\aclk_tdata_dly_reg_n_0_[54] ,\aclk_tdata_dly_reg_n_0_[53] ,\aclk_tdata_dly_reg_n_0_[52] ,\aclk_tdata_dly_reg_n_0_[51] ,\aclk_tdata_dly_reg_n_0_[50] ,\aclk_tdata_dly_reg_n_0_[49] ,\aclk_tdata_dly_reg_n_0_[48] ,\aclk_tdata_dly_reg_n_0_[47] ,\aclk_tdata_dly_reg_n_0_[46] ,\aclk_tdata_dly_reg_n_0_[45] ,\aclk_tdata_dly_reg_n_0_[44] ,\aclk_tdata_dly_reg_n_0_[43] ,\aclk_tdata_dly_reg_n_0_[42] ,\aclk_tdata_dly_reg_n_0_[41] ,\aclk_tdata_dly_reg_n_0_[40] ,\aclk_tdata_dly_reg_n_0_[39] ,\aclk_tdata_dly_reg_n_0_[38] ,\aclk_tdata_dly_reg_n_0_[37] ,\aclk_tdata_dly_reg_n_0_[36] ,\aclk_tdata_dly_reg_n_0_[35] ,\aclk_tdata_dly_reg_n_0_[34] ,\aclk_tdata_dly_reg_n_0_[33] ,\aclk_tdata_dly_reg_n_0_[32] ,\aclk_tdata_dly_reg_n_0_[31] ,\aclk_tdata_dly_reg_n_0_[30] ,\aclk_tdata_dly_reg_n_0_[29] ,\aclk_tdata_dly_reg_n_0_[28] ,\aclk_tdata_dly_reg_n_0_[27] ,\aclk_tdata_dly_reg_n_0_[26] ,\aclk_tdata_dly_reg_n_0_[25] ,\aclk_tdata_dly_reg_n_0_[24] ,\aclk_tdata_dly_reg_n_0_[23] ,\aclk_tdata_dly_reg_n_0_[22] ,\aclk_tdata_dly_reg_n_0_[21] ,\aclk_tdata_dly_reg_n_0_[20] ,\aclk_tdata_dly_reg_n_0_[19] ,\aclk_tdata_dly_reg_n_0_[18] ,\aclk_tdata_dly_reg_n_0_[17] ,\aclk_tdata_dly_reg_n_0_[16] ,\aclk_tdata_dly_reg_n_0_[15] ,\aclk_tdata_dly_reg_n_0_[14] ,\aclk_tdata_dly_reg_n_0_[13] ,\aclk_tdata_dly_reg_n_0_[12] ,\aclk_tdata_dly_reg_n_0_[11] ,\aclk_tdata_dly_reg_n_0_[10] ,\aclk_tdata_dly_reg_n_0_[9] ,\aclk_tdata_dly_reg_n_0_[8] ,\aclk_tdata_dly_reg_n_0_[7] ,\aclk_tdata_dly_reg_n_0_[6] ,\aclk_tdata_dly_reg_n_0_[5] ,\aclk_tdata_dly_reg_n_0_[4] ,\aclk_tdata_dly_reg_n_0_[3] ,\aclk_tdata_dly_reg_n_0_[2] ,\aclk_tdata_dly_reg_n_0_[1] ,\aclk_tdata_dly_reg_n_0_[0] }),
        .\aclk_tdata_reg[95]_1 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ),
        .\aclk_tdata_reg[9] (\aclk_tdata_reg[9]_0 ),
        .aclk_tlast_dly(aclk_tlast_dly),
        .aclk_tuser_dly_reg(aclk_tuser_dly_reg_1),
        .aclk_tuser_reg(aclk_tuser_reg_1),
        .aclk_tuser_reg_0(aclk_tuser_dly_reg_0),
        .aclken(aclken),
        .aclken_0(CDC_SINGLE_INST_n_9),
        .aresetn(aresetn),
        .\count_value_i_reg[9] (\count_value_i_reg[9] ),
        .dest_out(dest_out),
        .din({din[96],din[87:80],din[55:40],din[31:24],din[7:0]}),
        .full(full),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0 (yuv422_en_sync),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 (CDC_YUV422_EN_INST_n_57),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 (CDC_YUV422_EN_INST_n_58),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 (CDC_YUV422_EN_INST_n_59),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 (CDC_YUV422_EN_INST_n_68),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 (CDC_YUV422_EN_INST_n_69),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_12 (CDC_YUV422_EN_INST_n_70),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_13 (CDC_YUV422_EN_INST_n_71),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_14 (CDC_YUV422_EN_INST_n_72),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_15 (CDC_YUV422_EN_INST_n_73),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 (CDC_YUV422_EN_INST_n_60),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 (CDC_YUV422_EN_INST_n_61),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 (CDC_YUV422_EN_INST_n_62),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 (CDC_YUV422_EN_INST_n_63),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 (CDC_YUV422_EN_INST_n_64),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 (CDC_YUV422_EN_INST_n_65),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 (CDC_YUV422_EN_INST_n_66),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 (CDC_YUV422_EN_INST_n_67),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 ({\aclk_tdata_reg_n_0_[87] ,\aclk_tdata_reg_n_0_[86] ,\aclk_tdata_reg_n_0_[85] ,\aclk_tdata_reg_n_0_[84] ,\aclk_tdata_reg_n_0_[83] ,\aclk_tdata_reg_n_0_[82] ,\aclk_tdata_reg_n_0_[81] ,\aclk_tdata_reg_n_0_[80] ,\aclk_tdata_reg_n_0_[63] ,\aclk_tdata_reg_n_0_[62] ,\aclk_tdata_reg_n_0_[61] ,\aclk_tdata_reg_n_0_[60] ,\aclk_tdata_reg_n_0_[59] ,\aclk_tdata_reg_n_0_[58] ,\aclk_tdata_reg_n_0_[57] ,\aclk_tdata_reg_n_0_[56] ,\aclk_tdata_reg_n_0_[55] ,\aclk_tdata_reg_n_0_[54] ,\aclk_tdata_reg_n_0_[53] ,\aclk_tdata_reg_n_0_[52] ,\aclk_tdata_reg_n_0_[51] ,\aclk_tdata_reg_n_0_[50] ,\aclk_tdata_reg_n_0_[49] ,\aclk_tdata_reg_n_0_[48] ,\aclk_tdata_reg_n_0_[47] ,\aclk_tdata_reg_n_0_[46] ,\aclk_tdata_reg_n_0_[45] ,\aclk_tdata_reg_n_0_[44] ,\aclk_tdata_reg_n_0_[43] ,\aclk_tdata_reg_n_0_[42] ,\aclk_tdata_reg_n_0_[41] ,\aclk_tdata_reg_n_0_[40] ,\aclk_tdata_reg_n_0_[39] ,\aclk_tdata_reg_n_0_[38] ,\aclk_tdata_reg_n_0_[37] ,\aclk_tdata_reg_n_0_[36] ,\aclk_tdata_reg_n_0_[35] ,\aclk_tdata_reg_n_0_[34] ,\aclk_tdata_reg_n_0_[33] ,\aclk_tdata_reg_n_0_[32] ,\aclk_tdata_reg_n_0_[31] ,\aclk_tdata_reg_n_0_[30] ,\aclk_tdata_reg_n_0_[29] ,\aclk_tdata_reg_n_0_[28] ,\aclk_tdata_reg_n_0_[27] ,\aclk_tdata_reg_n_0_[26] ,\aclk_tdata_reg_n_0_[25] ,\aclk_tdata_reg_n_0_[24] ,\aclk_tdata_reg_n_0_[23] ,\aclk_tdata_reg_n_0_[22] ,\aclk_tdata_reg_n_0_[21] ,\aclk_tdata_reg_n_0_[20] ,\aclk_tdata_reg_n_0_[19] ,\aclk_tdata_reg_n_0_[18] ,\aclk_tdata_reg_n_0_[17] ,\aclk_tdata_reg_n_0_[16] ,\aclk_tdata_reg_n_0_[15] ,\aclk_tdata_reg_n_0_[14] ,\aclk_tdata_reg_n_0_[13] ,\aclk_tdata_reg_n_0_[12] ,\aclk_tdata_reg_n_0_[11] ,\aclk_tdata_reg_n_0_[10] ,\aclk_tdata_reg_n_0_[9] ,\aclk_tdata_reg_n_0_[8] ,\aclk_tdata_reg_n_0_[7] ,\aclk_tdata_reg_n_0_[6] ,\aclk_tdata_reg_n_0_[5] ,\aclk_tdata_reg_n_0_[4] ,\aclk_tdata_reg_n_0_[3] ,\aclk_tdata_reg_n_0_[2] ,\aclk_tdata_reg_n_0_[1] ,\aclk_tdata_reg_n_0_[0] }),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_10 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_9 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_11 (aclk_tuser_reg_n_0),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_2 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_2 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_3 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_3 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_4 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_4 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_5 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_5 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_6 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_6 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_7 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_7 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_8 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_8 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_9 (aclk_tlast_reg_n_0),
        .repeat_en(repeat_en),
        .s_axis_video_tdata(s_axis_video_tdata),
        .\s_axis_video_tdata[95] (p_1_in__0),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tlast_0(s_axis_video_tlast_0),
        .s_axis_video_tlast_1(s_axis_video_tlast_1),
        .s_axis_video_tlast_2(s_axis_video_tlast_2),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .\syncstages_ff_reg[3] (\syncstages_ff_reg[3] ),
        .\syncstages_ff_reg[3]_0 (\syncstages_ff_reg[3]_0 ),
        .\syncstages_ff_reg[3]_1 (\syncstages_ff_reg[3]_1 ),
        .\syncstages_ff_reg[3]_10 (CDC_SINGLE_INST_n_180),
        .\syncstages_ff_reg[3]_11 (\syncstages_ff_reg[3]_2 ),
        .\syncstages_ff_reg[3]_2 (CDC_SINGLE_INST_n_155),
        .\syncstages_ff_reg[3]_3 (CDC_SINGLE_INST_n_156),
        .\syncstages_ff_reg[3]_4 (CDC_SINGLE_INST_n_157),
        .\syncstages_ff_reg[3]_5 (CDC_SINGLE_INST_n_158),
        .\syncstages_ff_reg[3]_6 (CDC_SINGLE_INST_n_159),
        .\syncstages_ff_reg[3]_7 (CDC_SINGLE_INST_n_160),
        .\syncstages_ff_reg[3]_8 (CDC_SINGLE_INST_n_161),
        .\syncstages_ff_reg[3]_9 (CDC_SINGLE_INST_n_162),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_cdc_single_2 CDC_YUV422_EN_INST
       (.Q({\aclk_tdata_reg_n_0_[95] ,\aclk_tdata_reg_n_0_[94] ,\aclk_tdata_reg_n_0_[93] ,\aclk_tdata_reg_n_0_[92] ,\aclk_tdata_reg_n_0_[91] ,\aclk_tdata_reg_n_0_[90] ,\aclk_tdata_reg_n_0_[89] ,\aclk_tdata_reg_n_0_[88] ,\aclk_tdata_reg_n_0_[87] ,\aclk_tdata_reg_n_0_[86] ,\aclk_tdata_reg_n_0_[85] ,\aclk_tdata_reg_n_0_[84] ,\aclk_tdata_reg_n_0_[83] ,\aclk_tdata_reg_n_0_[82] ,\aclk_tdata_reg_n_0_[81] ,\aclk_tdata_reg_n_0_[80] ,\aclk_tdata_reg_n_0_[79] ,\aclk_tdata_reg_n_0_[78] ,\aclk_tdata_reg_n_0_[77] ,\aclk_tdata_reg_n_0_[76] ,\aclk_tdata_reg_n_0_[75] ,\aclk_tdata_reg_n_0_[74] ,\aclk_tdata_reg_n_0_[73] ,\aclk_tdata_reg_n_0_[72] ,\aclk_tdata_reg_n_0_[71] ,\aclk_tdata_reg_n_0_[70] ,\aclk_tdata_reg_n_0_[69] ,\aclk_tdata_reg_n_0_[68] ,\aclk_tdata_reg_n_0_[67] ,\aclk_tdata_reg_n_0_[66] ,\aclk_tdata_reg_n_0_[65] ,\aclk_tdata_reg_n_0_[64] ,\aclk_tdata_reg_n_0_[63] ,\aclk_tdata_reg_n_0_[62] ,\aclk_tdata_reg_n_0_[61] ,\aclk_tdata_reg_n_0_[60] ,\aclk_tdata_reg_n_0_[59] ,\aclk_tdata_reg_n_0_[58] ,\aclk_tdata_reg_n_0_[57] ,\aclk_tdata_reg_n_0_[56] ,\aclk_tdata_reg_n_0_[47] ,\aclk_tdata_reg_n_0_[46] ,\aclk_tdata_reg_n_0_[45] ,\aclk_tdata_reg_n_0_[44] ,\aclk_tdata_reg_n_0_[43] ,\aclk_tdata_reg_n_0_[42] ,\aclk_tdata_reg_n_0_[41] ,\aclk_tdata_reg_n_0_[40] ,\aclk_tdata_reg_n_0_[39] ,\aclk_tdata_reg_n_0_[38] ,\aclk_tdata_reg_n_0_[37] ,\aclk_tdata_reg_n_0_[36] ,\aclk_tdata_reg_n_0_[35] ,\aclk_tdata_reg_n_0_[34] ,\aclk_tdata_reg_n_0_[33] ,\aclk_tdata_reg_n_0_[32] ,\aclk_tdata_reg_n_0_[31] ,\aclk_tdata_reg_n_0_[30] ,\aclk_tdata_reg_n_0_[29] ,\aclk_tdata_reg_n_0_[28] ,\aclk_tdata_reg_n_0_[27] ,\aclk_tdata_reg_n_0_[26] ,\aclk_tdata_reg_n_0_[25] ,\aclk_tdata_reg_n_0_[24] ,\aclk_tdata_reg_n_0_[23] ,\aclk_tdata_reg_n_0_[22] ,\aclk_tdata_reg_n_0_[21] ,\aclk_tdata_reg_n_0_[20] ,\aclk_tdata_reg_n_0_[19] ,\aclk_tdata_reg_n_0_[18] ,\aclk_tdata_reg_n_0_[17] ,\aclk_tdata_reg_n_0_[16] ,\aclk_tdata_reg_n_0_[15] ,\aclk_tdata_reg_n_0_[14] ,\aclk_tdata_reg_n_0_[13] ,\aclk_tdata_reg_n_0_[12] ,\aclk_tdata_reg_n_0_[11] ,\aclk_tdata_reg_n_0_[10] ,\aclk_tdata_reg_n_0_[9] ,\aclk_tdata_reg_n_0_[8] ,\aclk_tdata_reg_n_0_[7] ,\aclk_tdata_reg_n_0_[6] ,\aclk_tdata_reg_n_0_[5] ,\aclk_tdata_reg_n_0_[4] ,\aclk_tdata_reg_n_0_[3] ,\aclk_tdata_reg_n_0_[2] ,\aclk_tdata_reg_n_0_[1] ,\aclk_tdata_reg_n_0_[0] }),
        .aclk(aclk),
        .\aclk_tdata_reg[16] (CDC_YUV422_EN_INST_n_58),
        .\aclk_tdata_reg[17] (CDC_YUV422_EN_INST_n_59),
        .\aclk_tdata_reg[18] (CDC_YUV422_EN_INST_n_60),
        .\aclk_tdata_reg[19] (CDC_YUV422_EN_INST_n_61),
        .\aclk_tdata_reg[20] (CDC_YUV422_EN_INST_n_62),
        .\aclk_tdata_reg[21] (CDC_YUV422_EN_INST_n_63),
        .\aclk_tdata_reg[22] (CDC_YUV422_EN_INST_n_64),
        .\aclk_tdata_reg[23] (CDC_YUV422_EN_INST_n_65),
        .\aclk_tdata_reg[24] (CDC_YUV422_EN_INST_n_66),
        .\aclk_tdata_reg[25] (CDC_YUV422_EN_INST_n_67),
        .\aclk_tdata_reg[26] (CDC_YUV422_EN_INST_n_68),
        .\aclk_tdata_reg[27] (CDC_YUV422_EN_INST_n_69),
        .\aclk_tdata_reg[28] (CDC_YUV422_EN_INST_n_70),
        .\aclk_tdata_reg[29] (CDC_YUV422_EN_INST_n_71),
        .\aclk_tdata_reg[30] (CDC_YUV422_EN_INST_n_72),
        .\aclk_tdata_reg[31] (CDC_YUV422_EN_INST_n_73),
        .dest_out(yuv422_en_sync),
        .din({din[95:88],din[79:56],din[39:32],din[23:8]}),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0 (CDC_SINGLE_INST_n_180),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_0 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 (CDC_SINGLE_INST_n_156),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_11 (CDC_SINGLE_INST_n_157),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_12 (CDC_SINGLE_INST_n_158),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_13 (CDC_SINGLE_INST_n_159),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_14 (CDC_SINGLE_INST_n_160),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_15 (CDC_SINGLE_INST_n_161),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_16 (CDC_SINGLE_INST_n_162),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_17 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_18 (CDC_SINGLE_INST_n_171),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_19 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_1 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_20 (CDC_SINGLE_INST_n_172),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_21 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_22 (CDC_SINGLE_INST_n_173),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_23 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_10 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_24 (CDC_SINGLE_INST_n_174),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_2 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_3 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_4 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_5 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_7 (\gen_wr_a.gen_word_narrow.mem_reg_bram_0_6 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_8 (CDC_SINGLE_INST_n_155),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_0_9 (Q[2]),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_0 (CDC_SINGLE_INST_n_175),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1_1 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 (CDC_SINGLE_INST_n_165),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_12 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_13 (CDC_SINGLE_INST_n_166),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_14 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_15 (CDC_SINGLE_INST_n_167),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_16 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_17 (CDC_SINGLE_INST_n_168),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_18 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_19 (CDC_SINGLE_INST_n_169),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 (CDC_SINGLE_INST_n_176),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_20 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1_10 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_21 (CDC_SINGLE_INST_n_170),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_22 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1_11 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1_2 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 (CDC_SINGLE_INST_n_177),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_5 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1_3 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_6 (CDC_SINGLE_INST_n_178),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_7 (CDC_SINGLE_INST_n_163),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_8 (\gen_wr_a.gen_word_narrow.mem_reg_bram_1_4 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_1_9 (CDC_SINGLE_INST_n_164),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2 (dest_out),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2_0 [31:8]),
        .\gen_wr_a.gen_word_narrow.mem_reg_bram_2_1 (\gen_wr_a.gen_word_narrow.mem_reg_bram_2 ),
        .s_axis_video_tdata(s_axis_video_tdata[63:40]),
        .\syncstages_ff_reg[3] (CDC_YUV422_EN_INST_n_57),
        .video_format(video_format));
  LUT3 #(
    .INIT(8'hF7)) 
    \FSM_onehot_aclk_state[2]_i_4__0 
       (.I0(s_axis_video_tuser),
        .I1(s_axis_video_tvalid),
        .I2(fid),
        .O(s_axis_video_tuser_0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \FSM_onehot_aclk_state[4]_i_1__0 
       (.I0(aclk_tlast_reg_1[0]),
        .I1(aclk_tlast_reg_1[3]),
        .I2(aresetn),
        .I3(aclk_tlast_reg_1[2]),
        .I4(aclk_tlast_reg_1[1]),
        .O(aclk_reset));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:00001,C_STATE_ACTIVE:10000,C_STATE_ODD:01000,C_STATE_WAIT:00010,C_STATE_EVEN:00100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_aclk_state_reg[0] 
       (.C(aclk),
        .CE(aclken),
        .D(D),
        .Q(Q[0]),
        .S(aclk_reset));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:00001,C_STATE_ACTIVE:10000,C_STATE_ODD:01000,C_STATE_WAIT:00010,C_STATE_EVEN:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[1] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_6),
        .Q(Q[1]),
        .R(aclk_reset));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:00001,C_STATE_ACTIVE:10000,C_STATE_ODD:01000,C_STATE_WAIT:00010,C_STATE_EVEN:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[2] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_5),
        .Q(Q[2]),
        .R(aclk_reset));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:00001,C_STATE_ACTIVE:10000,C_STATE_ODD:01000,C_STATE_WAIT:00010,C_STATE_EVEN:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[3] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_4),
        .Q(p_1_in),
        .R(aclk_reset));
  (* FSM_ENCODED_STATES = "C_STATE_IDLE:00001,C_STATE_ACTIVE:10000,C_STATE_ODD:01000,C_STATE_WAIT:00010,C_STATE_EVEN:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_aclk_state_reg[4] 
       (.C(aclk),
        .CE(aclken),
        .D(CDC_SINGLE_INST_n_3),
        .Q(\FSM_onehot_aclk_state_reg_n_0_[4] ),
        .R(aclk_reset));
  FDRE aclk_fid_dly_reg
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(fid_from_remap),
        .Q(aclk_fid_dly_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00080000)) 
    aclk_fid_i_2
       (.I0(aclk_fid_dly_reg_n_0),
        .I1(Q[1]),
        .I2(wr_rst_busy),
        .I3(full),
        .I4(aresetn),
        .O(aclk_fid_dly_reg_0));
  FDRE aclk_fid_reg
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(aclk_fid_reg_1),
        .Q(aclk_fid_reg_0),
        .R(aclk_reset));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \aclk_tdata[95]_i_10 
       (.I0(Q[1]),
        .I1(p_1_in),
        .O(\aclk_tdata[95]_i_10_n_0 ));
  FDRE \aclk_tdata_dly_reg[0] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [0]),
        .Q(\aclk_tdata_dly_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[10] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [10]),
        .Q(\aclk_tdata_dly_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[11] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [11]),
        .Q(\aclk_tdata_dly_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[12] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [12]),
        .Q(\aclk_tdata_dly_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[13] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [13]),
        .Q(\aclk_tdata_dly_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[14] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [14]),
        .Q(\aclk_tdata_dly_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[15] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [15]),
        .Q(\aclk_tdata_dly_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[16] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [16]),
        .Q(\aclk_tdata_dly_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[17] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [17]),
        .Q(\aclk_tdata_dly_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[18] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [18]),
        .Q(\aclk_tdata_dly_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[19] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [19]),
        .Q(\aclk_tdata_dly_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[1] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [1]),
        .Q(\aclk_tdata_dly_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[20] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [20]),
        .Q(\aclk_tdata_dly_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[21] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [21]),
        .Q(\aclk_tdata_dly_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[22] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [22]),
        .Q(\aclk_tdata_dly_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[23] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [23]),
        .Q(\aclk_tdata_dly_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[24] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [24]),
        .Q(\aclk_tdata_dly_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[25] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [25]),
        .Q(\aclk_tdata_dly_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[26] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [26]),
        .Q(\aclk_tdata_dly_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[27] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [27]),
        .Q(\aclk_tdata_dly_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[28] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [28]),
        .Q(\aclk_tdata_dly_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[29] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [29]),
        .Q(\aclk_tdata_dly_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[2] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [2]),
        .Q(\aclk_tdata_dly_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[30] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [30]),
        .Q(\aclk_tdata_dly_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[31] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [31]),
        .Q(\aclk_tdata_dly_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[32] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [32]),
        .Q(\aclk_tdata_dly_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[33] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [33]),
        .Q(\aclk_tdata_dly_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[34] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [34]),
        .Q(\aclk_tdata_dly_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[35] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [35]),
        .Q(\aclk_tdata_dly_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[36] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [36]),
        .Q(\aclk_tdata_dly_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[37] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [37]),
        .Q(\aclk_tdata_dly_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[38] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [38]),
        .Q(\aclk_tdata_dly_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[39] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [39]),
        .Q(\aclk_tdata_dly_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[3] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [3]),
        .Q(\aclk_tdata_dly_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[40] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [40]),
        .Q(\aclk_tdata_dly_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[41] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [41]),
        .Q(\aclk_tdata_dly_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[42] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [42]),
        .Q(\aclk_tdata_dly_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[43] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [43]),
        .Q(\aclk_tdata_dly_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[44] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [44]),
        .Q(\aclk_tdata_dly_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[45] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [45]),
        .Q(\aclk_tdata_dly_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[46] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [46]),
        .Q(\aclk_tdata_dly_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[47] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [47]),
        .Q(\aclk_tdata_dly_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[48] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [48]),
        .Q(\aclk_tdata_dly_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[49] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [49]),
        .Q(\aclk_tdata_dly_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[4] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [4]),
        .Q(\aclk_tdata_dly_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[50] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [50]),
        .Q(\aclk_tdata_dly_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[51] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [51]),
        .Q(\aclk_tdata_dly_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[52] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [52]),
        .Q(\aclk_tdata_dly_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[53] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [53]),
        .Q(\aclk_tdata_dly_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[54] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [54]),
        .Q(\aclk_tdata_dly_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[55] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [55]),
        .Q(\aclk_tdata_dly_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[56] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [56]),
        .Q(\aclk_tdata_dly_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[57] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [57]),
        .Q(\aclk_tdata_dly_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[58] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [58]),
        .Q(\aclk_tdata_dly_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[59] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [59]),
        .Q(\aclk_tdata_dly_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[5] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [5]),
        .Q(\aclk_tdata_dly_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[60] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [60]),
        .Q(\aclk_tdata_dly_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[61] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [61]),
        .Q(\aclk_tdata_dly_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[62] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [62]),
        .Q(\aclk_tdata_dly_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[63] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [63]),
        .Q(\aclk_tdata_dly_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[64] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [64]),
        .Q(\aclk_tdata_dly_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[65] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [65]),
        .Q(\aclk_tdata_dly_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[66] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [66]),
        .Q(\aclk_tdata_dly_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[67] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [67]),
        .Q(\aclk_tdata_dly_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[68] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [68]),
        .Q(\aclk_tdata_dly_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[69] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [69]),
        .Q(\aclk_tdata_dly_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[6] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [6]),
        .Q(\aclk_tdata_dly_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[70] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [70]),
        .Q(\aclk_tdata_dly_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[71] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [71]),
        .Q(\aclk_tdata_dly_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[72] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [72]),
        .Q(\aclk_tdata_dly_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[73] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [73]),
        .Q(\aclk_tdata_dly_reg_n_0_[73] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[74] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [74]),
        .Q(\aclk_tdata_dly_reg_n_0_[74] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[75] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [75]),
        .Q(\aclk_tdata_dly_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[76] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [76]),
        .Q(\aclk_tdata_dly_reg_n_0_[76] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[77] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [77]),
        .Q(\aclk_tdata_dly_reg_n_0_[77] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[78] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [78]),
        .Q(\aclk_tdata_dly_reg_n_0_[78] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[79] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [79]),
        .Q(\aclk_tdata_dly_reg_n_0_[79] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[7] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [7]),
        .Q(\aclk_tdata_dly_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[80] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [80]),
        .Q(\aclk_tdata_dly_reg_n_0_[80] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[81] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [81]),
        .Q(\aclk_tdata_dly_reg_n_0_[81] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[82] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [82]),
        .Q(\aclk_tdata_dly_reg_n_0_[82] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[83] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [83]),
        .Q(\aclk_tdata_dly_reg_n_0_[83] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[84] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [84]),
        .Q(\aclk_tdata_dly_reg_n_0_[84] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[85] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [85]),
        .Q(\aclk_tdata_dly_reg_n_0_[85] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[86] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [86]),
        .Q(\aclk_tdata_dly_reg_n_0_[86] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[87] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [87]),
        .Q(\aclk_tdata_dly_reg_n_0_[87] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[88] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [88]),
        .Q(\aclk_tdata_dly_reg_n_0_[88] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[89] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [89]),
        .Q(\aclk_tdata_dly_reg_n_0_[89] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[8] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [8]),
        .Q(\aclk_tdata_dly_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[90] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [90]),
        .Q(\aclk_tdata_dly_reg_n_0_[90] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[91] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [91]),
        .Q(\aclk_tdata_dly_reg_n_0_[91] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[92] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [92]),
        .Q(\aclk_tdata_dly_reg_n_0_[92] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[93] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [93]),
        .Q(\aclk_tdata_dly_reg_n_0_[93] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[94] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [94]),
        .Q(\aclk_tdata_dly_reg_n_0_[94] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[95] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [95]),
        .Q(\aclk_tdata_dly_reg_n_0_[95] ),
        .R(1'b0));
  FDRE \aclk_tdata_dly_reg[9] 
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(\aclk_tdata_dly_reg[95]_4 [9]),
        .Q(\aclk_tdata_dly_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \aclk_tdata_reg[0] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[0]),
        .Q(\aclk_tdata_reg_n_0_[0] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[10] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[10]),
        .Q(\aclk_tdata_reg_n_0_[10] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[11] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[11]),
        .Q(\aclk_tdata_reg_n_0_[11] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[12] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[12]),
        .Q(\aclk_tdata_reg_n_0_[12] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[13] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[13]),
        .Q(\aclk_tdata_reg_n_0_[13] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[14] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[14]),
        .Q(\aclk_tdata_reg_n_0_[14] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[15] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[15]),
        .Q(\aclk_tdata_reg_n_0_[15] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[16] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[16]),
        .Q(\aclk_tdata_reg_n_0_[16] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[17] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[17]),
        .Q(\aclk_tdata_reg_n_0_[17] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[18] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[18]),
        .Q(\aclk_tdata_reg_n_0_[18] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[19] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[19]),
        .Q(\aclk_tdata_reg_n_0_[19] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[1] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[1]),
        .Q(\aclk_tdata_reg_n_0_[1] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[20] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[20]),
        .Q(\aclk_tdata_reg_n_0_[20] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[21] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[21]),
        .Q(\aclk_tdata_reg_n_0_[21] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[22] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[22]),
        .Q(\aclk_tdata_reg_n_0_[22] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[23] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[23]),
        .Q(\aclk_tdata_reg_n_0_[23] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[24] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[24]),
        .Q(\aclk_tdata_reg_n_0_[24] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[25] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[25]),
        .Q(\aclk_tdata_reg_n_0_[25] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[26] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[26]),
        .Q(\aclk_tdata_reg_n_0_[26] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[27] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[27]),
        .Q(\aclk_tdata_reg_n_0_[27] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[28] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[28]),
        .Q(\aclk_tdata_reg_n_0_[28] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[29] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[29]),
        .Q(\aclk_tdata_reg_n_0_[29] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[2] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[2]),
        .Q(\aclk_tdata_reg_n_0_[2] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[30] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[30]),
        .Q(\aclk_tdata_reg_n_0_[30] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[31] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[31]),
        .Q(\aclk_tdata_reg_n_0_[31] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[32] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[32]),
        .Q(\aclk_tdata_reg_n_0_[32] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[33] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[33]),
        .Q(\aclk_tdata_reg_n_0_[33] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[34] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[34]),
        .Q(\aclk_tdata_reg_n_0_[34] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[35] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[35]),
        .Q(\aclk_tdata_reg_n_0_[35] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[36] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[36]),
        .Q(\aclk_tdata_reg_n_0_[36] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[37] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[37]),
        .Q(\aclk_tdata_reg_n_0_[37] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[38] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[38]),
        .Q(\aclk_tdata_reg_n_0_[38] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[39] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[39]),
        .Q(\aclk_tdata_reg_n_0_[39] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[3] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[3]),
        .Q(\aclk_tdata_reg_n_0_[3] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[40] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[40]),
        .Q(\aclk_tdata_reg_n_0_[40] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[41] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[41]),
        .Q(\aclk_tdata_reg_n_0_[41] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[42] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[42]),
        .Q(\aclk_tdata_reg_n_0_[42] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[43] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[43]),
        .Q(\aclk_tdata_reg_n_0_[43] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[44] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[44]),
        .Q(\aclk_tdata_reg_n_0_[44] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[45] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[45]),
        .Q(\aclk_tdata_reg_n_0_[45] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[46] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[46]),
        .Q(\aclk_tdata_reg_n_0_[46] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[47] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[47]),
        .Q(\aclk_tdata_reg_n_0_[47] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[48] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[48]),
        .Q(\aclk_tdata_reg_n_0_[48] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[49] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[49]),
        .Q(\aclk_tdata_reg_n_0_[49] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[4] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[4]),
        .Q(\aclk_tdata_reg_n_0_[4] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[50] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[50]),
        .Q(\aclk_tdata_reg_n_0_[50] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[51] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[51]),
        .Q(\aclk_tdata_reg_n_0_[51] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[52] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[52]),
        .Q(\aclk_tdata_reg_n_0_[52] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[53] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[53]),
        .Q(\aclk_tdata_reg_n_0_[53] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[54] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[54]),
        .Q(\aclk_tdata_reg_n_0_[54] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[55] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[55]),
        .Q(\aclk_tdata_reg_n_0_[55] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[56] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[56]),
        .Q(\aclk_tdata_reg_n_0_[56] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[57] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[57]),
        .Q(\aclk_tdata_reg_n_0_[57] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[58] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[58]),
        .Q(\aclk_tdata_reg_n_0_[58] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[59] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[59]),
        .Q(\aclk_tdata_reg_n_0_[59] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[5] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[5]),
        .Q(\aclk_tdata_reg_n_0_[5] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[60] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[60]),
        .Q(\aclk_tdata_reg_n_0_[60] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[61] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[61]),
        .Q(\aclk_tdata_reg_n_0_[61] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[62] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[62]),
        .Q(\aclk_tdata_reg_n_0_[62] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[63] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[63]),
        .Q(\aclk_tdata_reg_n_0_[63] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[64] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[64]),
        .Q(\aclk_tdata_reg_n_0_[64] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[65] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[65]),
        .Q(\aclk_tdata_reg_n_0_[65] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[66] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[66]),
        .Q(\aclk_tdata_reg_n_0_[66] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[67] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[67]),
        .Q(\aclk_tdata_reg_n_0_[67] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[68] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[68]),
        .Q(\aclk_tdata_reg_n_0_[68] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[69] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[69]),
        .Q(\aclk_tdata_reg_n_0_[69] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[6] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[6]),
        .Q(\aclk_tdata_reg_n_0_[6] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[70] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[70]),
        .Q(\aclk_tdata_reg_n_0_[70] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[71] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[71]),
        .Q(\aclk_tdata_reg_n_0_[71] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[72] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[72]),
        .Q(\aclk_tdata_reg_n_0_[72] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[73] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[73]),
        .Q(\aclk_tdata_reg_n_0_[73] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[74] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[74]),
        .Q(\aclk_tdata_reg_n_0_[74] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[75] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[75]),
        .Q(\aclk_tdata_reg_n_0_[75] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[76] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[76]),
        .Q(\aclk_tdata_reg_n_0_[76] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[77] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[77]),
        .Q(\aclk_tdata_reg_n_0_[77] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[78] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[78]),
        .Q(\aclk_tdata_reg_n_0_[78] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[79] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[79]),
        .Q(\aclk_tdata_reg_n_0_[79] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[7] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[7]),
        .Q(\aclk_tdata_reg_n_0_[7] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[80] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[80]),
        .Q(\aclk_tdata_reg_n_0_[80] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[81] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[81]),
        .Q(\aclk_tdata_reg_n_0_[81] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[82] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[82]),
        .Q(\aclk_tdata_reg_n_0_[82] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[83] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[83]),
        .Q(\aclk_tdata_reg_n_0_[83] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[84] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[84]),
        .Q(\aclk_tdata_reg_n_0_[84] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[85] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[85]),
        .Q(\aclk_tdata_reg_n_0_[85] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[86] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[86]),
        .Q(\aclk_tdata_reg_n_0_[86] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[87] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[87]),
        .Q(\aclk_tdata_reg_n_0_[87] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[88] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[88]),
        .Q(\aclk_tdata_reg_n_0_[88] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[89] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[89]),
        .Q(\aclk_tdata_reg_n_0_[89] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[8] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[8]),
        .Q(\aclk_tdata_reg_n_0_[8] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[90] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[90]),
        .Q(\aclk_tdata_reg_n_0_[90] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[91] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[91]),
        .Q(\aclk_tdata_reg_n_0_[91] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[92] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[92]),
        .Q(\aclk_tdata_reg_n_0_[92] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[93] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[93]),
        .Q(\aclk_tdata_reg_n_0_[93] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[94] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[94]),
        .Q(\aclk_tdata_reg_n_0_[94] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[95] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[95]),
        .Q(\aclk_tdata_reg_n_0_[95] ),
        .R(aclk_reset));
  FDRE \aclk_tdata_reg[9] 
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(p_1_in__0[9]),
        .Q(\aclk_tdata_reg_n_0_[9] ),
        .R(aclk_reset));
  FDRE aclk_tlast_dly_reg
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(tlast_from_remap),
        .Q(aclk_tlast_dly),
        .R(1'b0));
  FDRE aclk_tlast_reg
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(aclk_tlast_reg_0),
        .Q(aclk_tlast_reg_n_0),
        .R(aclk_reset));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    aclk_tuser_dly_i_5
       (.I0(\aclk_tdata_dly_reg[95]_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(aclken),
        .I4(p_1_in),
        .I5(\aclk_tdata_dly_reg[95]_2 ),
        .O(aclk_tuser_dly_i_5_n_0));
  LUT6 #(
    .INIT(64'h8080800000008000)) 
    aclk_tuser_dly_i_6
       (.I0(\FSM_onehot_aclk_state_reg[1]_0 ),
        .I1(\aclk_tdata_dly_reg[95]_3 ),
        .I2(s_axis_video_tvalid),
        .I3(first_sof),
        .I4(s_axis_video_tuser),
        .I5(fid),
        .O(aclk_tuser_dly_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    aclk_tuser_dly_i_8
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(p_1_in),
        .O(\FSM_onehot_aclk_state_reg[1]_0 ));
  FDRE aclk_tuser_dly_reg
       (.C(aclk),
        .CE(aclk_tuser_dly),
        .D(tuser_from_remap),
        .Q(aclk_tuser_dly_reg_0),
        .R(1'b0));
  FDRE aclk_tuser_reg
       (.C(aclk),
        .CE(CDC_SINGLE_INST_n_9),
        .D(aclk_tuser_reg_0),
        .Q(aclk_tuser_reg_n_0),
        .R(aclk_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_20_sync
   (fifo_eol_dly,
    fifo_sof_dly,
    locked,
    Q,
    E,
    vtg_ce,
    SR,
    status,
    vid_io_out_reset,
    vid_io_out_ce,
    vtg_active_video,
    vid_io_out_clk,
    vtg_vsync,
    dout,
    fifo_eol_re,
    empty,
    vtg_field_id,
    \FSM_onehot_state_reg[2]_0 ,
    fivid_reset_full_frame,
    D,
    \fifo_sof_cnt_reg[0]_0 );
  output fifo_eol_dly;
  output fifo_sof_dly;
  output locked;
  output [2:0]Q;
  output [0:0]E;
  output vtg_ce;
  output [0:0]SR;
  output [24:0]status;
  input vid_io_out_reset;
  input vid_io_out_ce;
  input vtg_active_video;
  input vid_io_out_clk;
  input vtg_vsync;
  input [2:0]dout;
  input fifo_eol_re;
  input empty;
  input vtg_field_id;
  input \FSM_onehot_state_reg[2]_0 ;
  input fivid_reset_full_frame;
  input [0:0]D;
  input [0:0]\fifo_sof_cnt_reg[0]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_2_n_0 ;
  wire \FSM_onehot_state[10]_i_3_n_0 ;
  wire \FSM_onehot_state[11]_i_10_n_0 ;
  wire \FSM_onehot_state[11]_i_11_n_0 ;
  wire \FSM_onehot_state[11]_i_1_n_0 ;
  wire \FSM_onehot_state[11]_i_2_n_0 ;
  wire \FSM_onehot_state[11]_i_3_n_0 ;
  wire \FSM_onehot_state[11]_i_4_n_0 ;
  wire \FSM_onehot_state[11]_i_5_n_0 ;
  wire \FSM_onehot_state[11]_i_6_n_0 ;
  wire \FSM_onehot_state[11]_i_7_n_0 ;
  wire \FSM_onehot_state[11]_i_8_n_0 ;
  wire \FSM_onehot_state[11]_i_9_n_0 ;
  wire \FSM_onehot_state[12]_i_1_n_0 ;
  wire \FSM_onehot_state[12]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state[2]_i_5_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_2_n_0 ;
  wire \FSM_onehot_state[9]_i_10_n_0 ;
  wire \FSM_onehot_state[9]_i_11_n_0 ;
  wire \FSM_onehot_state[9]_i_12_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_2_n_0 ;
  wire \FSM_onehot_state[9]_i_3_n_0 ;
  wire \FSM_onehot_state[9]_i_4_n_0 ;
  wire \FSM_onehot_state[9]_i_5_n_0 ;
  wire \FSM_onehot_state[9]_i_6_n_0 ;
  wire \FSM_onehot_state[9]_i_7_n_0 ;
  wire \FSM_onehot_state[9]_i_8_n_0 ;
  wire \FSM_onehot_state[9]_i_9_n_0 ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[12] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [2:0]dout;
  wire empty;
  wire [0:0]fifo_eol_cnt;
  wire fifo_eol_cnt0_carry__0_n_5;
  wire fifo_eol_cnt0_carry__0_n_6;
  wire fifo_eol_cnt0_carry__0_n_7;
  wire fifo_eol_cnt0_carry_n_0;
  wire fifo_eol_cnt0_carry_n_1;
  wire fifo_eol_cnt0_carry_n_2;
  wire fifo_eol_cnt0_carry_n_3;
  wire fifo_eol_cnt0_carry_n_4;
  wire fifo_eol_cnt0_carry_n_5;
  wire fifo_eol_cnt0_carry_n_6;
  wire fifo_eol_cnt0_carry_n_7;
  wire fifo_eol_cnt1;
  wire \fifo_eol_cnt[12]_i_1_n_0 ;
  wire [12:0]fifo_eol_cnt_dly;
  wire [12:0]fifo_eol_cnt_reg;
  wire fifo_eol_dly;
  wire fifo_eol_error_i_1_n_0;
  wire fifo_eol_error_i_2_n_0;
  wire fifo_eol_error_i_3_n_0;
  wire fifo_eol_error_i_4_n_0;
  wire fifo_eol_error_i_5_n_0;
  wire fifo_eol_error_i_6_n_0;
  wire fifo_eol_error_i_7_n_0;
  wire fifo_eol_error_i_8_n_0;
  wire fifo_eol_error_i_9_n_0;
  wire fifo_eol_error_reg_n_0;
  wire fifo_eol_re;
  wire fifo_eol_re_dly;
  wire fifo_force_rd;
  wire fifo_pix_cnt;
  wire fifo_pix_cnt0_carry__0_n_5;
  wire fifo_pix_cnt0_carry__0_n_6;
  wire fifo_pix_cnt0_carry__0_n_7;
  wire fifo_pix_cnt0_carry_n_0;
  wire fifo_pix_cnt0_carry_n_1;
  wire fifo_pix_cnt0_carry_n_2;
  wire fifo_pix_cnt0_carry_n_3;
  wire fifo_pix_cnt0_carry_n_4;
  wire fifo_pix_cnt0_carry_n_5;
  wire fifo_pix_cnt0_carry_n_6;
  wire fifo_pix_cnt0_carry_n_7;
  wire \fifo_pix_cnt[12]_i_1_n_0 ;
  wire [0:0]fifo_pix_cnt_dly;
  wire \fifo_pix_cnt_dly[12]_i_3_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_4_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_5_n_0 ;
  wire \fifo_pix_cnt_dly_reg_n_0_[0] ;
  wire \fifo_pix_cnt_dly_reg_n_0_[10] ;
  wire \fifo_pix_cnt_dly_reg_n_0_[11] ;
  wire \fifo_pix_cnt_dly_reg_n_0_[12] ;
  wire \fifo_pix_cnt_dly_reg_n_0_[1] ;
  wire \fifo_pix_cnt_dly_reg_n_0_[2] ;
  wire \fifo_pix_cnt_dly_reg_n_0_[3] ;
  wire \fifo_pix_cnt_dly_reg_n_0_[4] ;
  wire \fifo_pix_cnt_dly_reg_n_0_[5] ;
  wire \fifo_pix_cnt_dly_reg_n_0_[6] ;
  wire \fifo_pix_cnt_dly_reg_n_0_[7] ;
  wire \fifo_pix_cnt_dly_reg_n_0_[8] ;
  wire \fifo_pix_cnt_dly_reg_n_0_[9] ;
  wire [12:0]fifo_pix_cnt_reg;
  wire fifo_pix_error0;
  wire fifo_pix_error__0;
  wire fifo_pix_error_i_1_n_0;
  wire fifo_pix_error_i_3_n_0;
  wire fifo_pix_error_i_4_n_0;
  wire fifo_pix_error_i_5_n_0;
  wire fifo_pix_error_i_6_n_0;
  wire fifo_pix_error_i_7_n_0;
  wire \fifo_sof_cnt[7]_i_2_n_0 ;
  wire [7:0]fifo_sof_cnt_reg;
  wire [0:0]\fifo_sof_cnt_reg[0]_0 ;
  wire fifo_sof_dly;
  wire fivid_reset_full_frame;
  wire \in_data_mux[95]_i_2_n_0 ;
  wire \in_data_mux[95]_i_3_n_0 ;
  wire \in_data_mux[95]_i_4_n_0 ;
  wire locked;
  wire [12:0]p_0_in;
  wire p_0_in1_in;
  wire [12:0]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire [7:0]p_0_in__2;
  wire p_3_in;
  wire sof_ignore0;
  wire sof_ignore_i_1_n_0;
  wire sof_ignore_i_2_n_0;
  wire sof_ignore_i_3_n_0;
  wire sof_ignore_i_4_n_0;
  wire sof_ignore_reg_n_0;
  wire [3:0]state_dly;
  wire [3:0]state_reg;
  wire [24:0]status;
  wire \status_reg[0]_i_1_n_0 ;
  wire \status_reg[10]_i_1_n_0 ;
  wire \status_reg[11]_i_1_n_0 ;
  wire \status_reg[12]_i_1_n_0 ;
  wire \status_reg[12]_i_2_n_0 ;
  wire \status_reg[12]_i_3_n_0 ;
  wire \status_reg[1]_i_1_n_0 ;
  wire \status_reg[2]_i_1_n_0 ;
  wire \status_reg[3]_i_1_n_0 ;
  wire \status_reg[4]_i_1_n_0 ;
  wire \status_reg[5]_i_1_n_0 ;
  wire \status_reg[6]_i_1_n_0 ;
  wire \status_reg[7]_i_1_n_0 ;
  wire \status_reg[8]_i_1_n_0 ;
  wire \status_reg[9]_i_1_n_0 ;
  wire vid_io_out_ce;
  wire vid_io_out_clk;
  wire vid_io_out_reset;
  wire vtg_active_video;
  wire vtg_ce;
  wire vtg_de_dly;
  wire vtg_field_id;
  wire [0:0]vtg_lag;
  wire \vtg_lag[0]_i_4_n_0 ;
  wire [9:0]vtg_lag_reg;
  wire \vtg_lag_reg[0]_i_3_n_0 ;
  wire \vtg_lag_reg[0]_i_3_n_1 ;
  wire \vtg_lag_reg[0]_i_3_n_10 ;
  wire \vtg_lag_reg[0]_i_3_n_11 ;
  wire \vtg_lag_reg[0]_i_3_n_12 ;
  wire \vtg_lag_reg[0]_i_3_n_13 ;
  wire \vtg_lag_reg[0]_i_3_n_14 ;
  wire \vtg_lag_reg[0]_i_3_n_15 ;
  wire \vtg_lag_reg[0]_i_3_n_2 ;
  wire \vtg_lag_reg[0]_i_3_n_3 ;
  wire \vtg_lag_reg[0]_i_3_n_4 ;
  wire \vtg_lag_reg[0]_i_3_n_5 ;
  wire \vtg_lag_reg[0]_i_3_n_6 ;
  wire \vtg_lag_reg[0]_i_3_n_7 ;
  wire \vtg_lag_reg[0]_i_3_n_8 ;
  wire \vtg_lag_reg[0]_i_3_n_9 ;
  wire \vtg_lag_reg[16]_i_1_n_0 ;
  wire \vtg_lag_reg[16]_i_1_n_1 ;
  wire \vtg_lag_reg[16]_i_1_n_10 ;
  wire \vtg_lag_reg[16]_i_1_n_11 ;
  wire \vtg_lag_reg[16]_i_1_n_12 ;
  wire \vtg_lag_reg[16]_i_1_n_13 ;
  wire \vtg_lag_reg[16]_i_1_n_14 ;
  wire \vtg_lag_reg[16]_i_1_n_15 ;
  wire \vtg_lag_reg[16]_i_1_n_2 ;
  wire \vtg_lag_reg[16]_i_1_n_3 ;
  wire \vtg_lag_reg[16]_i_1_n_4 ;
  wire \vtg_lag_reg[16]_i_1_n_5 ;
  wire \vtg_lag_reg[16]_i_1_n_6 ;
  wire \vtg_lag_reg[16]_i_1_n_7 ;
  wire \vtg_lag_reg[16]_i_1_n_8 ;
  wire \vtg_lag_reg[16]_i_1_n_9 ;
  wire \vtg_lag_reg[24]_i_1_n_1 ;
  wire \vtg_lag_reg[24]_i_1_n_10 ;
  wire \vtg_lag_reg[24]_i_1_n_11 ;
  wire \vtg_lag_reg[24]_i_1_n_12 ;
  wire \vtg_lag_reg[24]_i_1_n_13 ;
  wire \vtg_lag_reg[24]_i_1_n_14 ;
  wire \vtg_lag_reg[24]_i_1_n_15 ;
  wire \vtg_lag_reg[24]_i_1_n_2 ;
  wire \vtg_lag_reg[24]_i_1_n_3 ;
  wire \vtg_lag_reg[24]_i_1_n_4 ;
  wire \vtg_lag_reg[24]_i_1_n_5 ;
  wire \vtg_lag_reg[24]_i_1_n_6 ;
  wire \vtg_lag_reg[24]_i_1_n_7 ;
  wire \vtg_lag_reg[24]_i_1_n_8 ;
  wire \vtg_lag_reg[24]_i_1_n_9 ;
  wire \vtg_lag_reg[8]_i_1_n_0 ;
  wire \vtg_lag_reg[8]_i_1_n_1 ;
  wire \vtg_lag_reg[8]_i_1_n_10 ;
  wire \vtg_lag_reg[8]_i_1_n_11 ;
  wire \vtg_lag_reg[8]_i_1_n_12 ;
  wire \vtg_lag_reg[8]_i_1_n_13 ;
  wire \vtg_lag_reg[8]_i_1_n_14 ;
  wire \vtg_lag_reg[8]_i_1_n_15 ;
  wire \vtg_lag_reg[8]_i_1_n_2 ;
  wire \vtg_lag_reg[8]_i_1_n_3 ;
  wire \vtg_lag_reg[8]_i_1_n_4 ;
  wire \vtg_lag_reg[8]_i_1_n_5 ;
  wire \vtg_lag_reg[8]_i_1_n_6 ;
  wire \vtg_lag_reg[8]_i_1_n_7 ;
  wire \vtg_lag_reg[8]_i_1_n_8 ;
  wire \vtg_lag_reg[8]_i_1_n_9 ;
  wire [31:10]vtg_lag_reg__0;
  wire [0:0]vtg_sof_cnt;
  wire vtg_sof_cnt0;
  wire \vtg_sof_cnt[7]_i_4_n_0 ;
  wire \vtg_sof_cnt[7]_i_5_n_0 ;
  wire \vtg_sof_cnt[7]_i_6_n_0 ;
  wire \vtg_sof_cnt[7]_i_7_n_0 ;
  wire [7:0]vtg_sof_cnt_reg;
  wire vtg_sof_dly;
  wire vtg_sof_dly_i_1_n_0;
  wire vtg_vsync;
  wire vtg_vsync_bp_i_1_n_0;
  wire vtg_vsync_bp_reg_n_0;
  wire vtg_vsync_dly;
  wire [7:3]NLW_fifo_eol_cnt0_carry__0_CO_UNCONNECTED;
  wire [7:4]NLW_fifo_eol_cnt0_carry__0_O_UNCONNECTED;
  wire [7:3]NLW_fifo_pix_cnt0_carry__0_CO_UNCONNECTED;
  wire [7:4]NLW_fifo_pix_cnt0_carry__0_O_UNCONNECTED;
  wire [7:7]\NLW_vtg_lag_reg[24]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h4F44444444444444)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[11]_i_3_n_0 ),
        .I1(\FSM_onehot_state[11]_i_4_n_0 ),
        .I2(fifo_eol_re_dly),
        .I3(fifo_force_rd),
        .I4(\FSM_onehot_state[1]_i_3_n_0 ),
        .I5(\FSM_onehot_state[9]_i_4_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(fifo_force_rd),
        .I1(sof_ignore_reg_n_0),
        .I2(\FSM_onehot_state[10]_i_2_n_0 ),
        .I3(vtg_sof_dly),
        .I4(\FSM_onehot_state[10]_i_3_n_0 ),
        .I5(\FSM_onehot_state[11]_i_3_n_0 ),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[10]_i_2 
       (.I0(fifo_sof_dly),
        .I1(dout[1]),
        .O(\FSM_onehot_state[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \FSM_onehot_state[10]_i_3 
       (.I0(fifo_eol_re_dly),
        .I1(vtg_active_video),
        .I2(vtg_de_dly),
        .O(\FSM_onehot_state[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010001)) 
    \FSM_onehot_state[11]_i_1 
       (.I0(\FSM_onehot_state[11]_i_2_n_0 ),
        .I1(\FSM_onehot_state[11]_i_3_n_0 ),
        .I2(\FSM_onehot_state[11]_i_4_n_0 ),
        .I3(\FSM_onehot_state[11]_i_5_n_0 ),
        .I4(\FSM_onehot_state[11]_i_6_n_0 ),
        .I5(\FSM_onehot_state[12]_i_2_n_0 ),
        .O(\FSM_onehot_state[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \FSM_onehot_state[11]_i_10 
       (.I0(vtg_sof_cnt_reg[0]),
        .I1(vtg_sof_cnt_reg[1]),
        .I2(vtg_sof_cnt_reg[2]),
        .O(\FSM_onehot_state[11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \FSM_onehot_state[11]_i_11 
       (.I0(fifo_force_rd),
        .I1(fifo_eol_re_dly),
        .I2(vtg_de_dly),
        .I3(vtg_active_video),
        .O(\FSM_onehot_state[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF77F777F777F7)) 
    \FSM_onehot_state[11]_i_2 
       (.I0(vtg_sof_dly),
        .I1(\FSM_onehot_state[10]_i_2_n_0 ),
        .I2(\FSM_onehot_state[11]_i_7_n_0 ),
        .I3(\FSM_onehot_state[11]_i_8_n_0 ),
        .I4(\FSM_onehot_state[11]_i_9_n_0 ),
        .I5(\FSM_onehot_state[11]_i_10_n_0 ),
        .O(\FSM_onehot_state[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \FSM_onehot_state[11]_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(p_0_in1_in),
        .O(\FSM_onehot_state[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[11]_i_4 
       (.I0(vtg_active_video),
        .I1(vtg_de_dly),
        .I2(fifo_eol_re_dly),
        .O(\FSM_onehot_state[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF30300130)) 
    \FSM_onehot_state[11]_i_5 
       (.I0(fifo_force_rd),
        .I1(sof_ignore_reg_n_0),
        .I2(vtg_sof_dly),
        .I3(fifo_sof_dly),
        .I4(dout[1]),
        .I5(\FSM_onehot_state[11]_i_11_n_0 ),
        .O(\FSM_onehot_state[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD2FFD2D2FFD2)) 
    \FSM_onehot_state[11]_i_6 
       (.I0(vtg_de_dly),
        .I1(vtg_active_video),
        .I2(fifo_eol_re_dly),
        .I3(fifo_sof_dly),
        .I4(dout[1]),
        .I5(vtg_sof_dly),
        .O(\FSM_onehot_state[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \FSM_onehot_state[11]_i_7 
       (.I0(fifo_sof_cnt_reg[0]),
        .I1(fifo_sof_cnt_reg[1]),
        .I2(fifo_sof_cnt_reg[2]),
        .O(\FSM_onehot_state[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[11]_i_8 
       (.I0(fifo_sof_cnt_reg[7]),
        .I1(fifo_sof_cnt_reg[6]),
        .I2(fifo_sof_cnt_reg[3]),
        .I3(fifo_sof_cnt_reg[5]),
        .I4(fifo_sof_cnt_reg[4]),
        .O(\FSM_onehot_state[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state[11]_i_9 
       (.I0(vtg_sof_cnt_reg[6]),
        .I1(vtg_sof_cnt_reg[4]),
        .I2(vtg_sof_cnt_reg[3]),
        .I3(vtg_sof_cnt_reg[5]),
        .I4(vtg_sof_cnt_reg[7]),
        .O(\FSM_onehot_state[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_state[12]_i_1 
       (.I0(fifo_eol_re_dly),
        .I1(vtg_de_dly),
        .I2(vtg_active_video),
        .I3(\FSM_onehot_state[12]_i_2_n_0 ),
        .O(\FSM_onehot_state[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_onehot_state[12]_i_2 
       (.I0(\vtg_sof_cnt[7]_i_4_n_0 ),
        .I1(fifo_force_rd),
        .I2(p_3_in),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\FSM_onehot_state[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABFAAAAAAAA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[8]_i_2_n_0 ),
        .I1(\FSM_onehot_state[9]_i_4_n_0 ),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(p_3_in),
        .I4(\FSM_onehot_state[1]_i_2_n_0 ),
        .I5(\FSM_onehot_state[1]_i_3_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(p_0_in1_in),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF0D)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state[9]_i_4_n_0 ),
        .I2(\FSM_onehot_state[2]_i_3_n_0 ),
        .I3(p_0_in1_in),
        .I4(Q[1]),
        .I5(\FSM_onehot_state[2]_i_4_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(fifo_force_rd),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444774747)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(fifo_eol_re_dly),
        .I1(fifo_force_rd),
        .I2(\FSM_onehot_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_state[10]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[9] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFD00)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(\FSM_onehot_state[11]_i_2_n_0 ),
        .I1(\FSM_onehot_state[11]_i_5_n_0 ),
        .I2(\FSM_onehot_state[11]_i_4_n_0 ),
        .I3(\FSM_onehot_state[2]_i_5_n_0 ),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .I5(Q[0]),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_5 
       (.I0(p_0_in1_in),
        .I1(Q[1]),
        .O(\FSM_onehot_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h000000B0)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(vtg_active_video),
        .I1(vtg_de_dly),
        .I2(fifo_eol_re_dly),
        .I3(fifo_force_rd),
        .I4(\FSM_onehot_state[11]_i_3_n_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(vtg_sof_dly),
        .I1(fifo_sof_dly),
        .I2(dout[1]),
        .I3(\FSM_onehot_state[6]_i_2_n_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00A2)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(vtg_sof_dly),
        .I1(fifo_sof_dly),
        .I2(dout[1]),
        .I3(\FSM_onehot_state[6]_i_2_n_0 ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\FSM_onehot_state[10]_i_3_n_0 ),
        .I1(\FSM_onehot_state[6]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(p_0_in1_in),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(p_3_in),
        .I1(fifo_force_rd),
        .I2(Q[2]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state[12]_i_2_n_0 ),
        .I1(fifo_eol_re_dly),
        .I2(vtg_de_dly),
        .I3(vtg_active_video),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h0000FBAA)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(Q[0]),
        .I1(dout[1]),
        .I2(dout[2]),
        .I3(Q[2]),
        .I4(\FSM_onehot_state[8]_i_2_n_0 ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hA8AAAAAA)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(Q[0]),
        .I1(vtg_field_id),
        .I2(vtg_de_dly),
        .I3(vtg_vsync_bp_reg_n_0),
        .I4(vtg_active_video),
        .O(\FSM_onehot_state[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state[9]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\FSM_onehot_state[9]_i_3_n_0 ),
        .I5(\FSM_onehot_state[9]_i_4_n_0 ),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_onehot_state[9]_i_10 
       (.I0(vtg_lag_reg[6]),
        .I1(vtg_lag_reg[0]),
        .I2(vtg_lag_reg[2]),
        .I3(vtg_lag_reg[7]),
        .I4(vtg_lag_reg[9]),
        .I5(vtg_lag_reg[4]),
        .O(\FSM_onehot_state[9]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_11 
       (.I0(vtg_lag_reg__0[26]),
        .I1(vtg_lag_reg__0[18]),
        .I2(vtg_lag_reg__0[23]),
        .I3(vtg_lag_reg__0[22]),
        .O(\FSM_onehot_state[9]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_12 
       (.I0(vtg_lag_reg__0[11]),
        .I1(vtg_lag_reg__0[10]),
        .I2(vtg_lag_reg__0[15]),
        .I3(vtg_lag_reg__0[14]),
        .O(\FSM_onehot_state[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1111101101001011)) 
    \FSM_onehot_state[9]_i_2 
       (.I0(\FSM_onehot_state[9]_i_5_n_0 ),
        .I1(\FSM_onehot_state[11]_i_3_n_0 ),
        .I2(vtg_active_video),
        .I3(vtg_de_dly),
        .I4(fifo_eol_re_dly),
        .I5(fifo_force_rd),
        .O(\FSM_onehot_state[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEFEFFFF)) 
    \FSM_onehot_state[9]_i_3 
       (.I0(p_0_in1_in),
        .I1(fifo_force_rd),
        .I2(fifo_sof_dly),
        .I3(dout[1]),
        .I4(\FSM_onehot_state_reg_n_0_[9] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[9]_i_4 
       (.I0(\FSM_onehot_state[9]_i_6_n_0 ),
        .I1(\FSM_onehot_state[9]_i_7_n_0 ),
        .I2(\FSM_onehot_state[9]_i_8_n_0 ),
        .I3(\FSM_onehot_state[9]_i_9_n_0 ),
        .O(\FSM_onehot_state[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    \FSM_onehot_state[9]_i_5 
       (.I0(sof_ignore_reg_n_0),
        .I1(vtg_sof_dly),
        .I2(fifo_sof_dly),
        .I3(dout[1]),
        .O(\FSM_onehot_state[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_state[9]_i_6 
       (.I0(vtg_lag_reg[5]),
        .I1(vtg_lag_reg[1]),
        .I2(vtg_lag_reg[8]),
        .I3(vtg_lag_reg[3]),
        .I4(\FSM_onehot_state[9]_i_10_n_0 ),
        .O(\FSM_onehot_state[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[9]_i_7 
       (.I0(vtg_lag_reg__0[25]),
        .I1(vtg_lag_reg__0[24]),
        .I2(vtg_lag_reg__0[17]),
        .I3(vtg_lag_reg__0[20]),
        .I4(vtg_lag_reg__0[12]),
        .I5(vtg_lag_reg__0[31]),
        .O(\FSM_onehot_state[9]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[9]_i_8 
       (.I0(vtg_lag_reg__0[28]),
        .I1(vtg_lag_reg__0[30]),
        .I2(vtg_lag_reg__0[16]),
        .I3(vtg_lag_reg__0[19]),
        .I4(\FSM_onehot_state[9]_i_11_n_0 ),
        .O(\FSM_onehot_state[9]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[9]_i_9 
       (.I0(vtg_lag_reg__0[21]),
        .I1(vtg_lag_reg__0[29]),
        .I2(vtg_lag_reg__0[13]),
        .I3(vtg_lag_reg__0[27]),
        .I4(\FSM_onehot_state[9]_i_12_n_0 ),
        .O(\FSM_onehot_state[9]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(fifo_force_rd),
        .R(vid_io_out_reset));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_onehot_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(vid_io_out_reset));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_onehot_state[11]_i_1_n_0 ),
        .Q(p_3_in),
        .R(vid_io_out_reset));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_onehot_state[12]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[12] ),
        .R(vid_io_out_reset));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(Q[0]),
        .S(vid_io_out_reset));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(p_0_in1_in),
        .R(vid_io_out_reset));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(vid_io_out_reset));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(D),
        .Q(Q[1]),
        .R(vid_io_out_reset));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(vid_io_out_reset));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(vid_io_out_reset));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(vid_io_out_reset));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(Q[2]),
        .R(vid_io_out_reset));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0000000001000,C_SYNC_FALN_EOL_LEADING:0000000000001,C_SYNC_CALN_SOF_FIFO:0000000010000,C_SYNC_LALN_SOF_LEADING:0000001000000,C_SYNC_LALN_SOF_LAGGING:0000000100000,C_SYNC_LALN_EOL_LAGGING:0000010000000,C_SYNC_CALN_SOF_VTG:0000100000000,C_SYNC_IDLE:0000000000010,C_SYNC_LALN_EOL_LEADING:1000000000000,C_SYNC_FALN_ACTIVE:0000000000100,C_SYNC_FALN_LOCK:0100000000000,C_SYNC_FALN_SOF_LAGGING:0010000000000,C_SYNC_FALN_SOF_LEADING:0001000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(vid_io_out_reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 fifo_eol_cnt0_carry
       (.CI(fifo_eol_cnt_reg[0]),
        .CI_TOP(1'b0),
        .CO({fifo_eol_cnt0_carry_n_0,fifo_eol_cnt0_carry_n_1,fifo_eol_cnt0_carry_n_2,fifo_eol_cnt0_carry_n_3,fifo_eol_cnt0_carry_n_4,fifo_eol_cnt0_carry_n_5,fifo_eol_cnt0_carry_n_6,fifo_eol_cnt0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:1]),
        .S(fifo_eol_cnt_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 fifo_eol_cnt0_carry__0
       (.CI(fifo_eol_cnt0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_fifo_eol_cnt0_carry__0_CO_UNCONNECTED[7:3],fifo_eol_cnt0_carry__0_n_5,fifo_eol_cnt0_carry__0_n_6,fifo_eol_cnt0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_fifo_eol_cnt0_carry__0_O_UNCONNECTED[7:4],p_0_in[12:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,fifo_eol_cnt_reg[12:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_eol_cnt[0]_i_1 
       (.I0(fifo_eol_cnt_reg[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hBABAFFBABABABABA)) 
    \fifo_eol_cnt[12]_i_1 
       (.I0(vid_io_out_reset),
        .I1(state_reg[1]),
        .I2(\in_data_mux[95]_i_3_n_0 ),
        .I3(fifo_sof_dly),
        .I4(dout[1]),
        .I5(vid_io_out_ce),
        .O(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_eol_cnt[12]_i_2 
       (.I0(vid_io_out_ce),
        .I1(fifo_eol_re_dly),
        .O(fifo_eol_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[0] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[0]),
        .Q(fifo_eol_cnt_dly[0]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[10] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[10]),
        .Q(fifo_eol_cnt_dly[10]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[11] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[11]),
        .Q(fifo_eol_cnt_dly[11]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[12] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[12]),
        .Q(fifo_eol_cnt_dly[12]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[1] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[1]),
        .Q(fifo_eol_cnt_dly[1]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[2] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[2]),
        .Q(fifo_eol_cnt_dly[2]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[3] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[3]),
        .Q(fifo_eol_cnt_dly[3]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[4] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[4]),
        .Q(fifo_eol_cnt_dly[4]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[5] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[5]),
        .Q(fifo_eol_cnt_dly[5]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[6] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[6]),
        .Q(fifo_eol_cnt_dly[6]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[7] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[7]),
        .Q(fifo_eol_cnt_dly[7]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[8] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[8]),
        .Q(fifo_eol_cnt_dly[8]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[9] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(fifo_eol_cnt_reg[9]),
        .Q(fifo_eol_cnt_dly[9]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[0] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[0]),
        .Q(fifo_eol_cnt_reg[0]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[10] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[10]),
        .Q(fifo_eol_cnt_reg[10]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[11] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[11]),
        .Q(fifo_eol_cnt_reg[11]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[12] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[12]),
        .Q(fifo_eol_cnt_reg[12]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[1] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[1]),
        .Q(fifo_eol_cnt_reg[1]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[2] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[2]),
        .Q(fifo_eol_cnt_reg[2]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[3] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[3]),
        .Q(fifo_eol_cnt_reg[3]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[4] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[4]),
        .Q(fifo_eol_cnt_reg[4]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[5] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[5]),
        .Q(fifo_eol_cnt_reg[5]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[6] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[6]),
        .Q(fifo_eol_cnt_reg[6]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[7] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[7]),
        .Q(fifo_eol_cnt_reg[7]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[8] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[8]),
        .Q(fifo_eol_cnt_reg[8]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[9] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(p_0_in[9]),
        .Q(fifo_eol_cnt_reg[9]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_dly_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(dout[0]),
        .Q(fifo_eol_dly),
        .R(vid_io_out_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    fifo_eol_error_i_1
       (.I0(fifo_sof_dly),
        .I1(dout[1]),
        .I2(vid_io_out_ce),
        .I3(fifo_eol_error_i_2_n_0),
        .I4(fifo_eol_error_i_3_n_0),
        .I5(fifo_eol_error_reg_n_0),
        .O(fifo_eol_error_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    fifo_eol_error_i_2
       (.I0(fifo_eol_error_i_4_n_0),
        .I1(fifo_eol_cnt_dly[12]),
        .I2(fifo_eol_cnt_dly[6]),
        .I3(fifo_eol_cnt_dly[11]),
        .I4(fifo_eol_error_i_5_n_0),
        .O(fifo_eol_error_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF6)) 
    fifo_eol_error_i_3
       (.I0(fifo_eol_cnt_dly[12]),
        .I1(fifo_eol_cnt_reg[12]),
        .I2(fifo_eol_error_i_6_n_0),
        .I3(fifo_eol_error_i_7_n_0),
        .I4(fifo_eol_error_i_8_n_0),
        .I5(fifo_eol_error_i_9_n_0),
        .O(fifo_eol_error_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_eol_error_i_4
       (.I0(fifo_eol_cnt_dly[4]),
        .I1(fifo_eol_cnt_dly[9]),
        .I2(fifo_eol_cnt_dly[0]),
        .I3(fifo_eol_cnt_dly[8]),
        .O(fifo_eol_error_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    fifo_eol_error_i_5
       (.I0(fifo_eol_cnt_dly[3]),
        .I1(fifo_eol_cnt_dly[2]),
        .I2(fifo_eol_cnt_dly[10]),
        .I3(fifo_eol_cnt_dly[7]),
        .I4(fifo_eol_cnt_dly[1]),
        .I5(fifo_eol_cnt_dly[5]),
        .O(fifo_eol_error_i_5_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    fifo_eol_error_i_6
       (.I0(fifo_eol_cnt_dly[6]),
        .I1(fifo_eol_cnt_reg[6]),
        .I2(fifo_eol_cnt_reg[7]),
        .I3(fifo_eol_cnt_dly[7]),
        .I4(fifo_eol_cnt_reg[8]),
        .I5(fifo_eol_cnt_dly[8]),
        .O(fifo_eol_error_i_6_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    fifo_eol_error_i_7
       (.I0(fifo_eol_cnt_dly[9]),
        .I1(fifo_eol_cnt_reg[9]),
        .I2(fifo_eol_cnt_reg[10]),
        .I3(fifo_eol_cnt_dly[10]),
        .I4(fifo_eol_cnt_reg[11]),
        .I5(fifo_eol_cnt_dly[11]),
        .O(fifo_eol_error_i_7_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    fifo_eol_error_i_8
       (.I0(fifo_eol_cnt_reg[2]),
        .I1(fifo_eol_cnt_dly[2]),
        .I2(fifo_eol_cnt_reg[1]),
        .I3(fifo_eol_cnt_dly[1]),
        .I4(fifo_eol_cnt_dly[0]),
        .I5(fifo_eol_cnt_reg[0]),
        .O(fifo_eol_error_i_8_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    fifo_eol_error_i_9
       (.I0(fifo_eol_cnt_dly[3]),
        .I1(fifo_eol_cnt_reg[3]),
        .I2(fifo_eol_cnt_reg[5]),
        .I3(fifo_eol_cnt_dly[5]),
        .I4(fifo_eol_cnt_reg[4]),
        .I5(fifo_eol_cnt_dly[4]),
        .O(fifo_eol_error_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_error_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(fifo_eol_error_i_1_n_0),
        .Q(fifo_eol_error_reg_n_0),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_re_dly_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(fifo_eol_re),
        .Q(fifo_eol_re_dly),
        .R(vid_io_out_reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 fifo_pix_cnt0_carry
       (.CI(fifo_pix_cnt_reg[0]),
        .CI_TOP(1'b0),
        .CO({fifo_pix_cnt0_carry_n_0,fifo_pix_cnt0_carry_n_1,fifo_pix_cnt0_carry_n_2,fifo_pix_cnt0_carry_n_3,fifo_pix_cnt0_carry_n_4,fifo_pix_cnt0_carry_n_5,fifo_pix_cnt0_carry_n_6,fifo_pix_cnt0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[8:1]),
        .S(fifo_pix_cnt_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 fifo_pix_cnt0_carry__0
       (.CI(fifo_pix_cnt0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_fifo_pix_cnt0_carry__0_CO_UNCONNECTED[7:3],fifo_pix_cnt0_carry__0_n_5,fifo_pix_cnt0_carry__0_n_6,fifo_pix_cnt0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_fifo_pix_cnt0_carry__0_O_UNCONNECTED[7:4],p_0_in__0[12:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,fifo_pix_cnt_reg[12:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_pix_cnt[0]_i_1 
       (.I0(fifo_pix_cnt_reg[0]),
        .O(p_0_in__0[0]));
  LUT5 #(
    .INIT(32'hFFBABABA)) 
    \fifo_pix_cnt[12]_i_1 
       (.I0(vid_io_out_reset),
        .I1(state_reg[1]),
        .I2(\in_data_mux[95]_i_3_n_0 ),
        .I3(fifo_eol_re_dly),
        .I4(vid_io_out_ce),
        .O(\fifo_pix_cnt[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \fifo_pix_cnt[12]_i_2 
       (.I0(E),
        .I1(empty),
        .O(fifo_pix_cnt));
  LUT3 #(
    .INIT(8'hBA)) 
    \fifo_pix_cnt_dly[12]_i_1 
       (.I0(vid_io_out_reset),
        .I1(state_reg[1]),
        .I2(\in_data_mux[95]_i_3_n_0 ),
        .O(fifo_eol_cnt1));
  LUT4 #(
    .INIT(16'h8088)) 
    \fifo_pix_cnt_dly[12]_i_2 
       (.I0(fifo_eol_re_dly),
        .I1(vid_io_out_ce),
        .I2(sof_ignore_i_2_n_0),
        .I3(\fifo_pix_cnt_dly[12]_i_3_n_0 ),
        .O(fifo_pix_cnt_dly));
  LUT5 #(
    .INIT(32'h00000002)) 
    \fifo_pix_cnt_dly[12]_i_3 
       (.I0(\fifo_pix_cnt_dly[12]_i_4_n_0 ),
        .I1(\fifo_pix_cnt_dly[12]_i_5_n_0 ),
        .I2(\fifo_pix_cnt_dly_reg_n_0_[12] ),
        .I3(\fifo_pix_cnt_dly_reg_n_0_[3] ),
        .I4(\fifo_pix_cnt_dly_reg_n_0_[0] ),
        .O(\fifo_pix_cnt_dly[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \fifo_pix_cnt_dly[12]_i_4 
       (.I0(\fifo_pix_cnt_dly_reg_n_0_[10] ),
        .I1(\fifo_pix_cnt_dly_reg_n_0_[7] ),
        .I2(\fifo_pix_cnt_dly_reg_n_0_[4] ),
        .I3(\fifo_pix_cnt_dly_reg_n_0_[11] ),
        .I4(\fifo_pix_cnt_dly_reg_n_0_[1] ),
        .I5(\fifo_pix_cnt_dly_reg_n_0_[6] ),
        .O(\fifo_pix_cnt_dly[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fifo_pix_cnt_dly[12]_i_5 
       (.I0(\fifo_pix_cnt_dly_reg_n_0_[8] ),
        .I1(\fifo_pix_cnt_dly_reg_n_0_[9] ),
        .I2(\fifo_pix_cnt_dly_reg_n_0_[2] ),
        .I3(\fifo_pix_cnt_dly_reg_n_0_[5] ),
        .O(\fifo_pix_cnt_dly[12]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[0] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[0]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[0] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[10] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[10]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[10] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[11] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[11]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[11] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[12] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[12]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[12] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[1] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[1]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[1] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[2] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[2]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[2] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[3] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[3]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[3] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[4] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[4]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[4] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[5] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[5]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[5] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[6] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[6]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[6] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[7] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[7]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[7] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[8] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[8]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[8] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[9] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly),
        .D(fifo_pix_cnt_reg[9]),
        .Q(\fifo_pix_cnt_dly_reg_n_0_[9] ),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[0] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[0]),
        .Q(fifo_pix_cnt_reg[0]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[10] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[10]),
        .Q(fifo_pix_cnt_reg[10]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[11] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[11]),
        .Q(fifo_pix_cnt_reg[11]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[12] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[12]),
        .Q(fifo_pix_cnt_reg[12]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[1] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[1]),
        .Q(fifo_pix_cnt_reg[1]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[2] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[2]),
        .Q(fifo_pix_cnt_reg[2]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[3] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[3]),
        .Q(fifo_pix_cnt_reg[3]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[4] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[4]),
        .Q(fifo_pix_cnt_reg[4]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[5] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[5]),
        .Q(fifo_pix_cnt_reg[5]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[6] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[6]),
        .Q(fifo_pix_cnt_reg[6]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[7] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[7]),
        .Q(fifo_pix_cnt_reg[7]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[8] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[8]),
        .Q(fifo_pix_cnt_reg[8]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[9] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt),
        .D(p_0_in__0[9]),
        .Q(fifo_pix_cnt_reg[9]),
        .R(\fifo_pix_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFDF8888)) 
    fifo_pix_error_i_1
       (.I0(vid_io_out_ce),
        .I1(fifo_pix_error0),
        .I2(fifo_sof_dly),
        .I3(dout[1]),
        .I4(fifo_pix_error__0),
        .O(fifo_pix_error_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h08)) 
    fifo_pix_error_i_2
       (.I0(fifo_pix_error_i_3_n_0),
        .I1(fifo_eol_re_dly),
        .I2(\fifo_pix_cnt_dly[12]_i_3_n_0 ),
        .O(fifo_pix_error0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF6)) 
    fifo_pix_error_i_3
       (.I0(fifo_pix_cnt_reg[12]),
        .I1(\fifo_pix_cnt_dly_reg_n_0_[12] ),
        .I2(fifo_pix_error_i_4_n_0),
        .I3(fifo_pix_error_i_5_n_0),
        .I4(fifo_pix_error_i_6_n_0),
        .I5(fifo_pix_error_i_7_n_0),
        .O(fifo_pix_error_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    fifo_pix_error_i_4
       (.I0(fifo_pix_cnt_reg[6]),
        .I1(\fifo_pix_cnt_dly_reg_n_0_[6] ),
        .I2(\fifo_pix_cnt_dly_reg_n_0_[7] ),
        .I3(fifo_pix_cnt_reg[7]),
        .I4(\fifo_pix_cnt_dly_reg_n_0_[8] ),
        .I5(fifo_pix_cnt_reg[8]),
        .O(fifo_pix_error_i_4_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    fifo_pix_error_i_5
       (.I0(fifo_pix_cnt_reg[9]),
        .I1(\fifo_pix_cnt_dly_reg_n_0_[9] ),
        .I2(\fifo_pix_cnt_dly_reg_n_0_[11] ),
        .I3(fifo_pix_cnt_reg[11]),
        .I4(\fifo_pix_cnt_dly_reg_n_0_[10] ),
        .I5(fifo_pix_cnt_reg[10]),
        .O(fifo_pix_error_i_5_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    fifo_pix_error_i_6
       (.I0(\fifo_pix_cnt_dly_reg_n_0_[2] ),
        .I1(fifo_pix_cnt_reg[2]),
        .I2(\fifo_pix_cnt_dly_reg_n_0_[1] ),
        .I3(fifo_pix_cnt_reg[1]),
        .I4(fifo_pix_cnt_reg[0]),
        .I5(\fifo_pix_cnt_dly_reg_n_0_[0] ),
        .O(fifo_pix_error_i_6_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    fifo_pix_error_i_7
       (.I0(fifo_pix_cnt_reg[3]),
        .I1(\fifo_pix_cnt_dly_reg_n_0_[3] ),
        .I2(\fifo_pix_cnt_dly_reg_n_0_[5] ),
        .I3(fifo_pix_cnt_reg[5]),
        .I4(\fifo_pix_cnt_dly_reg_n_0_[4] ),
        .I5(fifo_pix_cnt_reg[4]),
        .O(fifo_pix_error_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_pix_error_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(fifo_pix_error_i_1_n_0),
        .Q(fifo_pix_error__0),
        .R(vid_io_out_reset));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_sof_cnt[0]_i_1 
       (.I0(fifo_sof_cnt_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_sof_cnt[1]_i_1 
       (.I0(fifo_sof_cnt_reg[1]),
        .I1(fifo_sof_cnt_reg[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \fifo_sof_cnt[2]_i_1 
       (.I0(fifo_sof_cnt_reg[2]),
        .I1(fifo_sof_cnt_reg[1]),
        .I2(fifo_sof_cnt_reg[0]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \fifo_sof_cnt[3]_i_1 
       (.I0(fifo_sof_cnt_reg[3]),
        .I1(fifo_sof_cnt_reg[0]),
        .I2(fifo_sof_cnt_reg[1]),
        .I3(fifo_sof_cnt_reg[2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \fifo_sof_cnt[4]_i_1 
       (.I0(fifo_sof_cnt_reg[4]),
        .I1(fifo_sof_cnt_reg[2]),
        .I2(fifo_sof_cnt_reg[1]),
        .I3(fifo_sof_cnt_reg[0]),
        .I4(fifo_sof_cnt_reg[3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \fifo_sof_cnt[5]_i_1 
       (.I0(fifo_sof_cnt_reg[3]),
        .I1(fifo_sof_cnt_reg[0]),
        .I2(fifo_sof_cnt_reg[1]),
        .I3(fifo_sof_cnt_reg[2]),
        .I4(fifo_sof_cnt_reg[4]),
        .I5(fifo_sof_cnt_reg[5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_sof_cnt[6]_i_1 
       (.I0(fifo_sof_cnt_reg[6]),
        .I1(\fifo_sof_cnt[7]_i_2_n_0 ),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \fifo_sof_cnt[7]_i_1 
       (.I0(fifo_sof_cnt_reg[7]),
        .I1(\fifo_sof_cnt[7]_i_2_n_0 ),
        .I2(fifo_sof_cnt_reg[6]),
        .O(p_0_in__2[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo_sof_cnt[7]_i_2 
       (.I0(fifo_sof_cnt_reg[5]),
        .I1(fifo_sof_cnt_reg[4]),
        .I2(fifo_sof_cnt_reg[2]),
        .I3(fifo_sof_cnt_reg[1]),
        .I4(fifo_sof_cnt_reg[0]),
        .I5(fifo_sof_cnt_reg[3]),
        .O(\fifo_sof_cnt[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[0] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(p_0_in__2[0]),
        .Q(fifo_sof_cnt_reg[0]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[1] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(p_0_in__2[1]),
        .Q(fifo_sof_cnt_reg[1]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[2] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(p_0_in__2[2]),
        .Q(fifo_sof_cnt_reg[2]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[3] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(p_0_in__2[3]),
        .Q(fifo_sof_cnt_reg[3]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[4] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(p_0_in__2[4]),
        .Q(fifo_sof_cnt_reg[4]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[5] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(p_0_in__2[5]),
        .Q(fifo_sof_cnt_reg[5]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[6] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(p_0_in__2[6]),
        .Q(fifo_sof_cnt_reg[6]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[7] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[0]_0 ),
        .D(p_0_in__2[7]),
        .Q(fifo_sof_cnt_reg[7]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_sof_dly_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(dout[1]),
        .Q(fifo_sof_dly),
        .R(vid_io_out_reset));
  LUT6 #(
    .INIT(64'hAAA8AAA8A8A8AAA8)) 
    \in_data_mux[95]_i_1 
       (.I0(vid_io_out_ce),
        .I1(fifo_force_rd),
        .I2(\in_data_mux[95]_i_2_n_0 ),
        .I3(vtg_active_video),
        .I4(\in_data_mux[95]_i_3_n_0 ),
        .I5(\in_data_mux[95]_i_4_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \in_data_mux[95]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\in_data_mux[95]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \in_data_mux[95]_i_3 
       (.I0(\vtg_sof_cnt[7]_i_6_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[10] ),
        .I4(p_0_in1_in),
        .O(\in_data_mux[95]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \in_data_mux[95]_i_4 
       (.I0(state_reg[1]),
        .I1(\vtg_sof_cnt[7]_i_5_n_0 ),
        .O(\in_data_mux[95]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \in_de_mux[0]_i_1 
       (.I0(locked),
        .I1(vid_io_out_reset),
        .I2(fivid_reset_full_frame),
        .O(SR));
  FDRE locked_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(p_3_in),
        .Q(locked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF700)) 
    sof_ignore_i_1
       (.I0(sof_ignore_i_2_n_0),
        .I1(vid_io_out_ce),
        .I2(dout[2]),
        .I3(sof_ignore_reg_n_0),
        .I4(vid_io_out_reset),
        .I5(Q[0]),
        .O(sof_ignore_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sof_ignore_i_2
       (.I0(sof_ignore_i_3_n_0),
        .I1(sof_ignore_i_4_n_0),
        .I2(fifo_eol_cnt_reg[1]),
        .I3(fifo_eol_cnt_reg[9]),
        .I4(fifo_eol_cnt_reg[6]),
        .O(sof_ignore_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sof_ignore_i_3
       (.I0(fifo_eol_cnt_reg[10]),
        .I1(fifo_eol_cnt_reg[5]),
        .I2(fifo_eol_cnt_reg[0]),
        .I3(fifo_eol_cnt_reg[8]),
        .I4(fifo_eol_cnt_reg[3]),
        .I5(fifo_eol_cnt_reg[12]),
        .O(sof_ignore_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sof_ignore_i_4
       (.I0(fifo_eol_cnt_reg[11]),
        .I1(fifo_eol_cnt_reg[7]),
        .I2(fifo_eol_cnt_reg[2]),
        .I3(fifo_eol_cnt_reg[4]),
        .O(sof_ignore_i_4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    sof_ignore_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(sof_ignore_i_1_n_0),
        .Q(sof_ignore_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_dly[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(Q[2]),
        .I4(fifo_force_rd),
        .I5(p_0_in1_in),
        .O(state_reg[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_dly[1]_i_1 
       (.I0(p_0_in1_in),
        .I1(fifo_force_rd),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(Q[1]),
        .O(state_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state_dly[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[10] ),
        .I4(p_0_in1_in),
        .O(state_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state_dly[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(p_3_in),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[12] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(state_reg[3]));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(state_reg[0]),
        .Q(state_dly[0]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[1] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(state_reg[1]),
        .Q(state_dly[1]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[2] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(state_reg[2]),
        .Q(state_dly[2]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[3] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(state_reg[3]),
        .Q(state_dly[3]),
        .R(vid_io_out_reset));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[0]_i_1 
       (.I0(Q[0]),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[0]),
        .O(\status_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[10]),
        .O(\status_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[11]),
        .O(\status_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[12]),
        .O(\status_reg[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h555555557D55557D)) 
    \status_reg[12]_i_2 
       (.I0(vid_io_out_ce),
        .I1(\vtg_sof_cnt[7]_i_5_n_0 ),
        .I2(state_dly[0]),
        .I3(state_reg[1]),
        .I4(state_dly[1]),
        .I5(\status_reg[12]_i_3_n_0 ),
        .O(\status_reg[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF1E1EFF)) 
    \status_reg[12]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\vtg_sof_cnt[7]_i_4_n_0 ),
        .I2(state_dly[2]),
        .I3(\vtg_sof_cnt[7]_i_6_n_0 ),
        .I4(state_dly[3]),
        .O(\status_reg[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[1]_i_1 
       (.I0(Q[2]),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[1]),
        .O(\status_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[2]_i_1 
       (.I0(Q[1]),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[2]),
        .O(\status_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[3]_i_1 
       (.I0(fifo_force_rd),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[3]),
        .O(\status_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[4]),
        .O(\status_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[5]),
        .O(\status_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[6]),
        .O(\status_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[7]_i_1 
       (.I0(p_0_in1_in),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[7]),
        .O(\status_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[8]_i_1 
       (.I0(p_3_in),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[8]),
        .O(\status_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \status_reg[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(\status_reg[12]_i_2_n_0 ),
        .I2(status[9]),
        .O(\status_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[0] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[0]_i_1_n_0 ),
        .Q(status[0]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[10] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[10]_i_1_n_0 ),
        .Q(status[10]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[11] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[11]_i_1_n_0 ),
        .Q(status[11]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[12] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[12]_i_1_n_0 ),
        .Q(status[12]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[13] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(fifo_pix_error__0),
        .Q(status[13]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[14] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(fifo_eol_error_reg_n_0),
        .Q(status[14]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[16] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[0]),
        .Q(status[15]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[17] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[1]),
        .Q(status[16]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[18] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[2]),
        .Q(status[17]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[19] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[3]),
        .Q(status[18]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[1] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[1]_i_1_n_0 ),
        .Q(status[1]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[20] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[4]),
        .Q(status[19]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[21] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[5]),
        .Q(status[20]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[22] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[6]),
        .Q(status[21]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[23] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[7]),
        .Q(status[22]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[24] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[8]),
        .Q(status[23]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[25] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[9]),
        .Q(status[24]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[2] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[2]_i_1_n_0 ),
        .Q(status[2]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[3] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[3]_i_1_n_0 ),
        .Q(status[3]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[4] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[4]_i_1_n_0 ),
        .Q(status[4]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[5] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[5]_i_1_n_0 ),
        .Q(status[5]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[6] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[6]_i_1_n_0 ),
        .Q(status[6]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[7] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[7]_i_1_n_0 ),
        .Q(status[7]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[8] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[8]_i_1_n_0 ),
        .Q(status[8]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[9] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[9]_i_1_n_0 ),
        .Q(status[9]),
        .R(vid_io_out_reset));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    vtg_ce_INST_0
       (.I0(vid_io_out_ce),
        .I1(Q[0]),
        .I2(p_0_in1_in),
        .I3(p_3_in),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[10] ),
        .O(vtg_ce));
  FDRE #(
    .INIT(1'b0)) 
    vtg_de_dly_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_active_video),
        .Q(vtg_de_dly),
        .R(vid_io_out_reset));
  LUT2 #(
    .INIT(4'hE)) 
    \vtg_lag[0]_i_1 
       (.I0(Q[0]),
        .I1(vid_io_out_reset),
        .O(sof_ignore0));
  LUT3 #(
    .INIT(8'hA8)) 
    \vtg_lag[0]_i_2 
       (.I0(vid_io_out_ce),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(fifo_force_rd),
        .O(vtg_lag));
  LUT1 #(
    .INIT(2'h1)) 
    \vtg_lag[0]_i_4 
       (.I0(vtg_lag_reg[0]),
        .O(\vtg_lag[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_15 ),
        .Q(vtg_lag_reg[0]),
        .R(sof_ignore0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \vtg_lag_reg[0]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\vtg_lag_reg[0]_i_3_n_0 ,\vtg_lag_reg[0]_i_3_n_1 ,\vtg_lag_reg[0]_i_3_n_2 ,\vtg_lag_reg[0]_i_3_n_3 ,\vtg_lag_reg[0]_i_3_n_4 ,\vtg_lag_reg[0]_i_3_n_5 ,\vtg_lag_reg[0]_i_3_n_6 ,\vtg_lag_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\vtg_lag_reg[0]_i_3_n_8 ,\vtg_lag_reg[0]_i_3_n_9 ,\vtg_lag_reg[0]_i_3_n_10 ,\vtg_lag_reg[0]_i_3_n_11 ,\vtg_lag_reg[0]_i_3_n_12 ,\vtg_lag_reg[0]_i_3_n_13 ,\vtg_lag_reg[0]_i_3_n_14 ,\vtg_lag_reg[0]_i_3_n_15 }),
        .S({vtg_lag_reg[7:1],\vtg_lag[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[10] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_13 ),
        .Q(vtg_lag_reg__0[10]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[11] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_12 ),
        .Q(vtg_lag_reg__0[11]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[12] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_11 ),
        .Q(vtg_lag_reg__0[12]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[13] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_10 ),
        .Q(vtg_lag_reg__0[13]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[14] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_9 ),
        .Q(vtg_lag_reg__0[14]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[15] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_8 ),
        .Q(vtg_lag_reg__0[15]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[16] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_15 ),
        .Q(vtg_lag_reg__0[16]),
        .R(sof_ignore0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \vtg_lag_reg[16]_i_1 
       (.CI(\vtg_lag_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\vtg_lag_reg[16]_i_1_n_0 ,\vtg_lag_reg[16]_i_1_n_1 ,\vtg_lag_reg[16]_i_1_n_2 ,\vtg_lag_reg[16]_i_1_n_3 ,\vtg_lag_reg[16]_i_1_n_4 ,\vtg_lag_reg[16]_i_1_n_5 ,\vtg_lag_reg[16]_i_1_n_6 ,\vtg_lag_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[16]_i_1_n_8 ,\vtg_lag_reg[16]_i_1_n_9 ,\vtg_lag_reg[16]_i_1_n_10 ,\vtg_lag_reg[16]_i_1_n_11 ,\vtg_lag_reg[16]_i_1_n_12 ,\vtg_lag_reg[16]_i_1_n_13 ,\vtg_lag_reg[16]_i_1_n_14 ,\vtg_lag_reg[16]_i_1_n_15 }),
        .S(vtg_lag_reg__0[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[17] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_14 ),
        .Q(vtg_lag_reg__0[17]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[18] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_13 ),
        .Q(vtg_lag_reg__0[18]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[19] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_12 ),
        .Q(vtg_lag_reg__0[19]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[1] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_14 ),
        .Q(vtg_lag_reg[1]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[20] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_11 ),
        .Q(vtg_lag_reg__0[20]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[21] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_10 ),
        .Q(vtg_lag_reg__0[21]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[22] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_9 ),
        .Q(vtg_lag_reg__0[22]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[23] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_8 ),
        .Q(vtg_lag_reg__0[23]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[24] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_15 ),
        .Q(vtg_lag_reg__0[24]),
        .R(sof_ignore0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \vtg_lag_reg[24]_i_1 
       (.CI(\vtg_lag_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_vtg_lag_reg[24]_i_1_CO_UNCONNECTED [7],\vtg_lag_reg[24]_i_1_n_1 ,\vtg_lag_reg[24]_i_1_n_2 ,\vtg_lag_reg[24]_i_1_n_3 ,\vtg_lag_reg[24]_i_1_n_4 ,\vtg_lag_reg[24]_i_1_n_5 ,\vtg_lag_reg[24]_i_1_n_6 ,\vtg_lag_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[24]_i_1_n_8 ,\vtg_lag_reg[24]_i_1_n_9 ,\vtg_lag_reg[24]_i_1_n_10 ,\vtg_lag_reg[24]_i_1_n_11 ,\vtg_lag_reg[24]_i_1_n_12 ,\vtg_lag_reg[24]_i_1_n_13 ,\vtg_lag_reg[24]_i_1_n_14 ,\vtg_lag_reg[24]_i_1_n_15 }),
        .S(vtg_lag_reg__0[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[25] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_14 ),
        .Q(vtg_lag_reg__0[25]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[26] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_13 ),
        .Q(vtg_lag_reg__0[26]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[27] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_12 ),
        .Q(vtg_lag_reg__0[27]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[28] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_11 ),
        .Q(vtg_lag_reg__0[28]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[29] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_10 ),
        .Q(vtg_lag_reg__0[29]),
        .R(sof_ignore0));
  FDSE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[2] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_13 ),
        .Q(vtg_lag_reg[2]),
        .S(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[30] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_9 ),
        .Q(vtg_lag_reg__0[30]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[31] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_8 ),
        .Q(vtg_lag_reg__0[31]),
        .R(sof_ignore0));
  FDSE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[3] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_12 ),
        .Q(vtg_lag_reg[3]),
        .S(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[4] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_11 ),
        .Q(vtg_lag_reg[4]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[5] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_10 ),
        .Q(vtg_lag_reg[5]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[6] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_9 ),
        .Q(vtg_lag_reg[6]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[7] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_8 ),
        .Q(vtg_lag_reg[7]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[8] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_15 ),
        .Q(vtg_lag_reg[8]),
        .R(sof_ignore0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \vtg_lag_reg[8]_i_1 
       (.CI(\vtg_lag_reg[0]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\vtg_lag_reg[8]_i_1_n_0 ,\vtg_lag_reg[8]_i_1_n_1 ,\vtg_lag_reg[8]_i_1_n_2 ,\vtg_lag_reg[8]_i_1_n_3 ,\vtg_lag_reg[8]_i_1_n_4 ,\vtg_lag_reg[8]_i_1_n_5 ,\vtg_lag_reg[8]_i_1_n_6 ,\vtg_lag_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[8]_i_1_n_8 ,\vtg_lag_reg[8]_i_1_n_9 ,\vtg_lag_reg[8]_i_1_n_10 ,\vtg_lag_reg[8]_i_1_n_11 ,\vtg_lag_reg[8]_i_1_n_12 ,\vtg_lag_reg[8]_i_1_n_13 ,\vtg_lag_reg[8]_i_1_n_14 ,\vtg_lag_reg[8]_i_1_n_15 }),
        .S({vtg_lag_reg__0[15:10],vtg_lag_reg[9:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[9] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_14 ),
        .Q(vtg_lag_reg[9]),
        .R(sof_ignore0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vtg_sof_cnt[0]_i_1 
       (.I0(vtg_sof_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vtg_sof_cnt[1]_i_1 
       (.I0(vtg_sof_cnt_reg[1]),
        .I1(vtg_sof_cnt_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \vtg_sof_cnt[2]_i_1 
       (.I0(vtg_sof_cnt_reg[2]),
        .I1(vtg_sof_cnt_reg[1]),
        .I2(vtg_sof_cnt_reg[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vtg_sof_cnt[3]_i_1 
       (.I0(vtg_sof_cnt_reg[3]),
        .I1(vtg_sof_cnt_reg[0]),
        .I2(vtg_sof_cnt_reg[1]),
        .I3(vtg_sof_cnt_reg[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vtg_sof_cnt[4]_i_1 
       (.I0(vtg_sof_cnt_reg[4]),
        .I1(vtg_sof_cnt_reg[2]),
        .I2(vtg_sof_cnt_reg[1]),
        .I3(vtg_sof_cnt_reg[0]),
        .I4(vtg_sof_cnt_reg[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vtg_sof_cnt[5]_i_1 
       (.I0(vtg_sof_cnt_reg[3]),
        .I1(vtg_sof_cnt_reg[0]),
        .I2(vtg_sof_cnt_reg[1]),
        .I3(vtg_sof_cnt_reg[2]),
        .I4(vtg_sof_cnt_reg[4]),
        .I5(vtg_sof_cnt_reg[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vtg_sof_cnt[6]_i_1 
       (.I0(vtg_sof_cnt_reg[6]),
        .I1(\vtg_sof_cnt[7]_i_7_n_0 ),
        .O(p_0_in__1[6]));
  LUT5 #(
    .INIT(32'hFFDFCCCC)) 
    \vtg_sof_cnt[7]_i_1 
       (.I0(\vtg_sof_cnt[7]_i_4_n_0 ),
        .I1(vid_io_out_reset),
        .I2(state_reg[1]),
        .I3(\vtg_sof_cnt[7]_i_5_n_0 ),
        .I4(\vtg_sof_cnt[7]_i_6_n_0 ),
        .O(vtg_sof_cnt0));
  LUT2 #(
    .INIT(4'h8)) 
    \vtg_sof_cnt[7]_i_2 
       (.I0(vid_io_out_ce),
        .I1(vtg_sof_dly),
        .O(vtg_sof_cnt));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \vtg_sof_cnt[7]_i_3 
       (.I0(vtg_sof_cnt_reg[7]),
        .I1(\vtg_sof_cnt[7]_i_7_n_0 ),
        .I2(vtg_sof_cnt_reg[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \vtg_sof_cnt[7]_i_4 
       (.I0(p_0_in1_in),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\vtg_sof_cnt[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \vtg_sof_cnt[7]_i_5 
       (.I0(p_0_in1_in),
        .I1(fifo_force_rd),
        .I2(Q[2]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[12] ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\vtg_sof_cnt[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \vtg_sof_cnt[7]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(p_3_in),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\vtg_sof_cnt[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vtg_sof_cnt[7]_i_7 
       (.I0(vtg_sof_cnt_reg[5]),
        .I1(vtg_sof_cnt_reg[4]),
        .I2(vtg_sof_cnt_reg[2]),
        .I3(vtg_sof_cnt_reg[1]),
        .I4(vtg_sof_cnt_reg[0]),
        .I5(vtg_sof_cnt_reg[3]),
        .O(\vtg_sof_cnt[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in__1[0]),
        .Q(vtg_sof_cnt_reg[0]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[1] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in__1[1]),
        .Q(vtg_sof_cnt_reg[1]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[2] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in__1[2]),
        .Q(vtg_sof_cnt_reg[2]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[3] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in__1[3]),
        .Q(vtg_sof_cnt_reg[3]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[4] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in__1[4]),
        .Q(vtg_sof_cnt_reg[4]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[5] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in__1[5]),
        .Q(vtg_sof_cnt_reg[5]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[6] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in__1[6]),
        .Q(vtg_sof_cnt_reg[6]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[7] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in__1[7]),
        .Q(vtg_sof_cnt_reg[7]),
        .R(vtg_sof_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h40)) 
    vtg_sof_dly_i_1
       (.I0(vtg_de_dly),
        .I1(vtg_vsync_bp_reg_n_0),
        .I2(vtg_active_video),
        .O(vtg_sof_dly_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_sof_dly_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_sof_dly_i_1_n_0),
        .Q(vtg_sof_dly),
        .R(vid_io_out_reset));
  LUT6 #(
    .INIT(64'h0000000055551000)) 
    vtg_vsync_bp_i_1
       (.I0(vtg_de_dly),
        .I1(vtg_vsync),
        .I2(vid_io_out_ce),
        .I3(vtg_vsync_dly),
        .I4(vtg_vsync_bp_reg_n_0),
        .I5(vid_io_out_reset),
        .O(vtg_vsync_bp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vsync_bp_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vtg_vsync_bp_i_1_n_0),
        .Q(vtg_vsync_bp_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vsync_dly_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_vsync),
        .Q(vtg_vsync_dly),
        .R(vid_io_out_reset));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__3
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__4
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__1
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
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
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \grdc.rd_data_count_i[7]_i_16 
       (.I0(\count_value_i_reg[1]_0 [0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(\grdc.rd_data_count_i_reg[7]_0 [0]),
        .O(S[0]));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \grdc.rd_data_count_i[7]_i_8 
       (.I0(\count_value_i_reg[1]_0 [0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .O(DI));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (Q,
    leaving_empty0,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ,
    ram_wr_en_pf,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [9:0]Q;
  output leaving_empty0;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input \count_value_i_reg[0]_0 ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  input ram_wr_en_pf;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [9:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
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
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
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
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .O(leaving_empty0));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_11
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
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_4
   (ram_empty_i0,
    Q,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    rst_d1,
    \count_value_i_reg[9]_0 ,
    \count_value_i_reg[5]_0 ,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    wr_clk);
  output ram_empty_i0;
  output [9:0]Q;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input rst_d1;
  input [0:0]\count_value_i_reg[9]_0 ;
  input \count_value_i_reg[5]_0 ;
  input [9:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input wr_clk;

  wire [9:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
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
  wire \count_value_i_reg[5]_0 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [9:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
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
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
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
        .I2(rst_d1),
        .I3(\count_value_i_reg[9]_0 ),
        .I4(\count_value_i_reg[5]_0 ),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
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
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_pf),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_8
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

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h666A6666)) 
    \count_value_i[1]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[10]_0 [0]),
        .I4(\count_value_i_reg[10]_0 [1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(p_1_in__0),
        .I3(Q[0]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[7]_i_1__3 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\count_value_i[9]_i_2__3_n_0 ),
        .I3(Q[5]),
        .O(\count_value_i[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12_n_0 ),
        .O(src_in_bin[9]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(src_in_bin[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I3(Q[5]),
        .O(src_in_bin[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(Q[5]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I2(Q[4]),
        .O(src_in_bin[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [9:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [9:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
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
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_12
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
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(wr_pntr_plus1_pf),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[6]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_5
   (Q,
    ram_wr_en_pf,
    wr_en,
    rst_d1,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[5]_0 ,
    wr_clk);
  output [9:0]Q;
  input ram_wr_en_pf;
  input wr_en;
  input rst_d1;
  input [0:0]\count_value_i_reg[0]_0 ;
  input \count_value_i_reg[5]_0 ;
  input wr_clk;

  wire [9:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
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
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
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
        .I2(rst_d1),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(\count_value_i_reg[5]_0 ),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_9
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
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(p_1_in__0),
        .I3(Q[1]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2
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

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
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

(* CASCADE_HEIGHT = "1" *) (* CDC_SYNC_STAGES = "4" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "no_ecc" *) (* EN_ADV_FEATURE_ASYNC = "16'b0000011100000111" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_WRITE_DEPTH = "1024" *) 
(* FULL_RESET_VALUE = "1" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "11" *) 
(* READ_DATA_WIDTH = "99" *) (* READ_MODE = "fwft" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "99" *) (* WR_DATA_COUNT_WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* dont_touch = "true" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async
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
  input [98:0]din;
  output full;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [98:0]dout;
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
  wire [98:0]din;
  wire [98:0]dout;
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
  (* CASCADE_HEIGHT = "1" *) 
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
  (* FIFO_SIZE = "101376" *) 
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
  (* READ_DATA_WIDTH = "99" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "99" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* WR_DC_WIDTH_EXT = "11" *) 
  (* WR_DEPTH_LOG = "10" *) 
  (* WR_PNTR_WIDTH = "10" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "7" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0 \gnuram_async_fifo.xpm_fifo_base_inst 
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
(* FIFO_READ_DEPTH = "1024" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "33792" *) 
(* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) 
(* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "1019" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "1019" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "11" *) 
(* RD_DC_WIDTH_EXT = "11" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "10" *) (* READ_DATA_WIDTH = "33" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "33" *) 
(* WR_DATA_COUNT_WIDTH = "11" *) (* WR_DC_WIDTH_EXT = "11" *) (* WR_DEPTH_LOG = "10" *) 
(* WR_PNTR_WIDTH = "10" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "6" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
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
  input [32:0]din;
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
  output [32:0]dout;
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
  wire [1:0]curr_fwft_state;
  wire [32:0]din;
  wire [32:0]dout;
  wire empty_fwft_i0;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire overflow_i0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire [9:0]rd_pntr_ext;
  wire rdp_inst_n_11;
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
  wire wr_en;
  wire [9:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
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
  wire [32:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign full_n = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
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
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_11),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "33" *) 
  (* BYTE_WRITE_WIDTH_B = "33" *) 
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
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "32" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "33" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "33792" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "33" *) 
  (* P_MIN_WIDTH_DATA_A = "33" *) 
  (* P_MIN_WIDTH_DATA_B = "33" *) 
  (* P_MIN_WIDTH_DATA_ECC = "33" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "33" *) 
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
  (* P_WIDTH_COL_WRITE_A = "33" *) 
  (* P_WIDTH_COL_WRITE_B = "33" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "33" *) 
  (* READ_DATA_WIDTH_B = "33" *) 
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
  (* WRITE_DATA_WIDTH_A = "33" *) 
  (* WRITE_DATA_WIDTH_B = "33" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "36" *) 
  (* rstb_loop_iter = "36" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [32:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdpp1_inst_n_10),
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
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 rdp_inst
       (.Q(rd_pntr_ext),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_10),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_11),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_10),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9}),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .\count_value_i_reg[9] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_4 wrp_inst
       (.Q(wr_pntr_ext),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\count_value_i_reg[9]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_10),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_5 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\gof.overflow_i_reg (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\guf.underflow_i_reg (\gen_fwft.empty_fwft_i_reg_n_0 ),
        .overflow_i0(overflow_i0),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "1" *) (* CDC_DEST_SYNC_FF = "4" *) (* COMMON_CLOCK = "0" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b1" *) (* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) 
(* FIFO_READ_DEPTH = "1024" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "101376" *) 
(* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) 
(* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "1019" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "1019" *) 
(* PF_THRESH_MIN = "9" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "11" *) (* RD_DC_WIDTH_EXT = "11" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "10" *) (* READ_DATA_WIDTH = "99" *) 
(* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "99" *) (* WR_DATA_COUNT_WIDTH = "11" *) (* WR_DC_WIDTH_EXT = "11" *) 
(* WR_DEPTH_LOG = "10" *) (* WR_PNTR_WIDTH = "10" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "7" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0
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
  input [98:0]din;
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
  output [98:0]dout;
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
  wire [98:0]din;
  wire [98:0]dout;
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
  wire [98:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(rd_pntr_wr_cdc_dc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_9 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_10 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_6 \gen_cdc_pntr.wpr_gray_reg 
       (.D(wr_pntr_rd_cdc),
        .Q({\gen_cdc_pntr.wpr_gray_reg_n_0 ,\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 ,\gen_cdc_pntr.wpr_gray_reg_n_9 }),
        .S(\gen_cdc_pntr.wpr_gray_reg_n_11 ),
        .\count_value_i_reg[9] (\gen_cdc_pntr.wpr_gray_reg_n_10 ),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] (rd_pntr_ext[9]),
        .\gen_pf_ic_rc.ram_empty_i_reg ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9}),
        .p_1_in__0(p_1_in__0),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[0]_0 (rd_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_7 \gen_cdc_pntr.wpr_gray_reg_dc 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__1 \gen_cdc_pntr.wr_pntr_cdc_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn \gen_fwft.rdpp1_inst 
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
  (* BYTE_WRITE_WIDTH_A = "99" *) 
  (* BYTE_WRITE_WIDTH_B = "99" *) 
  (* CASCADE_HEIGHT = "1" *) 
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
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "98" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "99" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "101376" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "99" *) 
  (* P_MIN_WIDTH_DATA_A = "99" *) 
  (* P_MIN_WIDTH_DATA_B = "99" *) 
  (* P_MIN_WIDTH_DATA_ECC = "99" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "99" *) 
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
  (* P_WIDTH_COL_WRITE_A = "99" *) 
  (* P_WIDTH_COL_WRITE_B = "99" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "99" *) 
  (* READ_DATA_WIDTH_B = "99" *) 
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
  (* WRITE_DATA_WIDTH_A = "99" *) 
  (* WRITE_DATA_WIDTH_B = "99" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "100" *) 
  (* rstb_loop_iter = "100" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__parameterized0 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[9:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [98:0]),
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
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_8 rdp_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_9 rdpp1_inst
       (.E(ram_rd_en_i),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9}),
        .\count_value_i_reg[0]_0 (rd_rst_busy),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .p_1_in__0(p_1_in__0),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_10 rst_d1_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_11 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[5]_0 (full),
        .\gwdc.wr_data_count_i_reg[10] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_9 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_10 }),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_12 wrpp1_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8,wrpp2_inst_n_9}),
        .\count_value_i_reg[5]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst__parameterized0 xpm_fifo_rst_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
   (rst_d1,
    ram_wr_en_pf,
    clr_full,
    Q,
    wr_clk,
    wr_en,
    \count_value_i_reg[9] ,
    rst);
  output rst_d1;
  output ram_wr_en_pf;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input wr_en;
  input \count_value_i_reg[9] ;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire \count_value_i_reg[9] ;
  wire ram_wr_en_pf;
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
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(rst_d1),
        .I2(Q),
        .I3(\count_value_i_reg[9] ),
        .O(ram_wr_en_pf));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_10
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
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gof.overflow_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_6
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_7
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (overflow_i0,
    Q,
    underflow_i0,
    rst,
    \gof.overflow_i_reg ,
    rst_d1,
    wr_en,
    \guf.underflow_i_reg ,
    rd_en,
    wr_clk);
  output overflow_i0;
  output [0:0]Q;
  output underflow_i0;
  input rst;
  input \gof.overflow_i_reg ;
  input rst_d1;
  input wr_en;
  input \guf.underflow_i_reg ;
  input rd_en;
  input wr_clk;

  wire [0:0]Q;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire \gof.overflow_i_reg ;
  wire \guf.underflow_i_reg ;
  wire overflow_i0;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
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
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(\gof.overflow_i_reg ),
        .I1(Q),
        .I2(rst_d1),
        .I3(wr_en),
        .O(overflow_i0));
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\guf.underflow_i_reg ),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst__parameterized0
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__1 \gen_rst_ic.wrst_rd_inst 
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
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
(* FIFO_READ_LATENCY = "0" *) (* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "1" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "11" *) (* READ_DATA_WIDTH = "33" *) 
(* READ_MODE = "fwft" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "33" *) (* WR_DATA_COUNT_WIDTH = "11" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync
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
  input [32:0]din;
  output full;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [32:0]dout;
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
  wire [32:0]din;
  wire [32:0]dout;
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
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
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
  (* FIFO_READ_DEPTH = "1024" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "33792" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "1019" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "1019" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RD_DC_WIDTH_EXT = "11" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "10" *) 
  (* READ_DATA_WIDTH = "33" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "33" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "33" *) (* BYTE_WRITE_WIDTH_B = "33" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "33792" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "0" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "1024" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "33" *) 
(* P_MIN_WIDTH_DATA_A = "33" *) (* P_MIN_WIDTH_DATA_B = "33" *) (* P_MIN_WIDTH_DATA_ECC = "33" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "33" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) (* P_NUM_COL_READ_B = "1" *) 
(* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
(* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) (* P_WIDTH_ADDR_WRITE_A = "10" *) 
(* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "33" *) (* P_WIDTH_COL_WRITE_B = "33" *) 
(* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "33" *) (* READ_DATA_WIDTH_B = "33" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "33" *) (* WRITE_DATA_WIDTH_B = "33" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "36" *) (* rstb_loop_iter = "36" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
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
  input [32:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [32:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [32:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [32:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [32:0]dina;
  wire [32:0]doutb;
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
  wire [3:1]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
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
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "32" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "32" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "33792" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "32" *) 
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
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
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
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN(dina[31:0]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,dina[32]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(doutb[31:0]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED [3:1],doutb[32]}),
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
(* BYTE_WRITE_WIDTH_A = "99" *) (* BYTE_WRITE_WIDTH_B = "99" *) (* CASCADE_HEIGHT = "1" *) 
(* CLOCKING_MODE = "1" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "101376" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "1024" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "99" *) (* P_MIN_WIDTH_DATA_A = "99" *) (* P_MIN_WIDTH_DATA_B = "99" *) 
(* P_MIN_WIDTH_DATA_ECC = "99" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "99" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) 
(* P_NUM_COL_READ_B = "1" *) (* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) (* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) 
(* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "99" *) 
(* P_WIDTH_COL_WRITE_B = "99" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "99" *) 
(* READ_DATA_WIDTH_B = "99" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "99" *) (* WRITE_DATA_WIDTH_B = "99" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "100" *) 
(* rstb_loop_iter = "100" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__parameterized0
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
  input [98:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [98:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [98:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [98:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [98:0]dina;
  wire [98:0]doutb;
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
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED ;
  wire [31:27]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
  assign douta[83] = \<const0> ;
  assign douta[82] = \<const0> ;
  assign douta[81] = \<const0> ;
  assign douta[80] = \<const0> ;
  assign douta[79] = \<const0> ;
  assign douta[78] = \<const0> ;
  assign douta[77] = \<const0> ;
  assign douta[76] = \<const0> ;
  assign douta[75] = \<const0> ;
  assign douta[74] = \<const0> ;
  assign douta[73] = \<const0> ;
  assign douta[72] = \<const0> ;
  assign douta[71] = \<const0> ;
  assign douta[70] = \<const0> ;
  assign douta[69] = \<const0> ;
  assign douta[68] = \<const0> ;
  assign douta[67] = \<const0> ;
  assign douta[66] = \<const0> ;
  assign douta[65] = \<const0> ;
  assign douta[64] = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
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
  (* RTL_RAM_BITS = "101376" *) 
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
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "36" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "36" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "101376" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "71" *) 
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
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 
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
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ),
        .DINADIN(dina[67:36]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP(dina[71:68]),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(doutb[67:36]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(doutb[71:68]),
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
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d27" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "98" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d27" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "98" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "101376" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "98" *) 
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
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2 
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
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,dina[98:72]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTBDOUT_UNCONNECTED [31:27],doutb[98:72]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
