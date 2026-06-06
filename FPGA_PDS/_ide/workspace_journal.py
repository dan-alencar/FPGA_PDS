# 2026-06-03T17:42:04.268336114
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

comp.build()

status = comp.clean()

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

