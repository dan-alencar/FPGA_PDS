# 2026-06-02T23:06:17.665011613
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

vitis.dispose()

