----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2018 09:17:16
-- Design Name: 
-- Module Name: ANDGate - Behavioral
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

entity ANDGate is
	Port(
        A, B : in STD_LOGIC_VECTOR(15 downto 0);
        G_out : out STD_LOGIC_VECTOR(15 downto 0)
    );
end ANDGate;

architecture Behavioral of ANDGate is

begin
    G_out <= A and B after 1ns;

end Behavioral;
