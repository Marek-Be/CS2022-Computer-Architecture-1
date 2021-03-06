----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2018 09:24:51
-- Design Name: 
-- Module Name: NOTGate - Behavioral
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

entity NOTGate is
	Port(
        A : in STD_LOGIC_VECTOR(15 downto 0);
        G_out : out STD_LOGIC_VECTOR(15 downto 0)
    );
end NOTGate;

architecture Behavioral of NOTGate is

begin
    G_out <= not A after 1ns;

end Behavioral;
