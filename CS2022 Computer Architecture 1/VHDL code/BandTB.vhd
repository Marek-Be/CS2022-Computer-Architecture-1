----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2018 17:10:40
-- Design Name: 
-- Module Name: BandTB - Behavioral
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

entity BandTB is
--  Port ( );
end BandTB;

architecture Behavioral of BandTB is

COMPONENT Band
    PORT(
        B : in STD_LOGIC_VECTOR(15 downto 0);
        AllowB : in STD_LOGIC;
        B_out : out STD_LOGIC_VECTOR(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal B : std_logic_vector(15 downto 0) := x"0000";
   signal AllowB : std_logic := '0';

 	--Outputs
   signal B_out : std_logic_vector(15 downto 0) := x"0000";
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Band PORT MAP (
          B => B,
          AllowB => AllowB,
          B_out => B_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 5ns;
		B <= x"0100";
		
		wait for 5ns;
		AllowB <= '1';
		
		wait for 5ns;
        AllowB <= '0';
		B <= x"1031";
        
        wait for 5ns;
        AllowB <= '0';
        
      wait;
   end process;

end Behavioral;
