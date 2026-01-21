# 2026-01-21T17:12:07.199556500
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

vitis.dispose()

