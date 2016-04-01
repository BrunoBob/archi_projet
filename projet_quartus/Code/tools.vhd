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

--Decodeur complément a  2

library ieee;
use ieee.std_logic_1164.all;

entity TwoComplementDecoder is
	Port(val : IN STD_logic_vector(0 to 15);
    		decodVal : OUT STD_logic_vector(0 to 15));
END TwoComplementDecoder;

architecture behavior_TwoComplementDecoder of TwoComplementDecoder is

component Full_Adder_Generique IS
	Generic( N : positive := 8);
	PORT(a, b : IN STD_LOGIC_VECTOR(0 TO N-1);
			cin : IN STD_LOGIC;
			s : OUT STD_LOGIC_VECTOR(0 TO N-1);
			cout : OUT STD_LOGIC);
END component;

signal valTemp : STD_logic_vector(0 to 15);

begin
    valtemp <= (NOT val) ;
	add : Full_Adder_Generique generic map (16) port map (valtemp, "0000000000000001", '0', decodVal);

END behavior_TwoComplementDecoder;



