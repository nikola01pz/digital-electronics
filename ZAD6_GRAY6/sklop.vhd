library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sklop is
	port(
		clk, rst: in std_logic;
		led : buffer std_logic_vector(5 downto 0)
	);
end sklop;

architecture Behavioral of sklop is
signal clk_o: std_logic;
signal izlaz: std_logic_vector(5 downto 0);
signal neg_izlaz: std_logic_vector(5 downto 0);
begin
-- frekvencija 2hz
	a0: entity work.freqDivGen generic map(50_000_000) port map(clk, clk_o);
-- brojilo, clk, t, rst, q, qn
   a1: entity work.t_bist port map(clk_o,'1','0', izlaz(0), neg_izlaz(0));
	a2: entity work.t_bist port map(neg_izlaz(0),'1','0', izlaz(1), neg_izlaz(1));
	a3: entity work.t_bist port map(neg_izlaz(1),'1','0', izlaz(2), neg_izlaz(2));
	a4: entity work.t_bist port map(neg_izlaz(2),'1','0', izlaz(3), neg_izlaz(3));
	a5: entity work.t_bist port map(neg_izlaz(3),'1','0', izlaz(4), neg_izlaz(4));
	a6: entity work.t_bist port map(neg_izlaz(4),'1','0', izlaz(5), neg_izlaz(5));
-- izlaz, tj gray brojilo
	a7: entity work.xor2 port map(izlaz(0), izlaz(1), led(0));
	a8: entity work.xor2 port map(izlaz(1), izlaz(2), led(1));
	a9: entity work.xor2 port map(izlaz(2), izlaz(3), led(2));
	a10: entity work.xor2 port map(izlaz(3), izlaz(4), led(3));
	a11: entity work.xor2 port map(izlaz(4), izlaz(5), led(4));
	led(5) <= izlaz(5);
end Behavioral;

