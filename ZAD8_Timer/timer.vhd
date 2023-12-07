library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity timer is
	port(
		clk, start, pocetak: std_logic;
		pok : out std_logic_vector(3 downto 0);
		seg : out std_logic_vector(6 downto 0);
		led : buffer std_logic_vector(7 downto 0)
	);
end timer;

architecture Behavioral of timer is
type stanje is(s0,s1,s2,s3,s4,s5,s6,s7,s8,s9);
signal cur, nxt: stanje;
signal clk1Hz, clk2Hz, treperi: std_logic;
begin

	a1: entity work.freqDivGen generic map(50_000_000) port map(clk, clk1Hz); -- 2Hz
	a2: entity work.freqDivGen generic map(2) port map(clk1Hz, clk2Hz); -- 1Hz

	process(clk1Hz, pocetak)
	begin
		if(pocetak='1') then
			cur <= s9;
		elsif(clk1Hz'event and clk1Hz='1' and start='1') then   --start sluzi za pokretanje
			cur <= nxt;
		end if;
	end process;
	
	process(cur, start, pocetak)
	begin
		case cur is
			when s9 =>  seg<="0000100";
							if(start='1') then
								nxt<=s8;
							else
								nxt<=s9;
							end if;
							treperi <='0';
			when s8 => seg<="0000000";
							nxt<=s7;
							treperi<='0';
			when s7 => seg<="0001111";
							nxt<=s6;
							treperi<='0';
			when s6 => seg<="0100000";
							nxt<=s5;
							treperi<='0';
			when s5 => seg<="0100100";
							nxt<=s4;
							treperi<='0';
			when s4 => seg<="1001101";
							nxt<=s3;
							treperi<='0';
			when s3 => seg<="0000110";
							nxt<=s2;
							treperi<='0';
			when s2 => seg<="0010010";
							nxt<=s1;
							treperi<='0';
			when s1 => seg<="1001111";
							nxt<=s0;
							treperi<='0';
			when s0 => seg<="0000001";
							if(pocetak='1')then
								nxt<=s9;
							else
								nxt<=s0;
							end if;
							treperi<='1';
			end case;
	end process;
	
	process(clk2Hz)
	begin
		if(clk2Hz'event and clk2Hz='1' and treperi='1')then
			led<=not led;
		elsif(treperi='0') then
			led<="00000000";
		end if;
	end process;
	
	pok<="1110";
	
end Behavioral;

