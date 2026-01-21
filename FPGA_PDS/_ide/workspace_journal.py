# 2026-01-21T16:38:30.227217259
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_PDS")

status = client.add_platform_repos(platform=["/home/dan-alencar/Documents/GitHub/FPGA_PDS/FPGA_PDS"])

comp = client.create_hls_component(name = "hls_component",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

client.delete_component(name="hls_component")

vitis.dispose()

