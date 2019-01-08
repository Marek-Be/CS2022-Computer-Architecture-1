----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2018 14:16:17
-- Design Name: 
-- Module Name: ShiftUnit - Behavioral
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

entity ShiftUnit is
Port ( 
    B : in STD_LOGIC_VECTOR(15 downto 0);
    G_out_right : out STD_LOGIC_VECTOR(15 downto 0);
    G_out_left : out STD_LOGIC_VECTOR(15 downto 0);
    G_out_noShift : out STD_LOGIC_VECTOR(15 downto 0)
);
end ShiftUnit;

architecture Behavioral of ShiftUnit is

	Component ShiftLeft
		Port(
			Bin : in STD_LOGIC_VECTOR(15 downto 0);
			G_out : out STD_LOGIC_VECTOR(15 downto 0)
			);
	End Component;

	Component ShiftRight
		Port(
			Bin : in STD_LOGIC_VECTOR(15 downto 0);
			G_out : out STD_LOGIC_VECTOR(15 downto 0)
			);
	End Component;

begin

    shiftL: ShiftLeft PORT MAP(
		Bin => B,
		G_out => G_out_left
	);

    shiftR: ShiftRight PORT MAP(
		Bin => B,
		G_out => G_out_right
	);
    
    G_out_noShift <= B after 1ns;
    
end Behavioral;
