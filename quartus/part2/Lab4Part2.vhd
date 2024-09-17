
library ieee;
use ieee.std_logic_1164.all;

entity Lab4Part2 is
	port
	(		
		clk	: in std_logic;
		t		: in std_logic;
		q		: out std_logic_vector(15 downto 0);
		clr	: in std_logic
	);
end Lab4Part2;

architecture Behavioral of Lab4Part2 is
	component contador16b port
	(		
		clk	: in std_logic;
		t		: in std_logic;
		q		: out std_logic_vector(15 downto 0);
		clr	: in std_logic
	);
	end component;
	
begin
	counter : contador16b port map ( clk, t, q, clr );
end Behavioral;