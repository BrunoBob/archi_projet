--Décodeur 7 segments

LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity segment_7 IS
	PORT(vin : IN STD_LOGIC_VECTOR(0 to 3);
		vout : OUT STD_LOGIC_VECTOR(0 TO 6));
END segment_7;

ARCHITECTURE behavior_segment7 OF segment_7 IS
BEGIN
	with vin select
		vout <=  "0000001" when "0000",
					"1001111" when "1000",
					"0010010" when "0100",
					"0000110" when "1100",
					"1001100" when "0010",
					"0100100" when "1010",
					"0100000" when "0110",
					"0001111" when "1110",
					"0000000" when "0001",
					"0000100" when "1001",
					"0001000" when "0101",
					"1100000" when "1101",
					"0110001" when "0011",
					"1000010" when "1011",
					"0110000" when "0111",
					"0111000" when "1111";
END behavior_segment7;

