# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\AMDDesignTools\\FPGA_PDS\\FPGA_PDS\\platform_mexido\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\sleep.h"
  "C:\\AMDDesignTools\\FPGA_PDS\\FPGA_PDS\\platform_mexido\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\xiltimer.h"
  "C:\\AMDDesignTools\\FPGA_PDS\\FPGA_PDS\\platform_mexido\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\xtimer_config.h"
  "C:\\AMDDesignTools\\FPGA_PDS\\FPGA_PDS\\platform_mexido\\microblaze_0\\standalone_microblaze_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
