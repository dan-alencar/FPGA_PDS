-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Tue May  7 16:46:10 2024
-- Host        : HP-Z4-G4-027564 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ exdes_hdmi_acr_ctrl_0_sim_netlist.vhdl
-- Design      : exdes_hdmi_acr_ctrl_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau15p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14_axi is
  port (
    data1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_WREADY_reg_0 : out STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_arready : out STD_LOGIC;
    axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \rCKEDivVal_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_aclk : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_rready : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14_axi is
  signal \FSM_onehot_stmRead[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stmWrite[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_ARREADY_i_1_n_0 : STD_LOGIC;
  signal S_AXI_AWREADY_i_1_n_0 : STD_LOGIC;
  signal S_AXI_AWREADY_i_2_n_0 : STD_LOGIC;
  signal S_AXI_BRESP0 : STD_LOGIC;
  signal \S_AXI_BRESP[1]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_BRESP[1]_i_2_n_0\ : STD_LOGIC;
  signal S_AXI_BVALID_i_1_n_0 : STD_LOGIC;
  signal \S_AXI_RDATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[0]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[10]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[11]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[12]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[13]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[15]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[16]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[17]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[18]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[19]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[1]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[1]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[20]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[21]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[22]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[23]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[24]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[25]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[26]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[27]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[28]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[29]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[2]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[30]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_3_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_4_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_5_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[3]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[3]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[8]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[9]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RRESP[1]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RRESP[1]_i_2_n_0\ : STD_LOGIC;
  signal S_AXI_RVALID_i_1_n_0 : STD_LOGIC;
  signal S_AXI_WREADY_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready_reg_0\ : STD_LOGIC;
  signal \^axi_arready\ : STD_LOGIC;
  signal \^axi_awready\ : STD_LOGIC;
  signal \^axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axi_bvalid\ : STD_LOGIC;
  signal \^axi_rvalid\ : STD_LOGIC;
  signal \^data1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal \rCKEDivVal[2]_i_1_n_0\ : STD_LOGIC;
  signal rCTSValue : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rEnab_ACR : STD_LOGIC;
  signal rNValue : STD_LOGIC;
  signal rReadAddr : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \rReadAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[7]_i_2_n_0\ : STD_LOGIC;
  signal \rReadAddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \rReadAddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \rReadAddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \rReadAddr_reg_n_0_[3]\ : STD_LOGIC;
  signal rVersionNr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rVersionNr_0 : STD_LOGIC;
  signal rWriteAddr : STD_LOGIC;
  signal \rWriteAddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \rWriteAddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \rWriteAddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \rWriteAddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \rWriteAddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \rWriteAddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \rWriteAddr_reg_n_0_[7]\ : STD_LOGIC;
  signal stmRead : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal stmWrite : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \stmWrite__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_stmRead_reg[0]\ : label is "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stmRead_reg[1]\ : label is "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stmRead_reg[2]\ : label is "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stmRead_reg[3]\ : label is "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_stmWrite[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_stmWrite[1]_i_2\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stmWrite_reg[0]\ : label is "sWriteReset:00,sWriteAddr:01,sWriteData:10,sWriteResp:11,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stmWrite_reg[1]\ : label is "sWriteReset:00,sWriteAddr:01,sWriteData:10,sWriteResp:11,";
  attribute SOFT_HLUTNM of \S_AXI_BRESP[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[31]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S_AXI_RRESP[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of S_AXI_WREADY_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rReadAddr[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rReadAddr[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rReadAddr[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rReadAddr[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rReadAddr[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rReadAddr[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rReadAddr[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rReadAddr[7]_i_2\ : label is "soft_lutpair2";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  S_AXI_WREADY_reg_0 <= \^s_axi_wready_reg_0\;
  axi_arready <= \^axi_arready\;
  axi_awready <= \^axi_awready\;
  axi_bresp(0) <= \^axi_bresp\(0);
  axi_bvalid <= \^axi_bvalid\;
  axi_rvalid <= \^axi_rvalid\;
  data1(3 downto 0) <= \^data1\(3 downto 0);
\FSM_onehot_stmRead[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => stmRead(0),
      I1 => stmRead(2),
      I2 => axi_rready,
      I3 => stmRead(3),
      I4 => stmRead(1),
      I5 => axi_arvalid,
      O => \FSM_onehot_stmRead[3]_i_1_n_0\
    );
\FSM_onehot_stmRead_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => axi_aclk,
      CE => \FSM_onehot_stmRead[3]_i_1_n_0\,
      D => stmRead(3),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => stmRead(0)
    );
\FSM_onehot_stmRead_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \FSM_onehot_stmRead[3]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => stmRead(0),
      Q => stmRead(1)
    );
\FSM_onehot_stmRead_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \FSM_onehot_stmRead[3]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => stmRead(1),
      Q => stmRead(2)
    );
\FSM_onehot_stmRead_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \FSM_onehot_stmRead[3]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => stmRead(2),
      Q => stmRead(3)
    );
\FSM_sequential_stmWrite[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => stmWrite(0),
      O => \stmWrite__0\(0)
    );
\FSM_sequential_stmWrite[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACF0ACF"
    )
        port map (
      I0 => axi_wvalid,
      I1 => axi_awvalid,
      I2 => stmWrite(0),
      I3 => stmWrite(1),
      I4 => axi_bready,
      O => \FSM_sequential_stmWrite[1]_i_1_n_0\
    );
\FSM_sequential_stmWrite[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => stmWrite(0),
      I1 => stmWrite(1),
      O => \stmWrite__0\(1)
    );
\FSM_sequential_stmWrite_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \FSM_sequential_stmWrite[1]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \stmWrite__0\(0),
      Q => stmWrite(0)
    );
\FSM_sequential_stmWrite_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \FSM_sequential_stmWrite[1]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \stmWrite__0\(1),
      Q => stmWrite(1)
    );
S_AXI_ARREADY_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDC"
    )
        port map (
      I0 => axi_arvalid,
      I1 => stmRead(0),
      I2 => stmRead(1),
      I3 => \^axi_arready\,
      O => S_AXI_ARREADY_i_1_n_0
    );
S_AXI_ARREADY_reg: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => S_AXI_ARREADY_i_1_n_0,
      Q => \^axi_arready\
    );
S_AXI_AWREADY_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BBB"
    )
        port map (
      I0 => \^axi_awready\,
      I1 => stmWrite(1),
      I2 => axi_awvalid,
      I3 => stmWrite(0),
      O => S_AXI_AWREADY_i_1_n_0
    );
S_AXI_AWREADY_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => S_AXI_AWREADY_i_2_n_0
    );
S_AXI_AWREADY_reg: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => S_AXI_AWREADY_i_1_n_0,
      Q => \^axi_awready\
    );
\S_AXI_BRESP[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAFFFFEFEA0000"
    )
        port map (
      I0 => \S_AXI_BRESP[1]_i_2_n_0\,
      I1 => \rWriteAddr_reg_n_0_[4]\,
      I2 => \rWriteAddr_reg_n_0_[2]\,
      I3 => \rWriteAddr_reg_n_0_[3]\,
      I4 => S_AXI_BRESP0,
      I5 => \^axi_bresp\(0),
      O => \S_AXI_BRESP[1]_i_1_n_0\
    );
\S_AXI_BRESP[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rWriteAddr_reg_n_0_[0]\,
      I1 => \rWriteAddr_reg_n_0_[6]\,
      I2 => \rWriteAddr_reg_n_0_[7]\,
      I3 => p_0_in0,
      I4 => \rWriteAddr_reg_n_0_[1]\,
      O => \S_AXI_BRESP[1]_i_2_n_0\
    );
\S_AXI_BRESP[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_wready_reg_0\,
      I1 => axi_wvalid,
      O => S_AXI_BRESP0
    );
\S_AXI_BRESP_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_BRESP[1]_i_1_n_0\,
      Q => \^axi_bresp\(0)
    );
S_AXI_BVALID_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FF050C0"
    )
        port map (
      I0 => axi_bready,
      I1 => axi_wvalid,
      I2 => stmWrite(1),
      I3 => stmWrite(0),
      I4 => \^axi_bvalid\,
      O => S_AXI_BVALID_i_1_n_0
    );
S_AXI_BVALID_reg: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => S_AXI_BVALID_i_1_n_0,
      Q => \^axi_bvalid\
    );
\S_AXI_RDATA[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^q\(0),
      I1 => \S_AXI_RDATA[31]_i_5_n_0\,
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(0),
      I4 => \S_AXI_RDATA[0]_i_2_n_0\,
      O => \S_AXI_RDATA[0]_i_1_n_0\
    );
\S_AXI_RDATA[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^data1\(0),
      I1 => rVersionNr(0),
      I2 => \rReadAddr_reg_n_0_[2]\,
      I3 => stmRead(2),
      I4 => \S_AXI_RRESP[1]_i_2_n_0\,
      I5 => \rReadAddr_reg_n_0_[3]\,
      O => \S_AXI_RDATA[0]_i_2_n_0\
    );
\S_AXI_RDATA[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(10),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(10),
      I4 => \^q\(10),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[10]_i_1_n_0\
    );
\S_AXI_RDATA[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(11),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(11),
      I4 => \^q\(11),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[11]_i_1_n_0\
    );
\S_AXI_RDATA[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(12),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(12),
      I4 => \^q\(12),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[12]_i_1_n_0\
    );
\S_AXI_RDATA[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(13),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(13),
      I4 => \^q\(13),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[13]_i_1_n_0\
    );
\S_AXI_RDATA[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(14),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(14),
      I4 => \^q\(14),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[14]_i_1_n_0\
    );
\S_AXI_RDATA[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(15),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(15),
      I4 => \^q\(15),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[15]_i_1_n_0\
    );
\S_AXI_RDATA[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(16),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(16),
      I4 => \^q\(16),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[16]_i_1_n_0\
    );
\S_AXI_RDATA[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(17),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(17),
      I4 => \^q\(17),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[17]_i_1_n_0\
    );
\S_AXI_RDATA[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(18),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(18),
      I4 => \^q\(18),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[18]_i_1_n_0\
    );
\S_AXI_RDATA[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(19),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(19),
      I4 => \^q\(19),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[19]_i_1_n_0\
    );
\S_AXI_RDATA[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \S_AXI_RDATA[31]_i_5_n_0\,
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(1),
      I4 => \S_AXI_RDATA[1]_i_2_n_0\,
      O => \S_AXI_RDATA[1]_i_1_n_0\
    );
\S_AXI_RDATA[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^data1\(1),
      I1 => rVersionNr(1),
      I2 => \rReadAddr_reg_n_0_[2]\,
      I3 => stmRead(2),
      I4 => \S_AXI_RRESP[1]_i_2_n_0\,
      I5 => \rReadAddr_reg_n_0_[3]\,
      O => \S_AXI_RDATA[1]_i_2_n_0\
    );
\S_AXI_RDATA[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(20),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(20),
      I4 => \^q\(20),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[20]_i_1_n_0\
    );
\S_AXI_RDATA[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(21),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(21),
      I4 => \^q\(21),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[21]_i_1_n_0\
    );
\S_AXI_RDATA[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(22),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(22),
      I4 => \^q\(22),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[22]_i_1_n_0\
    );
\S_AXI_RDATA[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(23),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(23),
      I4 => \^q\(23),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[23]_i_1_n_0\
    );
\S_AXI_RDATA[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(24),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(24),
      I4 => \^q\(24),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[24]_i_1_n_0\
    );
\S_AXI_RDATA[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(25),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(25),
      I4 => \^q\(25),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[25]_i_1_n_0\
    );
\S_AXI_RDATA[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(26),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(26),
      I4 => \^q\(26),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[26]_i_1_n_0\
    );
\S_AXI_RDATA[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(27),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(27),
      I4 => \^q\(27),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[27]_i_1_n_0\
    );
\S_AXI_RDATA[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(28),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(28),
      I4 => \^q\(28),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[28]_i_1_n_0\
    );
\S_AXI_RDATA[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(29),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(29),
      I4 => \^q\(29),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[29]_i_1_n_0\
    );
\S_AXI_RDATA[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^q\(2),
      I1 => \S_AXI_RDATA[31]_i_5_n_0\,
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(2),
      I4 => \S_AXI_RDATA[2]_i_2_n_0\,
      O => \S_AXI_RDATA[2]_i_1_n_0\
    );
\S_AXI_RDATA[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^data1\(2),
      I1 => rVersionNr(2),
      I2 => \rReadAddr_reg_n_0_[2]\,
      I3 => stmRead(2),
      I4 => \S_AXI_RRESP[1]_i_2_n_0\,
      I5 => \rReadAddr_reg_n_0_[3]\,
      O => \S_AXI_RDATA[2]_i_2_n_0\
    );
\S_AXI_RDATA[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(30),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(30),
      I4 => \^q\(30),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[30]_i_1_n_0\
    );
\S_AXI_RDATA[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => stmRead(0),
      I1 => stmRead(2),
      O => \S_AXI_RDATA[31]_i_1_n_0\
    );
\S_AXI_RDATA[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(31),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(31),
      I4 => \^q\(31),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[31]_i_2_n_0\
    );
\S_AXI_RDATA[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \rReadAddr_reg_n_0_[2]\,
      I1 => stmRead(2),
      I2 => \S_AXI_RRESP[1]_i_2_n_0\,
      I3 => \rReadAddr_reg_n_0_[3]\,
      O => \S_AXI_RDATA[31]_i_3_n_0\
    );
\S_AXI_RDATA[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \rReadAddr_reg_n_0_[2]\,
      I1 => stmRead(2),
      I2 => \S_AXI_RRESP[1]_i_2_n_0\,
      I3 => \rReadAddr_reg_n_0_[3]\,
      O => \S_AXI_RDATA[31]_i_4_n_0\
    );
\S_AXI_RDATA[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \rReadAddr_reg_n_0_[2]\,
      I1 => stmRead(2),
      I2 => \S_AXI_RRESP[1]_i_2_n_0\,
      I3 => \rReadAddr_reg_n_0_[3]\,
      O => \S_AXI_RDATA[31]_i_5_n_0\
    );
\S_AXI_RDATA[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^q\(3),
      I1 => \S_AXI_RDATA[31]_i_5_n_0\,
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(3),
      I4 => \S_AXI_RDATA[3]_i_2_n_0\,
      O => \S_AXI_RDATA[3]_i_1_n_0\
    );
\S_AXI_RDATA[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AC00"
    )
        port map (
      I0 => \^data1\(3),
      I1 => rVersionNr(3),
      I2 => \rReadAddr_reg_n_0_[2]\,
      I3 => stmRead(2),
      I4 => \S_AXI_RRESP[1]_i_2_n_0\,
      I5 => \rReadAddr_reg_n_0_[3]\,
      O => \S_AXI_RDATA[3]_i_2_n_0\
    );
\S_AXI_RDATA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(4),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(4),
      I4 => \^q\(4),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[4]_i_1_n_0\
    );
\S_AXI_RDATA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(5),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(5),
      I4 => \^q\(5),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[5]_i_1_n_0\
    );
\S_AXI_RDATA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(6),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(6),
      I4 => \^q\(6),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[6]_i_1_n_0\
    );
\S_AXI_RDATA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(7),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(7),
      I4 => \^q\(7),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[7]_i_1_n_0\
    );
\S_AXI_RDATA[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(8),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(8),
      I4 => \^q\(8),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[8]_i_1_n_0\
    );
\S_AXI_RDATA[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => rVersionNr(9),
      I2 => \S_AXI_RDATA[31]_i_4_n_0\,
      I3 => rCTSValue(9),
      I4 => \^q\(9),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => \S_AXI_RDATA[9]_i_1_n_0\
    );
\S_AXI_RDATA_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[0]_i_1_n_0\,
      Q => axi_rdata(0)
    );
\S_AXI_RDATA_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[10]_i_1_n_0\,
      Q => axi_rdata(10)
    );
\S_AXI_RDATA_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[11]_i_1_n_0\,
      Q => axi_rdata(11)
    );
\S_AXI_RDATA_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[12]_i_1_n_0\,
      Q => axi_rdata(12)
    );
\S_AXI_RDATA_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[13]_i_1_n_0\,
      Q => axi_rdata(13)
    );
\S_AXI_RDATA_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[14]_i_1_n_0\,
      Q => axi_rdata(14)
    );
\S_AXI_RDATA_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[15]_i_1_n_0\,
      Q => axi_rdata(15)
    );
\S_AXI_RDATA_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[16]_i_1_n_0\,
      Q => axi_rdata(16)
    );
\S_AXI_RDATA_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[17]_i_1_n_0\,
      Q => axi_rdata(17)
    );
\S_AXI_RDATA_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[18]_i_1_n_0\,
      Q => axi_rdata(18)
    );
\S_AXI_RDATA_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[19]_i_1_n_0\,
      Q => axi_rdata(19)
    );
\S_AXI_RDATA_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[1]_i_1_n_0\,
      Q => axi_rdata(1)
    );
\S_AXI_RDATA_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[20]_i_1_n_0\,
      Q => axi_rdata(20)
    );
\S_AXI_RDATA_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[21]_i_1_n_0\,
      Q => axi_rdata(21)
    );
\S_AXI_RDATA_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[22]_i_1_n_0\,
      Q => axi_rdata(22)
    );
\S_AXI_RDATA_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[23]_i_1_n_0\,
      Q => axi_rdata(23)
    );
\S_AXI_RDATA_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[24]_i_1_n_0\,
      Q => axi_rdata(24)
    );
\S_AXI_RDATA_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[25]_i_1_n_0\,
      Q => axi_rdata(25)
    );
\S_AXI_RDATA_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[26]_i_1_n_0\,
      Q => axi_rdata(26)
    );
\S_AXI_RDATA_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[27]_i_1_n_0\,
      Q => axi_rdata(27)
    );
\S_AXI_RDATA_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[28]_i_1_n_0\,
      Q => axi_rdata(28)
    );
\S_AXI_RDATA_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[29]_i_1_n_0\,
      Q => axi_rdata(29)
    );
\S_AXI_RDATA_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[2]_i_1_n_0\,
      Q => axi_rdata(2)
    );
\S_AXI_RDATA_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[30]_i_1_n_0\,
      Q => axi_rdata(30)
    );
\S_AXI_RDATA_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[31]_i_2_n_0\,
      Q => axi_rdata(31)
    );
\S_AXI_RDATA_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[3]_i_1_n_0\,
      Q => axi_rdata(3)
    );
\S_AXI_RDATA_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[4]_i_1_n_0\,
      Q => axi_rdata(4)
    );
\S_AXI_RDATA_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[5]_i_1_n_0\,
      Q => axi_rdata(5)
    );
\S_AXI_RDATA_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[6]_i_1_n_0\,
      Q => axi_rdata(6)
    );
\S_AXI_RDATA_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[7]_i_1_n_0\,
      Q => axi_rdata(7)
    );
\S_AXI_RDATA_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[8]_i_1_n_0\,
      Q => axi_rdata(8)
    );
\S_AXI_RDATA_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RDATA[9]_i_1_n_0\,
      Q => axi_rdata(9)
    );
\S_AXI_RRESP[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S_AXI_RRESP[1]_i_2_n_0\,
      I1 => stmRead(2),
      O => \S_AXI_RRESP[1]_i_1_n_0\
    );
\S_AXI_RRESP[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rReadAddr(6),
      I1 => rReadAddr(7),
      I2 => rReadAddr(4),
      I3 => rReadAddr(5),
      I4 => \rReadAddr_reg_n_0_[1]\,
      I5 => \rReadAddr_reg_n_0_[0]\,
      O => \S_AXI_RRESP[1]_i_2_n_0\
    );
\S_AXI_RRESP_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \S_AXI_RRESP[1]_i_1_n_0\,
      Q => axi_rresp(0)
    );
S_AXI_RVALID_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDCFDDCC"
    )
        port map (
      I0 => axi_rready,
      I1 => stmRead(2),
      I2 => stmRead(0),
      I3 => stmRead(3),
      I4 => \^axi_rvalid\,
      O => S_AXI_RVALID_i_1_n_0
    );
S_AXI_RVALID_reg: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => S_AXI_RVALID_i_1_n_0,
      Q => \^axi_rvalid\
    );
S_AXI_WREADY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF443044"
    )
        port map (
      I0 => axi_wvalid,
      I1 => stmWrite(1),
      I2 => axi_awvalid,
      I3 => stmWrite(0),
      I4 => \^s_axi_wready_reg_0\,
      O => S_AXI_WREADY_i_1_n_0
    );
S_AXI_WREADY_reg: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => S_AXI_WREADY_i_1_n_0,
      Q => \^s_axi_wready_reg_0\
    );
rACR_Sel_reg: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rEnab_ACR,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(1),
      Q => \^data1\(1)
    );
rAud_Reset_reg: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rEnab_ACR,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(2),
      Q => \^data1\(2)
    );
