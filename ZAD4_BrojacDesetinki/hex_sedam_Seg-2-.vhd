library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity hex_sedam_seg is
	port(
		hex: in std_logic_vector (3 downto 0);
		led: out std_logic_vector (6 downto 0)
	);
end hex_sedam_seg;

architecture Behavioral of hex_sedam_seg is
begin
	with hex select
	led<= "0000001" when"0000", --0(abcdefg)
			"1001111" when "0001", --1
			"0010010" when "0010", --2
			"0000110" when "0011", --3
			"1001100" when "0100", --4
			"0100100" when "0101", --5
			"0100000" when "0110", --6
			"0001111" when "0111", --7
			"0000000" when "1000", --8
			"0000100" when "1001", --9
			"0001000" when "1010", --a
			"1100000" when "1011", --b
			"0110001" when "1100", --c
			"1000010" when "1101", --d
			"0110000" when "1110", --e
			"0111000" when others; --f
end Behavioral;

