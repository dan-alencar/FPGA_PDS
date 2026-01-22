# 2026-01-22T19:27:38.239585700
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

platform = client.create_platform_component(name = "platform_mexido",hw_design = "$COMPONENT_LOCATION/../hdmi_tx_bd_wrapper_mexido.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

comp = client.create_app_component(name="app_component_mexido",platform = "$COMPONENT_LOCATION/../platform_mexido/export/platform_mexido/platform_mexido.xpfm",domain = "standalone_microblaze_0")

platform = client.get_component(name="platform_mexido")
status = platform.build()

status = platform.build()

comp = client.get_component(name="app_component_mexido")
comp.build()

component = client.get_component(name="app_component_mexido")

lscript = component.get_ld_script(path="C:\AMDDesignTools\FPGA_PDS\FPGA_PDS\app_component_mexido\src\lscript.ld")

lscript.set_stack_size("0x300")

lscript.set_heap_size("0x300")

status = platform.build()

comp.build()

domain = platform.get_domain(name="standalone_microblaze_0")

status = domain.regenerate()

vitis.dispose()

