LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Multiplexer_General IS
	PORT(R0, R1, R2, R3, R4, R5, R6, R7, Din, G, RStore : IN STD_LOGIC_VECTOR (0 TO 16);
			choice : IN STD_LOGIC_VECTOR(0 TO 3);
			s : OUT STD_LOGIC_VECTOR(0 TO 15)
END Multiplexer_General;

ARCHITECTURE Behaviour_MultiplexerG OF Multiplexer_General IS

BEGIN
	Case choice is
		When "0000" =>
			s <= R0;
		When "0001" =>
			s <= R1;
		When "0010" =>
			s <= R2;
		When "0011" =>
			s <= R3;
		When "0100" =>
			s <= R4;
		When "0101" =>
			s <= R5;
		When "0110" =>
			s <= R6;
		When "0111" =>
			s <= R7;
		When "1000" =>
			s <= Din;
		When "1001" =>
			s <= G;
		When "1010" =>
			s <= RStore;
	end case;

END Behaviour_MultiplexerG;