\rCKEDivVal[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => axi_wvalid,
      I1 => \^s_axi_wready_reg_0\,
      I2 => \S_AXI_BRESP[1]_i_2_n_0\,
      I3 => \rWriteAddr_reg_n_0_[2]\,
      I4 => \rWriteAddr_reg_n_0_[4]\,
      I5 => \rWriteAddr_reg_n_0_[3]\,
      O => \rCKEDivVal[2]_i_1_n_0\
    );
\rCKEDivVal_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => \rCKEDivVal[2]_i_1_n_0\,
      D => axi_wdata(0),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => \rCKEDivVal_reg[2]_0\(0)
    );
\rCKEDivVal_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => \rCKEDivVal[2]_i_1_n_0\,
      D => axi_wdata(1),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => \rCKEDivVal_reg[2]_0\(1)
    );
\rCKEDivVal_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \rCKEDivVal[2]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(2),
      Q => \rCKEDivVal_reg[2]_0\(2)
    );
\rCTSValue_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(0),
      Q => rCTSValue(0)
    );
\rCTSValue_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(10),
      Q => rCTSValue(10)
    );
\rCTSValue_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(11),
      Q => rCTSValue(11)
    );
\rCTSValue_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(12),
      Q => rCTSValue(12)
    );
\rCTSValue_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(13),
      Q => rCTSValue(13)
    );
\rCTSValue_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(14),
      Q => rCTSValue(14)
    );
\rCTSValue_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(15),
      Q => rCTSValue(15)
    );
\rCTSValue_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(16),
      Q => rCTSValue(16)
    );
\rCTSValue_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(17),
      Q => rCTSValue(17)
    );
\rCTSValue_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(18),
      Q => rCTSValue(18)
    );
\rCTSValue_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(19),
      Q => rCTSValue(19)
    );
\rCTSValue_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(1),
      Q => rCTSValue(1)
    );
\rCTSValue_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(20),
      Q => rCTSValue(20)
    );
\rCTSValue_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(21),
      Q => rCTSValue(21)
    );
\rCTSValue_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(22),
      Q => rCTSValue(22)
    );
\rCTSValue_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(23),
      Q => rCTSValue(23)
    );
\rCTSValue_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(24),
      Q => rCTSValue(24)
    );
\rCTSValue_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(25),
      Q => rCTSValue(25)
    );
\rCTSValue_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(26),
      Q => rCTSValue(26)
    );
\rCTSValue_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(27),
      Q => rCTSValue(27)
    );
\rCTSValue_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(28),
      Q => rCTSValue(28)
    );
\rCTSValue_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(29),
      Q => rCTSValue(29)
    );
\rCTSValue_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(2),
      Q => rCTSValue(2)
    );
\rCTSValue_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(30),
      Q => rCTSValue(30)
    );
\rCTSValue_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(31),
      Q => rCTSValue(31)
    );
\rCTSValue_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(3),
      Q => rCTSValue(3)
    );
\rCTSValue_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(4),
      Q => rCTSValue(4)
    );
\rCTSValue_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(5),
      Q => rCTSValue(5)
    );
\rCTSValue_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(6),
      Q => rCTSValue(6)
    );
\rCTSValue_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(7),
      Q => rCTSValue(7)
    );
\rCTSValue_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(8),
      Q => rCTSValue(8)
    );
\rCTSValue_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => D(9),
      Q => rCTSValue(9)
    );
rEnab_ACR_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => axi_wvalid,
      I1 => \^s_axi_wready_reg_0\,
      I2 => \S_AXI_BRESP[1]_i_2_n_0\,
      I3 => \rWriteAddr_reg_n_0_[2]\,
      I4 => \rWriteAddr_reg_n_0_[3]\,
      I5 => \rWriteAddr_reg_n_0_[4]\,
      O => rEnab_ACR
    );
rEnab_ACR_reg: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rEnab_ACR,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(0),
      Q => \^data1\(0)
    );
\rNValue[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => axi_wvalid,
      I1 => \^s_axi_wready_reg_0\,
      I2 => \S_AXI_BRESP[1]_i_2_n_0\,
      I3 => \rWriteAddr_reg_n_0_[2]\,
      I4 => \rWriteAddr_reg_n_0_[3]\,
      I5 => \rWriteAddr_reg_n_0_[4]\,
      O => rNValue
    );
\rNValue_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(0),
      Q => \^q\(0)
    );
\rNValue_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(10),
      Q => \^q\(10)
    );
\rNValue_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(11),
      Q => \^q\(11)
    );
\rNValue_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(12),
      Q => \^q\(12)
    );
\rNValue_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(13),
      Q => \^q\(13)
    );
\rNValue_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(14),
      Q => \^q\(14)
    );
\rNValue_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(15),
      Q => \^q\(15)
    );
\rNValue_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(16),
      Q => \^q\(16)
    );
\rNValue_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(17),
      Q => \^q\(17)
    );
\rNValue_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(18),
      Q => \^q\(18)
    );
\rNValue_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(19),
      Q => \^q\(19)
    );
\rNValue_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(1),
      Q => \^q\(1)
    );
\rNValue_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(20),
      Q => \^q\(20)
    );
\rNValue_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(21),
      Q => \^q\(21)
    );
\rNValue_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(22),
      Q => \^q\(22)
    );
\rNValue_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(23),
      Q => \^q\(23)
    );
\rNValue_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(24),
      Q => \^q\(24)
    );
\rNValue_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(25),
      Q => \^q\(25)
    );
\rNValue_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(26),
      Q => \^q\(26)
    );
\rNValue_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(27),
      Q => \^q\(27)
    );
\rNValue_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(28),
      Q => \^q\(28)
    );
\rNValue_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(29),
      Q => \^q\(29)
    );
\rNValue_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(2),
      Q => \^q\(2)
    );
\rNValue_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(30),
      Q => \^q\(30)
    );
\rNValue_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(31),
      Q => \^q\(31)
    );
\rNValue_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(3),
      Q => \^q\(3)
    );
\rNValue_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(4),
      Q => \^q\(4)
    );
\rNValue_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(5),
      Q => \^q\(5)
    );
\rNValue_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(6),
      Q => \^q\(6)
    );
\rNValue_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(7),
      Q => \^q\(7)
    );
\rNValue_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(8),
      Q => \^q\(8)
    );
\rNValue_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rNValue,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(9),
      Q => \^q\(9)
    );
\rReadAddr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => axi_araddr(0),
      O => \rReadAddr[0]_i_1_n_0\
    );
\rReadAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => axi_araddr(1),
      O => \rReadAddr[1]_i_1_n_0\
    );
\rReadAddr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => axi_araddr(2),
      O => \rReadAddr[2]_i_1_n_0\
    );
\rReadAddr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => axi_araddr(3),
      O => \rReadAddr[3]_i_1_n_0\
    );
\rReadAddr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => axi_araddr(4),
      O => \rReadAddr[4]_i_1_n_0\
    );
\rReadAddr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => axi_araddr(5),
      O => \rReadAddr[5]_i_1_n_0\
    );
\rReadAddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => axi_araddr(6),
      O => \rReadAddr[6]_i_1_n_0\
    );
\rReadAddr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => stmRead(1),
      I1 => axi_arvalid,
      I2 => stmRead(0),
      O => \rReadAddr[7]_i_1_n_0\
    );
\rReadAddr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => axi_araddr(7),
      O => \rReadAddr[7]_i_2_n_0\
    );
\rReadAddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \rReadAddr[0]_i_1_n_0\,
      Q => \rReadAddr_reg_n_0_[0]\
    );
\rReadAddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \rReadAddr[1]_i_1_n_0\,
      Q => \rReadAddr_reg_n_0_[1]\
    );
\rReadAddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \rReadAddr[2]_i_1_n_0\,
      Q => \rReadAddr_reg_n_0_[2]\
    );
\rReadAddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \rReadAddr[3]_i_1_n_0\,
      Q => \rReadAddr_reg_n_0_[3]\
    );
\rReadAddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \rReadAddr[4]_i_1_n_0\,
      Q => rReadAddr(4)
    );
\rReadAddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \rReadAddr[5]_i_1_n_0\,
      Q => rReadAddr(5)
    );
\rReadAddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \rReadAddr[6]_i_1_n_0\,
      Q => rReadAddr(6)
    );
\rReadAddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => \rReadAddr[7]_i_2_n_0\,
      Q => rReadAddr(7)
    );
rTMDSClkRatio_reg: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rEnab_ACR,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(3),
      Q => \^data1\(3)
    );
\rVersionNr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => axi_wvalid,
      I1 => \^s_axi_wready_reg_0\,
      I2 => \S_AXI_BRESP[1]_i_2_n_0\,
      I3 => \rWriteAddr_reg_n_0_[2]\,
      I4 => \rWriteAddr_reg_n_0_[3]\,
      I5 => \rWriteAddr_reg_n_0_[4]\,
      O => rVersionNr_0
    );
\rVersionNr_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(0),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(0)
    );
\rVersionNr_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(10),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(10)
    );
\rVersionNr_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(11),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(11)
    );
\rVersionNr_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(12),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(12)
    );
\rVersionNr_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(13),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(13)
    );
\rVersionNr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(14),
      Q => rVersionNr(14)
    );
\rVersionNr_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(15),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(15)
    );
\rVersionNr_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(16),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(16)
    );
\rVersionNr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(17),
      Q => rVersionNr(17)
    );
\rVersionNr_reg[18]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(18),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(18)
    );
\rVersionNr_reg[19]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(19),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(19)
    );
\rVersionNr_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(1),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(1)
    );
\rVersionNr_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(20),
      Q => rVersionNr(20)
    );
\rVersionNr_reg[21]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(21),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(21)
    );
\rVersionNr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(22),
      Q => rVersionNr(22)
    );
\rVersionNr_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(23),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(23)
    );
\rVersionNr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(24),
      Q => rVersionNr(24)
    );
\rVersionNr_reg[25]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(25),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(25)
    );
\rVersionNr_reg[26]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(26),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(26)
    );
\rVersionNr_reg[27]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(27),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(27)
    );
\rVersionNr_reg[28]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(28),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(28)
    );
\rVersionNr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(29),
      Q => rVersionNr(29)
    );
\rVersionNr_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(2),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(2)
    );
\rVersionNr_reg[30]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(30),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(30)
    );
\rVersionNr_reg[31]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(31),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(31)
    );
\rVersionNr_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(3),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(3)
    );
\rVersionNr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(4),
      Q => rVersionNr(4)
    );
\rVersionNr_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(5),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(5)
    );
\rVersionNr_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(6),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(6)
    );
\rVersionNr_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(7),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(7)
    );
\rVersionNr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_wdata(8),
      Q => rVersionNr(8)
    );
\rVersionNr_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => axi_aclk,
      CE => rVersionNr_0,
      D => axi_wdata(9),
      PRE => S_AXI_AWREADY_i_2_n_0,
      Q => rVersionNr(9)
    );
\rWriteAddr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => stmWrite(0),
      I1 => axi_awvalid,
      I2 => stmWrite(1),
      O => rWriteAddr
    );
\rWriteAddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rWriteAddr,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_awaddr(0),
      Q => \rWriteAddr_reg_n_0_[0]\
    );
\rWriteAddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rWriteAddr,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_awaddr(1),
      Q => \rWriteAddr_reg_n_0_[1]\
    );
\rWriteAddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rWriteAddr,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_awaddr(2),
      Q => \rWriteAddr_reg_n_0_[2]\
    );
\rWriteAddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rWriteAddr,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_awaddr(3),
      Q => \rWriteAddr_reg_n_0_[3]\
    );
\rWriteAddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rWriteAddr,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_awaddr(4),
      Q => \rWriteAddr_reg_n_0_[4]\
    );
\rWriteAddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rWriteAddr,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_awaddr(5),
      Q => p_0_in0
    );
\rWriteAddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rWriteAddr,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_awaddr(6),
      Q => \rWriteAddr_reg_n_0_[6]\
    );
\rWriteAddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => rWriteAddr,
      CLR => S_AXI_AWREADY_i_2_n_0,
      D => axi_awaddr(7),
      Q => \rWriteAddr_reg_n_0_[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross is
  port (
    \rOut_Data_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_aclk : in STD_LOGIC;
    hdmi_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross is
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal \rIn_ACK_Sync_reg_n_0_[0]\ : STD_LOGIC;
  signal rIn_DValid : STD_LOGIC;
  signal \rIn_DValid_i_1__1_n_0\ : STD_LOGIC;
  signal rIn_Data0 : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[0]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[10]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[11]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[12]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[13]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[14]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[15]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[16]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[17]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[18]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[19]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[1]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[20]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[21]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[22]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[23]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[24]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[25]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[26]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[27]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[28]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[29]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[2]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[30]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[31]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[3]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[4]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[5]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[6]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[7]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[8]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[9]\ : STD_LOGIC;
  signal rOut_ACK : STD_LOGIC;
  signal \rOut_DValid_Sync_reg_n_0_[0]\ : STD_LOGIC;
  signal rOut_Data0 : STD_LOGIC;
begin
\rIn_ACK_Sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => rOut_ACK,
      Q => \rIn_ACK_Sync_reg_n_0_[0]\,
      R => '0'
    );
\rIn_ACK_Sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \rIn_ACK_Sync_reg_n_0_[0]\,
      Q => p_0_in0_in,
      R => '0'
    );
\rIn_DValid_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0_in,
      O => \rIn_DValid_i_1__1_n_0\
    );
rIn_DValid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \rIn_DValid_i_1__1_n_0\,
      Q => rIn_DValid,
      R => '0'
    );
\rIn_Data[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => rIn_DValid,
      O => rIn_Data0
    );
\rIn_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(0),
      Q => \rIn_Data_reg_n_0_[0]\,
      R => '0'
    );
\rIn_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(10),
      Q => \rIn_Data_reg_n_0_[10]\,
      R => '0'
    );
\rIn_Data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(11),
      Q => \rIn_Data_reg_n_0_[11]\,
      R => '0'
    );
\rIn_Data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(12),
      Q => \rIn_Data_reg_n_0_[12]\,
      R => '0'
    );
\rIn_Data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(13),
      Q => \rIn_Data_reg_n_0_[13]\,
      R => '0'
    );
\rIn_Data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(14),
      Q => \rIn_Data_reg_n_0_[14]\,
      R => '0'
    );
\rIn_Data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(15),
      Q => \rIn_Data_reg_n_0_[15]\,
      R => '0'
    );
\rIn_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(16),
      Q => \rIn_Data_reg_n_0_[16]\,
      R => '0'
    );
\rIn_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(17),
      Q => \rIn_Data_reg_n_0_[17]\,
      R => '0'
    );
\rIn_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(18),
      Q => \rIn_Data_reg_n_0_[18]\,
      R => '0'
    );
\rIn_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(19),
      Q => \rIn_Data_reg_n_0_[19]\,
      R => '0'
    );
\rIn_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(1),
      Q => \rIn_Data_reg_n_0_[1]\,
      R => '0'
    );
\rIn_Data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(20),
      Q => \rIn_Data_reg_n_0_[20]\,
      R => '0'
    );
\rIn_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(21),
      Q => \rIn_Data_reg_n_0_[21]\,
      R => '0'
    );
\rIn_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(22),
      Q => \rIn_Data_reg_n_0_[22]\,
      R => '0'
    );
\rIn_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(23),
      Q => \rIn_Data_reg_n_0_[23]\,
      R => '0'
    );
\rIn_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(24),
      Q => \rIn_Data_reg_n_0_[24]\,
      R => '0'
    );
\rIn_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(25),
      Q => \rIn_Data_reg_n_0_[25]\,
      R => '0'
    );
\rIn_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(26),
      Q => \rIn_Data_reg_n_0_[26]\,
      R => '0'
    );
\rIn_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(27),
      Q => \rIn_Data_reg_n_0_[27]\,
      R => '0'
    );
\rIn_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(28),
      Q => \rIn_Data_reg_n_0_[28]\,
      R => '0'
    );
\rIn_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(29),
      Q => \rIn_Data_reg_n_0_[29]\,
      R => '0'
    );
\rIn_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(2),
      Q => \rIn_Data_reg_n_0_[2]\,
      R => '0'
    );
\rIn_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(30),
      Q => \rIn_Data_reg_n_0_[30]\,
      R => '0'
    );
\rIn_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(31),
      Q => \rIn_Data_reg_n_0_[31]\,
      R => '0'
    );
\rIn_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(3),
      Q => \rIn_Data_reg_n_0_[3]\,
      R => '0'
    );
\rIn_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(4),
      Q => \rIn_Data_reg_n_0_[4]\,
      R => '0'
    );
\rIn_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(5),
      Q => \rIn_Data_reg_n_0_[5]\,
      R => '0'
    );
\rIn_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(6),
      Q => \rIn_Data_reg_n_0_[6]\,
      R => '0'
    );
\rIn_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(7),
      Q => \rIn_Data_reg_n_0_[7]\,
      R => '0'
    );
\rIn_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(8),
      Q => \rIn_Data_reg_n_0_[8]\,
      R => '0'
    );
\rIn_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => Q(9),
      Q => \rIn_Data_reg_n_0_[9]\,
      R => '0'
    );
rOut_ACK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => p_0_in,
      Q => rOut_ACK,
      R => '0'
    );
\rOut_DValid_Sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => rIn_DValid,
      Q => \rOut_DValid_Sync_reg_n_0_[0]\,
      R => '0'
    );
\rOut_DValid_Sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \rOut_DValid_Sync_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
\rOut_Data[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in,
      I1 => rOut_ACK,
      O => rOut_Data0
    );
\rOut_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[0]\,
      Q => \rOut_Data_reg[31]_0\(0),
      R => '0'
    );
\rOut_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[10]\,
      Q => \rOut_Data_reg[31]_0\(10),
      R => '0'
    );
\rOut_Data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[11]\,
      Q => \rOut_Data_reg[31]_0\(11),
      R => '0'
    );
\rOut_Data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[12]\,
      Q => \rOut_Data_reg[31]_0\(12),
      R => '0'
    );
\rOut_Data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[13]\,
      Q => \rOut_Data_reg[31]_0\(13),
      R => '0'
    );
\rOut_Data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[14]\,
      Q => \rOut_Data_reg[31]_0\(14),
      R => '0'
    );
\rOut_Data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[15]\,
      Q => \rOut_Data_reg[31]_0\(15),
      R => '0'
    );
\rOut_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[16]\,
      Q => \rOut_Data_reg[31]_0\(16),
      R => '0'
    );
\rOut_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[17]\,
      Q => \rOut_Data_reg[31]_0\(17),
      R => '0'
    );
\rOut_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[18]\,
      Q => \rOut_Data_reg[31]_0\(18),
      R => '0'
    );
\rOut_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[19]\,
      Q => \rOut_Data_reg[31]_0\(19),
      R => '0'
    );
\rOut_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[1]\,
      Q => \rOut_Data_reg[31]_0\(1),
      R => '0'
    );
\rOut_Data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[20]\,
      Q => \rOut_Data_reg[31]_0\(20),
      R => '0'
    );
\rOut_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[21]\,
      Q => \rOut_Data_reg[31]_0\(21),
      R => '0'
    );
\rOut_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[22]\,
      Q => \rOut_Data_reg[31]_0\(22),
      R => '0'
    );
\rOut_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[23]\,
      Q => \rOut_Data_reg[31]_0\(23),
      R => '0'
    );
\rOut_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[24]\,
      Q => \rOut_Data_reg[31]_0\(24),
      R => '0'
    );
\rOut_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[25]\,
      Q => \rOut_Data_reg[31]_0\(25),
      R => '0'
    );
\rOut_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[26]\,
      Q => \rOut_Data_reg[31]_0\(26),
      R => '0'
    );
\rOut_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[27]\,
      Q => \rOut_Data_reg[31]_0\(27),
      R => '0'
    );
\rOut_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[28]\,
      Q => \rOut_Data_reg[31]_0\(28),
      R => '0'
    );
\rOut_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[29]\,
      Q => \rOut_Data_reg[31]_0\(29),
      R => '0'
    );
\rOut_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[2]\,
      Q => \rOut_Data_reg[31]_0\(2),
      R => '0'
    );
\rOut_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[30]\,
      Q => \rOut_Data_reg[31]_0\(30),
      R => '0'
    );
\rOut_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[31]\,
      Q => \rOut_Data_reg[31]_0\(31),
      R => '0'
    );
\rOut_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[3]\,
      Q => \rOut_Data_reg[31]_0\(3),
      R => '0'
    );
\rOut_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[4]\,
      Q => \rOut_Data_reg[31]_0\(4),
      R => '0'
    );
\rOut_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[5]\,
      Q => \rOut_Data_reg[31]_0\(5),
      R => '0'
    );
\rOut_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[6]\,
      Q => \rOut_Data_reg[31]_0\(6),
      R => '0'
    );
\rOut_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[7]\,
      Q => \rOut_Data_reg[31]_0\(7),
      R => '0'
    );
