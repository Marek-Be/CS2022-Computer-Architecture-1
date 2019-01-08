
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ProgramCounter is
  Port ( 
           SetNextPC : IN std_logic;
           NewPCIn : IN std_logic;
           NewPC : In  std_logic_vector(15 downto 0);
           PCOut : OUT  std_logic_vector(15 downto 0)
 );
end ProgramCounter;

architecture Behavioral of ProgramCounter is

begin
    process(SetNextPC, NewPCIn, NewPC)
	variable curPC : STD_LOGIC_VECTOR(15 downto 0);
    variable tempPC : integer;
    variable curPCIncremented : STD_LOGIC_VECTOR(15 downto 0);

    begin
        if(SetNextPC = '1' and NewPCIn = '1') then
            PCOut <= NewPC;
        elsif(SetNextPC = '1' and NewPCIn = '0') then
            tempPC := conv_integer(curPC) + conv_integer(1);
            curPCIncremented := conv_std_logic_vector(tempPC, 16);
            curPC := curPCIncremented;
        end if;
        PCOut <= curPC after 5ns;
    end process;
end Behavioral;
