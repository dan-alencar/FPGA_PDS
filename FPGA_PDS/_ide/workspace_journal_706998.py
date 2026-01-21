# 2026-01-21T16:19:00.926758810
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

vitis.dispose()

