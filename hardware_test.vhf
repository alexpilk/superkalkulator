--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : hardware_test.vhf
-- /___/   /\     Timestamp : 05/16/2019 14:16:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Downloads/PS2Module-Calculator-master/PS2Module-Calculator-master/hardware_test.vhf -w C:/Users/lab/Downloads/PS2Module-Calculator-master/PS2Module-Calculator-master/hardware_test.sch
--Design Name: hardware_test
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity hardware_test is
   port ( BTN_SOUTH : in    std_logic; 
          Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          RS232_RxD : in    std_logic; 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          RS232_TxD : out   std_logic; 
          SF_CE     : out   std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic; 
          XLXN_15   : out   std_logic; 
          LCD_D     : inout std_logic_vector (3 downto 0));
end hardware_test;

architecture BEHAVIORAL of hardware_test is
   attribute BOX_TYPE   : string ;
   signal aaa                            : std_logic_vector (63 downto 0);
   signal XLXN_3                         : std_logic_vector (7 downto 0);
   signal XLXN_40                        : std_logic_vector (15 downto 0);
   signal XLXN_105                       : std_logic;
   signal XLXN_107                       : std_logic;
   signal XLXN_144                       : std_logic;
   signal XLXN_147                       : std_logic_vector (7 downto 0);
   signal XLXN_150                       : std_logic;
   signal XLXN_155                       : std_logic_vector (7 downto 0);
   signal XLXN_159                       : std_logic;
   signal XLXN_166                       : std_logic;
   signal XLXI_10_CursorOn_openSignal    : std_logic;
   signal XLXI_10_Goto00_openSignal      : std_logic;
   signal XLXI_10_NewLine_openSignal     : std_logic;
   signal XLXI_10_ScrollClear_openSignal : std_logic;
   signal XLXI_10_ScrollEn_openSignal    : std_logic;
   signal XLXI_29_TxBusy_openSignal      : std_logic;
   component RS232
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             RS232_RxD : in    std_logic; 
             TxStart   : in    std_logic; 
             TxDI      : in    std_logic_vector (7 downto 0); 
             TxBusy    : out   std_logic; 
             RxRdy     : out   std_logic; 
             RS232_TxD : out   std_logic; 
             RxDO      : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component Calculator
      port ( DI_Rdy : in    std_logic; 
             RST    : in    std_logic; 
             Clk    : in    std_logic; 
             DI     : in    std_logic_vector (7 downto 0); 
             y      : out   std_logic; 
             DO_Rdy : out   std_logic; 
             ARG1   : out   std_logic_vector (7 downto 0); 
             ARG2   : out   std_logic_vector (7 downto 0); 
             DO     : out   std_logic_vector (7 downto 0); 
             PRINT  : out   std_logic_vector (7 downto 0));
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FSM_SendByte
      port ( Clk    : in    std_logic; 
             Reset  : in    std_logic; 
             DIRdy  : in    std_logic; 
             TxBusy : in    std_logic; 
             DI     : in    std_logic_vector (7 downto 0); 
             DORdy  : out   std_logic; 
             Busy   : out   std_logic; 
             DO     : out   std_logic_vector (7 downto 0));
   end component;
   
   component ps2_keyboard
      port ( clk          : in    std_logic; 
             ps2_clk      : in    std_logic; 
             ps2_data     : in    std_logic; 
             ps2_code_new : out   std_logic; 
             ps2_code     : out   std_logic_vector (8 downto 1));
   end component;
   
begin
   aaa(31 downto 0) <= x"00000000";
   XLXN_40(15 downto 0) <= x"24FF";
   XLXI_1 : RS232
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                Reset=>BTN_SOUTH,
                RS232_RxD=>RS232_RxD,
                TxDI(7 downto 0)=>XLXN_3(7 downto 0),
                TxStart=>XLXN_166,
                RS232_TxD=>RS232_TxD,
                RxDO=>open,
                RxRdy=>open,
                TxBusy=>open);
   
   XLXI_3 : Calculator
      port map (Clk=>Clk_50MHz,
                DI(7 downto 0)=>XLXN_3(7 downto 0),
                DI_Rdy=>XLXN_166,
                RST=>BTN_SOUTH,
                ARG1(7 downto 0)=>aaa(63 downto 56),
                ARG2(7 downto 0)=>aaa(51 downto 44),
                DO(7 downto 0)=>aaa(39 downto 32),
                DO_Rdy=>XLXN_159,
                PRINT(7 downto 0)=>XLXN_155(7 downto 0),
                y=>XLXN_15);
   
   XLXI_4 : LCD1x64
      port map (Blank(15 downto 0)=>XLXN_40(15 downto 0),
                Clk_50MHz=>Clk_50MHz,
                Line(63 downto 0)=>aaa(63 downto 0),
                Reset=>BTN_SOUTH,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_10 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_147(7 downto 0),
                Char_WE=>XLXN_144,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>XLXI_10_CursorOn_openSignal,
                Goto00=>XLXI_10_Goto00_openSignal,
                Home=>XLXN_107,
                NewLine=>XLXI_10_NewLine_openSignal,
                ScrollClear=>XLXI_10_ScrollClear_openSignal,
                ScrollEn=>XLXI_10_ScrollEn_openSignal,
                Busy=>open,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_105,
                VGA_VS=>VGA_VS);
   
   XLXI_25 : BUF
      port map (I=>XLXN_105,
                O=>VGA_R);
   
   XLXI_26 : BUF
      port map (I=>XLXN_105,
                O=>VGA_G);
   
   XLXI_27 : BUF
      port map (I=>XLXN_105,
                O=>VGA_B);
   
   XLXI_28 : GND
      port map (G=>XLXN_107);
   
   XLXI_29 : FSM_SendByte
      port map (Clk=>Clk_50MHz,
                DI(7 downto 0)=>XLXN_155(7 downto 0),
                DIRdy=>XLXN_159,
                Reset=>XLXN_150,
                TxBusy=>XLXI_29_TxBusy_openSignal,
                Busy=>open,
                DO(7 downto 0)=>XLXN_147(7 downto 0),
                DORdy=>XLXN_144);
   
   XLXI_42 : GND
      port map (G=>XLXN_150);
   
   XLXI_43 : ps2_keyboard
      port map (clk=>Clk_50MHz,
                ps2_clk=>PS2_Clk,
                ps2_data=>PS2_Data,
                ps2_code(8 downto 1)=>XLXN_3(7 downto 0),
                ps2_code_new=>XLXN_166);
   
end BEHAVIORAL;


