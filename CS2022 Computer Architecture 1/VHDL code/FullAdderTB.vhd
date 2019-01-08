----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2018 14:11:40
-- Design Name: 
-- Module Name: FullAdderTB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdderTB is
end FullAdderTB;

architecture Behavioral of FullAdderTB is

COMPONENT FullAdder
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         Cin : IN  std_logic;
         Cout : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal S : std_logic;
   signal clk : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FullAdder PORT MAP (
          X => X,
          Y => Y,
          Cin => Cin,
          Cout => Cout,
          S => S
        );

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 5ns;
		X <= '1';
		
		wait for 5ns;
		X <= '0';
		Y <= '1';
		
		wait for 5ns;
		X <= '1';
		
		wait for 5ns;
		Cin <= '1';
		
		wait for 5ns;
		Y <= '0';
		
		wait for 5ns;
		X <= '0';

      wait;
   end process;

end Behavioral;
