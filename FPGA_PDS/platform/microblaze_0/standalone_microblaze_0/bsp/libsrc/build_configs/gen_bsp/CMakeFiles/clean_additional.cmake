# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/dan-alencar/Documents/GitHub/FPGA_PDS/FPGA_PDS/platform/microblaze_0/standalone_microblaze_0/bsp/include/sleep.h"
  "/home/dan-alencar/Documents/GitHub/FPGA_PDS/FPGA_PDS/platform/microblaze_0/standalone_microblaze_0/bsp/include/xiltimer.h"
  "/home/dan-alencar/Documents/GitHub/FPGA_PDS/FPGA_PDS/platform/microblaze_0/standalone_microblaze_0/bsp/include/xtimer_config.h"
  "/home/dan-alencar/Documents/GitHub/FPGA_PDS/FPGA_PDS/platform/microblaze_0/standalone_microblaze_0/bsp/lib/libxiltimer.a"
  )
endif()
