// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xhdmi_tx_bd_v_tpg_0_0_v_tpg.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHdmi_tx_bd_v_tpg_0_0_v_tpg_CfgInitialize(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, XHdmi_tx_bd_v_tpg_0_0_v_tpg_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress = ConfigPtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Start(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_IsDone(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_IsIdle(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_IsReady(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_EnableAutoRestart(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_DisableAutoRestart(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_AP_CTRL, 0);
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_height(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_height(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_width(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_width(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_bckgndId(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_BCKGNDID_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_bckgndId(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_BCKGNDID_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_ovrlayId(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_OVRLAYID_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_ovrlayId(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_OVRLAYID_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_maskId(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_MASKID_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_maskId(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_MASKID_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_motionSpeed(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_MOTIONSPEED_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_motionSpeed(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_MOTIONSPEED_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_colorFormat(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_COLORFORMAT_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_colorFormat(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_COLORFORMAT_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_crossHairX(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_CROSSHAIRX_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_crossHairX(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_CROSSHAIRX_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_crossHairY(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_CROSSHAIRY_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_crossHairY(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_CROSSHAIRY_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_ZplateHorContStart(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTSTART_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_ZplateHorContStart(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTSTART_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_ZplateHorContDelta(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTDELTA_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_ZplateHorContDelta(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_ZPLATEHORCONTDELTA_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_ZplateVerContStart(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTSTART_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_ZplateVerContStart(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTSTART_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_ZplateVerContDelta(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTDELTA_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_ZplateVerContDelta(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_ZPLATEVERCONTDELTA_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_boxSize(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_BOXSIZE_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_boxSize(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_BOXSIZE_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_boxColorR(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_BOXCOLORR_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_boxColorR(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_BOXCOLORR_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_boxColorG(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_BOXCOLORG_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_boxColorG(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_BOXCOLORG_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_boxColorB(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_BOXCOLORB_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_boxColorB(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_BOXCOLORB_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_enableInput(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_ENABLEINPUT_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_enableInput(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_ENABLEINPUT_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_passthruStartX(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_PASSTHRUSTARTX_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_passthruStartX(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_PASSTHRUSTARTX_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_passthruStartY(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_PASSTHRUSTARTY_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_passthruStartY(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_PASSTHRUSTARTY_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_passthruEndX(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_PASSTHRUENDX_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_passthruEndX(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_PASSTHRUENDX_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_passthruEndY(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_PASSTHRUENDY_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_passthruEndY(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_PASSTHRUENDY_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_dpDynamicRange(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_DPDYNAMICRANGE_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_dpDynamicRange(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_DPDYNAMICRANGE_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_dpYUVCoef(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_DPYUVCOEF_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_dpYUVCoef(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_DPYUVCOEF_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_field_id(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_FIELD_ID_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_field_id(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_FIELD_ID_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_Set_bck_motion_en(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_BCK_MOTION_EN_DATA, Data);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_Get_bck_motion_en(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_BCK_MOTION_EN_DATA);
    return Data;
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_InterruptGlobalEnable(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_GIE, 1);
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_InterruptGlobalDisable(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_GIE, 0);
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_InterruptEnable(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_IER);
    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_IER, Register | Mask);
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_InterruptDisable(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_IER);
    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XHdmi_tx_bd_v_tpg_0_0_v_tpg_InterruptClear(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHdmi_tx_bd_v_tpg_0_0_v_tpg_WriteReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_ISR, Mask);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_InterruptGetEnabled(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_IER);
}

u32 XHdmi_tx_bd_v_tpg_0_0_v_tpg_InterruptGetStatus(XHdmi_tx_bd_v_tpg_0_0_v_tpg *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHdmi_tx_bd_v_tpg_0_0_v_tpg_ReadReg(InstancePtr->Hdmi_tx_bd_v_tpg_0_0_ctrl_BaseAddress, XHDMI_TX_BD_V_TPG_0_0_V_TPG_HDMI_TX_BD_V_TPG_0_0_CTRL_ADDR_ISR);
}

