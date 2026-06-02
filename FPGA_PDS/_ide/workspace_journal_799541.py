# 2026-06-01T21:47:23.041322015
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

comp = client.get_component(name="app_component")
status = comp.clean()

platform = client.get_component(name="platform")
status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../hdmi_tx_bd_wrapper.xsa")

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

status = comp.clean()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../hdmi_tx_bd_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

