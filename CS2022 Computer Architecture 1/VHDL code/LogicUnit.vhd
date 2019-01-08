----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2018 10:28:46
-- Design Name: 
-- Module Name: LogicUnit - Behavioral
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

entity LogicUnit is
	Port(
        Ain, Bin : in STD_LOGIC_VECTOR(15 downto 0);
        G_out_xor : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_or : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_and : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_not : out STD_LOGIC_VECTOR(15 downto 0)
    );
end LogicUnit;

architecture Behavioral of LogicUnit is

	Component ORGate
		Port(
			A, B : in STD_LOGIC_VECTOR(15 downto 0);
			G_out : out STD_LOGIC_VECTOR(15 downto 0)
			);
	End Component;

    COMPONENT XORGate
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         G_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

    COMPONENT ANDGate
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         G_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

    COMPONENT NOTGate
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         G_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

begin
    
    OrGate1: ORGate PORT MAP(
    A => Ain,
    B => Bin,
    G_out => G_out_or
    );
        
    XorGate1: XORGate PORT MAP(
    A => Ain,
    B => Bin,
    G_out => G_out_xor
    );
        
    AndGate1: ANDGate PORT MAP(
    A => Ain,
    B => Bin,
    G_out => G_out_and
    );
        
    NotGate1: NOTGate PORT MAP(
    A => Ain,
    G_out => G_out_not
    );
    
end Behavioral;
