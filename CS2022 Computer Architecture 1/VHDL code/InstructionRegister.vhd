
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InstructionRegister is
  Port ( 
           Instruction : IN std_logic_vector(16 downto 0);
           Func : OUT  std_logic_vector(4 downto 0);
           MD : OUT std_logic;
           RW : OUT std_logic;
           sel_regA : OUT  std_logic_vector(2 downto 0);
           sel_regB : OUT  std_logic_vector(2 downto 0);
           sel_regOutput : OUT  std_logic_vector(2 downto 0)
  );
end InstructionRegister;

architecture Behavioral of InstructionRegister is

begin
    --DESTINATION = First 3 bits
    sel_regOutput <= Instruction(2 downto 0);
    --SourceA = Next 3 bits
    sel_regA <= Instruction(5 downto 3);
    --SourceB = Next 3 bits
    sel_regB <= Instruction(8 downto 6);
    --Function next 5 bits
    Func <= Instruction(13 downto 9);
    --MD next 1 bit
    MD <= Instruction(15);
    --RW next 1 bit
    RW <= Instruction(16);
    
    

end Behavioral;
