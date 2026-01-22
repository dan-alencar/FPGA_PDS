# 2026-01-22T14:09:43.700272300
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

platform = client.create_platform_component(name = "platform1",hw_design = "$COMPONENT_LOCATION/../hdmi_tx_bd_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

comp = client.create_app_component(name="app_component1",platform = "$COMPONENT_LOCATION/../platform1/export/platform1/platform1.xpfm",domain = "standalone_microblaze_0")

platform = client.get_component(name="platform1")
domain = platform.get_domain(name="standalone_microblaze_0")

status = domain.regenerate()

status = platform.build()

component = client.get_component(name="app_component1")

lscript = component.get_ld_script(path="C:\AMDDesignTools\FPGA_PDS\FPGA_PDS\app_component1\src\lscript.ld")

lscript.set_stack_size("0x1A0")

lscript.set_heap_size("0x100")

status = platform.build()

comp = client.get_component(name="app_component1")
comp.build()

