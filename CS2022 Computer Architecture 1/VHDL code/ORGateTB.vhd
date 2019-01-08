----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2018 09:38:47
-- Design Name: 
-- Module Name: ORGateTB - Behavioral
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

entity ORGateTB is
--  Port ( );
end ORGateTB;

architecture Behavioral of ORGateTB is

    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ORGate
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         G_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := x"0000";
   signal B : std_logic_vector(15 downto 0) := x"0000";

 	--Outputs
   signal G_out : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ORGate PORT MAP (
          A => A,
          B => B,
          G_out => G_out
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
		A <= x"FFFF";
		B <= x"0200";
		
		wait for 10ns;
		
		A <= x"000D";
		B <= x"FFF0";
	
      wait;
   end process;
   
end Behavioral;
