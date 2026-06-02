connect

set project_dir [file dirname [file normalize [info script]]]
set bit_file [file join $project_dir "FPGA_PDS.runs/impl_1/hdmi_tx_bd_wrapper.bit"]
set elf_file [file join $project_dir "app_component/build/app_component.elf"]

puts "Programming FPGA with $bit_file"
targets -set -filter {name =~ "*xcau15p*" || name =~ "*FPGA*"}
fpga -file $bit_file
after 2000

disconnect
connect

puts "Available XSDB targets after FPGA programming:"
targets

puts "Downloading MicroBlaze ELF $elf_file"
targets -set -filter {name =~ "MicroBlaze #0"}
rst -processor
after 500
dow $elf_file
con

puts "MicroBlaze app started. Watch the JTAG UART terminal."
