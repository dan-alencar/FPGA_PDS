# 2026-01-21T17:14:00.818668484
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

comp = client.create_aie_component(name="hls_component", platform = "$COMPONENT_LOCATION/../hdmi_tx_bd_wrapper.xsa", template = "empty_hls_component")

status = client.rescan_embedded_sw_repo()

status = client.rescan_embedded_sw_repo()

