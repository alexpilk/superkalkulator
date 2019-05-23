library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_signed.all;

entity PS2_RX is
    Port ( PS2_Clk : in  STD_LOGIC;
           PS2_Data : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           DO : out  STD_LOGIC_VECTOR (7 downto 0);
           DO_Rdy : out  STD_LOGIC);
end PS2_RX;

architecture Behavioral of PS2_RX is
   signal shift_reg_2b : STD_LOGIC_VECTOR(1 downto 0) := "11";
   signal shift_reg_11b :STD_LOGIC_VECTOR(10 downto 0) := "00000000000";
   signal mod11_temp : STD_LOGIC_VECTOR(3 downto 0) := "0000";
	signal parity_check : STD_LOGIC := '0';
   type state_type is (idle, test, rx_ok);
   signal state, next_state : state_type;
	
begin


--Shift register for PS2_CLK on Clk clock(50Mhz)
--Detects rising edge
process(Clk)

begin
   if rising_edge(Clk) then 
      shift_reg_2b(1) <= PS2_Clk;
      shift_reg_2b(0) <= shift_reg_2b(1);          
    end if;
end process;


--Counter mod11
process(Clk, state)

begin
   if(rising_edge(Clk)) then
      if( state  = rx_ok) then
         mod11_temp <= "0000";
      elsif(shift_reg_2b(1) = '0' and shift_reg_2b(0) = '1') then

         mod11_temp <= mod11_temp + 1;  
            
       end if;
    end if;
end process;

   
--11 bit shift register
process(Clk)

begin
   if(rising_edge(Clk)) then
		if(shift_reg_2b(1) = '0' and shift_reg_2b(0) = '1') then
			shift_reg_11b(9 downto 0) <= shift_reg_11b(10 downto 1);
			shift_reg_11b(10) <= PS2_Data;
		end if;
   end if;

end process;

--parity check
parity_check <= not(shift_reg_11b(8) xor shift_reg_11b(7) xor shift_reg_11b(6) 
                  xor shift_reg_11b(5) xor shift_reg_11b(4) xor shift_reg_11b(3) 
                    xor shift_reg_11b(2) xor shift_reg_11b(1));



--State machines--
SHIFT_STATE: process(Clk)
begin
   if(rising_edge(Clk)) then
      state <= next_state;
   end if;
end process SHIFT_STATE;


STATE_MACHINE : process(state, mod11_temp, shift_reg_11b, parity_check)
begin

   next_state <= state;
   
   case state is
      when idle =>
         if(mod11_temp = "1011") then
            next_state <= test;
         end if;
      when test =>
         if(shift_reg_11b(0) = '0' and shift_reg_11b(9) = parity_check and shift_reg_11b(10) = '1') then
            next_state <= rx_ok;
         else
            next_state <=idle;
      end if;
         when rx_ok =>
            next_state <= idle;
   end case;
   
end process STATE_MACHINE;

--In place of process

DO_Rdy <= '1' when state = rx_ok
   else '0';

DO <= shift_reg_11b(8 downto 1);-- when state = rx_ok;
   


end Behavioral;
