import os

import vitis

ws = os.path.abspath("FPGA_PDS")
xsa = os.path.join(ws, "hdmi_tx_bd_wrapper.xsa")

client = vitis.create_client()
client.set_workspace(ws)

print("workspace:", client.get_workspace())
print("components:", client.list_components())
print("platforms:", client.list_platform_components())

platform = client.get_component("platform")
platform.update_hw(hw_design=xsa)
platform.build()

app = client.get_component("app_component")
app.generate_build_files()
app.build(target="hw")

vitis.dispose()
