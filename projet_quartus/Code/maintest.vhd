-- Assemblage final des différents composants 

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY maintest IS
	PORT( CLOCK_50: IN STD_LOGIC;
		SW	: IN	STD_LOGIC_VECTOR(0 to 17); -- (Switches)
		KEY : IN STD_LOGIC_vector(0 to 3); -- clock
		LEDG	: OUT	STD_LOGIC_VECTOR(0 to 7); -- (LEDS)
		LEDR	: OUT	STD_LOGIC_VECTOR(0 to 17); -- (LEDS)
		HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX6 : OUT STD_LOGIC_VECTOR(0 TO 6));
END maintest;

ARCHITECTURE Behaviour OF maintest IS

signal so: STD_LOGIC;

COMPONENT Controller_FSM IS
		PORT(run,clk, reset : IN STD_LOGIC;
				Ir : IN STD_LOGIC_VECTOR(0 to 15);
				IRs, Gs, As, Ss : OUT STD_LOGIC;
				Rs : OUT STD_LOGIC_VECTOR(0 to 7);
				busSel, aluSEL : OUT STD_LOGIC_VECTOR (0 to 3));
END COMPONENT;

COMPONENT debouncer is
		port(s_i, clk: IN std_logic;
			s_o: OUT std_logic);
END COMPONENT;	

--COMPONENT flipflop IS
--	Generic( N : positive := 16);
--	PORT(D : IN STD_LOGIC_VECTOR (0 to N-1);
--		Set,Reset, CLk : IN STD_LOGIC;
--		S: OUT STD_LOGIC_VECTOR (0 to N-1));
--END COMPONENT;

COMPONENT Full_Adder_Generique IS
	Generic( N : positive := 8);
	PORT(a, b : IN STD_LOGIC_VECTOR(0 TO N-1);
			cin : IN STD_LOGIC;
			s : OUT STD_LOGIC_VECTOR(0 TO N-1);
			cout : OUT STD_LOGIC);
END COMPONENT;

--signal hexares : STD_LOGIC_VECTOR(0 to 7);

BEGIN
--debounc0 : debouncer PORT MAP (KEY(3), CLOCK_50, so);
--fsm : Controller_FSM PORT MAP (SW(17), so, SW(16), SW(0 to 15), LEDR(0), LEDR(1), LEDR(2), LEDR(3), LEDG(0 to 7), LEDR(5 to 8), LEDR(10 to 13));
-- ff : flipflop GENERIC MAP (4) PORT MAP (SW(0 to 3), SW(17), SW(16), KEY(3), LEDG(0 to 3));
 fag : Full_Adder_Generique GENERIC MAP (4) PORT MAP (SW(0 to 3), SW(4 to 7), '0', LEDR(0 to 3), LEDG(0));

 
END Behaviour;