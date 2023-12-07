library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity brojilo is
	port(
		clk, rst, ss: in std_logic;
		freqSel: in std_logic_vector(1 downto 0);
		pokSel: in std_logic_vector(1 downto 0);
		ulaz: in std_logic_vector(2 downto 0);
		led: buffer std_logic_vector(2 downto 0);
		pok: out std_logic_vector(3 downto 0);
		seg: out std_logic_vector(6 downto 0)
	);
end brojilo;

architecture Behavioral of brojilo is
	signal clk_o, clk8Hz, clk4Hz, clk1Hz: std_logic;
	signal temp: std_logic_vector (2 downto 0);
begin

	a1: entity work.freqDivGen generic map(12_500_000) port map(clk, clk8Hz);
	a2: entity work.freqDivGen generic map(2) port map(clk8Hz, clk4Hz);
	a3: entity work.freqDivGen generic map(4) port map(clk4Hz, clk1Hz);
	
	with freqSel select
	clk_o <= clk8Hz when "00",
				clk4Hz when "01",
				clk1Hz when others;
				
	with pokSel select
	pok <= "1110" when "00",
			 "1100" when "01",
			 "1000" when "10",
			 "0000" when others;
			 

	process(clk_o, rst)
	begin
		if(rst='1') then
			temp <="000";
			led <="000";
		elsif(clk_o'event and clk_o='1' and ss='1') then
			temp <= temp+1;
		end if;
	end process;
	
	with temp select
	seg <=   "0000001" when "000", -- 0
				"0011111" when "001", -- 1
				"0001101" when "010", -- 2
				"0000110" when "011", -- 3
				"1001100" when "100", -- 4
				"0100100" when "101", -- 5
				"1100000" when "110", -- 6
				"0001111" when others; -- 7
				
end Behavioral;

