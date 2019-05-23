--------------------------------------------------------------------------------
--
--   FileName:         ps2_keyboard.vhd
--   Dependencies:     debounce.vhd
--   Design Software:  Quartus II 32-bit Version 12.1 Build 177 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 11/25/2013 Scott Larson
--     Initial Public Release
--    
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ps2_keyboard IS
  GENERIC(
    clk_freq              : INTEGER := 50_000_000; --system clock frequency in Hz
    debounce_counter_size : INTEGER := 8);         --set such that (2^size)/clk_freq = 5us (size = 8 for 50MHz)
  PORT(
    clk          : IN  STD_LOGIC;                     --system clock
    ps2_clk      : IN  STD_LOGIC;                     --clock signal from PS/2 keyboard
    ps2_data     : IN  STD_LOGIC;                     --data signal from PS/2 keyboard
    ps2_code     : OUT STD_LOGIC_VECTOR(8 DOWNTO 1);
--    ps2_code_2     : OUT STD_LOGIC;
--    ps2_code_3     : OUT STD_LOGIC;
--    ps2_code_4     : OUT STD_LOGIC;
--    ps2_code_5     : OUT STD_LOGIC;
--    ps2_code_6     : OUT STD_LOGIC;
--    ps2_code_7     : OUT STD_LOGIC;
--    ps2_code_8     : OUT STD_LOGIC;
    --lcd0         : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    --lcd1         : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ps2_code_new : OUT STD_LOGIC                     --flag that new PS/2 code is available on ps2_code bus
  ); --code received from PS/2
END ps2_keyboard;

ARCHITECTURE logic OF ps2_keyboard IS
  SIGNAL sync_ffs     : STD_LOGIC_VECTOR(1 DOWNTO 0);       --synchronizer flip-flops for PS/2 signals
  SIGNAL ps2_clk_int  : STD_LOGIC;                          --debounced clock signal from PS/2 keyboard
  SIGNAL ps2_data_int : STD_LOGIC;                          --debounced data signal from PS/2 keyboard
  SIGNAL ps2_word     : STD_LOGIC_VECTOR(10 DOWNTO 0);      --stores the ps2 data word
  SIGNAL error        : STD_LOGIC;                          --validate parity, start, and stop bits
  SIGNAL count_idle   : INTEGER RANGE 0 TO clk_freq/18_000; --counter to determine PS/2 is idle
  SIGNAL can_send_again    : STD_LOGIC := '0';
  SIGNAL can_send_again_old    : STD_LOGIC := '0';
  
  --declare debounce component for debouncing PS2 input signals
  COMPONENT debounce IS
    GENERIC(
      counter_size : INTEGER); --debounce period (in seconds) = 2^counter_size/(clk freq in Hz)
    PORT(
      clk    : IN  STD_LOGIC;  --input clock
      button : IN  STD_LOGIC;  --input signal to be debounced
      result : OUT STD_LOGIC); --debounced signal
  END COMPONENT;
BEGIN

  --synchronizer flip-flops
  PROCESS(clk)
  BEGIN
    IF(clk'EVENT AND clk = '1') THEN  --rising edge of system clock
      sync_ffs(0) <= ps2_clk;           --synchronize PS/2 clock signal
      sync_ffs(1) <= ps2_data;          --synchronize PS/2 data signal
    END IF;
  END PROCESS;

  --debounce PS2 input signals
  debounce_ps2_clk: debounce
    GENERIC MAP(counter_size => debounce_counter_size)
    PORT MAP(clk => clk, button => sync_ffs(0), result => ps2_clk_int);
  debounce_ps2_data: debounce
    GENERIC MAP(counter_size => debounce_counter_size)
    PORT MAP(clk => clk, button => sync_ffs(1), result => ps2_data_int);

  --input PS2 data
  PROCESS(ps2_clk_int)
  BEGIN
    IF(ps2_clk_int'EVENT AND ps2_clk_int = '0') THEN    --falling edge of PS2 clock
      --can_send_again <= '1';
      can_send_again <= not can_send_again;
      ps2_word <= ps2_data_int & ps2_word(10 DOWNTO 1);   --shift in PS2 data bit
    END IF;
  END PROCESS;
    
  --verify that parity, start, and stop bits are all correct
  error <= NOT (NOT ps2_word(0) AND ps2_word(10) AND (ps2_word(9) XOR ps2_word(8) XOR
        ps2_word(7) XOR ps2_word(6) XOR ps2_word(5) XOR ps2_word(4) XOR ps2_word(3) XOR 
        ps2_word(2) XOR ps2_word(1)));  

  --determine if PS2 port is idle (i.e. last transaction is finished) and output result
  PROCESS(clk)
      VARIABLE data_sent    : integer := 0;
  BEGIN
    IF(clk'EVENT AND clk = '1') THEN           --rising edge of system clock
      
      IF(can_send_again /= can_send_again_old) THEN
          data_sent := 0;
      END IF;  
 
      IF(data_sent = 1) THEN
          --data_sent := 0;
          ps2_code_new <= '0';
          count_idle <= 0;
          --can_send_again := 0;
      ELSE
         IF(ps2_clk_int = '0') THEN                 --low PS2 clock, PS/2 is active
           count_idle <= 0;                           --reset idle counter
         ELSIF(count_idle /= clk_freq/18_000) THEN  --PS2 clock has been high less than a half clock period (<55us)
             count_idle <= count_idle + 1;            --continue counting
         END IF;
         
         IF(count_idle = clk_freq/18_000 AND error = '0') THEN  --idle threshold reached and no errors detected
       --  IF(count_idle = clk_freq/18_000) THEN  --idle threshold reached and no errors detected
           ps2_code_new <= '1';                                   --set flag that new PS/2 code is available
           ps2_code <= ps2_word(8 DOWNTO 1);                      --output new PS/2 code
           can_send_again_old <= can_send_again;  
           data_sent := 1;                         
   --        ps2_code_1 <= ps2_word(1);
   --        ps2_code_2 <= ps2_word(2);
   --        ps2_code_3 <= ps2_word(3);
   --        ps2_code_4 <= ps2_word(4);
   --        ps2_code_5 <= ps2_word(5);
   --        ps2_code_6 <= ps2_word(6);
   --        ps2_code_7 <= ps2_word(7);
   --        ps2_code_8 <= ps2_word(8);
         ELSE                                                   --PS/2 port active or error detected
           ps2_code_new <= '0';                                   --set flag that PS/2 transaction is in progress
         END IF;

      END IF;      
    END IF;
  END PROCESS;
  
END logic;
