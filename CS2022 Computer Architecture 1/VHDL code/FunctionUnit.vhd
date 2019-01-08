----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.03.2018 17:04:40
-- Design Name: 
-- Module Name: FunctionUnit - Behavioral
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

entity FunctionUnit is
Port ( 
    inputA : in STD_LOGIC_VECTOR(15 downto 0);
    inputB : in STD_LOGIC_VECTOR(15 downto 0);
    inputG : in STD_LOGIC_VECTOR(4 downto 0);
    output : out STD_LOGIC_VECTOR(15 downto 0)
);
end FunctionUnit;

architecture Behavioral of FunctionUnit is

    COMPONENT RippleAdder
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         Cin : IN  std_logic;
         Cout : OUT  std_logic;
         V_out : OUT  std_logic;
         G_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    
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
    
    COMPONENT ShiftUnit
    Port ( 
        B : in STD_LOGIC_VECTOR(15 downto 0);
        G_out_right : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_left : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_noShift : out STD_LOGIC_VECTOR(15 downto 0)
    );
    END COMPONENT;
    
    COMPONENT LogicUnit
    Port(
        Ain, Bin : in STD_LOGIC_VECTOR(15 downto 0);
        G_out_xor : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_or : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_and : out STD_LOGIC_VECTOR(15 downto 0);
        G_out_not : out STD_LOGIC_VECTOR(15 downto 0)
    );
    END COMPONENT;
    
    signal G_right,G_left,G_noshift,G_xor,G_or,G_and,G_not,G_added : STD_LOGIC_VECTOR(15 downto 0);
begin
    
    RAdder : RippleAdder Port map (
    A => inputA,
    B => inputB,
    Cin => inputG(4),
    
    G_out => G_added
    );
    
    LUnit : LogicUnit Port map (
    Ain => inputA,
    Bin => inputB,
    
    G_out_xor => G_xor,
    G_out_or => G_or,
    G_out_and => G_and,
    G_out_not => G_not
    );
    
    SUnit : ShiftUnit Port map (
    B => inputB,
    
    G_out_right => G_right,
    G_out_left => G_left,
    G_out_noShift => G_noshift
    );
    
    Muxing : MultiplexInput Port map (
    Control => inputG,
    
    G_out_right => G_right,
    G_out_left => G_left,
    G_out_noShift => G_noshift,
            
    G_out_xor => G_xor,
    G_out_or => G_or,
    G_out_and => G_and,
    G_out_not => G_not,
            
    G_out => G_added,
    
    Z_out => output
    );
    

end Behavioral;
