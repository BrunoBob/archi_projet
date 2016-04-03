LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY realmain IS
	PORT( CLOCK_50: IN STD_LOGIC;
		SW	: IN	STD_LOGIC_VECTOR(0 to 17); -- (Switches)
		KEY : IN STD_LOGIC_vector(0 to 3); -- clock
		LEDG	: OUT	STD_LOGIC_VECTOR(0 to 7); -- (LEDS)
		LEDR	: OUT	STD_LOGIC_VECTOR(0 to 17); -- (LEDS)
		HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX6 : OUT STD_LOGIC_VECTOR(0 TO 6));
END realmain;

ARCHITECTURE Behaviour OF realmain IS

COMPONENT debouncer is
		port(s_i, clk: IN std_logic;
			s_o: OUT std_logic);
END COMPONENT;	

COMPONENT processor_16 IS
		PORT(runp,clkp, resetp : IN STD_LOGIC;
				Dinp : IN STD_LOGIC_VECTOR(0 to 15);
				donep : OUT STD_LOGIC;
				busp : OUT STD_LOGIC_VECTOR (0 to 15));
END COMPONENT;

COMPONENT Controller_FSM IS
		PORT(run,clk, reset : IN STD_LOGIC;
				Ir : IN STD_LOGIC_VECTOR(0 to 15);
				IRs, Gs, As, Ss : OUT STD_LOGIC;
				Rs : OUT STD_LOGIC_VECTOR(0 to 7);
				busSel, aluSel : OUT STD_LOGIC_VECTOR (0 to 3);
				done : OUT STD_LOGIC);
END COMPONENT;

signal so: STD_LOGIC;

BEGIN

debounc : debouncer PORT MAP(KEY(0), CLOCK_50, so);

proc : processor_16 PORT MAP(SW(16), so, SW(17), SW(0 to 15), LEDG(2), LEDR(0 to 15));
--fsm : Controller_FSM PORT MAP (SW(17), so, SW(16), SW(0 to 15), ledR(0), ledR(1), ledR(2), ledR(3), ledg(0 TO 7), ledR(4 TO 7), ledR(8 TO 11), ledR(17));
 
END Behaviour;