\rOut_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[8]\,
      Q => \rOut_Data_reg[31]_0\(8),
      R => '0'
    );
\rOut_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[9]\,
      Q => \rOut_Data_reg[31]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_clk : in STD_LOGIC;
    hdmi_clk : in STD_LOGIC;
    aud_acr_cts_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \aud_cts_val_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rIn_Data_reg[19]_0\ : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_0 : entity is "hdmi_acr_ctrl_v1_0_1_lib_data_clkcross";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_0 is
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal \rIn_ACK_Sync_reg_n_0_[0]\ : STD_LOGIC;
  signal rIn_DValid : STD_LOGIC;
  signal \rIn_DValid_i_1__2_n_0\ : STD_LOGIC;
  signal rIn_Data0 : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[0]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[10]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[11]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[12]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[13]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[14]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[15]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[16]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[17]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[18]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[19]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[1]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[2]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[3]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[4]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[5]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[6]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[7]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[8]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[9]\ : STD_LOGIC;
  signal rOut_ACK : STD_LOGIC;
  signal \rOut_DValid_Sync_reg_n_0_[0]\ : STD_LOGIC;
  signal rOut_Data0 : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[0]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[10]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[11]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[12]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[13]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[14]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[15]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[16]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[17]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[18]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[19]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[1]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[2]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[3]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[4]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[5]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[6]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[7]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[8]\ : STD_LOGIC;
  signal \rOut_Data_reg_n_0_[9]\ : STD_LOGIC;
begin
\aud_cts_val[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \rOut_Data_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => \aud_cts_val_reg[2]\(0),
      I3 => aud_acr_cts_in(0),
      O => D(0)
    );
\aud_cts_val[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(10),
      I1 => \rOut_Data_reg_n_0_[10]\,
      I2 => \rOut_Data_reg_n_0_[8]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(10)
    );
\aud_cts_val[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(11),
      I1 => \rOut_Data_reg_n_0_[11]\,
      I2 => \rOut_Data_reg_n_0_[9]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(11)
    );
\aud_cts_val[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(12),
      I1 => \rOut_Data_reg_n_0_[12]\,
      I2 => \rOut_Data_reg_n_0_[10]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(12)
    );
\aud_cts_val[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(13),
      I1 => \rOut_Data_reg_n_0_[13]\,
      I2 => \rOut_Data_reg_n_0_[11]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(13)
    );
\aud_cts_val[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(14),
      I1 => \rOut_Data_reg_n_0_[14]\,
      I2 => \rOut_Data_reg_n_0_[12]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(14)
    );
\aud_cts_val[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(15),
      I1 => \rOut_Data_reg_n_0_[15]\,
      I2 => \rOut_Data_reg_n_0_[13]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(15)
    );
\aud_cts_val[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(16),
      I1 => \rOut_Data_reg_n_0_[16]\,
      I2 => \rOut_Data_reg_n_0_[14]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(16)
    );
\aud_cts_val[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(17),
      I1 => \rOut_Data_reg_n_0_[17]\,
      I2 => \rOut_Data_reg_n_0_[15]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(17)
    );
\aud_cts_val[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(18),
      I1 => \rOut_Data_reg_n_0_[18]\,
      I2 => \rOut_Data_reg_n_0_[16]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(18)
    );
\aud_cts_val[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(19),
      I1 => \rOut_Data_reg_n_0_[19]\,
      I2 => \rOut_Data_reg_n_0_[17]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(19)
    );
\aud_cts_val[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \rOut_Data_reg_n_0_[1]\,
      I1 => Q(0),
      I2 => \aud_cts_val_reg[2]\(0),
      I3 => aud_acr_cts_in(1),
      O => D(1)
    );
\aud_cts_val[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(2),
      I1 => \rOut_Data_reg_n_0_[2]\,
      I2 => \rOut_Data_reg_n_0_[0]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(2)
    );
\aud_cts_val[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(3),
      I1 => \rOut_Data_reg_n_0_[3]\,
      I2 => \rOut_Data_reg_n_0_[1]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(3)
    );
\aud_cts_val[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(4),
      I1 => \rOut_Data_reg_n_0_[4]\,
      I2 => \rOut_Data_reg_n_0_[2]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(4)
    );
\aud_cts_val[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(5),
      I1 => \rOut_Data_reg_n_0_[5]\,
      I2 => \rOut_Data_reg_n_0_[3]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(5)
    );
\aud_cts_val[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(6),
      I1 => \rOut_Data_reg_n_0_[6]\,
      I2 => \rOut_Data_reg_n_0_[4]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(6)
    );
\aud_cts_val[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(7),
      I1 => \rOut_Data_reg_n_0_[7]\,
      I2 => \rOut_Data_reg_n_0_[5]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(7)
    );
\aud_cts_val[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(8),
      I1 => \rOut_Data_reg_n_0_[8]\,
      I2 => \rOut_Data_reg_n_0_[6]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(8)
    );
\aud_cts_val[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => aud_acr_cts_in(9),
      I1 => \rOut_Data_reg_n_0_[9]\,
      I2 => \rOut_Data_reg_n_0_[7]\,
      I3 => Q(0),
      I4 => \aud_cts_val_reg[2]\(0),
      O => D(9)
    );
\rIn_ACK_Sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => rOut_ACK,
      Q => \rIn_ACK_Sync_reg_n_0_[0]\,
      R => '0'
    );
\rIn_ACK_Sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \rIn_ACK_Sync_reg_n_0_[0]\,
      Q => p_0_in0_in,
      R => '0'
    );
\rIn_DValid_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0_in,
      O => \rIn_DValid_i_1__2_n_0\
    );
rIn_DValid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \rIn_DValid_i_1__2_n_0\,
      Q => rIn_DValid,
      R => '0'
    );
\rIn_Data[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => rIn_DValid,
      O => rIn_Data0
    );
\rIn_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(0),
      Q => \rIn_Data_reg_n_0_[0]\,
      R => '0'
    );
\rIn_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(10),
      Q => \rIn_Data_reg_n_0_[10]\,
      R => '0'
    );
\rIn_Data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(11),
      Q => \rIn_Data_reg_n_0_[11]\,
      R => '0'
    );
\rIn_Data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(12),
      Q => \rIn_Data_reg_n_0_[12]\,
      R => '0'
    );
\rIn_Data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(13),
      Q => \rIn_Data_reg_n_0_[13]\,
      R => '0'
    );
\rIn_Data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(14),
      Q => \rIn_Data_reg_n_0_[14]\,
      R => '0'
    );
\rIn_Data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(15),
      Q => \rIn_Data_reg_n_0_[15]\,
      R => '0'
    );
\rIn_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(16),
      Q => \rIn_Data_reg_n_0_[16]\,
      R => '0'
    );
\rIn_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(17),
      Q => \rIn_Data_reg_n_0_[17]\,
      R => '0'
    );
\rIn_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(18),
      Q => \rIn_Data_reg_n_0_[18]\,
      R => '0'
    );
\rIn_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(19),
      Q => \rIn_Data_reg_n_0_[19]\,
      R => '0'
    );
\rIn_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(1),
      Q => \rIn_Data_reg_n_0_[1]\,
      R => '0'
    );
\rIn_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(2),
      Q => \rIn_Data_reg_n_0_[2]\,
      R => '0'
    );
\rIn_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(3),
      Q => \rIn_Data_reg_n_0_[3]\,
      R => '0'
    );
\rIn_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(4),
      Q => \rIn_Data_reg_n_0_[4]\,
      R => '0'
    );
\rIn_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(5),
      Q => \rIn_Data_reg_n_0_[5]\,
      R => '0'
    );
\rIn_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(6),
      Q => \rIn_Data_reg_n_0_[6]\,
      R => '0'
    );
\rIn_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(7),
      Q => \rIn_Data_reg_n_0_[7]\,
      R => '0'
    );
\rIn_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(8),
      Q => \rIn_Data_reg_n_0_[8]\,
      R => '0'
    );
\rIn_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[19]_0\(9),
      Q => \rIn_Data_reg_n_0_[9]\,
      R => '0'
    );
rOut_ACK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      D => p_0_in,
      Q => rOut_ACK,
      R => '0'
    );
\rOut_DValid_Sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      D => rIn_DValid,
      Q => \rOut_DValid_Sync_reg_n_0_[0]\,
      R => '0'
    );
\rOut_DValid_Sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      D => \rOut_DValid_Sync_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
\rOut_Data[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in,
      I1 => rOut_ACK,
      O => rOut_Data0
    );
\rOut_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[0]\,
      Q => \rOut_Data_reg_n_0_[0]\,
      R => '0'
    );
\rOut_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[10]\,
      Q => \rOut_Data_reg_n_0_[10]\,
      R => '0'
    );
\rOut_Data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[11]\,
      Q => \rOut_Data_reg_n_0_[11]\,
      R => '0'
    );
\rOut_Data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[12]\,
      Q => \rOut_Data_reg_n_0_[12]\,
      R => '0'
    );
\rOut_Data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[13]\,
      Q => \rOut_Data_reg_n_0_[13]\,
      R => '0'
    );
\rOut_Data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[14]\,
      Q => \rOut_Data_reg_n_0_[14]\,
      R => '0'
    );
\rOut_Data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[15]\,
      Q => \rOut_Data_reg_n_0_[15]\,
      R => '0'
    );
\rOut_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[16]\,
      Q => \rOut_Data_reg_n_0_[16]\,
      R => '0'
    );
\rOut_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[17]\,
      Q => \rOut_Data_reg_n_0_[17]\,
      R => '0'
    );
\rOut_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[18]\,
      Q => \rOut_Data_reg_n_0_[18]\,
      R => '0'
    );
\rOut_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[19]\,
      Q => \rOut_Data_reg_n_0_[19]\,
      R => '0'
    );
\rOut_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[1]\,
      Q => \rOut_Data_reg_n_0_[1]\,
      R => '0'
    );
\rOut_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[2]\,
      Q => \rOut_Data_reg_n_0_[2]\,
      R => '0'
    );
\rOut_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[3]\,
      Q => \rOut_Data_reg_n_0_[3]\,
      R => '0'
    );
\rOut_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[4]\,
      Q => \rOut_Data_reg_n_0_[4]\,
      R => '0'
    );
\rOut_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[5]\,
      Q => \rOut_Data_reg_n_0_[5]\,
      R => '0'
    );
\rOut_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[6]\,
      Q => \rOut_Data_reg_n_0_[6]\,
      R => '0'
    );
\rOut_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[7]\,
      Q => \rOut_Data_reg_n_0_[7]\,
      R => '0'
    );
\rOut_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[8]\,
      Q => \rOut_Data_reg_n_0_[8]\,
      R => '0'
    );
\rOut_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[9]\,
      Q => \rOut_Data_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_1 is
  port (
    O : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \aud_rCycleCnt_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \aud_rCycleCnt_reg[23]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \aud_rCycleCnt_reg[31]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aud_rPulse : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \rOut_Data_reg[24]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \rOut_Data_reg[16]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \rOut_Data_reg[8]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aud_rCycleCnt_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aud_rCycleCnt_reg[31]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \aud_rCycleCnt_reg[31]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_clk : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    aud_rCycleCnt_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    aud_cke : in STD_LOGIC;
    aud_rPulse1 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \aud_n_val_reg[19]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aud_acr_n_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \rIn_Data_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_1 : entity is "hdmi_acr_ctrl_v1_0_1_lib_data_clkcross";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \aud_rCycleCnt[0]_i_10_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[0]_i_9_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[16]_i_6_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[16]_i_7_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[16]_i_8_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[16]_i_9_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[24]_i_2_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[24]_i_4_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[24]_i_5_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[24]_i_6_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[24]_i_7_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[24]_i_8_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[24]_i_9_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[8]_i_6_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[8]_i_7_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[8]_i_8_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt[8]_i_9_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \aud_rCycleCnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal \rIn_ACK_Sync_reg_n_0_[0]\ : STD_LOGIC;
  signal rIn_DValid : STD_LOGIC;
  signal rIn_DValid_i_1_n_0 : STD_LOGIC;
  signal rIn_Data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rIn_Data0 : STD_LOGIC;
  signal rOut_ACK : STD_LOGIC;
  signal \rOut_DValid_Sync_reg_n_0_[0]\ : STD_LOGIC;
  signal rOut_Data : STD_LOGIC_VECTOR ( 31 to 31 );
  signal rOut_Data0 : STD_LOGIC;
  signal \NLW_aud_rCycleCnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \aud_n_val[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \aud_n_val[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \aud_n_val[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \aud_n_val[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \aud_n_val[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \aud_n_val[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \aud_n_val[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \aud_n_val[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \aud_n_val[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \aud_n_val[18]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \aud_n_val[19]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \aud_n_val[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \aud_n_val[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \aud_n_val[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \aud_n_val[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \aud_n_val[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \aud_n_val[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \aud_n_val[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \aud_n_val[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \aud_n_val[9]_i_1\ : label is "soft_lutpair12";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \aud_rCycleCnt_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \aud_rCycleCnt_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \aud_rCycleCnt_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \aud_rCycleCnt_reg[8]_i_1\ : label is 16;
begin
  Q(30 downto 0) <= \^q\(30 downto 0);
\aud_n_val[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(0),
      O => D(0)
    );
\aud_n_val[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(10),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(10),
      O => D(10)
    );
\aud_n_val[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(11),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(11),
      O => D(11)
    );
\aud_n_val[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(12),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(12),
      O => D(12)
    );
\aud_n_val[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(13),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(13),
      O => D(13)
    );
\aud_n_val[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(14),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(14),
      O => D(14)
    );
\aud_n_val[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(15),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(15),
      O => D(15)
    );
\aud_n_val[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(16),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(16),
      O => D(16)
    );
\aud_n_val[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(17),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(17),
      O => D(17)
    );
\aud_n_val[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(18),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(18),
      O => D(18)
    );
\aud_n_val[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(19),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(19),
      O => D(19)
    );
\aud_n_val[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(1),
      O => D(1)
    );
\aud_n_val[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(2),
      O => D(2)
    );
\aud_n_val[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(3),
      O => D(3)
    );
\aud_n_val[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(4),
      O => D(4)
    );
\aud_n_val[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(5),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(5),
      O => D(5)
    );
\aud_n_val[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(6),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(6),
      O => D(6)
    );
\aud_n_val[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(7),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(7),
      O => D(7)
    );
\aud_n_val[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(8),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(8),
      O => D(8)
    );
\aud_n_val[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(9),
      I1 => \aud_n_val_reg[19]\(0),
      I2 => aud_acr_n_in(9),
      O => D(9)
    );
\aud_rCycleCnt[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aud_rCycleCnt_reg(0),
      I1 => CO(0),
      O => \aud_rCycleCnt[0]_i_10_n_0\
    );
\aud_rCycleCnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CO(0),
      O => \aud_rCycleCnt[0]_i_2_n_0\
    );
\aud_rCycleCnt[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(7),
      I1 => CO(0),
      O => \aud_rCycleCnt[0]_i_3_n_0\
    );
\aud_rCycleCnt[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(6),
      I1 => CO(0),
      O => \aud_rCycleCnt[0]_i_4_n_0\
    );
\aud_rCycleCnt[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(5),
      I1 => CO(0),
      O => \aud_rCycleCnt[0]_i_5_n_0\
    );
\aud_rCycleCnt[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(4),
      I1 => CO(0),
      O => \aud_rCycleCnt[0]_i_6_n_0\
    );
\aud_rCycleCnt[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(3),
      I1 => CO(0),
      O => \aud_rCycleCnt[0]_i_7_n_0\
    );
\aud_rCycleCnt[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(2),
      I1 => CO(0),
      O => \aud_rCycleCnt[0]_i_8_n_0\
    );
\aud_rCycleCnt[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(1),
      I1 => CO(0),
      O => \aud_rCycleCnt[0]_i_9_n_0\
    );
\aud_rCycleCnt[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(23),
      I1 => CO(0),
      O => \aud_rCycleCnt[16]_i_2_n_0\
    );
\aud_rCycleCnt[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(22),
      I1 => CO(0),
      O => \aud_rCycleCnt[16]_i_3_n_0\
    );
\aud_rCycleCnt[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(21),
      I1 => CO(0),
      O => \aud_rCycleCnt[16]_i_4_n_0\
    );
\aud_rCycleCnt[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(20),
      I1 => CO(0),
      O => \aud_rCycleCnt[16]_i_5_n_0\
    );
\aud_rCycleCnt[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(19),
      I1 => CO(0),
      O => \aud_rCycleCnt[16]_i_6_n_0\
    );
\aud_rCycleCnt[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(18),
      I1 => CO(0),
      O => \aud_rCycleCnt[16]_i_7_n_0\
    );
\aud_rCycleCnt[16]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(17),
      I1 => CO(0),
      O => \aud_rCycleCnt[16]_i_8_n_0\
    );
\aud_rCycleCnt[16]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(16),
      I1 => CO(0),
      O => \aud_rCycleCnt[16]_i_9_n_0\
    );
\aud_rCycleCnt[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(31),
      I1 => CO(0),
      O => \aud_rCycleCnt[24]_i_2_n_0\
    );
\aud_rCycleCnt[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(30),
      I1 => CO(0),
      O => \aud_rCycleCnt[24]_i_3_n_0\
    );
\aud_rCycleCnt[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(29),
      I1 => CO(0),
      O => \aud_rCycleCnt[24]_i_4_n_0\
    );
\aud_rCycleCnt[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(28),
      I1 => CO(0),
      O => \aud_rCycleCnt[24]_i_5_n_0\
    );
\aud_rCycleCnt[24]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(27),
      I1 => CO(0),
      O => \aud_rCycleCnt[24]_i_6_n_0\
    );
\aud_rCycleCnt[24]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(26),
      I1 => CO(0),
      O => \aud_rCycleCnt[24]_i_7_n_0\
    );
\aud_rCycleCnt[24]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(25),
      I1 => CO(0),
      O => \aud_rCycleCnt[24]_i_8_n_0\
    );
\aud_rCycleCnt[24]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(24),
      I1 => CO(0),
      O => \aud_rCycleCnt[24]_i_9_n_0\
    );
\aud_rCycleCnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(15),
      I1 => CO(0),
      O => \aud_rCycleCnt[8]_i_2_n_0\
    );
\aud_rCycleCnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(14),
      I1 => CO(0),
      O => \aud_rCycleCnt[8]_i_3_n_0\
    );
\aud_rCycleCnt[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(13),
      I1 => CO(0),
      O => \aud_rCycleCnt[8]_i_4_n_0\
    );
\aud_rCycleCnt[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(12),
      I1 => CO(0),
      O => \aud_rCycleCnt[8]_i_5_n_0\
    );
\aud_rCycleCnt[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(11),
      I1 => CO(0),
      O => \aud_rCycleCnt[8]_i_6_n_0\
    );
\aud_rCycleCnt[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(10),
      I1 => CO(0),
      O => \aud_rCycleCnt[8]_i_7_n_0\
    );
\aud_rCycleCnt[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(9),
      I1 => CO(0),
      O => \aud_rCycleCnt[8]_i_8_n_0\
    );
\aud_rCycleCnt[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(8),
      I1 => CO(0),
      O => \aud_rCycleCnt[8]_i_9_n_0\
    );
\aud_rCycleCnt_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \aud_rCycleCnt_reg[0]_i_1_n_0\,
      CO(6) => \aud_rCycleCnt_reg[0]_i_1_n_1\,
      CO(5) => \aud_rCycleCnt_reg[0]_i_1_n_2\,
      CO(4) => \aud_rCycleCnt_reg[0]_i_1_n_3\,
      CO(3) => \aud_rCycleCnt_reg[0]_i_1_n_4\,
      CO(2) => \aud_rCycleCnt_reg[0]_i_1_n_5\,
      CO(1) => \aud_rCycleCnt_reg[0]_i_1_n_6\,
      CO(0) => \aud_rCycleCnt_reg[0]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \aud_rCycleCnt[0]_i_2_n_0\,
      O(7 downto 0) => O(7 downto 0),
      S(7) => \aud_rCycleCnt[0]_i_3_n_0\,
      S(6) => \aud_rCycleCnt[0]_i_4_n_0\,
      S(5) => \aud_rCycleCnt[0]_i_5_n_0\,
      S(4) => \aud_rCycleCnt[0]_i_6_n_0\,
      S(3) => \aud_rCycleCnt[0]_i_7_n_0\,
      S(2) => \aud_rCycleCnt[0]_i_8_n_0\,
      S(1) => \aud_rCycleCnt[0]_i_9_n_0\,
      S(0) => \aud_rCycleCnt[0]_i_10_n_0\
    );
\aud_rCycleCnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \aud_rCycleCnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \aud_rCycleCnt_reg[16]_i_1_n_0\,
      CO(6) => \aud_rCycleCnt_reg[16]_i_1_n_1\,
      CO(5) => \aud_rCycleCnt_reg[16]_i_1_n_2\,
      CO(4) => \aud_rCycleCnt_reg[16]_i_1_n_3\,
      CO(3) => \aud_rCycleCnt_reg[16]_i_1_n_4\,
      CO(2) => \aud_rCycleCnt_reg[16]_i_1_n_5\,
      CO(1) => \aud_rCycleCnt_reg[16]_i_1_n_6\,
      CO(0) => \aud_rCycleCnt_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \aud_rCycleCnt_reg[23]\(7 downto 0),
      S(7) => \aud_rCycleCnt[16]_i_2_n_0\,
      S(6) => \aud_rCycleCnt[16]_i_3_n_0\,
      S(5) => \aud_rCycleCnt[16]_i_4_n_0\,
      S(4) => \aud_rCycleCnt[16]_i_5_n_0\,
      S(3) => \aud_rCycleCnt[16]_i_6_n_0\,
      S(2) => \aud_rCycleCnt[16]_i_7_n_0\,
      S(1) => \aud_rCycleCnt[16]_i_8_n_0\,
      S(0) => \aud_rCycleCnt[16]_i_9_n_0\
    );
\aud_rCycleCnt_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \aud_rCycleCnt_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_aud_rCycleCnt_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \aud_rCycleCnt_reg[24]_i_1_n_1\,
      CO(5) => \aud_rCycleCnt_reg[24]_i_1_n_2\,
      CO(4) => \aud_rCycleCnt_reg[24]_i_1_n_3\,
      CO(3) => \aud_rCycleCnt_reg[24]_i_1_n_4\,
      CO(2) => \aud_rCycleCnt_reg[24]_i_1_n_5\,
      CO(1) => \aud_rCycleCnt_reg[24]_i_1_n_6\,
      CO(0) => \aud_rCycleCnt_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \aud_rCycleCnt_reg[31]\(7 downto 0),
      S(7) => \aud_rCycleCnt[24]_i_2_n_0\,
      S(6) => \aud_rCycleCnt[24]_i_3_n_0\,
      S(5) => \aud_rCycleCnt[24]_i_4_n_0\,
      S(4) => \aud_rCycleCnt[24]_i_5_n_0\,
      S(3) => \aud_rCycleCnt[24]_i_6_n_0\,
      S(2) => \aud_rCycleCnt[24]_i_7_n_0\,
      S(1) => \aud_rCycleCnt[24]_i_8_n_0\,
      S(0) => \aud_rCycleCnt[24]_i_9_n_0\
    );
\aud_rCycleCnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \aud_rCycleCnt_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \aud_rCycleCnt_reg[8]_i_1_n_0\,
      CO(6) => \aud_rCycleCnt_reg[8]_i_1_n_1\,
      CO(5) => \aud_rCycleCnt_reg[8]_i_1_n_2\,
      CO(4) => \aud_rCycleCnt_reg[8]_i_1_n_3\,
      CO(3) => \aud_rCycleCnt_reg[8]_i_1_n_4\,
      CO(2) => \aud_rCycleCnt_reg[8]_i_1_n_5\,
      CO(1) => \aud_rCycleCnt_reg[8]_i_1_n_6\,
      CO(0) => \aud_rCycleCnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \aud_rCycleCnt_reg[15]\(7 downto 0),
      S(7) => \aud_rCycleCnt[8]_i_2_n_0\,
      S(6) => \aud_rCycleCnt[8]_i_3_n_0\,
      S(5) => \aud_rCycleCnt[8]_i_4_n_0\,
      S(4) => \aud_rCycleCnt[8]_i_5_n_0\,
      S(3) => \aud_rCycleCnt[8]_i_6_n_0\,
      S(2) => \aud_rCycleCnt[8]_i_7_n_0\,
      S(1) => \aud_rCycleCnt[8]_i_8_n_0\,
      S(0) => \aud_rCycleCnt[8]_i_9_n_0\
    );
\aud_rPulse0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(31),
      I1 => aud_rPulse1(8),
      I2 => aud_rCycleCnt_reg(30),
      I3 => aud_rPulse1(7),
      O => \aud_rCycleCnt_reg[31]_0\(3)
    );
\aud_rPulse0_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(6),
      I1 => aud_rCycleCnt_reg(29),
      I2 => aud_rPulse1(5),
      I3 => aud_rCycleCnt_reg(28),
      O => \aud_rCycleCnt_reg[31]_1\(2)
    );
\aud_rPulse0_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(4),
      I1 => aud_rCycleCnt_reg(27),
      I2 => aud_rPulse1(3),
      I3 => aud_rCycleCnt_reg(26),
      O => \aud_rCycleCnt_reg[31]_1\(1)
    );
\aud_rPulse0_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(2),
      I1 => aud_rCycleCnt_reg(25),
      I2 => aud_rPulse1(1),
      I3 => aud_rCycleCnt_reg(24),
      O => \aud_rCycleCnt_reg[31]_1\(0)
    );
\aud_rPulse0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(29),
      I1 => aud_rPulse1(6),
      I2 => aud_rCycleCnt_reg(28),
      I3 => aud_rPulse1(5),
      O => \aud_rCycleCnt_reg[31]_0\(2)
    );
