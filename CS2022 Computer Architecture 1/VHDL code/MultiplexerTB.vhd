----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2018 16:27:53
-- Design Name: 
-- Module Name: MultiplexerTB - Behavioral
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

entity MultiplexerTB is
--  Port ( );
end MultiplexerTB;

architecture Behavioral of MultiplexerTB is


COMPONENT MultiplexInput
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
    END COMPONENT;
    

   --Inputs
   signal Control : STD_LOGIC_VECTOR(4 downto 0);
   
   signal G_out_right : STD_LOGIC_VECTOR(15 downto 0);
   signal G_out_left : STD_LOGIC_VECTOR(15 downto 0);
   signal G_out_noShift : STD_LOGIC_VECTOR(15 downto 0);
       
   signal G_out_xor : STD_LOGIC_VECTOR(15 downto 0);
   signal G_out_or : STD_LOGIC_VECTOR(15 downto 0);
   signal G_out_and : STD_LOGIC_VECTOR(15 downto 0);
   signal G_out_not : STD_LOGIC_VECTOR(15 downto 0);
       
   signal G_out : STD_LOGIC_VECTOR(15 downto 0);

 	--Outputs
   signal Z_out : STD_LOGIC_VECTOR(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MultiplexInput PORT MAP (
        Control => Control,
        G_out_right => G_out_right,
        G_out_left => G_out_left,
        G_out_noShift => G_out_noShift,
        G_out_xor => G_out_xor,
        G_out_or => G_out_or,
        G_out_and => G_out_and,
        G_out_not => G_out_not,
        G_out => G_out,
        Z_out => Z_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
        
        G_out_right <= x"ffff";
        G_out_noShift <= x"ffff";
        G_out_left <= x"ffff";
        Control <= "11000";
        wait for 10ns;
        
		G_out_xor <= x"0f0f";
		G_out_or <= x"0f0f";
		G_out_and <= x"0f0f";
		G_out_not <= x"0f0f";
        Control <= "01000";
        wait for 10ns;
		  
		G_out <= x"0101";
        Control <= "00010";
        wait for 10ns;
		
		
      wait;
   end process;



end Behavioral;
