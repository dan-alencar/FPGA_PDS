# 2026-05-29T20:09:45.314184086
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

platform = client.get_component(name="platform1")
status = platform.build()

status = platform.build()

comp = client.get_component(name="app_component1")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="platform1")

client.delete_component(name="app_component1")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../hdmi_tx_bd_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

comp = client.create_app_component(name="app_component",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_0")

client.delete_component(name="app_component")

comp = client.create_app_component(name="app_component",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_0")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