\aud_rPulse0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(27),
      I1 => aud_rPulse1(4),
      I2 => aud_rCycleCnt_reg(26),
      I3 => aud_rPulse1(3),
      O => \aud_rCycleCnt_reg[31]_0\(1)
    );
\aud_rPulse0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(25),
      I1 => aud_rPulse1(2),
      I2 => aud_rCycleCnt_reg(24),
      I3 => aud_rPulse1(1),
      O => \aud_rCycleCnt_reg[31]_0\(0)
    );
\aud_rPulse0_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(8),
      I1 => aud_rCycleCnt_reg(31),
      I2 => aud_rPulse1(7),
      I3 => aud_rCycleCnt_reg(30),
      O => \aud_rCycleCnt_reg[31]_1\(3)
    );
aud_rPulse0_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => aud_rCycleCnt_reg(0),
      I1 => \^q\(0),
      I2 => aud_rPulse1(0),
      I3 => aud_rCycleCnt_reg(1),
      O => \aud_rCycleCnt_reg[0]\(0)
    );
aud_rPulse0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B222"
    )
        port map (
      I0 => aud_rCycleCnt_reg(1),
      I1 => aud_rPulse1(0),
      I2 => aud_rCycleCnt_reg(0),
      I3 => \^q\(0),
      O => DI(0)
    );
\aud_rPulse1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(16),
      O => \rOut_Data_reg[16]_0\(7)
    );
\aud_rPulse1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(15),
      O => \rOut_Data_reg[16]_0\(6)
    );
\aud_rPulse1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(14),
      O => \rOut_Data_reg[16]_0\(5)
    );
\aud_rPulse1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(13),
      O => \rOut_Data_reg[16]_0\(4)
    );
\aud_rPulse1_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(12),
      O => \rOut_Data_reg[16]_0\(3)
    );
\aud_rPulse1_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(11),
      O => \rOut_Data_reg[16]_0\(2)
    );
\aud_rPulse1_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(10),
      O => \rOut_Data_reg[16]_0\(1)
    );
\aud_rPulse1_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      O => \rOut_Data_reg[16]_0\(0)
    );
\aud_rPulse1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(24),
      O => \rOut_Data_reg[24]_0\(7)
    );
\aud_rPulse1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(23),
      O => \rOut_Data_reg[24]_0\(6)
    );
\aud_rPulse1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(22),
      O => \rOut_Data_reg[24]_0\(5)
    );
\aud_rPulse1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(21),
      O => \rOut_Data_reg[24]_0\(4)
    );
\aud_rPulse1_carry__1_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(20),
      O => \rOut_Data_reg[24]_0\(3)
    );
\aud_rPulse1_carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(19),
      O => \rOut_Data_reg[24]_0\(2)
    );
\aud_rPulse1_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(18),
      O => \rOut_Data_reg[24]_0\(1)
    );
\aud_rPulse1_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(17),
      O => \rOut_Data_reg[24]_0\(0)
    );
\aud_rPulse1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rOut_Data(31),
      O => S(6)
    );
\aud_rPulse1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(30),
      O => S(5)
    );
\aud_rPulse1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(29),
      O => S(4)
    );
\aud_rPulse1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(28),
      O => S(3)
    );
\aud_rPulse1_carry__2_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(27),
      O => S(2)
    );
\aud_rPulse1_carry__2_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(26),
      O => S(1)
    );
\aud_rPulse1_carry__2_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(25),
      O => S(0)
    );
aud_rPulse1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(8),
      O => \rOut_Data_reg[8]_0\(7)
    );
aud_rPulse1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(7),
      O => \rOut_Data_reg[8]_0\(6)
    );
aud_rPulse1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \rOut_Data_reg[8]_0\(5)
    );
aud_rPulse1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      O => \rOut_Data_reg[8]_0\(4)
    );
aud_rPulse1_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => \rOut_Data_reg[8]_0\(3)
    );
aud_rPulse1_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => \rOut_Data_reg[8]_0\(2)
    );
aud_rPulse1_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \rOut_Data_reg[8]_0\(1)
    );
aud_rPulse1_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \rOut_Data_reg[8]_0\(0)
    );
aud_rPulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aud_cke,
      I1 => CO(0),
      O => aud_rPulse
    );
\rIn_ACK_Sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => rOut_ACK,
      Q => \rIn_ACK_Sync_reg_n_0_[0]\,
      R => '0'
    );
\rIn_ACK_Sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \rIn_ACK_Sync_reg_n_0_[0]\,
      Q => p_0_in0_in,
      R => '0'
    );
rIn_DValid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0_in,
      O => rIn_DValid_i_1_n_0
    );
rIn_DValid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => rIn_DValid_i_1_n_0,
      Q => rIn_DValid,
      R => '0'
    );
\rIn_Data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => rIn_DValid,
      O => rIn_Data0
    );
\rIn_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(0),
      Q => rIn_Data(0),
      R => '0'
    );
\rIn_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(10),
      Q => rIn_Data(10),
      R => '0'
    );
\rIn_Data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(11),
      Q => rIn_Data(11),
      R => '0'
    );
\rIn_Data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(12),
      Q => rIn_Data(12),
      R => '0'
    );
\rIn_Data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(13),
      Q => rIn_Data(13),
      R => '0'
    );
\rIn_Data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(14),
      Q => rIn_Data(14),
      R => '0'
    );
\rIn_Data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(15),
      Q => rIn_Data(15),
      R => '0'
    );
\rIn_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(16),
      Q => rIn_Data(16),
      R => '0'
    );
\rIn_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(17),
      Q => rIn_Data(17),
      R => '0'
    );
\rIn_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(18),
      Q => rIn_Data(18),
      R => '0'
    );
\rIn_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(19),
      Q => rIn_Data(19),
      R => '0'
    );
\rIn_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(1),
      Q => rIn_Data(1),
      R => '0'
    );
\rIn_Data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(20),
      Q => rIn_Data(20),
      R => '0'
    );
\rIn_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(21),
      Q => rIn_Data(21),
      R => '0'
    );
\rIn_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(22),
      Q => rIn_Data(22),
      R => '0'
    );
\rIn_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(23),
      Q => rIn_Data(23),
      R => '0'
    );
\rIn_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(24),
      Q => rIn_Data(24),
      R => '0'
    );
\rIn_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(25),
      Q => rIn_Data(25),
      R => '0'
    );
\rIn_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(26),
      Q => rIn_Data(26),
      R => '0'
    );
\rIn_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(27),
      Q => rIn_Data(27),
      R => '0'
    );
\rIn_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(28),
      Q => rIn_Data(28),
      R => '0'
    );
\rIn_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(29),
      Q => rIn_Data(29),
      R => '0'
    );
\rIn_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(2),
      Q => rIn_Data(2),
      R => '0'
    );
\rIn_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(30),
      Q => rIn_Data(30),
      R => '0'
    );
\rIn_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(31),
      Q => rIn_Data(31),
      R => '0'
    );
\rIn_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(3),
      Q => rIn_Data(3),
      R => '0'
    );
\rIn_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(4),
      Q => rIn_Data(4),
      R => '0'
    );
\rIn_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(5),
      Q => rIn_Data(5),
      R => '0'
    );
\rIn_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(6),
      Q => rIn_Data(6),
      R => '0'
    );
\rIn_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(7),
      Q => rIn_Data(7),
      R => '0'
    );
\rIn_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(8),
      Q => rIn_Data(8),
      R => '0'
    );
\rIn_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[31]_0\(9),
      Q => rIn_Data(9),
      R => '0'
    );
rOut_ACK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      D => p_0_in,
      Q => rOut_ACK,
      R => '0'
    );
\rOut_DValid_Sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      D => rIn_DValid,
      Q => \rOut_DValid_Sync_reg_n_0_[0]\,
      R => '0'
    );
\rOut_DValid_Sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      D => \rOut_DValid_Sync_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
\rOut_Data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in,
      I1 => rOut_ACK,
      O => rOut_Data0
    );
\rOut_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(0),
      Q => \^q\(0),
      R => '0'
    );
\rOut_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(10),
      Q => \^q\(10),
      R => '0'
    );
\rOut_Data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(11),
      Q => \^q\(11),
      R => '0'
    );
\rOut_Data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(12),
      Q => \^q\(12),
      R => '0'
    );
\rOut_Data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(13),
      Q => \^q\(13),
      R => '0'
    );
\rOut_Data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(14),
      Q => \^q\(14),
      R => '0'
    );
\rOut_Data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(15),
      Q => \^q\(15),
      R => '0'
    );
\rOut_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(16),
      Q => \^q\(16),
      R => '0'
    );
\rOut_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(17),
      Q => \^q\(17),
      R => '0'
    );
\rOut_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(18),
      Q => \^q\(18),
      R => '0'
    );
\rOut_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(19),
      Q => \^q\(19),
      R => '0'
    );
\rOut_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(1),
      Q => \^q\(1),
      R => '0'
    );
\rOut_Data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(20),
      Q => \^q\(20),
      R => '0'
    );
\rOut_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(21),
      Q => \^q\(21),
      R => '0'
    );
\rOut_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(22),
      Q => \^q\(22),
      R => '0'
    );
\rOut_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(23),
      Q => \^q\(23),
      R => '0'
    );
\rOut_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(24),
      Q => \^q\(24),
      R => '0'
    );
\rOut_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(25),
      Q => \^q\(25),
      R => '0'
    );
\rOut_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(26),
      Q => \^q\(26),
      R => '0'
    );
\rOut_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(27),
      Q => \^q\(27),
      R => '0'
    );
\rOut_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(28),
      Q => \^q\(28),
      R => '0'
    );
\rOut_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(29),
      Q => \^q\(29),
      R => '0'
    );
\rOut_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(2),
      Q => \^q\(2),
      R => '0'
    );
\rOut_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(30),
      Q => \^q\(30),
      R => '0'
    );
\rOut_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(31),
      Q => rOut_Data(31),
      R => '0'
    );
\rOut_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(3),
      Q => \^q\(3),
      R => '0'
    );
\rOut_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(4),
      Q => \^q\(4),
      R => '0'
    );
\rOut_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(5),
      Q => \^q\(5),
      R => '0'
    );
\rOut_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(6),
      Q => \^q\(6),
      R => '0'
    );
\rOut_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(7),
      Q => \^q\(7),
      R => '0'
    );
\rOut_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(8),
      Q => \^q\(8),
      R => '0'
    );
\rOut_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => rIn_Data(9),
      Q => \^q\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rOut_Data_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aud_clk : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rIn_Data_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross__parameterized0\ : entity is "hdmi_acr_ctrl_v1_0_1_lib_data_clkcross";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross__parameterized0\ is
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal \rIn_ACK_Sync_reg_n_0_[0]\ : STD_LOGIC;
  signal rIn_DValid : STD_LOGIC;
  signal \rIn_DValid_i_1__0_n_0\ : STD_LOGIC;
  signal rIn_Data0 : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[0]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[1]\ : STD_LOGIC;
  signal \rIn_Data_reg_n_0_[2]\ : STD_LOGIC;
  signal rOut_ACK : STD_LOGIC;
  signal \rOut_DValid_Sync_reg_n_0_[0]\ : STD_LOGIC;
  signal rOut_Data0 : STD_LOGIC;
  signal \^rout_data_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  \rOut_Data_reg[2]_0\(2 downto 0) <= \^rout_data_reg[2]_0\(2 downto 0);
\aud_rCKECounter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF6FF6"
    )
        port map (
      I0 => Q(1),
      I1 => \^rout_data_reg[2]_0\(1),
      I2 => Q(2),
      I3 => \^rout_data_reg[2]_0\(2),
      I4 => \^rout_data_reg[2]_0\(0),
      I5 => Q(0),
      O => D(0)
    );
\aud_rCKECounter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45545555AAAA2AA2"
    )
        port map (
      I0 => Q(1),
      I1 => \^rout_data_reg[2]_0\(1),
      I2 => Q(2),
      I3 => \^rout_data_reg[2]_0\(2),
      I4 => \^rout_data_reg[2]_0\(0),
      I5 => Q(0),
      O => D(1)
    );
\aud_rCKECounter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A525A5AF0F060F0"
    )
        port map (
      I0 => Q(1),
      I1 => \^rout_data_reg[2]_0\(1),
      I2 => Q(2),
      I3 => \^rout_data_reg[2]_0\(2),
      I4 => \^rout_data_reg[2]_0\(0),
      I5 => Q(0),
      O => D(2)
    );
\rIn_ACK_Sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => rOut_ACK,
      Q => \rIn_ACK_Sync_reg_n_0_[0]\,
      R => '0'
    );
\rIn_ACK_Sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \rIn_ACK_Sync_reg_n_0_[0]\,
      Q => p_0_in0_in,
      R => '0'
    );
\rIn_DValid_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0_in,
      O => \rIn_DValid_i_1__0_n_0\
    );
rIn_DValid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \rIn_DValid_i_1__0_n_0\,
      Q => rIn_DValid,
      R => '0'
    );
\rIn_Data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => rIn_DValid,
      O => rIn_Data0
    );
\rIn_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[2]_0\(0),
      Q => \rIn_Data_reg_n_0_[0]\,
      R => '0'
    );
\rIn_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[2]_0\(1),
      Q => \rIn_Data_reg_n_0_[1]\,
      R => '0'
    );
\rIn_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rIn_Data0,
      D => \rIn_Data_reg[2]_0\(2),
      Q => \rIn_Data_reg_n_0_[2]\,
      R => '0'
    );
rOut_ACK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      D => p_0_in,
      Q => rOut_ACK,
      R => '0'
    );
\rOut_DValid_Sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      D => rIn_DValid,
      Q => \rOut_DValid_Sync_reg_n_0_[0]\,
      R => '0'
    );
\rOut_DValid_Sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      D => \rOut_DValid_Sync_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
\rOut_Data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in,
      I1 => rOut_ACK,
      O => rOut_Data0
    );
\rOut_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[0]\,
      Q => \^rout_data_reg[2]_0\(0),
      R => '0'
    );
\rOut_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[1]\,
      Q => \^rout_data_reg[2]_0\(1),
      R => '0'
    );
\rOut_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => rOut_Data0,
      D => \rIn_Data_reg_n_0_[2]\,
      Q => \^rout_data_reg[2]_0\(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_pulse_clkcross is
  port (
    rOut_Pulse : out STD_LOGIC;
    hdmi_clk : in STD_LOGIC;
    rIn_PulseCap_reg_0 : in STD_LOGIC;
    aud_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_pulse_clkcross;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_pulse_clkcross is
  signal p_0_in : STD_LOGIC;
  signal rIn_PulseCap : STD_LOGIC;
  signal rIn_Toggle : STD_LOGIC;
  signal rIn_Toggle_i_1_n_0 : STD_LOGIC;
  signal rOut_Pulse_i_1_n_0 : STD_LOGIC;
  signal \rOut_Sync_reg_n_0_[0]\ : STD_LOGIC;
  signal \rOut_Sync_reg_n_0_[2]\ : STD_LOGIC;
begin
rIn_PulseCap_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      D => rIn_PulseCap_reg_0,
      Q => rIn_PulseCap,
      R => '0'
    );
rIn_Toggle_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rIn_PulseCap,
      I1 => rIn_PulseCap_reg_0,
      I2 => rIn_Toggle,
      O => rIn_Toggle_i_1_n_0
    );
rIn_Toggle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      D => rIn_Toggle_i_1_n_0,
      Q => rIn_Toggle,
      R => '0'
    );
rOut_Pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in,
      I1 => \rOut_Sync_reg_n_0_[2]\,
      O => rOut_Pulse_i_1_n_0
    );
rOut_Pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => rOut_Pulse_i_1_n_0,
      Q => rOut_Pulse,
      R => '0'
    );
\rOut_Sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => rIn_Toggle,
      Q => \rOut_Sync_reg_n_0_[0]\,
      R => '0'
    );
