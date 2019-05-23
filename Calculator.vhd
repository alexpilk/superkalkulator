----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:28:45 05/10/2017 
-- Design Name: 
-- Module Name:    Calculator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Calculator is
      Port ( DI : in  STD_LOGIC_VECTOR (7 downto 0);
             DI_Rdy : in  STD_LOGIC;
             RST : in  STD_LOGIC;
                 
             Clk : in  STD_LOGIC;
                 
             y : out  STD_LOGIC;
             PRINT: out  STD_LOGIC_VECTOR (7 downto 0);
             ARG1 : out  STD_LOGIC_VECTOR (7 downto 0);
             ARG2 : out  STD_LOGIC_VECTOR (7 downto 0);
             DO : out  STD_LOGIC_VECTOR (7 downto 0);
             DO_Rdy : out  STD_LOGIC              
            );
            
end Calculator;




architecture Behavioral of Calculator is
   signal result : integer range 0 to 81;
   signal firstNumber : integer range 0 to 20;
   signal secondNumber : integer range 0 to 20;
   
   type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8, shelp); 
   signal current_s, next_s : state_type;

   

begin
process (RST, Clk, DI_Rdy)
   begin
   if (RST = '1') then  
     current_s <= s0;                        -- domyœlny stan po resecie
   else
     
      if (DI_Rdy = '1') then      
       if (rising_edge(CLK)) then
        current_s <= next_s;                 -- zmiana stanu
       end if;
      end if;
     
   end if;
end process;

FIRST_NUMBER : process(current_s,DI)
begin
   if(current_s = s0) then
      if(DI = X"70" or DI = X"69" or DI = X"72" or DI = X"7A" or DI = X"6B" or DI = X"73" or DI = X"74" or DI = X"6C" or DI = X"75" or DI = X"7D") then         
            if(DI = X"70") then
               firstNumber <= 0;
            elsif(DI = X"69") then
               firstNumber <= 1;
            elsif(DI = X"72") then
               firstNumber <= 2;
            elsif(DI = X"7A") then
               firstNumber <= 3;
            elsif(DI = X"6B") then
               firstNumber <= 4;
            elsif(DI = X"73") then
               firstNumber <= 5;                
            elsif(DI = X"74") then
               firstNumber <= 6;
            elsif(DI = X"6C") then
               firstNumber <= 7;
            elsif(DI = X"75") then
               firstNumber <= 8;
            elsif(DI = X"7D") then
               firstNumber <= 9;
         end if;
      end if;
    end if;
end process FIRST_NUMBER;

SECOND_NUMBER : process(current_s,DI)
begin
   if(current_s = s2 or current_s = s5 or current_s = s7) then
       if(DI = X"70" or DI = X"69" or DI = X"72" or DI = X"7A" or DI = X"6B" or DI = X"73" or DI = X"74" or DI = X"6C" or DI = X"75" or DI = X"7D") then
         if(DI = X"70") then
               secondNumber <= 0;
            elsif(DI = X"69") then
               secondNumber <= 1;
            elsif(DI = X"72") then
               secondNumber <= 2;
            elsif(DI = X"7A") then
               secondNumber <= 3;
            elsif(DI = X"6B") then
               secondNumber <= 4;
            elsif(DI = X"73") then
               secondNumber <= 5;                
            elsif(DI = X"74") then
               secondNumber <= 6;
            elsif(DI = X"6C") then
               secondNumber <= 7;
            elsif(DI = X"75") then
               secondNumber <= 8;
            elsif(DI = X"7D") then
               secondNumber <= 9;           
         end if;
      end if;
    end if;
end process SECOND_NUMBER;

CALCULATE : process(current_s)
begin
   if(current_s = s3) then
       result <= firstNumber + secondNumber;
   elsif(current_s = s6) then
       result <= firstNumber - secondNumber;
   elsif(current_s = s8) then
       result <= firstNumber * secondNumber;
      end if;
end process CALCULATE;


