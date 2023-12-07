library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sklop is
	port(
		clk, rst, ss: in std_logic;
		freqSel: in std_logic_vector(1 downto 0);
		pok: out std_logic_vector(3 downto 0);
		seg: out std_logic_vector(6 downto 0); 
		led: buffer std_logic_vector(3 downto 0)
	);
end sklop;

architecture Behavioral of sklop is
signal clk_o, clk20Hz: std_logic;
signal cTime: integer range 0 to 10:=0;
signal broj: std_logic_vector(3 downto 0);
begin
	 
	a1: entity work.freqDivGen generic map(5_000_000) port map(clk, clk20Hz);
	a2: entity work.hex_sedam_seg port map(broj, seg);
	
	process(clk20Hz)
		variable count: integer range 0 to 10:=0;
	begin
		if(count>=cTime) then
			clk_o <= not clk_o;
			count:=0;
		end if;
	end process;
	
	with freqSel select
	cTime <= 2 when "00", --10hz
				5 when "01", --4hz
				10 when others; --2hz
	
	process(clk_o,rst)
	begin
		if(rst = '1')then
			broj <= "0000";
			led <= "0000";
		elsif(clk_o'event and clk_o='0' and ss='1') then
			led<= not led;
		elsif(clk_o'event and clk_o='1' and ss='1')then 
			led<= not led;
			if(broj >= "1001")then
				broj <= "0000";
			else
				broj <= broj + 1;
			end if;
		end if;
	end process;
	
	pok<="1110";
end Behavioral;

