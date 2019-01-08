library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Register16 is
	Port(
			D : in STD_LOGIC_VECTOR(15 downto 0);
			load, clk : in STD_LOGIC;
			Q : out STD_LOGIC_VECTOR(15 downto 0)
		);
end Register16;

architecture Behavioral of Register16 is

begin	process(clk)

	begin
		if(rising_edge(clk)) then
			if(load = '1') then
				Q <= D after 5ns;
			end if;
		end if;
	end process;
	
	
end Behavioral;

