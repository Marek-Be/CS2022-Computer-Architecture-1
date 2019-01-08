----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2018 14:04:47
-- Design Name: 
-- Module Name: RippleAdder - Behavioral
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

entity RippleAdder is
	Port(
        A, B : in STD_LOGIC_VECTOR(15 downto 0);
        Cin : in STD_LOGIC;
        Cout, V_out : out STD_LOGIC;
        G_out : out STD_LOGIC_VECTOR(15 downto 0)
    );
end RippleAdder;

architecture Behavioral of RippleAdder is

	Component FullAdder
		Port(
			X, Y, Cin : in STD_LOGIC;
			Cout, S : out STD_LOGIC
			);
	End Component;
	
	signal C0, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C_out : STD_LOGIC;

begin

    FullAdder_0: FullAdder PORT MAP(
		X => A(0),
		Y => B(0),
		Cin => Cin,
		Cout => C0,
		S => G_out(0)
	);
	
	FullAdder_1: FullAdder PORT MAP(
		X => A(1),
		Y => B(1),
		Cin => C0,
		Cout => C1,
		S => G_out(1)
	);
	
	FullAdder_2: FullAdder PORT MAP(
		X => A(2),
		Y => B(2),
		Cin => C1,
		Cout => C2,
		S => G_out(2)
	);
	
	FullAdder_3: FullAdder PORT MAP(
		X => A(3),
		Y => B(3),
		Cin => C2,
		Cout => C3,
		S => G_out(3)
	);
	
	FullAdder_4: FullAdder PORT MAP(
		X => A(4),
		Y => B(4),
		Cin => C3,
		Cout => C4,
		S => G_out(4)
	);

	FullAdder_5: FullAdder PORT MAP(
		X => A(5),
		Y => B(5),
		Cin => C4,
		Cout => C5,
		S => G_out(5)
	);
	
	FullAdder_6: FullAdder PORT MAP(
		X => A(6),
		Y => B(6),
		Cin => C5,
		Cout => C6,
		S => G_out(6)
	);
	
	FullAdder_7: FullAdder PORT MAP(
		X => A(7),
		Y => B(7),
		Cin => C6,
		Cout => C7,
		S => G_out(7)
	);
	
	FullAdder_8: FullAdder PORT MAP(
		X => A(8),
		Y => B(8),
		Cin => C7,
		Cout => C8,
		S => G_out(8)
	);
	
	FullAdder_9: FullAdder PORT MAP(
		X => A(9),
		Y => B(9),
		Cin => C8,
		Cout => C9,
		S => G_out(9)
	);
	
	FullAdder_10: FullAdder PORT MAP(
		X => A(10),
		Y => B(10),
		Cin => C9,
		Cout => C10,
		S => G_out(10)
	);
	
	FullAdder_11: FullAdder PORT MAP(
		X => A(11),
		Y => B(11),
		Cin => C10,
		Cout => C11,
		S => G_out(11)
	);
	
	FullAdder_12: FullAdder PORT MAP(
		X => A(12),
		Y => B(12),
		Cin => C11,
		Cout => C12,
		S => G_out(12)
	);
	
	FullAdder_13: FullAdder PORT MAP(
		X => A(13),
		Y => B(13),
		Cin => C12,
		Cout => C13,
		S => G_out(13)
	);
	
	FullAdder_14: FullAdder PORT MAP(
		X => A(14),
		Y => B(14),
		Cin => C13,
		Cout => C14,
		S => G_out(14)
	);
	
	FullAdder_15: FullAdder PORT MAP(
		X => A(15),
		Y => B(15),
		Cin => C14,
		Cout => C15,
		S => G_out(15)
	);
    
    Cout <= C_out;
    V_out <= (C_out xor C15);
    
end Behavioral;
