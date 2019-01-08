----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2018 12:46:44
-- Design Name: 
-- Module Name: ShiftLeft - Behavioral
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

entity ShiftLeft is
	Port(
        Bin : in STD_LOGIC_VECTOR(15 downto 0);
        G_out : out STD_LOGIC_VECTOR(15 downto 0)
    );
end ShiftLeft;

architecture Behavioral of ShiftLeft is

begin
    G_out(0) <= '0' after 1ns;
    
    G_out(1) <= Bin(0) after 1ns;
    
    G_out(2) <= Bin(1) after 1ns;
    
    G_out(3) <= Bin(2) after 1ns;
    
    G_out(4) <= Bin(3) after 1ns;
    
    G_out(5) <= Bin(4) after 1ns;
    
    G_out(6) <= Bin(5) after 1ns;
    
    G_out(7) <= Bin(6) after 1ns;
    
    G_out(8) <= Bin(7) after 1ns;
    
    G_out(9) <= Bin(8) after 1ns;
    
    G_out(10) <= Bin(9) after 1ns;
    
    G_out(11) <= Bin(10) after 1ns;
    
    G_out(12) <= Bin(11) after 1ns;
    
    G_out(13) <= Bin(12) after 1ns;
    
    G_out(14) <= Bin(13) after 1ns;
    
    G_out(15) <= Bin(14) after 1ns;



end Behavioral;
