
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterDecoder is
    PORT(
         sel_regA : IN  std_logic_vector(2 downto 0);
         sel_regB : IN  std_logic_vector(2 downto 0);
         reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : IN  std_logic_vector(15 downto 0);
         regA : OUT  std_logic_vector(15 downto 0);
         regB : OUT  std_logic_vector(15 downto 0)
        );
end RegisterDecoder;

architecture Behavioral of RegisterDecoder is

begin
	regA <= 	reg0 after 5ns when sel_regA(0) = '0' and sel_regA(1) = '0' and sel_regA(2) = '0' else	--000
	            reg1 after 5ns when sel_regA(0) = '0' and sel_regA(1) = '0' and sel_regA(2) = '1' else	--001
	            reg2 after 5ns when sel_regA(0) = '0' and sel_regA(1) = '1' and sel_regA(2) = '0' else	--010
	            reg3 after 5ns when sel_regA(0) = '0' and sel_regA(1) = '1' and sel_regA(2) = '1' else	--011
                reg4 after 5ns when sel_regA(0) = '1' and sel_regA(1) = '0' and sel_regA(2) = '0' else  --100
                reg5 after 5ns when sel_regA(0) = '1' and sel_regA(1) = '0' and sel_regA(2) = '1' else  --101
                reg6 after 5ns when sel_regA(0) = '1' and sel_regA(1) = '1' and sel_regA(2) = '0' else  --110
                reg7 after 5ns when sel_regA(0) = '1' and sel_regA(1) = '1' and sel_regA(2) = '1' else  --111
                x"0000" after 5ns;
                
	regB <= 	reg0 after 5ns when sel_regB(0) = '0' and sel_regB(1) = '0' and sel_regB(2) = '0' else	--000
                reg1 after 5ns when sel_regB(0) = '0' and sel_regB(1) = '0' and sel_regB(2) = '1' else  --001
                reg2 after 5ns when sel_regB(0) = '0' and sel_regB(1) = '1' and sel_regB(2) = '0' else  --010
                reg3 after 5ns when sel_regB(0) = '0' and sel_regB(1) = '1' and sel_regB(2) = '1' else  --011
                reg4 after 5ns when sel_regB(0) = '1' and sel_regB(1) = '0' and sel_regB(2) = '0' else  --100
                reg5 after 5ns when sel_regB(0) = '1' and sel_regB(1) = '0' and sel_regB(2) = '1' else  --101
                reg6 after 5ns when sel_regB(0) = '1' and sel_regB(1) = '1' and sel_regB(2) = '0' else  --110
                reg7 after 5ns when sel_regB(0) = '1' and sel_regB(1) = '1' and sel_regB(2) = '1' else  --111
                x"0000" after 5ns;
end Behavioral;
