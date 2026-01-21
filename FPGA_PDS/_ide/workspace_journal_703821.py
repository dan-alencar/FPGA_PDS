# 2026-01-21T15:50:42.076874549
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

vitis.dispose()

