-- Assemblage final des différents composants 

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY processor_16 IS
		PORT(runp,clkp, resetp : IN STD_LOGIC;
				Dinp : IN STD_LOGIC_VECTOR(15 downto 0);
				donep, over : OUT STD_LOGIC;
				busp : OUT STD_LOGIC_VECTOR (15 downto 0));
END ENTITY;


ARCHITECTURE Behaviour_processor_16 OF processor_16 IS

COMPONENT Controller_FSM IS
		PORT(run,clk, reset : IN STD_LOGIC;
				Ir : IN STD_LOGIC_VECTOR(15 downto 0);
				IRs, Gs, As, Ss : OUT STD_LOGIC;
				Rs : OUT STD_LOGIC_VECTOR(7 downto 0);
				busSel, aluSel : OUT STD_LOGIC_VECTOR (3 downto 0);
				done : OUT STD_LOGIC);
END COMPONENT;

COMPONENT flipflop IS
	Generic( N : positive := 16);
	PORT(D : IN STD_LOGIC_VECTOR (N-1 downto 0);
		Set,Reset, CLk : IN STD_LOGIC;
		S: OUT STD_LOGIC_VECTOR (N-1 downto 0));
END COMPONENT flipflop;

COMPONENT Multiplexer_General IS
		PORT(R0, R1, R2, R3, R4, R5, R6, R7, Din, G, RStore : IN STD_LOGIC_VECTOR (15 downto 0);
			choice : IN STD_LOGIC_VECTOR(3 downto 0);
			s : OUT STD_LOGIC_VECTOR(15 downto 0));
END COMPONENT;

COMPONENT ALU IS
	PORT(a, b : IN STD_logic_vector(15 downto 0);
    	selAlu : IN STD_logic_vector(3 downto 0);
        resAlu : OUT STD_logic_vector(15 downto 0);
	overflow : OUT std_logic);
END COMPONENT;

signal Busg : STD_LOGIC_VECTOR(15 downto 0);
signal runG : STD_LOGIC;
signal clockG : STD_LOGIC;
signal resetG : STD_LOGIC;
signal dinG : STD_LOGIC_VECTOR(15 downto 0);

signal sFIr : STD_LOGIC_VECTOR(15 downto 0);

signal sFA : STD_LOGIC_VECTOR(15 downto 0);

signal sFG : STD_LOGIC_VECTOR(15 downto 0);

signal sIrsFSM : STD_LOGIC;
signal sRsFSM : STD_LOGIC_VECTOR(7 downto 0);
signal sAsFSM : STD_LOGIC;
signal sGsFSM : STD_LOGIC;
signal sSsFSM : STD_LOGIC;
signal busSelFSM : STD_LOGIC_VECTOR(3 downto 0);
signal aluSelFSM : STD_LOGIC_VECTOR(3 downto 0);
signal sdoneFSM : STD_LOGIC;

signal sF0 : STD_LOGIC_VECTOR(15 downto 0);
signal sF1 : STD_LOGIC_VECTOR(15 downto 0);
signal sF2 : STD_LOGIC_VECTOR(15 downto 0);
signal sF3 : STD_LOGIC_VECTOR(15 downto 0);
signal sF4 : STD_LOGIC_VECTOR(15 downto 0);
signal sF5 : STD_LOGIC_VECTOR(15 downto 0);
signal sF6 : STD_LOGIC_VECTOR(15 downto 0);
signal sF7 : STD_LOGIC_VECTOR(15 downto 0);
signal sFStore : STD_LOGIC_VECTOR(15 downto 0);

signal sALU : STD_LOGIC_VECTOR(15 downto 0);

BEGIN

busp <= Busg;
donep <= sdoneFSM;

runG <= runp;
clockG <= clkp;
resetG <= resetp;
dinG <= dinp;


fIr : flipflop GENERIC MAP (16) PORT MAP (dinG, sIrsFSM, resetG, clockG, sFIr);

fA : flipflop GENERIC MAP (16) PORT MAP (Busg, sAsFSM, resetG, clockG, sFA);

fG : flipflop GENERIC MAP (16) PORT MAP (sALU, sGsFSM, resetG, clockG, sFG);

thealu : ALU PORT MAP(sFA, Busg, aluSelFSM, sALU, over);

f0 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(0), resetG, clockG, sF0);
f1 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(1), resetG, clockG, sF1);
f2 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(2), resetG, clockG, sF2);
f3 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(3), resetG, clockG, sF3);
f4 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(4), resetG, clockG, sF4);
f5 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(5), resetG, clockG, sF5);
f6 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(6), resetG, clockG, sF6);
f7 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(7), resetG, clockG, sF7);
fstore : flipflop GENERIC MAP (16) PORT MAP (Busg, sSsFSM, resetG, clockG, sFStore);

fsm : Controller_FSM PORT MAP (runG, clockG, resetG, sFIr, sIrsFSM, sGsFSM, sAsFSM, sSsFSM, sRsFSM, busSelFSM, aluSelFSM, sdoneFSM);

multg : Multiplexer_General PORT MAP (sf0, sf1, sf2, sf3, sf4, sf5, sf6, sf7, dinG, sFG, sfstore, busSelFSM, Busg);


END Behaviour_processor_16;
