# 2026-06-03T16:08:35.898716046
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../hdmi_tx_bd_wrapper.xsa")

status = platform.build()

comp = client.get_component(name="app_component")
status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

