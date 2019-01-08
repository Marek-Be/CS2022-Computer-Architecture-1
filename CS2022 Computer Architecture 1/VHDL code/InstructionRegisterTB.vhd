
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InstructionRegisterTB is
end InstructionRegisterTB;

architecture Behavioral of InstructionRegisterTB is


COMPONENT InstructionRegister
     PORT(
           Instruction : IN std_logic_vector(16 downto 0);
           Func : OUT  std_logic_vector(4 downto 0);
           MD : OUT std_logic;
           RW : OUT std_logic;
           sel_regA : OUT  std_logic_vector(2 downto 0);
           sel_regB : OUT  std_logic_vector(2 downto 0);
           sel_regOutput : OUT  std_logic_vector(2 downto 0)
         );
END COMPONENT;
    --Inptus 
    Signal Instruction : std_logic_vector(16 downto 0) := "00000000000000000";
    
    --Outputs
    Signal Func : std_logic_vector(4 downto 0) := "00000";
    Signal MD, RW : std_logic := '0';
    Signal sel_regA,sel_regB,sel_regOutput: std_logic_vector(2 downto 0) := "000";

begin

    uut: InstructionRegister PORT MAP(
        Instruction => Instruction,
        Func => Func,
        MD => MD,
        RW => RW,
        sel_regA => sel_regA,
        sel_regB => sel_regB,
        sel_regOutput => sel_regOutput
    );

   stim_proc: process
   begin		
		wait for 5ns; --Instruction is written back to front
		Instruction <= "11101000010001000";
      wait;
   end process;



end Behavioral;
