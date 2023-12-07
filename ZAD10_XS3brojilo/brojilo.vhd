library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity brojilo is
	port(
		clk, rst, ss: in std_logic;
		freqSel: in std_logic_vector(1 downto 0);
		ulaz: in std_logic_vector(3 downto 0);
		pokSel: in std_logic_vector(1 downto 0);
		pok: out std_logic_vector(3 downto 0);
		led, binarno: out std_logic_vector(3 downto 0);
		seg: out std_logic_vector(6 downto 0)
	);
end brojilo;

architecture Behavioral of brojilo is
type stanje is(s0,s1,s2,s3,s4,s5,s6,s7,s8,s9);
signal cur, nxt: stanje;
signal clk_o, clk8Hz, clk4Hz, clk1Hz: std_logic;
begin
	
	a1: entity work.freqDivGen generic map(12_500_000) port map(clk, clk8Hz);
	a2: entity work.freqDivGen generic map(2) port map(clk8Hz, clk4Hz);
	a3: entity work.freqDivGen generic map(4) port map(clk4Hz, clk1Hz);
	
	with freqSel select
	clk_o <= clk8Hz when "00",
				clk4Hz when "01",
				clk1Hz when others;
		
	process(clk_o, rst)
	begin
		if(rst='1') then
			cur<=s0;
		elsif(clk'event and clk='1')then
			cur<=nxt;
		end if;
	end process;
	
	process(cur)
	begin
		case cur is
			when s0 =>  seg<="0000001";
							binarno<="0000";
							led<="0011";
							if(ss='1') then
								nxt<=s1;
							else
								nxt<=s0;
							end if;
			when s1 => seg<="0011111";
							binarno<="0001";
							led<="0100";
							if(ss='1') then
								nxt<=s2;
							else
								nxt<=s1;
							end if;
			when s2 => seg<="0010010";
							binarno<="0010";
							led<="0101";
							if(ss='1') then
								nxt<=s3;
							else
								nxt<=s2;
							end if;
			when s3 => seg<="0000110";
							binarno<="0011";
							led<="0110";
							if(ss='1') then
								nxt<=s4;
							else
								nxt<=s3;
							end if;
			when s4 => seg<="1001100";
							binarno<="0100";
							led<="0111";
							if(ss='1') then
								nxt<=s5;
							else
								nxt<=s4;
							end if;
			when s5 => seg<="0100100";
							binarno<="0101";
							led<="1000";
							if(ss='1') then
								nxt<=s6;
							else
								nxt<=s5;
							end if;
			when s6 => seg<="1100000";
							binarno<="0110";
							led<="1001";
							if(ss='1') then
								nxt<=s7;
							else
								nxt<=s6;
							end if;
			when s7 => seg<="0001111";
							binarno<="0111";
							led<="1011";
							if(ss='1') then
								nxt<=s8;
							else
								nxt<=s7;
							end if;
			when s8 => seg<="0000000";
							binarno<="1000";
							led<="1110";
							if(ss='1') then
								nxt<=s9;
							else
								nxt<=s8;
							end if;
			when others => seg<="0000100";
							binarno<="1001";
							led<="1111";
							if(ss='1') then
								nxt<=s0;
							else
								nxt<=s9;
							end if;
		end case;
	end process;
		
	with pokSel select 
	pok <=   "1110" when "00",
				"1100" when "01",
				"1000" when "10",
				"0000" when others;
	
end Behavioral;

