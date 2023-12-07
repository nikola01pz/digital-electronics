library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity d_bist is
	port(
		clk, d, rst: in std_logic;
		q, qn: out std_logic
	);
end d_bist;

architecture Behavioral of d_bist is
signal temp: std_logic;
begin
	process(clk, rst)
	begin
		if(rst='1') then
			temp <='0';
		elsif(clk'event and clk='1') then
			temp <= d;
		end if;
	end process;
q  <=temp;
qn <= not temp;
end Behavioral;

