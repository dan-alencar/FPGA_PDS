# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/training/AUPBoard/aup_hdmi_pass_thru_2023p1_working/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/hdmi_pass_thru_workspace/Passthrough_Microblaze_2_system/_ide/scripts/systemdebugger_passthrough_microblaze_2_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/training/AUPBoard/aup_hdmi_pass_thru_2023p1_working/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/hdmi_pass_thru_workspace/Passthrough_Microblaze_2_system/_ide/scripts/systemdebugger_passthrough_microblaze_2_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Avnet MiniZed V1 1234-oj1A" && level==0 && jtag_device_ctx=="jsn-MiniZed V1-1234-oj1A-04ac2093-0"}
fpga -file /home/training/AUPBoard/aup_hdmi_pass_thru_2023p1_working/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/hdmi_pass_thru_workspace/Passthrough_Microblaze_2/_ide/bitstream/exdes_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw /home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/hdmi_pass_thru_workspace/aup_hdmi/export/aup_hdmi/hw/exdes_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow /home/training/AUPBoard/aup_hdmi_pass_thru_2023p1_working/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/hdmi_pass_thru_workspace/Passthrough_Microblaze_2/Debug/Passthrough_Microblaze_2.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
