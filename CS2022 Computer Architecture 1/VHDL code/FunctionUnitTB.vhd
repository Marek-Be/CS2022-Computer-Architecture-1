----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.03.2018 16:56:02
-- Design Name: 
-- Module Name: FunctionUnitTB - Behavioral
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

entity FunctionUnitTB is
--  Port ( );
end FunctionUnitTB;

architecture Behavioral of FunctionUnitTB is


COMPONENT FunctionUnit
    Port ( 
    inputA : in STD_LOGIC_VECTOR(15 downto 0);
    inputB : in STD_LOGIC_VECTOR(15 downto 0);
    inputG : in STD_LOGIC_VECTOR(4 downto 0);
    output : out STD_LOGIC_VECTOR(15 downto 0)
    );
    END COMPONENT;
    

   --Inputs
   signal inputA : std_logic_vector(15 downto 0) := x"0000";
   signal inputB : std_logic_vector(15 downto 0) := x"0000";
   signal inputG : std_logic_vector(4 downto 0) := "00000";

 	--Outputs
   signal output : std_logic_vector(15 downto 0) := x"0000";
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FunctionUnit PORT MAP (
          inputA => inputA,
          inputB => inputB,
          inputG => inputG,
          output => output
        );

   -- Stimulus process
   stim_proc: process
   begin		
   
		inputA <= x"0005";
		inputB <= x"0000";
		inputG <= "00000";
        wait for 80ns;
        
		inputA <= x"0005";
		inputB <= x"0010";
		inputG <= "00010";
        wait for 80ns;
		
		inputA <= x"8888";
		inputB <= x"ffff";
		inputG <= "01100";
        wait for 80ns;
        
		inputA <= x"0000";
		inputB <= x"ffff";
		inputG <= "11000";
        wait for 80ns;
		
		inputA <= x"0000";
		inputB <= x"ffff";
		inputG <= "10100";
        wait for 80ns;
		
		
		
      wait;
   end process;


end Behavioral;
