
set TopModule "v_tpg"
set ClockPeriod 10
set ClockList ap_clk
set AxiliteClockList {}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix hdmi_tx_bd_v_tpg_0_0_
set RtlSubPrefix hdmi_tx_bd_v_tpg_0_0_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set RtlWriterOptions {}
set CbcGenFlag 0
set CasGenFlag 0
set CasMonitorFlag 0
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcau15p:-ffvb676:-2-e
set SourceFiles {sc {} c /home/dan-alencar/Documents/GitHub/FPGA_PDS/FPGA_PDS/FPGA_PDS.gen/sources_1/bd/hdmi_tx_bd/ip/hdmi_tx_bd_v_tpg_0_0/src/v_tpg.cpp}
set SourceFlags {sc {} c {{-I/home/dan-alencar/Documents/GitHub/FPGA_PDS/FPGA_PDS/FPGA_PDS.gen/sources_1/bd/hdmi_tx_bd/ip/hdmi_tx_bd_v_tpg_0_0/src/hls -I/home/dan-alencar/Documents/GitHub/FPGA_PDS/FPGA_PDS/FPGA_PDS.gen/sources_1/bd/hdmi_tx_bd/ip/hdmi_tx_bd_v_tpg_0_0/src}}}
set DirectiveFile {}
set TBFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set TBInstNames {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile sol.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/kintexuplus/kintexuplus}}}
set HPFPO 0
