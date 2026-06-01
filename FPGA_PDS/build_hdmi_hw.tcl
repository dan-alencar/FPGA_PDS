open_project FPGA_PDS/FPGA_PDS.xpr

reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

set impl_status [get_property STATUS [get_runs impl_1]]
puts "impl_1 status: $impl_status"
if {![string match "*Complete*" $impl_status]} {
  puts "ERROR: implementation did not complete"
  exit 1
}

write_hw_platform -fixed -include_bit -force -file FPGA_PDS/hdmi_tx_bd_wrapper.xsa
write_hw_platform -fixed -include_bit -force -file FPGA_PDS/platform/hw/hdmi_tx_bd_wrapper.xsa
