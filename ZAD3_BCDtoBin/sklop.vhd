library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sklop is
	port(
		clk, rst: in std_logic;
		ulaz1, ulaz2: in std_logic_vector(3 downto 0);
		pok: in std_logic_vector(3 downto 0);
		led: buffer std_logic_vector(7 downto 0)
		
	);
end sklop;

architecture Behavioral of sklop is
signal clk_o: std_logic;
signal temp1, temp2: std_logic_vector(3 downto 0);
begin
	
	s1: entity work.freqDivGen generic map(100_000_000) port map(clk, clk_o);
	
	process(clk_o, rst)
	begin
		if(rst='1') then
			led<="00000000";
		elsif(clk_o'event and clk_o='1') then
			if(ulaz1>="1010" or ulaz2>="1010") then 
				led<="00000000";
			else
				led<=ulaz1*"1010"+ulaz2;
			end if;
		end if;
	end process;
end Behavioral;

