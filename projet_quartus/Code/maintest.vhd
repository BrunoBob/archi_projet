-- Assemblage final des différents composants 

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity maintest is
	PORT( CLOCK_50: IN STD_LOGIC;
		SW	: IN	STD_LOGIC_VECTOR(17 downto 0); -- (Switches)
		KEY : IN STD_LOGIC_vector(3 downto 0); -- clock
		LEDG	: OUT	STD_LOGIC_VECTOR(7 downto 0); -- (LEDS)
		LEDR	: OUT	STD_LOGIC_VECTOR(17 downto 0); -- (LEDS)
		HEX0 : OUT STD_LOGIC_VECTOR(6 downto 0);
		HEX1 : OUT STD_LOGIC_VECTOR(6 downto 0);
		HEX4 : OUT STD_LOGIC_VECTOR(6 downto 0);
		HEX6 : OUT STD_LOGIC_VECTOR(6 downto 0));
END maintest;

ARCHITECTURE Behaviour OF maintest IS

COMPONENT realmain IS
	PORT( CLOCK_50: IN STD_LOGIC;
		SW	: IN	STD_LOGIC_VECTOR(17 downto 0); -- (Switches)
		KEY : IN STD_LOGIC_vector(3 downto 0); -- clock
		LEDG	: OUT	STD_LOGIC_VECTOR(7 downto 0); -- (LEDS)
		LEDR	: OUT	STD_LOGIC_VECTOR(17 downto 0)); -- (LEDS)
		--HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
		--HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
		--HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
		--HEX6 : OUT STD_LOGIC_VECTOR(0 TO 6));
END COMPONENT;

COMPONENT flipflop IS
	Generic( N : positive := 16);
	PORT(D : IN STD_LOGIC_VECTOR (N-1 downto 0);
		Set,Reset, CLk : IN STD_LOGIC;
		S: OUT STD_LOGIC_VECTOR (N-1 downto 0));
END COMPONENT;

signal Button : STD_LOGIC_VECTOR(3 downto 0);
signal DIN, BUSD : STD_logic_vector(17 downto 0);
signal INFO : STD_logic_vector(7 downto 0);
signal clk, set, reset : STD_logic;
signal save, get : STD_logic_vector(3 downto 0);

BEGIN

mytest : realmain PORT MAP (clk, DIN, Button, INFO, BUSD);
--FATIGUE : flipflop GENERIC MAP (4) PORT MAP (save, set, reset, clk, get);

process
 begin
	
	wait for 10 ps;
	DIN(17) <= '0';
	DIN(16) <= '0';
	DIN(15 downto 0) <= "0000100000000000";
	button(0) <='1';
	wait for 10 ps;
	button(0) <='0';
	wait for 10 ps;

	DIN(17) <= '1';
	DIN(16) <= '1';

	DIN(15 downto 0) <= "0000100000000000";
	wait for 10 ps;
	button(0) <='1';
	wait for 10 ps;
	button(0) <='0';
	wait for 10 ps;

	DIN(15 downto 0) <= "0000000000000010";
	wait for 10 ps;
	button(0) <='1';
	wait for 10 ps;
	button(0) <='0';
	wait for 10 ps;

	DIN(15 downto 0) <= "0001100000000000";
	button(0) <='1';
	wait for 10 ps;
	button(0) <='0';
	wait for 10 ps;
	
	button(0) <='1';
	wait for 10 ps;
	button(0) <='0';
	wait for 10 ps;

	DIN(15 downto 0) <= "0001100000000000";
	button(0) <='1';
	wait for 10 ps;
	button(0) <='0';
	wait for 10 ps;

end process;

 
END Behaviour;