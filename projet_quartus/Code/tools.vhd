-- registre Générique

LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity flipflop IS
	Generic( N : positive := 16);
	PORT(D : IN STD_LOGIC_VECTOR (N-1 downto 0);
		Set,Reset, CLk : IN STD_LOGIC;
		S: OUT STD_LOGIC_VECTOR (N-1 downto 0));
END flipflop;

Architecture behaviour_flipflop OF flipflop IS
BEGIN
	Process(Clk, set, reset)
	BEGIN			
		if1 : If(clk ='1') THEN
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
	Port(val : IN STD_logic_vector(15 downto 0);
    		decodVal : OUT STD_logic_vector(15 downto 0));
END TwoComplementDecoder;

architecture behavior_TwoComplementDecoder of TwoComplementDecoder is

component Full_Adder_Generique IS
	Generic( N : positive := 8);
	PORT(a, b : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			cin : IN STD_LOGIC;
			s : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			cout : OUT STD_LOGIC);
END component;

signal valTemp : STD_logic_vector(15 downto 0);

begin
    	valtemp <= (NOT val) ;
	add : Full_Adder_Generique generic map (16) port map (valtemp, "0000000000000001", '0', decodVal);

END behavior_TwoComplementDecoder;


--multiplexer 2 2

library ieee;
use ieee.std_logic_1164.all;

entity mult_2_2 is
	port(enta, entb : IN STD_logic_vector(15 downto 0);
		sel : IN STD_logic;
		choice : out STD_logic_vector(15 downto 0));
end mult_2_2;

architecture behavior_mult_2_2 of mult_2_2 is

begin
	with sel select
		choice <= enta when '0',
				entb when '1',
				"0000000000000000" when others;
end behavior_mult_2_2;


