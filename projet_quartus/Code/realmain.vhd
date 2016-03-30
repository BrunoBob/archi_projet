LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY main IS
	PORT( CLOCK_50: IN STD_LOGIC;
		SW	: IN	STD_LOGIC_VECTOR(0 to 17); -- (Switches)
		KEY : IN STD_LOGIC_vector(0 to 3); -- clock
		LEDG	: OUT	STD_LOGIC_VECTOR(0 to 7); -- (LEDS)
		LEDR	: OUT	STD_LOGIC_VECTOR(0 to 17); -- (LEDS)
		HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX6 : OUT STD_LOGIC_VECTOR(0 TO 6));
END main;

ARCHITECTURE Behaviour OF main IS

COMPONENT processor_16 IS
		PORT(runp,clkp, resetp : IN STD_LOGIC;
				Dinp : IN STD_LOGIC_VECTOR(0 to 15);
				done : OUT STD_LOGIC;
				busp : OUT STD_LOGIC_VECTOR (0 to 15));
END COMPONENT;

BEGIN

proc : processor_16 PORT MAP(SW(17), KEY(0), SW(16), SW(0 to 15), LEDG(0), LEDR(0 to 15));
 
END Behaviour;