\rOut_Sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \rOut_Sync_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
\rOut_Sync_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => p_0_in,
      Q => \rOut_Sync_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14_top is
  port (
    S_AXI_WREADY_reg : out STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_arready : out STD_LOGIC;
    axi_rvalid : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    aud_acr_valid_out : out STD_LOGIC;
    aud_acr_cts_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_acr_n_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_resetn_out : out STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_rready : in STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hdmi_clk : in STD_LOGIC;
    aud_clk : in STD_LOGIC;
    pll_lock_in : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aud_acr_valid_in : in STD_LOGIC;
    aud_acr_cts_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_acr_n_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14_top is
  signal CTS_CLKCROSS_ACLK_INST_n_0 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_1 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_10 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_11 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_12 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_13 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_14 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_15 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_16 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_17 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_18 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_19 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_2 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_20 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_21 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_22 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_23 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_24 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_25 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_26 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_27 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_28 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_29 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_3 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_30 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_31 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_4 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_5 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_6 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_7 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_8 : STD_LOGIC;
  signal CTS_CLKCROSS_ACLK_INST_n_9 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_0 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_1 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_10 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_11 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_12 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_13 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_14 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_15 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_16 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_17 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_18 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_19 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_2 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_3 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_4 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_5 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_6 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_7 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_8 : STD_LOGIC;
  signal CTS_CLKCROSS_AUD_INST_n_9 : STD_LOGIC;
  signal DIVVAL_CLKCROSS_INST_n_0 : STD_LOGIC;
  signal DIVVAL_CLKCROSS_INST_n_1 : STD_LOGIC;
  signal DIVVAL_CLKCROSS_INST_n_2 : STD_LOGIC;
  signal DIVVAL_CLKCROSS_INST_n_3 : STD_LOGIC;
  signal DIVVAL_CLKCROSS_INST_n_4 : STD_LOGIC;
  signal DIVVAL_CLKCROSS_INST_n_5 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_0 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_1 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_10 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_100 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_101 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_102 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_103 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_104 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_105 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_106 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_107 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_108 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_109 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_11 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_110 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_111 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_112 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_113 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_114 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_115 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_116 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_117 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_118 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_119 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_12 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_120 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_121 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_122 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_123 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_124 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_13 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_14 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_15 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_16 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_17 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_18 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_19 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_2 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_20 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_21 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_22 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_23 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_24 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_25 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_26 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_27 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_28 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_29 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_3 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_30 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_31 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_33 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_34 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_35 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_36 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_37 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_38 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_39 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_4 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_5 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_6 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_7 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_71 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_72 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_73 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_74 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_75 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_76 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_77 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_78 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_79 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_8 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_80 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_81 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_82 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_83 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_84 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_85 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_86 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_87 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_88 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_89 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_9 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_90 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_91 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_92 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_93 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_94 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_95 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_96 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_97 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_98 : STD_LOGIC;
  signal NVAL_CLKCROSS_INST_n_99 : STD_LOGIC;
  signal aud_acr_sel_sync : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \aud_acr_sel_sync_reg_n_0_[0]\ : STD_LOGIC;
  signal aud_acr_valid0_out : STD_LOGIC;
  signal aud_cke : STD_LOGIC;
  signal \aud_enab_acr_sync_reg_n_0_[0]\ : STD_LOGIC;
  signal aud_rCKECounter1_n_0 : STD_LOGIC;
  signal \aud_rCKECounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \aud_rCKECounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \aud_rCKECounter_reg_n_0_[2]\ : STD_LOGIC;
  signal aud_rCycleCnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal aud_rPulse : STD_LOGIC;
  signal aud_rPulse0 : STD_LOGIC;
  signal \aud_rPulse0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_n_1\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_n_2\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_n_3\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_n_4\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_n_5\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_n_6\ : STD_LOGIC;
  signal \aud_rPulse0_carry__0_n_7\ : STD_LOGIC;
  signal aud_rPulse0_carry_i_10_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_11_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_12_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_13_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_14_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_15_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_1_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_2_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_3_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_4_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_5_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_6_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_7_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_i_9_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_n_0 : STD_LOGIC;
  signal aud_rPulse0_carry_n_1 : STD_LOGIC;
  signal aud_rPulse0_carry_n_2 : STD_LOGIC;
  signal aud_rPulse0_carry_n_3 : STD_LOGIC;
  signal aud_rPulse0_carry_n_4 : STD_LOGIC;
  signal aud_rPulse0_carry_n_5 : STD_LOGIC;
  signal aud_rPulse0_carry_n_6 : STD_LOGIC;
  signal aud_rPulse0_carry_n_7 : STD_LOGIC;
  signal aud_rPulse1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \aud_rPulse1_carry__0_n_0\ : STD_LOGIC;
  signal \aud_rPulse1_carry__0_n_1\ : STD_LOGIC;
  signal \aud_rPulse1_carry__0_n_2\ : STD_LOGIC;
  signal \aud_rPulse1_carry__0_n_3\ : STD_LOGIC;
  signal \aud_rPulse1_carry__0_n_4\ : STD_LOGIC;
  signal \aud_rPulse1_carry__0_n_5\ : STD_LOGIC;
  signal \aud_rPulse1_carry__0_n_6\ : STD_LOGIC;
  signal \aud_rPulse1_carry__0_n_7\ : STD_LOGIC;
  signal \aud_rPulse1_carry__1_n_0\ : STD_LOGIC;
  signal \aud_rPulse1_carry__1_n_1\ : STD_LOGIC;
  signal \aud_rPulse1_carry__1_n_2\ : STD_LOGIC;
  signal \aud_rPulse1_carry__1_n_3\ : STD_LOGIC;
  signal \aud_rPulse1_carry__1_n_4\ : STD_LOGIC;
  signal \aud_rPulse1_carry__1_n_5\ : STD_LOGIC;
  signal \aud_rPulse1_carry__1_n_6\ : STD_LOGIC;
  signal \aud_rPulse1_carry__1_n_7\ : STD_LOGIC;
  signal \aud_rPulse1_carry__2_n_2\ : STD_LOGIC;
  signal \aud_rPulse1_carry__2_n_3\ : STD_LOGIC;
  signal \aud_rPulse1_carry__2_n_4\ : STD_LOGIC;
  signal \aud_rPulse1_carry__2_n_5\ : STD_LOGIC;
  signal \aud_rPulse1_carry__2_n_6\ : STD_LOGIC;
  signal \aud_rPulse1_carry__2_n_7\ : STD_LOGIC;
  signal aud_rPulse1_carry_n_0 : STD_LOGIC;
  signal aud_rPulse1_carry_n_1 : STD_LOGIC;
  signal aud_rPulse1_carry_n_2 : STD_LOGIC;
  signal aud_rPulse1_carry_n_3 : STD_LOGIC;
  signal aud_rPulse1_carry_n_4 : STD_LOGIC;
  signal aud_rPulse1_carry_n_5 : STD_LOGIC;
  signal aud_rPulse1_carry_n_6 : STD_LOGIC;
  signal aud_rPulse1_carry_n_7 : STD_LOGIC;
  signal aud_rPulse_reg_n_0 : STD_LOGIC;
  signal aud_reset : STD_LOGIC;
  signal aud_reset_i_1_n_0 : STD_LOGIC;
  signal aud_reset_i_2_n_0 : STD_LOGIC;
  signal aud_reset_i_3_n_0 : STD_LOGIC;
  signal aud_reset_out : STD_LOGIC;
  signal aud_rst_chain : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of aud_rst_chain : signal is "true";
  signal \aud_rst_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal aud_rst_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal aud_tmdsclkratio_sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hdmi_rCTS_Val : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \hdmi_rCycleTimeCnt[0]_i_2_n_0\ : STD_LOGIC;
  signal hdmi_rCycleTimeCnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \hdmi_rCycleTimeCnt_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal rCKEDivVal : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rNValue : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rOut_Data : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal rOut_Pulse : STD_LOGIC;
  signal NLW_aud_rPulse0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_aud_rPulse0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_aud_rPulse1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_aud_rPulse1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_hdmi_rCycleTimeCnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of aud_rPulse0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \aud_rPulse0_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of aud_rPulse1_carry : label is 35;
  attribute ADDER_THRESHOLD of \aud_rPulse1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \aud_rPulse1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \aud_rPulse1_carry__2\ : label is 35;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \aud_rst_chain_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \aud_rst_chain_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \aud_rst_chain_reg[1]\ : label is std.standard.true;
  attribute KEEP of \aud_rst_chain_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \aud_rst_chain_reg[2]\ : label is std.standard.true;
  attribute KEEP of \aud_rst_chain_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \aud_rst_cnt[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \aud_rst_cnt[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \aud_rst_cnt[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \aud_rst_cnt[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \aud_rst_cnt[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \aud_rst_cnt[7]_i_2\ : label is "soft_lutpair18";
  attribute ADDER_THRESHOLD of \hdmi_rCycleTimeCnt_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \hdmi_rCycleTimeCnt_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \hdmi_rCycleTimeCnt_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \hdmi_rCycleTimeCnt_reg[8]_i_1\ : label is 16;
begin
CTS_CLKCROSS_ACLK_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross
     port map (
      Q(31 downto 0) => hdmi_rCTS_Val(31 downto 0),
      axi_aclk => axi_aclk,
      hdmi_clk => hdmi_clk,
      \rOut_Data_reg[31]_0\(31) => CTS_CLKCROSS_ACLK_INST_n_0,
      \rOut_Data_reg[31]_0\(30) => CTS_CLKCROSS_ACLK_INST_n_1,
      \rOut_Data_reg[31]_0\(29) => CTS_CLKCROSS_ACLK_INST_n_2,
      \rOut_Data_reg[31]_0\(28) => CTS_CLKCROSS_ACLK_INST_n_3,
      \rOut_Data_reg[31]_0\(27) => CTS_CLKCROSS_ACLK_INST_n_4,
      \rOut_Data_reg[31]_0\(26) => CTS_CLKCROSS_ACLK_INST_n_5,
      \rOut_Data_reg[31]_0\(25) => CTS_CLKCROSS_ACLK_INST_n_6,
      \rOut_Data_reg[31]_0\(24) => CTS_CLKCROSS_ACLK_INST_n_7,
      \rOut_Data_reg[31]_0\(23) => CTS_CLKCROSS_ACLK_INST_n_8,
      \rOut_Data_reg[31]_0\(22) => CTS_CLKCROSS_ACLK_INST_n_9,
      \rOut_Data_reg[31]_0\(21) => CTS_CLKCROSS_ACLK_INST_n_10,
      \rOut_Data_reg[31]_0\(20) => CTS_CLKCROSS_ACLK_INST_n_11,
      \rOut_Data_reg[31]_0\(19) => CTS_CLKCROSS_ACLK_INST_n_12,
      \rOut_Data_reg[31]_0\(18) => CTS_CLKCROSS_ACLK_INST_n_13,
      \rOut_Data_reg[31]_0\(17) => CTS_CLKCROSS_ACLK_INST_n_14,
      \rOut_Data_reg[31]_0\(16) => CTS_CLKCROSS_ACLK_INST_n_15,
      \rOut_Data_reg[31]_0\(15) => CTS_CLKCROSS_ACLK_INST_n_16,
      \rOut_Data_reg[31]_0\(14) => CTS_CLKCROSS_ACLK_INST_n_17,
      \rOut_Data_reg[31]_0\(13) => CTS_CLKCROSS_ACLK_INST_n_18,
      \rOut_Data_reg[31]_0\(12) => CTS_CLKCROSS_ACLK_INST_n_19,
      \rOut_Data_reg[31]_0\(11) => CTS_CLKCROSS_ACLK_INST_n_20,
      \rOut_Data_reg[31]_0\(10) => CTS_CLKCROSS_ACLK_INST_n_21,
      \rOut_Data_reg[31]_0\(9) => CTS_CLKCROSS_ACLK_INST_n_22,
      \rOut_Data_reg[31]_0\(8) => CTS_CLKCROSS_ACLK_INST_n_23,
      \rOut_Data_reg[31]_0\(7) => CTS_CLKCROSS_ACLK_INST_n_24,
      \rOut_Data_reg[31]_0\(6) => CTS_CLKCROSS_ACLK_INST_n_25,
      \rOut_Data_reg[31]_0\(5) => CTS_CLKCROSS_ACLK_INST_n_26,
      \rOut_Data_reg[31]_0\(4) => CTS_CLKCROSS_ACLK_INST_n_27,
      \rOut_Data_reg[31]_0\(3) => CTS_CLKCROSS_ACLK_INST_n_28,
      \rOut_Data_reg[31]_0\(2) => CTS_CLKCROSS_ACLK_INST_n_29,
      \rOut_Data_reg[31]_0\(1) => CTS_CLKCROSS_ACLK_INST_n_30,
      \rOut_Data_reg[31]_0\(0) => CTS_CLKCROSS_ACLK_INST_n_31
    );
CTS_CLKCROSS_AUD_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_0
     port map (
      D(19) => CTS_CLKCROSS_AUD_INST_n_0,
      D(18) => CTS_CLKCROSS_AUD_INST_n_1,
      D(17) => CTS_CLKCROSS_AUD_INST_n_2,
      D(16) => CTS_CLKCROSS_AUD_INST_n_3,
      D(15) => CTS_CLKCROSS_AUD_INST_n_4,
      D(14) => CTS_CLKCROSS_AUD_INST_n_5,
      D(13) => CTS_CLKCROSS_AUD_INST_n_6,
      D(12) => CTS_CLKCROSS_AUD_INST_n_7,
      D(11) => CTS_CLKCROSS_AUD_INST_n_8,
      D(10) => CTS_CLKCROSS_AUD_INST_n_9,
      D(9) => CTS_CLKCROSS_AUD_INST_n_10,
      D(8) => CTS_CLKCROSS_AUD_INST_n_11,
      D(7) => CTS_CLKCROSS_AUD_INST_n_12,
      D(6) => CTS_CLKCROSS_AUD_INST_n_13,
      D(5) => CTS_CLKCROSS_AUD_INST_n_14,
      D(4) => CTS_CLKCROSS_AUD_INST_n_15,
      D(3) => CTS_CLKCROSS_AUD_INST_n_16,
      D(2) => CTS_CLKCROSS_AUD_INST_n_17,
      D(1) => CTS_CLKCROSS_AUD_INST_n_18,
      D(0) => CTS_CLKCROSS_AUD_INST_n_19,
      Q(0) => aud_tmdsclkratio_sync(1),
      aud_acr_cts_in(19 downto 0) => aud_acr_cts_in(19 downto 0),
      aud_clk => aud_clk,
      \aud_cts_val_reg[2]\(0) => aud_acr_sel_sync(1),
      hdmi_clk => hdmi_clk,
      \rIn_Data_reg[19]_0\(19 downto 0) => hdmi_rCTS_Val(19 downto 0)
    );
DIVVAL_CLKCROSS_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross__parameterized0\
     port map (
      D(2) => DIVVAL_CLKCROSS_INST_n_0,
      D(1) => DIVVAL_CLKCROSS_INST_n_1,
      D(0) => DIVVAL_CLKCROSS_INST_n_2,
      Q(2) => \aud_rCKECounter_reg_n_0_[2]\,
      Q(1) => \aud_rCKECounter_reg_n_0_[1]\,
      Q(0) => \aud_rCKECounter_reg_n_0_[0]\,
      aud_clk => aud_clk,
      axi_aclk => axi_aclk,
      \rIn_Data_reg[2]_0\(2 downto 0) => rCKEDivVal(2 downto 0),
      \rOut_Data_reg[2]_0\(2) => DIVVAL_CLKCROSS_INST_n_3,
      \rOut_Data_reg[2]_0\(1) => DIVVAL_CLKCROSS_INST_n_4,
      \rOut_Data_reg[2]_0\(0) => DIVVAL_CLKCROSS_INST_n_5
    );
HDMI_ACR_CTRL_AXI_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14_axi
     port map (
      D(31) => CTS_CLKCROSS_ACLK_INST_n_0,
      D(30) => CTS_CLKCROSS_ACLK_INST_n_1,
      D(29) => CTS_CLKCROSS_ACLK_INST_n_2,
      D(28) => CTS_CLKCROSS_ACLK_INST_n_3,
      D(27) => CTS_CLKCROSS_ACLK_INST_n_4,
      D(26) => CTS_CLKCROSS_ACLK_INST_n_5,
      D(25) => CTS_CLKCROSS_ACLK_INST_n_6,
      D(24) => CTS_CLKCROSS_ACLK_INST_n_7,
      D(23) => CTS_CLKCROSS_ACLK_INST_n_8,
      D(22) => CTS_CLKCROSS_ACLK_INST_n_9,
      D(21) => CTS_CLKCROSS_ACLK_INST_n_10,
      D(20) => CTS_CLKCROSS_ACLK_INST_n_11,
      D(19) => CTS_CLKCROSS_ACLK_INST_n_12,
      D(18) => CTS_CLKCROSS_ACLK_INST_n_13,
      D(17) => CTS_CLKCROSS_ACLK_INST_n_14,
      D(16) => CTS_CLKCROSS_ACLK_INST_n_15,
      D(15) => CTS_CLKCROSS_ACLK_INST_n_16,
      D(14) => CTS_CLKCROSS_ACLK_INST_n_17,
      D(13) => CTS_CLKCROSS_ACLK_INST_n_18,
      D(12) => CTS_CLKCROSS_ACLK_INST_n_19,
      D(11) => CTS_CLKCROSS_ACLK_INST_n_20,
      D(10) => CTS_CLKCROSS_ACLK_INST_n_21,
      D(9) => CTS_CLKCROSS_ACLK_INST_n_22,
      D(8) => CTS_CLKCROSS_ACLK_INST_n_23,
      D(7) => CTS_CLKCROSS_ACLK_INST_n_24,
      D(6) => CTS_CLKCROSS_ACLK_INST_n_25,
      D(5) => CTS_CLKCROSS_ACLK_INST_n_26,
      D(4) => CTS_CLKCROSS_ACLK_INST_n_27,
      D(3) => CTS_CLKCROSS_ACLK_INST_n_28,
      D(2) => CTS_CLKCROSS_ACLK_INST_n_29,
      D(1) => CTS_CLKCROSS_ACLK_INST_n_30,
      D(0) => CTS_CLKCROSS_ACLK_INST_n_31,
      Q(31 downto 0) => rNValue(31 downto 0),
      S_AXI_WREADY_reg_0 => S_AXI_WREADY_reg,
      axi_aclk => axi_aclk,
      axi_araddr(7 downto 0) => axi_araddr(7 downto 0),
      axi_aresetn => axi_aresetn,
      axi_arready => axi_arready,
      axi_arvalid => axi_arvalid,
      axi_awaddr(7 downto 0) => axi_awaddr(7 downto 0),
      axi_awready => axi_awready,
      axi_awvalid => axi_awvalid,
      axi_bready => axi_bready,
      axi_bresp(0) => axi_bresp(0),
      axi_bvalid => axi_bvalid,
      axi_rdata(31 downto 0) => axi_rdata(31 downto 0),
      axi_rready => axi_rready,
      axi_rresp(0) => axi_rresp(0),
      axi_rvalid => axi_rvalid,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wvalid => axi_wvalid,
      data1(3 downto 0) => data1(3 downto 0),
      \rCKEDivVal_reg[2]_0\(2 downto 0) => rCKEDivVal(2 downto 0)
    );
NVAL_CLKCROSS_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_data_clkcross_1
     port map (
      CO(0) => aud_rPulse0,
      D(19) => NVAL_CLKCROSS_INST_n_105,
      D(18) => NVAL_CLKCROSS_INST_n_106,
      D(17) => NVAL_CLKCROSS_INST_n_107,
      D(16) => NVAL_CLKCROSS_INST_n_108,
      D(15) => NVAL_CLKCROSS_INST_n_109,
      D(14) => NVAL_CLKCROSS_INST_n_110,
      D(13) => NVAL_CLKCROSS_INST_n_111,
      D(12) => NVAL_CLKCROSS_INST_n_112,
      D(11) => NVAL_CLKCROSS_INST_n_113,
      D(10) => NVAL_CLKCROSS_INST_n_114,
      D(9) => NVAL_CLKCROSS_INST_n_115,
      D(8) => NVAL_CLKCROSS_INST_n_116,
      D(7) => NVAL_CLKCROSS_INST_n_117,
      D(6) => NVAL_CLKCROSS_INST_n_118,
      D(5) => NVAL_CLKCROSS_INST_n_119,
      D(4) => NVAL_CLKCROSS_INST_n_120,
      D(3) => NVAL_CLKCROSS_INST_n_121,
      D(2) => NVAL_CLKCROSS_INST_n_122,
      D(1) => NVAL_CLKCROSS_INST_n_123,
      D(0) => NVAL_CLKCROSS_INST_n_124,
      DI(0) => NVAL_CLKCROSS_INST_n_95,
      O(7) => NVAL_CLKCROSS_INST_n_0,
      O(6) => NVAL_CLKCROSS_INST_n_1,
      O(5) => NVAL_CLKCROSS_INST_n_2,
      O(4) => NVAL_CLKCROSS_INST_n_3,
      O(3) => NVAL_CLKCROSS_INST_n_4,
      O(2) => NVAL_CLKCROSS_INST_n_5,
      O(1) => NVAL_CLKCROSS_INST_n_6,
      O(0) => NVAL_CLKCROSS_INST_n_7,
      Q(30 downto 0) => rOut_Data(30 downto 0),
      S(6) => NVAL_CLKCROSS_INST_n_33,
      S(5) => NVAL_CLKCROSS_INST_n_34,
      S(4) => NVAL_CLKCROSS_INST_n_35,
      S(3) => NVAL_CLKCROSS_INST_n_36,
      S(2) => NVAL_CLKCROSS_INST_n_37,
      S(1) => NVAL_CLKCROSS_INST_n_38,
      S(0) => NVAL_CLKCROSS_INST_n_39,
      aud_acr_n_in(19 downto 0) => aud_acr_n_in(19 downto 0),
      aud_cke => aud_cke,
      aud_clk => aud_clk,
      \aud_n_val_reg[19]\(0) => aud_acr_sel_sync(1),
      aud_rCycleCnt_reg(31 downto 0) => aud_rCycleCnt_reg(31 downto 0),
      \aud_rCycleCnt_reg[0]\(0) => NVAL_CLKCROSS_INST_n_96,
      \aud_rCycleCnt_reg[15]\(7) => NVAL_CLKCROSS_INST_n_8,
      \aud_rCycleCnt_reg[15]\(6) => NVAL_CLKCROSS_INST_n_9,
      \aud_rCycleCnt_reg[15]\(5) => NVAL_CLKCROSS_INST_n_10,
      \aud_rCycleCnt_reg[15]\(4) => NVAL_CLKCROSS_INST_n_11,
      \aud_rCycleCnt_reg[15]\(3) => NVAL_CLKCROSS_INST_n_12,
      \aud_rCycleCnt_reg[15]\(2) => NVAL_CLKCROSS_INST_n_13,
      \aud_rCycleCnt_reg[15]\(1) => NVAL_CLKCROSS_INST_n_14,
      \aud_rCycleCnt_reg[15]\(0) => NVAL_CLKCROSS_INST_n_15,
      \aud_rCycleCnt_reg[23]\(7) => NVAL_CLKCROSS_INST_n_16,
      \aud_rCycleCnt_reg[23]\(6) => NVAL_CLKCROSS_INST_n_17,
      \aud_rCycleCnt_reg[23]\(5) => NVAL_CLKCROSS_INST_n_18,
      \aud_rCycleCnt_reg[23]\(4) => NVAL_CLKCROSS_INST_n_19,
      \aud_rCycleCnt_reg[23]\(3) => NVAL_CLKCROSS_INST_n_20,
      \aud_rCycleCnt_reg[23]\(2) => NVAL_CLKCROSS_INST_n_21,
      \aud_rCycleCnt_reg[23]\(1) => NVAL_CLKCROSS_INST_n_22,
      \aud_rCycleCnt_reg[23]\(0) => NVAL_CLKCROSS_INST_n_23,
      \aud_rCycleCnt_reg[31]\(7) => NVAL_CLKCROSS_INST_n_24,
      \aud_rCycleCnt_reg[31]\(6) => NVAL_CLKCROSS_INST_n_25,
      \aud_rCycleCnt_reg[31]\(5) => NVAL_CLKCROSS_INST_n_26,
      \aud_rCycleCnt_reg[31]\(4) => NVAL_CLKCROSS_INST_n_27,
      \aud_rCycleCnt_reg[31]\(3) => NVAL_CLKCROSS_INST_n_28,
      \aud_rCycleCnt_reg[31]\(2) => NVAL_CLKCROSS_INST_n_29,
      \aud_rCycleCnt_reg[31]\(1) => NVAL_CLKCROSS_INST_n_30,
      \aud_rCycleCnt_reg[31]\(0) => NVAL_CLKCROSS_INST_n_31,
      \aud_rCycleCnt_reg[31]_0\(3) => NVAL_CLKCROSS_INST_n_97,
      \aud_rCycleCnt_reg[31]_0\(2) => NVAL_CLKCROSS_INST_n_98,
      \aud_rCycleCnt_reg[31]_0\(1) => NVAL_CLKCROSS_INST_n_99,
      \aud_rCycleCnt_reg[31]_0\(0) => NVAL_CLKCROSS_INST_n_100,
      \aud_rCycleCnt_reg[31]_1\(3) => NVAL_CLKCROSS_INST_n_101,
      \aud_rCycleCnt_reg[31]_1\(2) => NVAL_CLKCROSS_INST_n_102,
      \aud_rCycleCnt_reg[31]_1\(1) => NVAL_CLKCROSS_INST_n_103,
      \aud_rCycleCnt_reg[31]_1\(0) => NVAL_CLKCROSS_INST_n_104,
      aud_rPulse => aud_rPulse,
      aud_rPulse1(8 downto 1) => aud_rPulse1(31 downto 24),
      aud_rPulse1(0) => aud_rPulse1(1),
      axi_aclk => axi_aclk,
      \rIn_Data_reg[31]_0\(31 downto 0) => rNValue(31 downto 0),
      \rOut_Data_reg[16]_0\(7) => NVAL_CLKCROSS_INST_n_79,
      \rOut_Data_reg[16]_0\(6) => NVAL_CLKCROSS_INST_n_80,
      \rOut_Data_reg[16]_0\(5) => NVAL_CLKCROSS_INST_n_81,
      \rOut_Data_reg[16]_0\(4) => NVAL_CLKCROSS_INST_n_82,
      \rOut_Data_reg[16]_0\(3) => NVAL_CLKCROSS_INST_n_83,
      \rOut_Data_reg[16]_0\(2) => NVAL_CLKCROSS_INST_n_84,
      \rOut_Data_reg[16]_0\(1) => NVAL_CLKCROSS_INST_n_85,
      \rOut_Data_reg[16]_0\(0) => NVAL_CLKCROSS_INST_n_86,
      \rOut_Data_reg[24]_0\(7) => NVAL_CLKCROSS_INST_n_71,
      \rOut_Data_reg[24]_0\(6) => NVAL_CLKCROSS_INST_n_72,
      \rOut_Data_reg[24]_0\(5) => NVAL_CLKCROSS_INST_n_73,
      \rOut_Data_reg[24]_0\(4) => NVAL_CLKCROSS_INST_n_74,
      \rOut_Data_reg[24]_0\(3) => NVAL_CLKCROSS_INST_n_75,
      \rOut_Data_reg[24]_0\(2) => NVAL_CLKCROSS_INST_n_76,
      \rOut_Data_reg[24]_0\(1) => NVAL_CLKCROSS_INST_n_77,
      \rOut_Data_reg[24]_0\(0) => NVAL_CLKCROSS_INST_n_78,
      \rOut_Data_reg[8]_0\(7) => NVAL_CLKCROSS_INST_n_87,
      \rOut_Data_reg[8]_0\(6) => NVAL_CLKCROSS_INST_n_88,
      \rOut_Data_reg[8]_0\(5) => NVAL_CLKCROSS_INST_n_89,
      \rOut_Data_reg[8]_0\(4) => NVAL_CLKCROSS_INST_n_90,
      \rOut_Data_reg[8]_0\(3) => NVAL_CLKCROSS_INST_n_91,
      \rOut_Data_reg[8]_0\(2) => NVAL_CLKCROSS_INST_n_92,
      \rOut_Data_reg[8]_0\(1) => NVAL_CLKCROSS_INST_n_93,
      \rOut_Data_reg[8]_0\(0) => NVAL_CLKCROSS_INST_n_94
    );
PULSE_CLKCROSS_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_lib_pulse_clkcross
     port map (
      aud_clk => aud_clk,
      hdmi_clk => hdmi_clk,
      rIn_PulseCap_reg_0 => aud_rPulse_reg_n_0,
      rOut_Pulse => rOut_Pulse
    );
\aud_acr_sel_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => data1(1),
      Q => \aud_acr_sel_sync_reg_n_0_[0]\,
      R => '0'
    );
\aud_acr_sel_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => \aud_acr_sel_sync_reg_n_0_[0]\,
      Q => aud_acr_sel_sync(1),
      R => '0'
    );
aud_acr_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => aud_acr_valid_in,
      I1 => p_1_in,
      I2 => aud_acr_sel_sync(1),
      I3 => aud_rPulse_reg_n_0,
      O => aud_acr_valid0_out
    );
aud_acr_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => aud_acr_valid0_out,
      Q => aud_acr_valid_out,
      R => '0'
    );
aud_cke_reg: unisim.vcomponents.FDCE
     port map (
      C => aud_clk,
      CE => '1',
      CLR => aud_reset_out,
      D => aud_rCKECounter1_n_0,
      Q => aud_cke
    );
\aud_cts_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_19,
      Q => aud_acr_cts_out(0),
      R => '0'
    );
\aud_cts_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_9,
      Q => aud_acr_cts_out(10),
      R => '0'
    );
