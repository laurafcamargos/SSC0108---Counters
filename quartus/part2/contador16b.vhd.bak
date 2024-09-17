LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY contador16b IS
    PORT (
        CLK : IN STD_LOGIC;
        T   : IN STD_LOGIC;
        Q   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        CLR : IN STD_LOGIC
    );
END CONTADOR16B;

ARCHITECTURE BEHAVIORAL OF contador16b IS
    SIGNAL count : UNSIGNED(15 DOWNTO 0);
BEGIN
    PROCESS (CLK, CLR)
    BEGIN
        IF CLR = '0' THEN
            count <= (OTHERS => '0'); -- Reset the count
        ELSIF RISING_EDGE(CLK) THEN
            IF T = '1' THEN
                count <= count + 1;
            END IF;
        END IF;
    END PROCESS;
    
    Q <= STD_LOGIC_VECTOR(count);
END BEHAVIORAL;
