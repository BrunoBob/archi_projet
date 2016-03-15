-- Assemblage finale des différents composants 

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Generique IS
	PORT(SW	: IN	STD_LOGIC_VECTOR(0 to 17); -- (Switches)
		KEY : IN STD_LOGIC_vector(0 to 3); -- clock
		LEDG	: OUT	STD_LOGIC_VECTOR(0 to 7); -- (LEDS)
		LEDR	: OUT	STD_LOGIC_VECTOR(0 to 17); -- (LEDS)
		HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX6 : OUT STD_LOGIC_VECTOR(0 TO 6));
END Generique;

ARCHITECTURE Behaviour OF Generique IS

COMPONENT Controller_FSM IS
		PORT(run,clk, reset : IN STD_LOGIC;
				Ir : IN STD_LOGIC_VECTOR(0 to 15);
				IRs, Gs, As, Ss : OUT STD_LOGIC;
				Rs : OUT STD_LOGIC_VECTOR(0 to 7);
				busSel, aluSEL : OUT STD_LOGIC_VECTOR (0 to 3));
END COMPONENT;

signal hexares : STD_LOGIC_VECTOR(0 to 7);

BEGIN
fsm : Controller_FSM PORT MAP (SW(17), KEY(3), SW(16), SW(0 to 15), LEDR(0), LEDR(1), LEDR(2), LEDR(3), LEDG(0 to 7), LEDR(5 to 8), LEDR(10 to 13));
 
END Behaviour;
