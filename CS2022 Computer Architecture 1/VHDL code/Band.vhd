----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2018 15:20:34
-- Design Name: 
-- Module Name: Band - Behavioral
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

entity Band is
Port(
        B : in STD_LOGIC_VECTOR(15 downto 0);
        AllowB : in STD_LOGIC;
        B_out : out STD_LOGIC_VECTOR(15 downto 0)
    );
end Band;

architecture Behavioral of Band is

begin
    B_out <= B after 1ns when AllowB='1' else
             x"0000" after 1ns;

end Behavioral;
