library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity semafor is
	port(
		 clk, rst: in std_logic;
		 led: buffer std_logic_vector (5 downto 0)
	);
end semafor;

architecture Behavioral of semafor is
type stanje is(s0,s1,s2,s3,s4,s5,s6,s7);
signal cur, nxt: stanje;
signal clk_o: std_logic;
signal cTime: integer range 0 to 6:=0;
begin
	
	a1: entity work.freqDivGen generic map(100_000_000) port map(clk, clk_o);
	
	
	process(clk_o, rst)
		variable count: integer range 0 to 6:=0;
	begin
		if(rst='1') then
			cur <= s0;
			count:=0;
		elsif(clk_o'event and clk_o='1')then
			count:=count+1;
				if(count>=cTime)then
					cur <= nxt;
					count:=0;
				end if;
		end if;
	end process;

	process(cur)
	begin
		case cur is
			when s0 =>  led<="100100";
							cTime<=2;
							nxt<=s1;
			when s1 =>  led<="110100";
							cTime<=1;
							nxt<=s2;
			when s2 =>  led<="001100";
							cTime<=6;
							nxt<=s3;
			when s3 =>  led<="010100";
							cTime<=1;
							nxt<=s4;
			when s4 =>  led<="100100";
							cTime<=2;
							nxt<=s5;
			when s5 =>  led<="100110";
							cTime<=1;
							nxt<=s6;
			when s6 =>  led<="100001";
							cTime<=6;
							nxt<=s7;
			when others =>  led<="100010";
							cTime<=1;
							nxt<=s0;
			
		end case;
	end process;
	
end Behavioral;