\aud_cts_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_8,
      Q => aud_acr_cts_out(11),
      R => '0'
    );
\aud_cts_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_7,
      Q => aud_acr_cts_out(12),
      R => '0'
    );
\aud_cts_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_6,
      Q => aud_acr_cts_out(13),
      R => '0'
    );
\aud_cts_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_5,
      Q => aud_acr_cts_out(14),
      R => '0'
    );
\aud_cts_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_4,
      Q => aud_acr_cts_out(15),
      R => '0'
    );
\aud_cts_val_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_3,
      Q => aud_acr_cts_out(16),
      R => '0'
    );
\aud_cts_val_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_2,
      Q => aud_acr_cts_out(17),
      R => '0'
    );
\aud_cts_val_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_1,
      Q => aud_acr_cts_out(18),
      R => '0'
    );
\aud_cts_val_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_0,
      Q => aud_acr_cts_out(19),
      R => '0'
    );
\aud_cts_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_18,
      Q => aud_acr_cts_out(1),
      R => '0'
    );
\aud_cts_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_17,
      Q => aud_acr_cts_out(2),
      R => '0'
    );
\aud_cts_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_16,
      Q => aud_acr_cts_out(3),
      R => '0'
    );
\aud_cts_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_15,
      Q => aud_acr_cts_out(4),
      R => '0'
    );
\aud_cts_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_14,
      Q => aud_acr_cts_out(5),
      R => '0'
    );
\aud_cts_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_13,
      Q => aud_acr_cts_out(6),
      R => '0'
    );
\aud_cts_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_12,
      Q => aud_acr_cts_out(7),
      R => '0'
    );
\aud_cts_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_11,
      Q => aud_acr_cts_out(8),
      R => '0'
    );
\aud_cts_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => CTS_CLKCROSS_AUD_INST_n_10,
      Q => aud_acr_cts_out(9),
      R => '0'
    );
\aud_enab_acr_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => data1(0),
      Q => \aud_enab_acr_sync_reg_n_0_[0]\,
      R => '0'
    );
\aud_enab_acr_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => \aud_enab_acr_sync_reg_n_0_[0]\,
      Q => p_1_in,
      R => '0'
    );
\aud_n_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_124,
      Q => aud_acr_n_out(0),
      R => '0'
    );
\aud_n_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_114,
      Q => aud_acr_n_out(10),
      R => '0'
    );
\aud_n_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_113,
      Q => aud_acr_n_out(11),
      R => '0'
    );
\aud_n_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_112,
      Q => aud_acr_n_out(12),
      R => '0'
    );
\aud_n_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_111,
      Q => aud_acr_n_out(13),
      R => '0'
    );
\aud_n_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_110,
      Q => aud_acr_n_out(14),
      R => '0'
    );
\aud_n_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_109,
      Q => aud_acr_n_out(15),
      R => '0'
    );
\aud_n_val_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_108,
      Q => aud_acr_n_out(16),
      R => '0'
    );
\aud_n_val_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_107,
      Q => aud_acr_n_out(17),
      R => '0'
    );
\aud_n_val_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_106,
      Q => aud_acr_n_out(18),
      R => '0'
    );
\aud_n_val_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_105,
      Q => aud_acr_n_out(19),
      R => '0'
    );
\aud_n_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_123,
      Q => aud_acr_n_out(1),
      R => '0'
    );
\aud_n_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_122,
      Q => aud_acr_n_out(2),
      R => '0'
    );
\aud_n_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_121,
      Q => aud_acr_n_out(3),
      R => '0'
    );
\aud_n_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_120,
      Q => aud_acr_n_out(4),
      R => '0'
    );
\aud_n_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_119,
      Q => aud_acr_n_out(5),
      R => '0'
    );
\aud_n_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_118,
      Q => aud_acr_n_out(6),
      R => '0'
    );
\aud_n_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_117,
      Q => aud_acr_n_out(7),
      R => '0'
    );
\aud_n_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_116,
      Q => aud_acr_n_out(8),
      R => '0'
    );
\aud_n_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => NVAL_CLKCROSS_INST_n_115,
      Q => aud_acr_n_out(9),
      R => '0'
    );
aud_rCKECounter1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \aud_rCKECounter_reg_n_0_[0]\,
      I1 => DIVVAL_CLKCROSS_INST_n_5,
      I2 => DIVVAL_CLKCROSS_INST_n_3,
      I3 => \aud_rCKECounter_reg_n_0_[2]\,
      I4 => DIVVAL_CLKCROSS_INST_n_4,
      I5 => \aud_rCKECounter_reg_n_0_[1]\,
      O => aud_rCKECounter1_n_0
    );
\aud_rCKECounter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      CLR => aud_reset_out,
      D => DIVVAL_CLKCROSS_INST_n_2,
      Q => \aud_rCKECounter_reg_n_0_[0]\
    );
\aud_rCKECounter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      CLR => aud_reset_out,
      D => DIVVAL_CLKCROSS_INST_n_1,
      Q => \aud_rCKECounter_reg_n_0_[1]\
    );
\aud_rCKECounter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      CLR => aud_reset_out,
      D => DIVVAL_CLKCROSS_INST_n_0,
      Q => \aud_rCKECounter_reg_n_0_[2]\
    );
\aud_rCycleCnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_7,
      Q => aud_rCycleCnt_reg(0)
    );
\aud_rCycleCnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_13,
      Q => aud_rCycleCnt_reg(10)
    );
\aud_rCycleCnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_12,
      Q => aud_rCycleCnt_reg(11)
    );
\aud_rCycleCnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_11,
      Q => aud_rCycleCnt_reg(12)
    );
\aud_rCycleCnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_10,
      Q => aud_rCycleCnt_reg(13)
    );
\aud_rCycleCnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_9,
      Q => aud_rCycleCnt_reg(14)
    );
\aud_rCycleCnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_8,
      Q => aud_rCycleCnt_reg(15)
    );
\aud_rCycleCnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_23,
      Q => aud_rCycleCnt_reg(16)
    );
\aud_rCycleCnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_22,
      Q => aud_rCycleCnt_reg(17)
    );
\aud_rCycleCnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_21,
      Q => aud_rCycleCnt_reg(18)
    );
\aud_rCycleCnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_20,
      Q => aud_rCycleCnt_reg(19)
    );
\aud_rCycleCnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_6,
      Q => aud_rCycleCnt_reg(1)
    );
\aud_rCycleCnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_19,
      Q => aud_rCycleCnt_reg(20)
    );
\aud_rCycleCnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_18,
      Q => aud_rCycleCnt_reg(21)
    );
\aud_rCycleCnt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_17,
      Q => aud_rCycleCnt_reg(22)
    );
\aud_rCycleCnt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_16,
      Q => aud_rCycleCnt_reg(23)
    );
\aud_rCycleCnt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_31,
      Q => aud_rCycleCnt_reg(24)
    );
\aud_rCycleCnt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_30,
      Q => aud_rCycleCnt_reg(25)
    );
\aud_rCycleCnt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_29,
      Q => aud_rCycleCnt_reg(26)
    );
\aud_rCycleCnt_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_28,
      Q => aud_rCycleCnt_reg(27)
    );
\aud_rCycleCnt_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_27,
      Q => aud_rCycleCnt_reg(28)
    );
\aud_rCycleCnt_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_26,
      Q => aud_rCycleCnt_reg(29)
    );
\aud_rCycleCnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_5,
      Q => aud_rCycleCnt_reg(2)
    );
\aud_rCycleCnt_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_25,
      Q => aud_rCycleCnt_reg(30)
    );
\aud_rCycleCnt_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_24,
      Q => aud_rCycleCnt_reg(31)
    );
\aud_rCycleCnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_4,
      Q => aud_rCycleCnt_reg(3)
    );
\aud_rCycleCnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_3,
      Q => aud_rCycleCnt_reg(4)
    );
\aud_rCycleCnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_2,
      Q => aud_rCycleCnt_reg(5)
    );
\aud_rCycleCnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_1,
      Q => aud_rCycleCnt_reg(6)
    );
\aud_rCycleCnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_0,
      Q => aud_rCycleCnt_reg(7)
    );
\aud_rCycleCnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_15,
      Q => aud_rCycleCnt_reg(8)
    );
\aud_rCycleCnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => aud_cke,
      CLR => aud_reset_out,
      D => NVAL_CLKCROSS_INST_n_14,
      Q => aud_rCycleCnt_reg(9)
    );
aud_rPulse0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => aud_rPulse0_carry_n_0,
      CO(6) => aud_rPulse0_carry_n_1,
      CO(5) => aud_rPulse0_carry_n_2,
      CO(4) => aud_rPulse0_carry_n_3,
      CO(3) => aud_rPulse0_carry_n_4,
      CO(2) => aud_rPulse0_carry_n_5,
      CO(1) => aud_rPulse0_carry_n_6,
      CO(0) => aud_rPulse0_carry_n_7,
      DI(7) => aud_rPulse0_carry_i_1_n_0,
      DI(6) => aud_rPulse0_carry_i_2_n_0,
      DI(5) => aud_rPulse0_carry_i_3_n_0,
      DI(4) => aud_rPulse0_carry_i_4_n_0,
      DI(3) => aud_rPulse0_carry_i_5_n_0,
      DI(2) => aud_rPulse0_carry_i_6_n_0,
      DI(1) => aud_rPulse0_carry_i_7_n_0,
      DI(0) => NVAL_CLKCROSS_INST_n_95,
      O(7 downto 0) => NLW_aud_rPulse0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => aud_rPulse0_carry_i_9_n_0,
      S(6) => aud_rPulse0_carry_i_10_n_0,
      S(5) => aud_rPulse0_carry_i_11_n_0,
      S(4) => aud_rPulse0_carry_i_12_n_0,
      S(3) => aud_rPulse0_carry_i_13_n_0,
      S(2) => aud_rPulse0_carry_i_14_n_0,
      S(1) => aud_rPulse0_carry_i_15_n_0,
      S(0) => NVAL_CLKCROSS_INST_n_96
    );
\aud_rPulse0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => aud_rPulse0_carry_n_0,
      CI_TOP => '0',
      CO(7) => aud_rPulse0,
      CO(6) => \aud_rPulse0_carry__0_n_1\,
      CO(5) => \aud_rPulse0_carry__0_n_2\,
      CO(4) => \aud_rPulse0_carry__0_n_3\,
      CO(3) => \aud_rPulse0_carry__0_n_4\,
      CO(2) => \aud_rPulse0_carry__0_n_5\,
      CO(1) => \aud_rPulse0_carry__0_n_6\,
      CO(0) => \aud_rPulse0_carry__0_n_7\,
      DI(7) => NVAL_CLKCROSS_INST_n_97,
      DI(6) => NVAL_CLKCROSS_INST_n_98,
      DI(5) => NVAL_CLKCROSS_INST_n_99,
      DI(4) => NVAL_CLKCROSS_INST_n_100,
      DI(3) => \aud_rPulse0_carry__0_i_5_n_0\,
      DI(2) => \aud_rPulse0_carry__0_i_6_n_0\,
      DI(1) => \aud_rPulse0_carry__0_i_7_n_0\,
      DI(0) => \aud_rPulse0_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_aud_rPulse0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => NVAL_CLKCROSS_INST_n_101,
      S(6) => NVAL_CLKCROSS_INST_n_102,
      S(5) => NVAL_CLKCROSS_INST_n_103,
      S(4) => NVAL_CLKCROSS_INST_n_104,
      S(3) => \aud_rPulse0_carry__0_i_13_n_0\,
      S(2) => \aud_rPulse0_carry__0_i_14_n_0\,
      S(1) => \aud_rPulse0_carry__0_i_15_n_0\,
      S(0) => \aud_rPulse0_carry__0_i_16_n_0\
    );
\aud_rPulse0_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(23),
      I1 => aud_rCycleCnt_reg(23),
      I2 => aud_rPulse1(22),
      I3 => aud_rCycleCnt_reg(22),
      O => \aud_rPulse0_carry__0_i_13_n_0\
    );
