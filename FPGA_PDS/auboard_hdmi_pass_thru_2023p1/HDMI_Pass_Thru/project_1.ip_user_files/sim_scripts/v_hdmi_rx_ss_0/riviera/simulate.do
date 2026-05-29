transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+v_hdmi_rx_ss_0  -L xilinx_vip -L xpm -L v_hdmi_rx_v3_0_2 -L xil_defaultlib -L v_vid_in_axi4s_v5_0_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.v_hdmi_rx_ss_0 xil_defaultlib.glbl

do {v_hdmi_rx_ss_0.udo}

run 1000ns

endsim

quit -force
