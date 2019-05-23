library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FSM_SendByte is
    port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           DI : in  STD_LOGIC_VECTOR (7 downto 0);
           DIRdy : in  STD_LOGIC;
           TxBusy : in  STD_LOGIC;
           DO : out  STD_LOGIC_VECTOR (7 downto 0);
           DORdy : out  STD_LOGIC;
           Busy : out  STD_LOGIC  );
end FSM_SendByte;

architecture RTL of FSM_SendByte is

  type state_type is ( sReset, sReady, sWaitH, sSendH, sWaitL, sSendL );
  signal State, NextState : state_type;
  signal regDI : STD_LOGIC_VECTOR (7 downto 0);
  signal HalfByte : STD_LOGIC_VECTOR (3 downto 0);

begin

  -- Input register (with CE)
  regDI <= DI when rising_edge( Clk ) and State = sReady;

  -- HalfByte selection
  HalfByte <= regDI( 7 downto 4 ) when State = sSendH or State = sWaitL
              else regDI( 3 downto 0 );

  -- State register (with asynchronous reset) = process1
  process ( Clk, Reset )
  begin
    if Reset = '1' then
      State <= sReset;
    elsif rising_edge( Clk ) then
      State <= NextState;
    end if;
  end process;

  -- Next state decoding = process2
  process ( State, DIRdy, TxBusy )
  begin
    
    NextState <= State; -- default

    case State is
      when sReset =>
        NextState <= sReady;

      when sReady =>
        if DIRdy = '1' then
          NextState <= sWaitH;
        end if;

      when sWaitH =>
        if TxBusy = '0' then
          NextState <= sSendH;
        end if;

      when sSendH =>
        NextState <= sWaitL;
      
      when sWaitL =>
        if TxBusy = '0' then
          NextState <=
                    sSendL;
        end if;

      when sSendL =>
        NextState <= sReady;

    end case;
  end process;

  -- Outputs = process3
  with HalfByte select         -- 0-15 => ASCII '0'-'F'
    DO <= X"30" when "0000",
          X"31" when "0001",
          X"32" when "0010",
          X"33" when "0011",
          X"34" when "0100",
          X"35" when "0101",
          X"36" when "0110",
          X"37" when "0111",
          X"38" when "1000",
          X"39" when "1001",
          X"41" when "1010",
          X"42" when "1011",
          X"43" when "1100",
          X"44" when "1101",
          X"45" when "1110",
          X"46" when others;
  DORdy <= '1' when State = sSendH or State = sSendL
           else '0';
  Busy  <= '1' when State /= sReady
           else '0';

end RTL;
