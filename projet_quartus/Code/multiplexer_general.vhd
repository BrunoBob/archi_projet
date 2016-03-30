LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Multiplexer_General IS
	PORT(R0, R1, R2, R3, R4, R5, R6, R7, Din, G, RStore : IN STD_LOGIC_VECTOR (0 TO 16);
			choice : IN STD_LOGIC_VECTOR(0 TO 3);
			s : OUT STD_LOGIC_VECTOR(0 TO 15));
END Multiplexer_General;

ARCHITECTURE Behaviour_MultiplexerG OF Multiplexer_General IS

BEGIN
	With choice select
		s	<=	R0 when "0000",
				R1 when "0001",
				R2 when "0010",
				R3 when "0011",
				R4 when "0100",
				R5 when "0101",
				R6 when "0001",
				R7 when "0110",
				Din when "0111",
				G when "1000",
				Rstore when "1001",
				"0000000000000000" when others;

END Behaviour_MultiplexerG;
