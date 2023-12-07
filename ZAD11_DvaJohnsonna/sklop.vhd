library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sklop is
	port(
		clk, rst, ss: in std_logic;
		freqSel1, freqSel2: in std_logic_vector(1 downto 0);
		led1, led2: buffer std_logic_vector(3 downto 0)
	);
end sklop;

architecture Behavioral of sklop is
signal clk_o1, clk_o2, clk2Hz, clk5Hz, clk8Hz: std_logic:='0';
signal cTime: integer range 0 to 10:=0;
begin

	a1: entity work.freqDivGen generic map(12_500_000) port map(clk, clk8Hz);
	a2: entity work.freqDivGen generic map(20_000_000) port map(clk, clk5Hz);
	a3: entity work.freqDivGen generic map(4) port map(clk8Hz, clk2Hz);
	
	with freqSel1 select
	clk_o1 <=   clk8Hz when "00",
					clk5Hz when "01",
					clk2Hz when others;
					
	with freqSel2 select
	clk_o2 <=   clk8Hz when "00",
					clk5Hz when "01",
					clk2Hz when others;
	
	process(clk_o1, rst)
	begin
		if(rst='1') then
			led1<="0000";
		elsif(clk_o1'event and clk_o1='1') then
			led1<=not led1(0) & led1(3 downto 1);
		end if;		
	end process;
	
	process(clk_o2, rst)
	begin
		if(rst='1') then
			led2<="0000"; 
		elsif(clk_o1'event and clk_o1='1') then
			led2<= led2(2 downto 0) & not led2(3);
		end if;		
	end process;
	
end Behavioral;

