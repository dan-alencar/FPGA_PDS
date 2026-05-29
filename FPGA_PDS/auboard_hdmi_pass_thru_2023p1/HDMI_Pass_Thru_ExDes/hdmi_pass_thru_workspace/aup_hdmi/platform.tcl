# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/training/AUPBoard/HDMI_Pass_Thru_ExDes/hdmi_pass_thru_workspace/aup_hdmi/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/training/AUPBoard/HDMI_Pass_Thru_ExDes/hdmi_pass_thru_workspace/aup_hdmi/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {aup_hdmi}\
-hw {/home/training/AUPBoard/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}\
-proc {mb_ss_0_mblaze} -os {standalone} -out {/home/training/AUPBoard/HDMI_Pass_Thru_ExDes/hdmi_pass_thru_workspace}

platform write
platform generate -domains 
platform active {aup_hdmi}
bsp reload
platform generate
platform config -updatehw {/home/training/AUPBoard/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
bsp reload
platform active {aup_hdmi}
platform config -updatehw {/home/training/AUPBoard/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform active {aup_hdmi}
platform config -updatehw {/home/training/AUPBoard/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/training/AUPBoard/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/training/AUPBoard/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform active {aup_hdmi}
platform config -updatehw {/home/training/AUPBoard/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform active {aup_hdmi}
platform config -updatehw {/home/training/AUPBoard/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform active {aup_hdmi}
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains standalone_domain 
platform clean
bsp reload
platform active {aup_hdmi}
bsp reload
platform generate
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform clean
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform active {aup_hdmi}
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform active {aup_hdmi}
bsp reload
platform generate -domains 
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
bsp reload
platform generate -domains 
platform active {aup_hdmi}
platform generate -domains 
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform clean
platform clean
platform generate
platform active {aup_hdmi}
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
bsp reload
platform generate -domains 
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform active {aup_hdmi}
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
bsp reload
platform active {aup_hdmi}
platform active {aup_hdmi}
platform generate
platform active {aup_hdmi}
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform generate -domains 
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {/home/training/AUPBoard/aup_hdmi_pass_thru_2023p1/HDMI_Pass_Thru_ExDes/v_hdmi_rx_ss_0_ex/exdes_wrapper.xsa}
platform generate -domains 
platform generate -domains standalone_domain 
platform active {aup_hdmi}
platform generate -domains 
platform active {aup_hdmi}
platform generate -domains 
platform active {aup_hdmi}
platform generate -domains 
platform active {aup_hdmi}
platform generate -domains 
platform active {aup_hdmi}
platform active {aup_hdmi}
platform active {aup_hdmi}
platform active {aup_hdmi}
