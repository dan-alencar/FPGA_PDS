# 2026-05-29T21:07:34.819051029
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

comp.build()

client.delete_component(name="platform")

client.delete_component(name="app_component")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../hdmi_tx_bd_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

comp = client.create_app_component(name="app_component",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_0")

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="platform")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../hdmi_tx_bd_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="platform")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../hdmi_tx_bd_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

component = client.get_component(name="app_component")

lscript = component.get_ld_script(path="/home/dan-alencar/Documents/GitHub/FPGA_PDS/FPGA_PDS/app_component/src/lscript.ld")

lscript.set_stack_size("0x800")

lscript.set_heap_size("0xA00")

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

lscript.set_stack_size("0x400")

lscript.set_heap_size("0x800")

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

lscript.update_memory_region("microblaze_0_local_memory_dlmb_bram_if_cntlr_memory_0", "0x50", "0x3ffb0")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

client.delete_component(name="platform")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../hdmi_tx_bd_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

