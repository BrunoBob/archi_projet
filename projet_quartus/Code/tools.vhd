-- registre Générique

LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity flipflop IS
	Generic( N : positive := 16);
	PORT(D : IN STD_LOGIC_VECTOR (0 to N-1);
		Set,Reset, CLk : IN STD_LOGIC;
		S: OUT STD_LOGIC_VECTOR (0 to N-1));
END entity flipflop;

Architecture behaviour_flipflop OF flipflop IS
BEGIN
	Process(Clk)
	BEGIN			
		if1 : If(clk'event and clk='1') THEN
			if2 : If (Reset = '0') THEN
				S<=(OTHERS => '0');
			ELSIF (Set = '1') THEN
				S<=D;
			end IF if2;
		end IF if1;
	end process;
END behaviour_flipflop;