STATE_MACHINE : process(current_s, DI)
begin

   case current_s is
      when shelp =>
            DO_Rdy <= '0';
             if(DI = X"29") then
               next_s <= s0;
             else
               next_s <= shelp;
             end if; 
      when s0 =>
         DO_Rdy <= '0';                           
         if(DI = X"70" or DI = X"69" or DI = X"72" or DI = X"7A" or DI = X"6B" or DI = X"73" or DI = X"74" or DI = X"6C" or DI = X"75" or DI = X"7D") then  
         DO_Rdy <= '1';                
          next_s <= s1;
         else
          next_s <= s0;
        end if;
         
         when s1 =>
            DO_Rdy <= '0';
            if(DI = X"79") then
             next_s <= s2;
            elsif(DI = X"7B") then
               next_s <= s5;
            elsif(DI = X"7C") then
               next_s <= s7;
            else
             next_s <= s1;
            end if;
         
         when s2 =>            
           if(DI = X"70" or DI = X"69" or DI = X"72" or DI = X"7A" or DI = X"6B" or DI = X"73" or DI = X"74" or DI = X"6C" or DI = X"75" or DI = X"7D") then   
            DO_Rdy <= '1';                           
                      
             next_s <= s3;
            else
             next_s <= s2;
            end if;
            
          when s3 =>
            DO_Rdy <= '0';
            if(DI = X"5A") then
            DO_Rdy <= '1';                           
             next_s <= s4;
            else
             next_s <= s3;
            end if;   
            
          when s4 =>
            DO_Rdy <= '0';
             if(DI = X"2D") then
               next_s <= shelp;
             else
               next_s <= s4;
             end if; 
             
           when s5 =>
               if(DI = X"70" or DI = X"69" or DI = X"72" or DI = X"7A" or DI = X"6B" or DI = X"73" or DI = X"74" or DI = X"6C" or DI = X"75" or DI = X"7D") then 
            DO_Rdy <= '1';                           
                  next_s <= s6;
               else
                  next_s <= s5;
               end if;
               
           when s6 =>
            DO_Rdy <= '0';
               if(DI = X"5A") then
            DO_Rdy <= '1';                           
                  next_s <= s4;
               else
                  next_s <= s6;
               end if;

            when s7 =>
               if(DI = X"70" or DI = X"69" or DI = X"72" or DI = X"7A" or DI = X"6B" or DI = X"73" or DI = X"74" or DI = X"6C" or DI = X"75" or DI = X"7D") then 
            DO_Rdy <= '1';                           
                  next_s <= s8;
               else
                  next_s <= s7;
               end if;
               
             when s8 =>
            DO_Rdy <= '0';
               if(DI = X"5A") then
            DO_Rdy <= '1';                           
                  next_s <= s4;
               else
                  next_s <= s8;
               end if;
           
   end case;
   
end process STATE_MACHINE;

--sprawdzenie czy wgl przechodzi do s4
y <= '1' when current_s = s4 and result = 3
else '0';

with current_s select
   ARG1 <= STD_LOGIC_VECTOR(TO_UNSIGNED( firstNumber, 8 ) ) when s1,
           STD_LOGIC_VECTOR(TO_UNSIGNED(firstNumber, 8 ) ) when others;
           
           
with current_s select
   ARG2 <= STD_LOGIC_VECTOR(TO_UNSIGNED( secondNumber, 8 ) ) when s3,
           STD_LOGIC_VECTOR(TO_UNSIGNED( secondNumber, 8 ) ) when others;           

with current_s select
   DO <= STD_LOGIC_VECTOR(TO_UNSIGNED( result, 8 ) ) when s4,
         STD_LOGIC_VECTOR(TO_UNSIGNED( 0, 8 ) ) when others;    

with current_s select
   PRINT <= STD_LOGIC_VECTOR(TO_UNSIGNED( firstNumber, 8 ) ) when s0, STD_LOGIC_VECTOR(TO_UNSIGNED( secondNumber, 8 ) ) when s2, STD_LOGIC_VECTOR(TO_UNSIGNED( result, 8 ) ) when s3,STD_LOGIC_VECTOR(TO_UNSIGNED( result, 8 ) ) when s6,STD_LOGIC_VECTOR(TO_UNSIGNED( result, 8 ) ) when s8,
   STD_LOGIC_VECTOR(TO_UNSIGNED( secondNumber, 8 ) ) when s5,STD_LOGIC_VECTOR(TO_UNSIGNED( secondNumber, 8 ) ) when s7,STD_LOGIC_VECTOR(TO_UNSIGNED( 0, 8 ) ) when others;


end Behavioral;

