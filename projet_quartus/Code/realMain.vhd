LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY realmain IS
	PORT( CLOCK_50: IN STD_LOGIC;
		SW	: IN	STD_LOGIC_VECTOR(17 downto 0); -- (Switches)
		KEY : IN STD_LOGIC_vector(3 downto 0); -- clock
		LEDG	: OUT	STD_LOGIC_VECTOR(7 downto 0); -- (LEDS)
		LEDR	: OUT	STD_LOGIC_VECTOR(17 downto 0)); -- (LEDS)
		--HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
		--HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
		--HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
		--HEX6 : OUT STD_LOGIC_VECTOR(0 TO 6));
END realmain;

ARCHITECTURE Behaviour OF realmain IS

COMPONENT debouncer is
		port(s_i, clk: IN std_logic;
			s_o: OUT std_logic);
END COMPONENT;	

COMPONENT processor_16 IS
		PORT(runp,clkp, resetp : IN STD_LOGIC;
				Dinp : IN STD_LOGIC_VECTOR(15 downto 0);
				donep, over : OUT STD_LOGIC;
				busp : OUT STD_LOGIC_VECTOR (15 downto 0));
END COMPONENT;

signal so: STD_LOGIC;

BEGIN

--debounc : debouncer PORT MAP(KEY(0), CLOCK_50, so);

proc : processor_16 PORT MAP(SW(17), KEY(0), SW(16), SW(15 downto 0), LEDG(0), LEDG(1), LEDR(15 downto 0));
--fsm : Controller_FSM PORT MAP (SW(17), so, SW(16), SW(0 to 15), ledR(0), ledR(1), ledR(2), ledR(3), ledg(0 TO 7), ledR(4 TO 7), ledR(8 TO 11), ledR(17));
 
END Behaviour;