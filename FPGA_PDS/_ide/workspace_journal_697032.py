# 2026-01-21T15:46:08.386592570
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_libraries")

vitis.dispose()

