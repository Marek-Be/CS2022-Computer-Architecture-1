----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.03.2018 17:05:10
-- Design Name: 
-- Module Name: MultiplexInput - Behavioral
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

entity MultiplexInput is
Port (
    Control : in STD_LOGIC_VECTOR(4 downto 0);

    G_out_right : in STD_LOGIC_VECTOR(15 downto 0);
    G_out_left : in STD_LOGIC_VECTOR(15 downto 0);
    G_out_noShift : in STD_LOGIC_VECTOR(15 downto 0);
    
    G_out_xor : in STD_LOGIC_VECTOR(15 downto 0);
    G_out_or : in STD_LOGIC_VECTOR(15 downto 0);
    G_out_and : in STD_LOGIC_VECTOR(15 downto 0);
    G_out_not : in STD_LOGIC_VECTOR(15 downto 0);
    
    G_out : in STD_LOGIC_VECTOR(15 downto 0);
    
    Z_out : out STD_LOGIC_VECTOR(15 downto 0)
);
end MultiplexInput;

architecture Behavioral of MultiplexInput is

begin

    Z_out <= G_out after 1ns when Control = "00000" else
             G_out after 1ns when Control = "00001" else
             G_out after 1ns when Control = "00010" else
             G_out after 1ns when Control = "00011" else
             G_out after 1ns when Control = "00100" else
             G_out after 1ns when Control = "00101" else
             G_out after 1ns when Control = "00110" else
             G_out after 1ns when Control = "00111" else
             
             G_out_and after 1ns when Control = "01000" else
             G_out_or after 1ns when Control =  "01010" else
             G_out_xor after 1ns when Control = "01100" else
             G_out_not after 1ns when Control = "01110" else
             
             G_out_noShift after 1ns when Control = "10000" else
             G_out_right   after 1ns when Control = "10100" else
             G_out_left    after 1ns when Control = "11000" else
             x"0000" after 1ns;
     
     
end Behavioral;