\aud_rPulse0_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(21),
      I1 => aud_rCycleCnt_reg(21),
      I2 => aud_rPulse1(20),
      I3 => aud_rCycleCnt_reg(20),
      O => \aud_rPulse0_carry__0_i_14_n_0\
    );
\aud_rPulse0_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(19),
      I1 => aud_rCycleCnt_reg(19),
      I2 => aud_rPulse1(18),
      I3 => aud_rCycleCnt_reg(18),
      O => \aud_rPulse0_carry__0_i_15_n_0\
    );
\aud_rPulse0_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(17),
      I1 => aud_rCycleCnt_reg(17),
      I2 => aud_rPulse1(16),
      I3 => aud_rCycleCnt_reg(16),
      O => \aud_rPulse0_carry__0_i_16_n_0\
    );
\aud_rPulse0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(23),
      I1 => aud_rPulse1(23),
      I2 => aud_rCycleCnt_reg(22),
      I3 => aud_rPulse1(22),
      O => \aud_rPulse0_carry__0_i_5_n_0\
    );
\aud_rPulse0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(21),
      I1 => aud_rPulse1(21),
      I2 => aud_rCycleCnt_reg(20),
      I3 => aud_rPulse1(20),
      O => \aud_rPulse0_carry__0_i_6_n_0\
    );
\aud_rPulse0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(19),
      I1 => aud_rPulse1(19),
      I2 => aud_rCycleCnt_reg(18),
      I3 => aud_rPulse1(18),
      O => \aud_rPulse0_carry__0_i_7_n_0\
    );
\aud_rPulse0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(17),
      I1 => aud_rPulse1(17),
      I2 => aud_rCycleCnt_reg(16),
      I3 => aud_rPulse1(16),
      O => \aud_rPulse0_carry__0_i_8_n_0\
    );
aud_rPulse0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(15),
      I1 => aud_rPulse1(15),
      I2 => aud_rCycleCnt_reg(14),
      I3 => aud_rPulse1(14),
      O => aud_rPulse0_carry_i_1_n_0
    );
aud_rPulse0_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(13),
      I1 => aud_rCycleCnt_reg(13),
      I2 => aud_rPulse1(12),
      I3 => aud_rCycleCnt_reg(12),
      O => aud_rPulse0_carry_i_10_n_0
    );
aud_rPulse0_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(11),
      I1 => aud_rCycleCnt_reg(11),
      I2 => aud_rPulse1(10),
      I3 => aud_rCycleCnt_reg(10),
      O => aud_rPulse0_carry_i_11_n_0
    );
aud_rPulse0_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(9),
      I1 => aud_rCycleCnt_reg(9),
      I2 => aud_rPulse1(8),
      I3 => aud_rCycleCnt_reg(8),
      O => aud_rPulse0_carry_i_12_n_0
    );
aud_rPulse0_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(7),
      I1 => aud_rCycleCnt_reg(7),
      I2 => aud_rPulse1(6),
      I3 => aud_rCycleCnt_reg(6),
      O => aud_rPulse0_carry_i_13_n_0
    );
aud_rPulse0_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(5),
      I1 => aud_rCycleCnt_reg(5),
      I2 => aud_rPulse1(4),
      I3 => aud_rCycleCnt_reg(4),
      O => aud_rPulse0_carry_i_14_n_0
    );
aud_rPulse0_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(3),
      I1 => aud_rCycleCnt_reg(3),
      I2 => aud_rPulse1(2),
      I3 => aud_rCycleCnt_reg(2),
      O => aud_rPulse0_carry_i_15_n_0
    );
aud_rPulse0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(13),
      I1 => aud_rPulse1(13),
      I2 => aud_rCycleCnt_reg(12),
      I3 => aud_rPulse1(12),
      O => aud_rPulse0_carry_i_2_n_0
    );
aud_rPulse0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(11),
      I1 => aud_rPulse1(11),
      I2 => aud_rCycleCnt_reg(10),
      I3 => aud_rPulse1(10),
      O => aud_rPulse0_carry_i_3_n_0
    );
aud_rPulse0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(9),
      I1 => aud_rPulse1(9),
      I2 => aud_rCycleCnt_reg(8),
      I3 => aud_rPulse1(8),
      O => aud_rPulse0_carry_i_4_n_0
    );
aud_rPulse0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(7),
      I1 => aud_rPulse1(7),
      I2 => aud_rCycleCnt_reg(6),
      I3 => aud_rPulse1(6),
      O => aud_rPulse0_carry_i_5_n_0
    );
aud_rPulse0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(5),
      I1 => aud_rPulse1(5),
      I2 => aud_rCycleCnt_reg(4),
      I3 => aud_rPulse1(4),
      O => aud_rPulse0_carry_i_6_n_0
    );
aud_rPulse0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => aud_rCycleCnt_reg(3),
      I1 => aud_rPulse1(3),
      I2 => aud_rCycleCnt_reg(2),
      I3 => aud_rPulse1(2),
      O => aud_rPulse0_carry_i_7_n_0
    );
aud_rPulse0_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => aud_rPulse1(15),
      I1 => aud_rCycleCnt_reg(15),
      I2 => aud_rPulse1(14),
      I3 => aud_rCycleCnt_reg(14),
      O => aud_rPulse0_carry_i_9_n_0
    );
aud_rPulse1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => rOut_Data(0),
      CI_TOP => '0',
      CO(7) => aud_rPulse1_carry_n_0,
      CO(6) => aud_rPulse1_carry_n_1,
      CO(5) => aud_rPulse1_carry_n_2,
      CO(4) => aud_rPulse1_carry_n_3,
      CO(3) => aud_rPulse1_carry_n_4,
      CO(2) => aud_rPulse1_carry_n_5,
      CO(1) => aud_rPulse1_carry_n_6,
      CO(0) => aud_rPulse1_carry_n_7,
      DI(7 downto 0) => rOut_Data(8 downto 1),
      O(7 downto 0) => aud_rPulse1(8 downto 1),
      S(7) => NVAL_CLKCROSS_INST_n_87,
      S(6) => NVAL_CLKCROSS_INST_n_88,
      S(5) => NVAL_CLKCROSS_INST_n_89,
      S(4) => NVAL_CLKCROSS_INST_n_90,
      S(3) => NVAL_CLKCROSS_INST_n_91,
      S(2) => NVAL_CLKCROSS_INST_n_92,
      S(1) => NVAL_CLKCROSS_INST_n_93,
      S(0) => NVAL_CLKCROSS_INST_n_94
    );
\aud_rPulse1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => aud_rPulse1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \aud_rPulse1_carry__0_n_0\,
      CO(6) => \aud_rPulse1_carry__0_n_1\,
      CO(5) => \aud_rPulse1_carry__0_n_2\,
      CO(4) => \aud_rPulse1_carry__0_n_3\,
      CO(3) => \aud_rPulse1_carry__0_n_4\,
      CO(2) => \aud_rPulse1_carry__0_n_5\,
      CO(1) => \aud_rPulse1_carry__0_n_6\,
      CO(0) => \aud_rPulse1_carry__0_n_7\,
      DI(7 downto 0) => rOut_Data(16 downto 9),
      O(7 downto 0) => aud_rPulse1(16 downto 9),
      S(7) => NVAL_CLKCROSS_INST_n_79,
      S(6) => NVAL_CLKCROSS_INST_n_80,
      S(5) => NVAL_CLKCROSS_INST_n_81,
      S(4) => NVAL_CLKCROSS_INST_n_82,
      S(3) => NVAL_CLKCROSS_INST_n_83,
      S(2) => NVAL_CLKCROSS_INST_n_84,
      S(1) => NVAL_CLKCROSS_INST_n_85,
      S(0) => NVAL_CLKCROSS_INST_n_86
    );
\aud_rPulse1_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \aud_rPulse1_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \aud_rPulse1_carry__1_n_0\,
      CO(6) => \aud_rPulse1_carry__1_n_1\,
      CO(5) => \aud_rPulse1_carry__1_n_2\,
      CO(4) => \aud_rPulse1_carry__1_n_3\,
      CO(3) => \aud_rPulse1_carry__1_n_4\,
      CO(2) => \aud_rPulse1_carry__1_n_5\,
      CO(1) => \aud_rPulse1_carry__1_n_6\,
      CO(0) => \aud_rPulse1_carry__1_n_7\,
      DI(7 downto 0) => rOut_Data(24 downto 17),
      O(7 downto 0) => aud_rPulse1(24 downto 17),
      S(7) => NVAL_CLKCROSS_INST_n_71,
      S(6) => NVAL_CLKCROSS_INST_n_72,
      S(5) => NVAL_CLKCROSS_INST_n_73,
      S(4) => NVAL_CLKCROSS_INST_n_74,
      S(3) => NVAL_CLKCROSS_INST_n_75,
      S(2) => NVAL_CLKCROSS_INST_n_76,
      S(1) => NVAL_CLKCROSS_INST_n_77,
      S(0) => NVAL_CLKCROSS_INST_n_78
    );
\aud_rPulse1_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \aud_rPulse1_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_aud_rPulse1_carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \aud_rPulse1_carry__2_n_2\,
      CO(4) => \aud_rPulse1_carry__2_n_3\,
      CO(3) => \aud_rPulse1_carry__2_n_4\,
      CO(2) => \aud_rPulse1_carry__2_n_5\,
      CO(1) => \aud_rPulse1_carry__2_n_6\,
      CO(0) => \aud_rPulse1_carry__2_n_7\,
      DI(7 downto 6) => B"00",
      DI(5 downto 0) => rOut_Data(30 downto 25),
      O(7) => \NLW_aud_rPulse1_carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => aud_rPulse1(31 downto 25),
      S(7) => '0',
      S(6) => NVAL_CLKCROSS_INST_n_33,
      S(5) => NVAL_CLKCROSS_INST_n_34,
      S(4) => NVAL_CLKCROSS_INST_n_35,
      S(3) => NVAL_CLKCROSS_INST_n_36,
      S(2) => NVAL_CLKCROSS_INST_n_37,
      S(1) => NVAL_CLKCROSS_INST_n_38,
      S(0) => NVAL_CLKCROSS_INST_n_39
    );
aud_rPulse_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => aud_rst_chain(2),
      I1 => aud_reset,
      O => aud_reset_out
    );
aud_rPulse_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aud_clk,
      CE => '1',
      CLR => aud_reset_out,
      D => aud_rPulse,
      Q => aud_rPulse_reg_n_0
    );
aud_reset_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => aud_reset,
      I1 => aud_reset_i_3_n_0,
      I2 => aud_rst_cnt_reg(6),
      I3 => aud_rst_cnt_reg(7),
      O => aud_reset_i_1_n_0
    );
aud_reset_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pll_lock_in,
      O => aud_reset_i_2_n_0
    );
aud_reset_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => aud_rst_cnt_reg(4),
      I1 => aud_rst_cnt_reg(2),
      I2 => aud_rst_cnt_reg(0),
      I3 => aud_rst_cnt_reg(1),
      I4 => aud_rst_cnt_reg(3),
      I5 => aud_rst_cnt_reg(5),
      O => aud_reset_i_3_n_0
    );
aud_reset_reg: unisim.vcomponents.FDPE
     port map (
      C => aud_clk,
      CE => '1',
      D => aud_reset_i_1_n_0,
      PRE => aud_reset_i_2_n_0,
      Q => aud_reset
    );
aud_resetn_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aud_reset,
      I1 => aud_rst_chain(2),
      O => aud_resetn_out
    );
\aud_rst_chain_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aud_clk,
      CE => '1',
      D => '0',
      PRE => data1(2),
      Q => aud_rst_chain(0)
    );
\aud_rst_chain_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => aud_clk,
      CE => '1',
      D => aud_rst_chain(0),
      PRE => data1(2),
      Q => aud_rst_chain(1)
    );
\aud_rst_chain_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => aud_clk,
      CE => '1',
      D => aud_rst_chain(1),
      PRE => data1(2),
      Q => aud_rst_chain(2)
    );
\aud_rst_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aud_rst_cnt_reg(0),
      O => p_0_in(0)
    );
\aud_rst_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => aud_rst_cnt_reg(0),
      I1 => aud_rst_cnt_reg(1),
      O => p_0_in(1)
    );
\aud_rst_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => aud_rst_cnt_reg(1),
      I1 => aud_rst_cnt_reg(0),
      I2 => aud_rst_cnt_reg(2),
      O => p_0_in(2)
    );
\aud_rst_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => aud_rst_cnt_reg(2),
      I1 => aud_rst_cnt_reg(0),
      I2 => aud_rst_cnt_reg(1),
      I3 => aud_rst_cnt_reg(3),
      O => p_0_in(3)
    );
\aud_rst_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => aud_rst_cnt_reg(3),
      I1 => aud_rst_cnt_reg(1),
      I2 => aud_rst_cnt_reg(0),
      I3 => aud_rst_cnt_reg(2),
      I4 => aud_rst_cnt_reg(4),
      O => p_0_in(4)
    );
\aud_rst_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => aud_rst_cnt_reg(4),
      I1 => aud_rst_cnt_reg(2),
      I2 => aud_rst_cnt_reg(0),
      I3 => aud_rst_cnt_reg(1),
      I4 => aud_rst_cnt_reg(3),
      I5 => aud_rst_cnt_reg(5),
      O => p_0_in(5)
    );
\aud_rst_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => aud_reset_i_3_n_0,
      I1 => aud_rst_cnt_reg(6),
      O => p_0_in(6)
    );
\aud_rst_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => aud_reset_i_3_n_0,
      I1 => aud_rst_cnt_reg(6),
      I2 => aud_rst_cnt_reg(7),
      O => \aud_rst_cnt[7]_i_1_n_0\
    );
\aud_rst_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => aud_rst_cnt_reg(6),
      I1 => aud_reset_i_3_n_0,
      I2 => aud_rst_cnt_reg(7),
      O => p_0_in(7)
    );
\aud_rst_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aud_clk,
      CE => \aud_rst_cnt[7]_i_1_n_0\,
      CLR => aud_reset_i_2_n_0,
      D => p_0_in(0),
      Q => aud_rst_cnt_reg(0)
    );
\aud_rst_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aud_clk,
      CE => \aud_rst_cnt[7]_i_1_n_0\,
      CLR => aud_reset_i_2_n_0,
      D => p_0_in(1),
      Q => aud_rst_cnt_reg(1)
    );
\aud_rst_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aud_clk,
      CE => \aud_rst_cnt[7]_i_1_n_0\,
      CLR => aud_reset_i_2_n_0,
      D => p_0_in(2),
      Q => aud_rst_cnt_reg(2)
    );
\aud_rst_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aud_clk,
      CE => \aud_rst_cnt[7]_i_1_n_0\,
      CLR => aud_reset_i_2_n_0,
      D => p_0_in(3),
      Q => aud_rst_cnt_reg(3)
    );
\aud_rst_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aud_clk,
      CE => \aud_rst_cnt[7]_i_1_n_0\,
      CLR => aud_reset_i_2_n_0,
      D => p_0_in(4),
      Q => aud_rst_cnt_reg(4)
    );
\aud_rst_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aud_clk,
      CE => \aud_rst_cnt[7]_i_1_n_0\,
      CLR => aud_reset_i_2_n_0,
      D => p_0_in(5),
      Q => aud_rst_cnt_reg(5)
    );
\aud_rst_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aud_clk,
      CE => \aud_rst_cnt[7]_i_1_n_0\,
      CLR => aud_reset_i_2_n_0,
      D => p_0_in(6),
      Q => aud_rst_cnt_reg(6)
    );
\aud_rst_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aud_clk,
      CE => \aud_rst_cnt[7]_i_1_n_0\,
      CLR => aud_reset_i_2_n_0,
      D => p_0_in(7),
      Q => aud_rst_cnt_reg(7)
    );
\aud_tmdsclkratio_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => data1(3),
      Q => aud_tmdsclkratio_sync(0),
      R => '0'
    );
\aud_tmdsclkratio_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_clk,
      CE => '1',
      D => aud_tmdsclkratio_sync(0),
      Q => aud_tmdsclkratio_sync(1),
      R => '0'
    );
\hdmi_rCTS_Val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(0),
      Q => hdmi_rCTS_Val(0),
      R => '0'
    );
\hdmi_rCTS_Val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(10),
      Q => hdmi_rCTS_Val(10),
      R => '0'
    );
\hdmi_rCTS_Val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(11),
      Q => hdmi_rCTS_Val(11),
      R => '0'
    );
\hdmi_rCTS_Val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(12),
      Q => hdmi_rCTS_Val(12),
      R => '0'
    );
\hdmi_rCTS_Val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(13),
      Q => hdmi_rCTS_Val(13),
      R => '0'
    );
\hdmi_rCTS_Val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(14),
      Q => hdmi_rCTS_Val(14),
      R => '0'
    );
\hdmi_rCTS_Val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(15),
      Q => hdmi_rCTS_Val(15),
      R => '0'
    );
\hdmi_rCTS_Val_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(16),
      Q => hdmi_rCTS_Val(16),
      R => '0'
    );
\hdmi_rCTS_Val_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(17),
      Q => hdmi_rCTS_Val(17),
      R => '0'
    );
\hdmi_rCTS_Val_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(18),
      Q => hdmi_rCTS_Val(18),
      R => '0'
    );
\hdmi_rCTS_Val_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(19),
      Q => hdmi_rCTS_Val(19),
      R => '0'
    );
\hdmi_rCTS_Val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(1),
      Q => hdmi_rCTS_Val(1),
      R => '0'
    );
\hdmi_rCTS_Val_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(20),
      Q => hdmi_rCTS_Val(20),
      R => '0'
    );
\hdmi_rCTS_Val_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(21),
      Q => hdmi_rCTS_Val(21),
      R => '0'
    );
\hdmi_rCTS_Val_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(22),
      Q => hdmi_rCTS_Val(22),
      R => '0'
    );
\hdmi_rCTS_Val_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(23),
      Q => hdmi_rCTS_Val(23),
      R => '0'
    );
\hdmi_rCTS_Val_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(24),
      Q => hdmi_rCTS_Val(24),
      R => '0'
    );
\hdmi_rCTS_Val_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(25),
      Q => hdmi_rCTS_Val(25),
      R => '0'
    );
\hdmi_rCTS_Val_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(26),
      Q => hdmi_rCTS_Val(26),
      R => '0'
    );
\hdmi_rCTS_Val_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(27),
      Q => hdmi_rCTS_Val(27),
      R => '0'
    );
\hdmi_rCTS_Val_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(28),
      Q => hdmi_rCTS_Val(28),
      R => '0'
    );
\hdmi_rCTS_Val_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(29),
      Q => hdmi_rCTS_Val(29),
      R => '0'
    );
\hdmi_rCTS_Val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(2),
      Q => hdmi_rCTS_Val(2),
      R => '0'
    );
\hdmi_rCTS_Val_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(30),
      Q => hdmi_rCTS_Val(30),
      R => '0'
    );
\hdmi_rCTS_Val_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(31),
      Q => hdmi_rCTS_Val(31),
      R => '0'
    );
\hdmi_rCTS_Val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(3),
      Q => hdmi_rCTS_Val(3),
      R => '0'
    );
\hdmi_rCTS_Val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(4),
      Q => hdmi_rCTS_Val(4),
      R => '0'
    );
\hdmi_rCTS_Val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(5),
      Q => hdmi_rCTS_Val(5),
      R => '0'
    );
\hdmi_rCTS_Val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(6),
      Q => hdmi_rCTS_Val(6),
      R => '0'
    );
\hdmi_rCTS_Val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(7),
      Q => hdmi_rCTS_Val(7),
      R => '0'
    );
\hdmi_rCTS_Val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(8),
      Q => hdmi_rCTS_Val(8),
      R => '0'
    );
\hdmi_rCTS_Val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => hdmi_clk,
      CE => rOut_Pulse,
      D => hdmi_rCycleTimeCnt_reg(9),
      Q => hdmi_rCTS_Val(9),
      R => '0'
    );
\hdmi_rCycleTimeCnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hdmi_rCycleTimeCnt_reg(0),
      O => \hdmi_rCycleTimeCnt[0]_i_2_n_0\
    );
\hdmi_rCycleTimeCnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_15\,
      Q => hdmi_rCycleTimeCnt_reg(0),
      S => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_0\,
      CO(6) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_1\,
      CO(5) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_2\,
      CO(4) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_3\,
      CO(3) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_4\,
      CO(2) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_5\,
      CO(1) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_6\,
      CO(0) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_8\,
      O(6) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_9\,
      O(5) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_10\,
      O(4) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_11\,
      O(3) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_12\,
      O(2) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_13\,
      O(1) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_14\,
      O(0) => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_15\,
      S(7 downto 1) => hdmi_rCycleTimeCnt_reg(7 downto 1),
      S(0) => \hdmi_rCycleTimeCnt[0]_i_2_n_0\
    );
