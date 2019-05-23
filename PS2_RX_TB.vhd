
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY PS2_RX_TB IS
END PS2_RX_TB;
 
ARCHITECTURE behavior OF PS2_RX_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PS2_RX
    PORT(
         PS2_Clk : IN  std_logic;
         PS2_Data : IN  std_logic;
         Clk : IN  std_logic;
         DO : OUT  std_logic_vector(7 downto 0);
         DO_Rdy : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal PS2_Clk : std_logic := '1';
   signal PS2_Data : std_logic := '1';
   signal Clk : std_logic := '0';

 	--Outputs
   signal DO : std_logic_vector(7 downto 0);
   signal DO_Rdy : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PS2_RX PORT MAP (
          PS2_Clk => PS2_Clk,
          PS2_Data => PS2_Data,
          Clk => Clk,
          DO => DO,
          DO_Rdy => DO_Rdy
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   PROCESS
		procedure TransmPS2( Byte : std_logic_vector( 7 downto 0 ) ) is
		  variable Frame : std_logic_vector( 10 downto 0 ) := "11" & Byte & '0';
		begin
		  -- Parity calculation
		  for i in 0 to 7 loop
			Frame( 9 ) := Frame( 9 ) xor Byte( i );
		  end loop;
		  -- Transmission of the frame; Fclk = 10kHz
		  for i in 0 to 10 loop
			PS2_Data <= Frame( i );
			wait for 5 us;
			PS2_Clk <= '0', '1' after 50 us;
			wait for 95 us;
		  end loop;
		end procedure;
	BEGIN
		wait for 15 us;
		TransmPS2( X"F0" );
		wait for 200 us;
		TransmPS2( X"81" );
		wait; -- will wait forever
	END PROCESS;


END;
