library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity sklop is
	port(
		clk, A, rst: in std_logic;
		freqSel: in std_logic_vector(1 downto 0);
		pok: out std_logic_vector(3 downto 0);
		seg: out std_logic_vector(6 downto 0)
	);
end sklop;

architecture Behavioral of sklop is
signal clk_o, clk10Hz, clk5Hz, clk2Hz: std_logic;
type stanje is(s1, s2, s3, s4, s5, s6, s7, s8);
signal cur, nxt: stanje;
signal cTime: integer range 0 to 5:=0;
begin

--	a1: entity work.freqDivGen generic map(10_000_000) port map(clk, clk10Hz);
--	a2: entity work.freqDivGen generic map(2) port map(clk10Hz, clk5Hz);
--	a3: entity work.freqDivGen generic map(5) port map(clk10Hz, clk2Hz);
--	
--	with freqSel select
--	clk_o <= clk10Hz when "00",
--				clk5Hz when "01",
--				clk2Hz when others;
-- ovo je drugi nacin
	a1: entity work.freqDivGen generic map(10_000_000) port map(clk, clk10Hz);

	process(clk10Hz)
	variable temp: integer range 0 to 5:=0;
	begin
		if(clk10Hz'event and clk10Hz='1') then
			temp:=temp+1;
			if(temp>=cTime) then
				clk_o<= not clk_o;
				temp:=0;
			end if;
		end if;
	end process;
	
	with freqSel select
	cTime <= 1 when "00",
				2 when "01",
				5 when others;
-- do tu
	
	process(clk_o)
	begin
		if(clk_o'event and clk_o='1') then
			cur <= nxt;
		end if;
	end process;
	
	process(cur)
	begin
		case cur is
				when s1 => seg <="1111111";
								if(A='1') then
									nxt<=s2;
								else nxt<=s1;
								end if;
				when s2 => seg <="0111111";
								if(A='1') then
									nxt<=s3;
								else nxt<=s1;
								end if;
				when s3 => seg <="0011111";
								if(A='1') then
									nxt<=s4;
								else nxt<=s2;
								end if;
				when s4 => seg <="0001111";
								if(A='1') then
									nxt<=s5;
								else nxt<=s3;
								end if;
				when s5 => seg <="0000111";
								if(A='1') then
									nxt<=s6;
								else nxt<=s4;
								end if;
				when s6 => seg <="0000011";
								if(A='1') then
									nxt<=s7;
								else nxt<=s5;
								end if;
				when s7 => seg <="0000001";
								if(A='1') then
									nxt<=s8;
								else nxt<=s6;
								end if;
				when others => seg <="0000000";
								if(A='1') then
									nxt<=s8;
								else nxt<=s7;
								end if;
				end case;
	end process;
	
	pok<="1110";
end Behavioral;

