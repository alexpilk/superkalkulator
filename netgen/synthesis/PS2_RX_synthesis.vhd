--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PS2_RX_synthesis.vhd
-- /___/   /\     Timestamp: Mon Mar 20 09:32:46 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm PS2_RX -w -dir netgen/synthesis -ofmt vhdl -sim PS2_RX.ngc PS2_RX_synthesis.vhd 
-- Device	: xc3s500e-5-fg320
-- Input file	: PS2_RX.ngc
-- Output file	: C:\Users\lab\Desktop\Ucisw2 PROJEKT\PS2_RX\netgen\synthesis\PS2_RX_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: PS2_RX
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity PS2_RX is
  port (
    Clk : in STD_LOGIC := 'X'; 
    PS2_Clk : in STD_LOGIC := 'X'; 
    PS2_Data : in STD_LOGIC := 'X'; 
    DO_Rdy : out STD_LOGIC; 
    DO : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end PS2_RX;

architecture Structure of PS2_RX is
  signal Clk_BUFGP_1 : STD_LOGIC; 
  signal DO_0_10 : STD_LOGIC; 
  signal DO_1_11 : STD_LOGIC; 
  signal DO_2_12 : STD_LOGIC; 
  signal DO_3_13 : STD_LOGIC; 
  signal DO_4_14 : STD_LOGIC; 
  signal DO_5_15 : STD_LOGIC; 
  signal DO_6_16 : STD_LOGIC; 
  signal DO_7_17 : STD_LOGIC; 
  signal Mxor_parity_check_xor0000_xo_0_4_19 : STD_LOGIC; 
  signal Mxor_parity_check_xor0000_xo_0_9_20 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal PS2_Clk_IBUF_24 : STD_LOGIC; 
  signal PS2_Data_IBUF_26 : STD_LOGIC; 
  signal mod11_temp_and0000 : STD_LOGIC; 
  signal mod11_temp_and0001 : STD_LOGIC; 
  signal state_FSM_FFd1_50 : STD_LOGIC; 
  signal state_FSM_FFd1_In1_51 : STD_LOGIC; 
  signal state_FSM_FFd2_52 : STD_LOGIC; 
  signal state_FSM_FFd2_In1 : STD_LOGIC; 
  signal state_cmp_eq0000 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal mod11_temp : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal shift_reg_11b : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal shift_reg_2b : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  shift_reg_11b_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => PS2_Data_IBUF_26,
      Q => shift_reg_11b(10)
    );
  shift_reg_2b_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => PS2_Clk_IBUF_24,
      Q => shift_reg_2b(1)
    );
  shift_reg_2b_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => shift_reg_2b(1),
      Q => shift_reg_2b(0)
    );
  shift_reg_11b_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => shift_reg_11b(10),
      Q => shift_reg_11b(9)
    );
  shift_reg_11b_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => shift_reg_11b(9),
      Q => shift_reg_11b(8)
    );
  shift_reg_11b_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => shift_reg_11b(8),
      Q => shift_reg_11b(7)
    );
  shift_reg_11b_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => shift_reg_11b(7),
      Q => shift_reg_11b(6)
    );
  shift_reg_11b_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => shift_reg_11b(6),
      Q => shift_reg_11b(5)
    );
  shift_reg_11b_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => shift_reg_11b(5),
      Q => shift_reg_11b(4)
    );
  shift_reg_11b_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => shift_reg_11b(4),
      Q => shift_reg_11b(3)
    );
  shift_reg_11b_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => shift_reg_11b(3),
      Q => shift_reg_11b(2)
    );
  shift_reg_11b_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => shift_reg_11b(2),
      Q => shift_reg_11b(1)
    );
  shift_reg_11b_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => shift_reg_11b(1),
      Q => shift_reg_11b(0)
    );
  mod11_temp_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => Result(0),
      R => mod11_temp_and0000,
      Q => mod11_temp(0)
    );
  mod11_temp_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => Result(1),
      R => mod11_temp_and0000,
      Q => mod11_temp(1)
    );
  mod11_temp_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => Result(2),
      R => mod11_temp_and0000,
      Q => mod11_temp(2)
    );
  mod11_temp_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => mod11_temp_and0001,
      D => Result(3),
      R => mod11_temp_and0000,
      Q => mod11_temp(3)
    );
  DO_0 : LD
    port map (
      D => shift_reg_11b(1),
      G => state_FSM_FFd1_50,
      Q => DO_0_10
    );
  DO_1 : LD
    port map (
      D => shift_reg_11b(2),
      G => state_FSM_FFd1_50,
      Q => DO_1_11
    );
  DO_2 : LD
    port map (
      D => shift_reg_11b(3),
      G => state_FSM_FFd1_50,
      Q => DO_2_12
    );
  DO_3 : LD
    port map (
      D => shift_reg_11b(4),
      G => state_FSM_FFd1_50,
      Q => DO_3_13
    );
  DO_4 : LD
    port map (
      D => shift_reg_11b(5),
      G => state_FSM_FFd1_50,
      Q => DO_4_14
    );
  DO_5 : LD
    port map (
      D => shift_reg_11b(6),
      G => state_FSM_FFd1_50,
      Q => DO_5_15
    );
  DO_6 : LD
    port map (
      D => shift_reg_11b(7),
      G => state_FSM_FFd1_50,
      Q => DO_6_16
    );
  DO_7 : LD
    port map (
      D => shift_reg_11b(8),
      G => state_FSM_FFd1_50,
      Q => DO_7_17
    );
  Mcount_mod11_temp_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => mod11_temp(1),
      I1 => mod11_temp(0),
      O => Result(1)
    );
  Mcount_mod11_temp_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => mod11_temp(2),
      I1 => mod11_temp(1),
      I2 => mod11_temp(0),
      O => Result(2)
    );
  Mcount_mod11_temp_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => mod11_temp(3),
      I1 => mod11_temp(1),
      I2 => mod11_temp(0),
      I3 => mod11_temp(2),
      O => Result(3)
    );
  mod11_temp_and00011 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => shift_reg_2b(1),
      I1 => shift_reg_2b(0),
      O => mod11_temp_and0001
    );
  mod11_temp_and00001 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => shift_reg_2b(0),
      I1 => shift_reg_2b(1),
      I2 => N5,
      O => mod11_temp_and0000
    );
  state_FSM_FFd1_In_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => shift_reg_11b(0),
      I1 => shift_reg_11b(10),
      O => N11
    );
  Mxor_parity_check_xor0000_xo_0_9 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => shift_reg_11b(5),
      I1 => shift_reg_11b(6),
      I2 => shift_reg_11b(7),
      I3 => shift_reg_11b(8),
      O => Mxor_parity_check_xor0000_xo_0_9_20
    );
  PS2_Clk_IBUF : IBUF
    port map (
      I => PS2_Clk,
      O => PS2_Clk_IBUF_24
    );
  PS2_Data_IBUF : IBUF
    port map (
      I => PS2_Data,
      O => PS2_Data_IBUF_26
    );
  DO_Rdy_OBUF : OBUF
    port map (
      I => state_FSM_FFd1_50,
      O => DO_Rdy
    );
  DO_7_OBUF : OBUF
    port map (
      I => DO_7_17,
      O => DO(7)
    );
  DO_6_OBUF : OBUF
    port map (
      I => DO_6_16,
      O => DO(6)
    );
  DO_5_OBUF : OBUF
    port map (
      I => DO_5_15,
      O => DO(5)
    );
  DO_4_OBUF : OBUF
    port map (
      I => DO_4_14,
      O => DO(4)
    );
  DO_3_OBUF : OBUF
    port map (
      I => DO_3_13,
      O => DO(3)
    );
  DO_2_OBUF : OBUF
    port map (
      I => DO_2_12,
      O => DO(2)
    );
  DO_1_OBUF : OBUF
    port map (
      I => DO_1_11,
      O => DO(1)
    );
  DO_0_OBUF : OBUF
    port map (
      I => DO_0_10,
      O => DO(0)
    );
  state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => state_FSM_FFd1_In1_51,
      R => N11,
      Q => state_FSM_FFd1_50
    );
  state_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => state_FSM_FFd2_In1,
      R => state_FSM_FFd2_52,
      Q => state_FSM_FFd2_52
    );
  state_FSM_FFd2_In11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_cmp_eq0000,
      I1 => state_FSM_FFd1_50,
      O => state_FSM_FFd2_In1
    );
  state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"9600"
    )
    port map (
      I0 => Mxor_parity_check_xor0000_xo_0_4_19,
      I1 => Mxor_parity_check_xor0000_xo_0_9_20,
      I2 => shift_reg_11b(9),
      I3 => state_FSM_FFd2_52,
      O => state_FSM_FFd1_In1_51
    );
  Clk_BUFGP : BUFGP
    port map (
      I => Clk,
      O => Clk_BUFGP_1
    );
  Mcount_mod11_temp_xor_0_11_INV_0 : INV
    port map (
      I => mod11_temp(0),
      O => Result(0)
    );
  state_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => mod11_temp(3),
      I1 => mod11_temp(2),
      I2 => mod11_temp(1),
      I3 => mod11_temp(0),
      LO => N5,
      O => state_cmp_eq0000
    );
  Mxor_parity_check_xor0000_xo_0_4 : LUT4_L
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => shift_reg_11b(1),
      I1 => shift_reg_11b(2),
      I2 => shift_reg_11b(3),
      I3 => shift_reg_11b(4),
      LO => Mxor_parity_check_xor0000_xo_0_4_19
    );

end Structure;

