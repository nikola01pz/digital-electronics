library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity brojilo is
	port(
	clk, rst: in std_logic;
	izlaz: buffer std_logic_vector(2 downto 0)
	);
end brojilo;

architecture Behavioral of brojilo is
signal clk_o: std_logic;
signal temp, neg_izlaz: std_logic_vector(2 downto 0);
begin
	s0: entity work.freqDivGen generic map(100_000_000) port map(clk, clk_o);   -- 1hz
	-- brojilo
	s1: entity work.d_bist port map(clk_o, neg_izlaz(0), rst, izlaz(2), neg_izlaz(2));
	s2: entity work.d_bist port map(clk_o, izlaz(2), rst, izlaz(1), neg_izlaz(1));
	s3: entity work.d_bist port map(clk_o, izlaz(1), rst, izlaz(0), neg_izlaz(0));

end Behavioral;

