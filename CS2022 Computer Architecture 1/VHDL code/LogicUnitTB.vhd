----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2018 10:51:28
-- Design Name: 
-- Module Name: LogicUnitTB - Behavioral
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

entity LogicUnitTB is
end LogicUnitTB;

architecture Behavioral of LogicUnitTB is

    COMPONENT LogicUnit
	Port(
        Ain, Bin : in STD_LOGIC_VECTOR(15 downto 0);
        G_out_xor : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_or : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_and : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_not : out STD_LOGIC_VECTOR(15 downto 0)
    );
    END COMPONENT;


   --Inputs
   signal Ain : std_logic_vector(15 downto 0) := x"0000";
   signal Bin : std_logic_vector(15 downto 0) := x"0000";

 	--Outputs
   signal G_out_and : std_logic_vector(15 downto 0);
   signal G_out_xor : std_logic_vector(15 downto 0);
   signal G_out_or : std_logic_vector(15 downto 0);
   signal G_out_not : std_logic_vector(15 downto 0);

begin

 
	-- Instantiate the Unit Under Test (UUT)
   uut: LogicUnit PORT MAP (
          Ain => Ain,
          Bin => Bin,
          G_out_and => G_out_and,
          G_out_xor => G_out_xor,
          G_out_or => G_out_or,
          G_out_not => G_out_not
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
		Ain <= x"FFFF";
		Bin <= x"0F0D";
		
		wait for 10ns;
		
		Ain <= x"000F";
		Bin <= x"FFF0";
	
      wait;
   end process;

end Behavioral;
