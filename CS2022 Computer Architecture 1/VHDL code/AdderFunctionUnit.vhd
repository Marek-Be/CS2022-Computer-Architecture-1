----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2018 14:33:52
-- Design Name: 
-- Module Name: AdderFunctionUnit - Behavioral
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

entity AdderFunctionUnit is
	Port(
    AinAFU, BinAFU : in STD_LOGIC_VECTOR(15 downto 0);
    CinAFU : in STD_LOGIC;
    BinvertAFU : in STD_LOGIC;
    BandAFU : in STD_LOGIC;
    CoutAFU, VoutAFU : out STD_LOGIC;
    G_outAFU : out STD_LOGIC_VECTOR(15 downto 0)
    );
end AdderFunctionUnit;

architecture Behavioral of AdderFunctionUnit is

Component RippleAdder
		Port(
        A, B : in STD_LOGIC_VECTOR(15 downto 0);
        Cin : in STD_LOGIC;
        Cout, V_out : out STD_LOGIC;
        G_out : out STD_LOGIC_VECTOR(15 downto 0)
			);
End Component;

Component BInvert
		Port(
        B : in STD_LOGIC_VECTOR(15 downto 0);
        InvertB : in STD_LOGIC;
        B_out : out STD_LOGIC_VECTOR(15 downto 0)
			);
End Component;

Component Band
		Port(
        B : in STD_LOGIC_VECTOR(15 downto 0);
        AllowB : in STD_LOGIC;
        B_out : out STD_LOGIC_VECTOR(15 downto 0)
			);
End Component;

    signal newB0, newB1 : STD_LOGIC_VECTOR(15 downto 0);
begin

    r_adder : RippleAdder PORT MAP(
			A => AinAFU,
			B => newB1,
			Cin => CinAFU,
			Cout => CoutAFU,
			V_out => VoutAFU,
			G_out => G_outAFU
	);
    
    b_inv : BInvert PORT MAP(
            B => newB0,
            InvertB => BinvertAFU,
            B_out => newB1
    );
    
    b_and : Band PORT MAP(
            B => BinAFU,
            AllowB => BandAFU,
            B_out => newB0
    );
    
end Behavioral;
