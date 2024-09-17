LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY contador16b IS
	PORT
	(   	 
    	CLK	: IN STD_LOGIC;
    	T    	: IN STD_LOGIC;
    	Q    	: INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    	CLR	: IN STD_LOGIC
	);
END CONTADOR16B;

ARCHITECTURE BEHAVIORAL OF contador16b IS
BEGIN
	PROCESS (CLK, T, CLR)
	BEGIN
    	IF CLK'EVENT AND CLK = '1' THEN
        	IF T = '1' THEN
            	Q <= Q + 1;
        	END IF;
        	IF CLR = '0' THEN
            	Q <= (OTHERS => '0');
        	END IF;
    	END IF;
	END PROCESS;
END BEHAVIORAL;
