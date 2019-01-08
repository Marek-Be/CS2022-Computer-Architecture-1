
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterDecoderTB is
end RegisterDecoderTB;

ARCHITECTURE behaviour OF RegisterDecoderTB IS

COMPONENT RegisterDecoder
     PORT(
         sel_regA : IN  std_logic_vector(2 downto 0);
         sel_regB : IN  std_logic_vector(2 downto 0);
         reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : IN  std_logic_vector(15 downto 0);
         regA : OUT  std_logic_vector(15 downto 0);
         regB : OUT  std_logic_vector(15 downto 0)
         );
END COMPONENT;
    --Inptus 
    Signal sel_regA, sel_regB : std_logic_vector(2 downto 0) := "000";
    Signal reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : std_logic_vector(15 downto 0) := x"0000";
    
    --Outputs
    Signal regA,regB: std_logic_vector(15 downto 0) := x"0000";

begin

    uut: RegisterDecoder PORT MAP(
         sel_regA => sel_regA,
         sel_regB => sel_regB,
         reg0 => reg0,
         reg1 => reg1,
         reg2 => reg2,
         reg3 => reg3,
         reg4 => reg4,
         reg5 => reg5,
         reg6 => reg6,
         reg7 => reg7,
         regA => regA,
         regB => regB
    );

   stim_proc: process
   begin		
		wait for 5ns;
		reg0 <= x"01FF";
		
		wait for 5ns;
		sel_regA <= "000";
		
		wait for 5ns;
        reg2 <= x"FF00";
        reg5 <= x"FF0F";
        reg4 <= x"F10F";
        reg7 <= x"01AF";
        
        wait for 5ns;
        sel_regB <= "111";
        
      wait;
   end process;


end;
