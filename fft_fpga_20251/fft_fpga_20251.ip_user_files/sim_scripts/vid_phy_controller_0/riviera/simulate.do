transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+vid_phy_controller_0  -L xil_defaultlib -L xilinx_vip -L xpm -L gtwizard_ultrascale_v1_7_22 -L vid_phy_controller_v2_2_22 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.vid_phy_controller_0 xil_defaultlib.glbl

do {vid_phy_controller_0.udo}

run 1000ns

endsim

quit -force
