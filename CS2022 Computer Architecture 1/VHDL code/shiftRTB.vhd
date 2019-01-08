----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2018 23:01:16
-- Design Name: 
-- Module Name: shiftRTB - Behavioral
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

entity shiftRTB is
--  Port ( );
end shiftRTB;

architecture Behavioral of shiftRTB is

    -- Component Declaration fXOR the Unit Under Test (UUT)
 
    COMPONENT ShiftRight
    Port ( 
        Bin : in STD_LOGIC_VECTOR(15 downto 0);
        G_out : out STD_LOGIC_VECTOR(15 downto 0)
    );
    END COMPONENT;
    

   --Inputs
   signal Bin : std_logic_vector(15 downto 0) := x"0000";

 	--Outputs
   signal G_out : std_logic_vector(15 downto 0);
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftRight Port MAP (
          Bin => Bin,
          G_out => G_out
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
		Bin <= x"0200";
		
		wait for 20ns;
		
		Bin <= x"FFF0";
	
      wait;
   end process;


end Behavioral;
