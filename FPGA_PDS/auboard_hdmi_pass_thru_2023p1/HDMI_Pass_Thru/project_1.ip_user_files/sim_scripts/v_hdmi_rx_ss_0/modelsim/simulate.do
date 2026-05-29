onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xilinx_vip -L xpm -L v_hdmi_rx_v3_0_2 -L xil_defaultlib -L v_vid_in_axi4s_v5_0_2 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.v_hdmi_rx_ss_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {v_hdmi_rx_ss_0.udo}

run 1000ns

quit -force
