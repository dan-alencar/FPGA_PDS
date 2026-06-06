# 2026-06-03T15:19:56.832704239
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

vitis.dispose()

