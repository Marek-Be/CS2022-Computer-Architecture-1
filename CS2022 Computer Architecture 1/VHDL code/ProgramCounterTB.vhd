
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ProgramCounterTB is
--  Port ( );
end ProgramCounterTB;

architecture Behavioral of ProgramCounterTB is

Component ProgramCounter is
  Port ( 
           SetNextPC : IN std_logic;
           NewPCIn : IN std_logic;
           NewPC : In  std_logic_vector(15 downto 0);
           PCOut : OUT  std_logic_vector(15 downto 0)
 );
end component;

--Inputs
    Signal NewPCIn, SetNextPC : std_logic := '0';
    Signal NewPC : std_logic_vector(15 downto 0) := x"0000";


--Output
    Signal PCOut : std_logic_vector(15 downto 0) := x"0000";

begin
    uut: ProgramCounter PORT MAP(
        SetNextPC => SetNextPC,
        NewPCIn => NewPCIn,
        NewPC => NewPC,
        PCOut => PCOut
        );
        
        
        stim_proc: process
           begin
                wait for 5ns;
                SetNextPC <= '1';
                
                wait for 5ns;
                SetNextPC <= '0';
                
                wait for 5ns;
                SetNextPC <= '1';
                
                wait for 5ns;
                SetNextPC <= '0';
                
                
                wait for 5ns;
                NewPCIn <= '1';
                NewPC <= x"FF00";
                SetNextPC <= '1';
                
                
                wait;
           end process;
        
end Behavioral;
