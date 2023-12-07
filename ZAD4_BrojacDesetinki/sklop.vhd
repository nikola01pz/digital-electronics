library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sklop is
	port(
		clk, rst, ss: in std_logic;
		freqSel: in std_logic_vector(1 downto 0);
		pok: out std_logic_vector(3 downto 0);
		seg: out std_logic_vector(6 downto 0)
	);
end sklop;

	architecture Behavioral of sklop is
signal clk_o, clk10Hz: std_logic;
-- signal clk5Hz, clk2Hz: std_logic;
signal cTime: integer range 0 to 5;
signal izlaz: std_logic_vector(3 downto 0);
begin

--	s1: entity work.freqDivGen generic map(10_000_000) port map(clk, clk10Hz);
--	s2: entity work.freqDivGen generic map(2) port map(clk10Hz, clk5Hz);
--	s3: entity work.freqDivGen generic map(5) port map(clk10Hz, clk2Hz);
--	
--	with freqSel select
--	clk_o <= clk10Hz when "00",
--				clk5Hz  when "01",
--				clk2Hz  when others;
	
	a1: entity work.freqDivGen generic map(10_000_000) port map(clk, clk10Hz);
	a2: entity work.hex_sedam_seg port map(izlaz, seg);
	
	process(clk10Hz)
		variable count: integer range 0 to 5:=0;
	begin
		count:=count+1;
		if(count>=cTime) then
			clk_o <= not clk_o;
			count:=0;
		end if;
	end process;
	
	with freqSel select
	cTime <= 1 when "00", -- 10hz
				2 when "01", -- 5hz
				5 when others; --2hz
	
	process(clk_o, rst)
	begin
		if(rst='1') then
			izlaz<="0000";
		elsif(clk_o'event and clk_o='1')then
			if(izlaz>="1010")then
				izlaz<="0000";
			else
				izlaz<=izlaz+1;
			end if;
		end if;
	
	end process;

	pok<="1110";
end Behavioral;