\hdmi_rCycleTimeCnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_13\,
      Q => hdmi_rCycleTimeCnt_reg(10),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_12\,
      Q => hdmi_rCycleTimeCnt_reg(11),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_11\,
      Q => hdmi_rCycleTimeCnt_reg(12),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_10\,
      Q => hdmi_rCycleTimeCnt_reg(13),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_9\,
      Q => hdmi_rCycleTimeCnt_reg(14),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_8\,
      Q => hdmi_rCycleTimeCnt_reg(15),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_15\,
      Q => hdmi_rCycleTimeCnt_reg(16),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_0\,
      CO(6) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_1\,
      CO(5) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_2\,
      CO(4) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_3\,
      CO(3) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_4\,
      CO(2) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_5\,
      CO(1) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_6\,
      CO(0) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_8\,
      O(6) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_9\,
      O(5) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_10\,
      O(4) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_11\,
      O(3) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_12\,
      O(2) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_13\,
      O(1) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_14\,
      O(0) => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_15\,
      S(7 downto 0) => hdmi_rCycleTimeCnt_reg(23 downto 16)
    );
\hdmi_rCycleTimeCnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_14\,
      Q => hdmi_rCycleTimeCnt_reg(17),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_13\,
      Q => hdmi_rCycleTimeCnt_reg(18),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_12\,
      Q => hdmi_rCycleTimeCnt_reg(19),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_14\,
      Q => hdmi_rCycleTimeCnt_reg(1),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_11\,
      Q => hdmi_rCycleTimeCnt_reg(20),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_10\,
      Q => hdmi_rCycleTimeCnt_reg(21),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_9\,
      Q => hdmi_rCycleTimeCnt_reg(22),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_8\,
      Q => hdmi_rCycleTimeCnt_reg(23),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_15\,
      Q => hdmi_rCycleTimeCnt_reg(24),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \hdmi_rCycleTimeCnt_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_hdmi_rCycleTimeCnt_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_1\,
      CO(5) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_2\,
      CO(4) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_3\,
      CO(3) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_4\,
      CO(2) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_5\,
      CO(1) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_6\,
      CO(0) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_8\,
      O(6) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_9\,
      O(5) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_10\,
      O(4) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_11\,
      O(3) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_12\,
      O(2) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_13\,
      O(1) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_14\,
      O(0) => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_15\,
      S(7 downto 0) => hdmi_rCycleTimeCnt_reg(31 downto 24)
    );
\hdmi_rCycleTimeCnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_14\,
      Q => hdmi_rCycleTimeCnt_reg(25),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_13\,
      Q => hdmi_rCycleTimeCnt_reg(26),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_12\,
      Q => hdmi_rCycleTimeCnt_reg(27),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_11\,
      Q => hdmi_rCycleTimeCnt_reg(28),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_10\,
      Q => hdmi_rCycleTimeCnt_reg(29),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_13\,
      Q => hdmi_rCycleTimeCnt_reg(2),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_9\,
      Q => hdmi_rCycleTimeCnt_reg(30),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[24]_i_1_n_8\,
      Q => hdmi_rCycleTimeCnt_reg(31),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_12\,
      Q => hdmi_rCycleTimeCnt_reg(3),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_11\,
      Q => hdmi_rCycleTimeCnt_reg(4),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_10\,
      Q => hdmi_rCycleTimeCnt_reg(5),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_9\,
      Q => hdmi_rCycleTimeCnt_reg(6),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_8\,
      Q => hdmi_rCycleTimeCnt_reg(7),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_15\,
      Q => hdmi_rCycleTimeCnt_reg(8),
      R => rOut_Pulse
    );
\hdmi_rCycleTimeCnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \hdmi_rCycleTimeCnt_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_0\,
      CO(6) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_1\,
      CO(5) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_2\,
      CO(4) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_3\,
      CO(3) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_4\,
      CO(2) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_5\,
      CO(1) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_6\,
      CO(0) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_8\,
      O(6) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_9\,
      O(5) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_10\,
      O(4) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_11\,
      O(3) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_12\,
      O(2) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_13\,
      O(1) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_14\,
      O(0) => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_15\,
      S(7 downto 0) => hdmi_rCycleTimeCnt_reg(15 downto 8)
    );
\hdmi_rCycleTimeCnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => hdmi_clk,
      CE => '1',
      D => \hdmi_rCycleTimeCnt_reg[8]_i_1_n_14\,
      Q => hdmi_rCycleTimeCnt_reg(9),
      R => rOut_Pulse
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14 is
  port (
    S_AXI_WREADY_reg : out STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_arready : out STD_LOGIC;
    axi_rvalid : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    aud_acr_valid_out : out STD_LOGIC;
    aud_acr_cts_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_acr_n_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_resetn_out : out STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_rready : in STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hdmi_clk : in STD_LOGIC;
    aud_clk : in STD_LOGIC;
    pll_lock_in : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aud_acr_valid_in : in STD_LOGIC;
    aud_acr_cts_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_acr_n_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14 is
begin
hdmi_acr_ctrl_top_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_14_top
     port map (
      S_AXI_WREADY_reg => S_AXI_WREADY_reg,
      aud_acr_cts_in(19 downto 0) => aud_acr_cts_in(19 downto 0),
      aud_acr_cts_out(19 downto 0) => aud_acr_cts_out(19 downto 0),
      aud_acr_n_in(19 downto 0) => aud_acr_n_in(19 downto 0),
      aud_acr_n_out(19 downto 0) => aud_acr_n_out(19 downto 0),
      aud_acr_valid_in => aud_acr_valid_in,
      aud_acr_valid_out => aud_acr_valid_out,
      aud_clk => aud_clk,
      aud_resetn_out => aud_resetn_out,
      axi_aclk => axi_aclk,
      axi_araddr(7 downto 0) => axi_araddr(7 downto 0),
      axi_aresetn => axi_aresetn,
      axi_arready => axi_arready,
      axi_arvalid => axi_arvalid,
      axi_awaddr(7 downto 0) => axi_awaddr(7 downto 0),
      axi_awready => axi_awready,
      axi_awvalid => axi_awvalid,
      axi_bready => axi_bready,
      axi_bresp(0) => axi_bresp(0),
      axi_bvalid => axi_bvalid,
      axi_rdata(31 downto 0) => axi_rdata(31 downto 0),
      axi_rready => axi_rready,
      axi_rresp(0) => axi_rresp(0),
      axi_rvalid => axi_rvalid,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wvalid => axi_wvalid,
      hdmi_clk => hdmi_clk,
      pll_lock_in => pll_lock_in
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
WBKwBUt/cxKvlhhAGvb3GM2roRNnFSE9jIjvYkQYA6WHriU4vq770ETPrWgVBHyauw/5MWv53xYK
E6DJcQb+yeEj1vrC6QfpPRdpGNt5j+KjR4QaPMuZ+8cfrQpZVBoiC6CxW1HvKbJcac0ie3zf+X4g
sfsg/QuMTQ1tiRWaVEQ=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZKz4kYHH94AWdO3QuJrUYx99ckxw5LBFLZileKhSOiWXSJyh+p6Fug+QmX35l6EwG4GTuAX26fl0
IR8wbSQvfd86ZSACTNZRaIP9ODUgw8n3mEUkWqpTfOc9Rk4PGg8uEbp0k9krmqVV/CnZTUj5Puks
YSGR8W7QT9pfLRELZkMxAAbGLdkfW1CXoSFnkBcGFcsQARcO/0dGP5Hhffk1dE4JQ6xkp2RDPu+w
LNeMM8tAB4FQjgjHWvITSEpnvguxxdZoJR2RaDzZG4rilm6nmnTF/CXJUNeqUyHCjKhSkdmNwuSD
vT7owFXiZNd9yXW1NCVi80m0jkpfnoMJjlf9Uw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
bWOqQltCMPK7MDypw0ID2PQSmMHUVPw9vygNDOKkUr7826sn1M2VHgRn1UwMHxyLODguofYGoLXN
Bp4qY54VxGQE1Vys1FAnE9ziI8goko4FahbdotMxkZY+4qHdnBhkA/L75wKTa8Srd+dPcGD3nKSZ
LcxmrEwfZIfmhk+mwmc=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
odGvtZIrYYfo3lXTg+xbs0leXH41XAesV5jO4zN0sI/6XI+mEWgvqzdD/4X9UkLz+W39NE3iMgLd
jliRCmj0uuRC44uvh2DTDsppRyFLB8a8TXRF9W6pRXLbAqSwdwDn/3i+XH6iRnMajgGfl5Eff6K+
zVqd2C1PqEiww967imF7aA1yo5bAzmI8fXrYdl+Su9AMF6EM2oihPYdOdpI18K8s1D4YYjt51eRg
IEzPquhADKu4viAjl9Vd0434mBeJ38XKBRD0no6k9E/KxR3yS6CgqXhfGHu51HAZFVpi4TJwxdug
yoA2dqwWvYQHY3/Cgvw+ilA0JsDTB5LFbzCRSA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OgyKp0gm5duXaoc7bD89zpMLchix5Wmfx65urqcXalTFmdH0BAtzZO2NtKC7dxajR8EEXQUx9wS2
ljzFGEb/FJ9j1mfA04zk6nhvQPr1Uk8ug6DCMi7HZyvNEKyx6duxNcBU4jC3Ory5Z9Km2YVhH8So
YRNhAWblEpDRjnq2VkLas8hiZ0njX/QVX3Eg/avHXJ8PSYwTGKPqAifkLScnDDU43RIZHw0KmSIw
qTvftzUrB91kFcv44bYJob68zG7Bb15PBZx0mJGEvvKo25m84LS1gilIWUXlnjlEPRmW9JftcXxU
P0SOBraHb11AgfRLJzUeSUjCxJeEYNaiIS+dmQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gelAjdqYUlc8H76i+kLSFBGpFibVdc1dL79oNwE8XjL1YV9c6+gJ5voaW6hQm2tyR1uB18MDYfmX
oob5ia8/rowSNgtlMDp5b5L43AIGzG+zQ9NPFUbFBexWEFV5QvMx4pnmUgOF3HZYwb7ufRnbaqmJ
ftesHfsgPWvk5HCOP/YmGheYguxyLHQkws26Qk6tVANhoJXsGv6JeugzpII6+w0y5JeFBnrrQRQc
B+62PApgdnQhVatPCqh5QGT/esBVA/kKsXFhsowttsr/eXdK5ZxUeknJ/Sno4edLgNSie7MVmbw/
PTxBgNYmcZwX9w4EMEFA+Sh8viClg8SmGfYgsw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
sxcBolWYgljp5QuGfhegMLhytmPHuY7abie7aWFh5GmxyZwQKfJlOKkLlwgp51nIJQN64gvYa6kn
L0xU8QyxqBwt73PbkLSY2R8qyIQhCdUfdNmuUDVNF872XPZ//X09XijbKECuOCdlbLtB1HN4K1Jj
d8gTYNhw+KuHZve1e8qFFFw+QMunA90Bi+5mPOEYhR3NFyfPfC/fcQ5BIYOgfDFrvKS9S8PQVYlx
BnhX7c8ReOAKHXNjpXYOCmdlIcQpnsWwcz8ly8XDp+mUW8s1kVGjxF0NwI5ugIMqfzm1ouBFI6/7
Go3WKHc20JPGy/vf6qrxpEIS5DP1sVLjZmYy5w==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
AXRaywyE/u6cboM0pObIzo6ahfwwiAIIMgnGiP+Z9wa9DAT+Y4HjMaNkHd5/G0VtLxN1NHp/Kesh
7l9aKTikuXLlB4eZNJmUxjpdgHRXccqUL9uI3YtLmB8niFTyXOwxb22O+fvd+z9l6bx+Fsd1J+51
ZjfJPwbX850eB4zwtsB7KXhHR46HaHxfOnu0KejEn5ah1qmpTtFx89bO/QwGCy0EhXSdz08jFHh9
eIS820yioZ6U2FPnUQbGWX23qI+5OpJh8xM8H5yvLwXZyNZWZB87IyRBcA2MuzV1Y7tfEy0ypAGk
SEGWP3vxFNbXupf0VtyqJqTvUVYRP/wNqISd756AmEzSexsmUTF+xctuZqgfimslvJFANu/ZJfmo
dhU3WgMC4mTT6KKvfeA4tavSRQ3453wyKlOsg1NN6yzeOMwPyAGfDQ1kjcOl3vOjj8ZPBd4r9cbg
R1+FDujDhTdf6ieLbVkWAZore0HsWCZVtfQokOiXk3Ot3My01hK3MAGg

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
qVq1QMqQNTOfFiW/c2yg1dvK4XzAsnihD9rwUxq3rKDkfcM77wqkDK5hKx40zleOrbLPS6/Go9+G
GYWJIPckqqWf+/zOt+img2/EL4Qt2wsPKnwGlvCf9SLAziKvnbGoIf70CA2lVH7Tgvf5EPS2k44L
mwBIUQD5/laZjoOB2UeiCMOKngah3ITFqp//l294rHvRV8iAQqYGzjz8Hh7JbBE+sTc4hZAe8pmc
XjVALj6DMrjKiNuDubg9snVr9MTuVYlo42IIhpQprour3788S+YlTaedvACUSq0gjHEN0w2xiQnZ
65AxGnh/6T3V9mfAQ7etHvJBixmS8t6FLp7JDA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10896)
`protect data_block
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
PRCdBz29Xwql
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    hdmi_clk : in STD_LOGIC;
    aud_clk : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_wvalid : in STD_LOGIC;
    axi_wready : out STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_bvalid : out STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_arready : out STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rvalid : out STD_LOGIC;
    axi_rready : in STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pll_lock_in : in STD_LOGIC;
    aud_resetn_out : out STD_LOGIC;
    aud_acr_valid_in : in STD_LOGIC;
    aud_acr_cts_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_acr_n_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_acr_valid_out : out STD_LOGIC;
    aud_acr_cts_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    aud_acr_n_out : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "exdes_hdmi_acr_ctrl_0,hdmi_acr_ctrl_v1_0_1_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hdmi_acr_ctrl_v1_0_1_wrapper,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_inst_aud_resetn_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_dividend_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_divisor_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axis_dout_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_dividend_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_m_axis_divisor_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_EXDES_TOPOLOGY : integer;
  attribute C_EXDES_TOPOLOGY of inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "kintexuplus";
  attribute C_HDMI_VERSION : integer;
  attribute C_HDMI_VERSION of inst : label is 0;
  attribute P_DIVD_TDATA_W : integer;
  attribute P_DIVD_TDATA_W of inst : label is 64;
  attribute P_DIVS_TDATA_W : integer;
  attribute P_DIVS_TDATA_W of inst : label is 32;
  attribute P_DOUT_TDATA_W : integer;
  attribute P_DOUT_TDATA_W of inst : label is 64;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of inst : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aud_clk : signal is "xilinx.com:signal:clock:1.0 aud_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aud_clk : signal is "XIL_INTERFACENAME aud_clk, ASSOCIATED_RESET aud_resetn:aud_resetn_out, ASSOCIATED_BUSIF m_axis_dividend:m_axis_divisor:s_axis_dout, FREQ_HZ 99952000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aud_resetn_out : signal is "xilinx.com:signal:reset:1.0 aud_resetn_out RST";
  attribute X_INTERFACE_PARAMETER of aud_resetn_out : signal is "XIL_INTERFACENAME aud_resetn_out, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_aclk : signal is "xilinx.com:signal:clock:1.0 axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axi_aclk : signal is "XIL_INTERFACENAME axi_aclk, ASSOCIATED_RESET axi_aresetn, ASSOCIATED_BUSIF axi, FREQ_HZ 99951923, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_aresetn : signal is "xilinx.com:signal:reset:1.0 axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of axi_aresetn : signal is "XIL_INTERFACENAME axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_arready : signal is "xilinx.com:interface:aximm:1.0 axi ARREADY";
  attribute X_INTERFACE_INFO of axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 axi ARVALID";
  attribute X_INTERFACE_INFO of axi_awready : signal is "xilinx.com:interface:aximm:1.0 axi AWREADY";
  attribute X_INTERFACE_INFO of axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 axi AWVALID";
  attribute X_INTERFACE_INFO of axi_bready : signal is "xilinx.com:interface:aximm:1.0 axi BREADY";
  attribute X_INTERFACE_INFO of axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 axi BVALID";
  attribute X_INTERFACE_INFO of axi_rready : signal is "xilinx.com:interface:aximm:1.0 axi RREADY";
  attribute X_INTERFACE_INFO of axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 axi RVALID";
  attribute X_INTERFACE_INFO of axi_wready : signal is "xilinx.com:interface:aximm:1.0 axi WREADY";
  attribute X_INTERFACE_INFO of axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 axi WVALID";
  attribute X_INTERFACE_INFO of hdmi_clk : signal is "xilinx.com:signal:clock:1.0 hdmi_clk CLK";
  attribute X_INTERFACE_PARAMETER of hdmi_clk : signal is "XIL_INTERFACENAME hdmi_clk, FREQ_HZ 297000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN exdes_vid_phy_controller_0_tx_tmds_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_araddr : signal is "xilinx.com:interface:aximm:1.0 axi ARADDR";
  attribute X_INTERFACE_INFO of axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 axi AWADDR";
  attribute X_INTERFACE_INFO of axi_bresp : signal is "xilinx.com:interface:aximm:1.0 axi BRESP";
  attribute X_INTERFACE_INFO of axi_rdata : signal is "xilinx.com:interface:aximm:1.0 axi RDATA";
  attribute X_INTERFACE_INFO of axi_rresp : signal is "xilinx.com:interface:aximm:1.0 axi RRESP";
  attribute X_INTERFACE_PARAMETER of axi_rresp : signal is "XIL_INTERFACENAME axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99951923, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN exdes_clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_wdata : signal is "xilinx.com:interface:aximm:1.0 axi WDATA";
  attribute X_INTERFACE_INFO of axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 axi WSTRB";
begin
  axi_bresp(1) <= \^axi_bresp\(1);
  axi_bresp(0) <= \<const0>\;
  axi_rresp(1) <= \^axi_rresp\(1);
  axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_acr_ctrl_v1_0_1_wrapper
     port map (
      aud_acr_cts_in(19 downto 0) => aud_acr_cts_in(19 downto 0),
      aud_acr_cts_out(19 downto 0) => aud_acr_cts_out(19 downto 0),
      aud_acr_n_in(19 downto 0) => aud_acr_n_in(19 downto 0),
      aud_acr_n_out(19 downto 0) => aud_acr_n_out(19 downto 0),
      aud_acr_valid_in => aud_acr_valid_in,
      aud_acr_valid_out => aud_acr_valid_out,
      aud_clk => aud_clk,
      aud_resetn => NLW_inst_aud_resetn_UNCONNECTED,
      aud_resetn_out => aud_resetn_out,
      axi_aclk => axi_aclk,
      axi_araddr(31 downto 8) => B"000000000000000000000000",
      axi_araddr(7 downto 0) => axi_araddr(7 downto 0),
      axi_aresetn => axi_aresetn,
      axi_arready => axi_arready,
      axi_arvalid => axi_arvalid,
      axi_awaddr(31 downto 8) => B"000000000000000000000000",
      axi_awaddr(7 downto 0) => axi_awaddr(7 downto 0),
      axi_awready => axi_awready,
      axi_awvalid => axi_awvalid,
      axi_bready => axi_bready,
      axi_bresp(1) => \^axi_bresp\(1),
      axi_bresp(0) => NLW_inst_axi_bresp_UNCONNECTED(0),
      axi_bvalid => axi_bvalid,
      axi_rdata(31 downto 0) => axi_rdata(31 downto 0),
      axi_rready => axi_rready,
      axi_rresp(1) => \^axi_rresp\(1),
      axi_rresp(0) => NLW_inst_axi_rresp_UNCONNECTED(0),
      axi_rvalid => axi_rvalid,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wready => axi_wready,
      axi_wstrb(3 downto 0) => B"0000",
      axi_wvalid => axi_wvalid,
      hdmi_clk => hdmi_clk,
      m_axis_dividend_tdata(63 downto 0) => NLW_inst_m_axis_dividend_tdata_UNCONNECTED(63 downto 0),
      m_axis_dividend_tready => '0',
      m_axis_dividend_tvalid => NLW_inst_m_axis_dividend_tvalid_UNCONNECTED,
      m_axis_divisor_tdata(31 downto 0) => NLW_inst_m_axis_divisor_tdata_UNCONNECTED(31 downto 0),
      m_axis_divisor_tready => '0',
      m_axis_divisor_tvalid => NLW_inst_m_axis_divisor_tvalid_UNCONNECTED,
      pll_lock_in => pll_lock_in,
      rx_link_clk => '0',
      rx_tmds_clk => '0',
      s_axis_dout_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_dout_tready => NLW_inst_s_axis_dout_tready_UNCONNECTED,
      s_axis_dout_tvalid => '0',
      tx_link_clk => '0',
      tx_tmds_clk => '0'
    );
end STRUCTURE;
