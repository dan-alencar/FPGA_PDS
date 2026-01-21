# 2026-01-21T16:31:43.577375387
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

status = client.add_platform_repos(platform=["/home/dan-alencar/Documents/GitHub/FPGA_PDS/FPGA_PDS"])

comp = client.create_aie_component(name="hdmi_tx_platform", platform = "$COMPONENT_LOCATION/../hdmi_tx_bd_wrapper.xsa", template = "empty_hls_component")

