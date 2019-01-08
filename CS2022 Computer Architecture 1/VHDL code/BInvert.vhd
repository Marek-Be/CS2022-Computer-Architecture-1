----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2018 15:20:08
-- Design Name: 
-- Module Name: BInvert - Behavioral
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

entity BInvert is
Port(
        B : in STD_LOGIC_VECTOR(15 downto 0);
        InvertB : in STD_LOGIC;
        B_out : out STD_LOGIC_VECTOR(15 downto 0)
    );
end BInvert;

architecture Behavioral of BInvert is

begin
   -- B_out <= x"0000" after 1ns when InvertB = '0';
    
    B_out <= not(B) after 1ns when  InvertB = '1' else
                  B after 1ns;
end Behavioral;
