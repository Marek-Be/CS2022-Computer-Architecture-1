----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2018 22:56:57
-- Design Name: 
-- Module Name: ShiftUnitTB - Behavioral
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

entity ShiftUnitTB is
--  Port ( );
end ShiftUnitTB;

architecture Behavioral of ShiftUnitTB is


    -- Component Declaration fXOR the Unit Under Test (UUT)
 
    COMPONENT ShiftUnit
    Port ( 
        B : in STD_LOGIC_VECTOR(15 downto 0);
        G_out_right : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_left : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_noShift : out STD_LOGIC_VECTOR(15 downto 0)
    );
    END COMPONENT;
    

   --Inputs
   signal B : std_logic_vector(15 downto 0) := x"0000";

 	--Outputs
   signal G_out_right, G_out_left, G_out_noShift  : std_logic_vector(15 downto 0);
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftUnit Port MAP (
          B => B,
          G_out_right => G_out_right,
          G_out_left => G_out_left,
          G_out_noShift => G_out_noShift
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
		B <= x"0200";
		
		wait for 10ns;
		
		B <= x"FFF0";
	
      wait;
   end process;


end Behavioral;
