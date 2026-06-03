# 2026-06-03T02:52:54.960859433
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

comp = client.get_component(name="app_component")
status = comp.clean()

platform = client.get_component(name="platform")
status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

