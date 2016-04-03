-- Assemblage final des différents composants 

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY processor_16 IS
		PORT(runp,clkp, resetp : IN STD_LOGIC;
				Dinp : IN STD_LOGIC_VECTOR(0 to 15);
				donep : OUT STD_LOGIC;
				busp : OUT STD_LOGIC_VECTOR (0 to 15));
END ENTITY;


ARCHITECTURE Behaviour_processor_16 OF processor_16 IS

COMPONENT Controller_FSM IS
		PORT(run,clk, reset : IN STD_LOGIC;
				Ir : IN STD_LOGIC_VECTOR(0 to 15);
				IRs, Gs, As, Ss : OUT STD_LOGIC;
				Rs : OUT STD_LOGIC_VECTOR(0 to 7);
				busSel, aluSel : OUT STD_LOGIC_VECTOR (0 to 3);
				done : OUT STD_LOGIC);
END COMPONENT;

COMPONENT flipflop IS
	Generic( N : positive := 16);
	PORT(D : IN STD_LOGIC_VECTOR (0 to N-1);
		Set,Reset, CLk : IN STD_LOGIC;
		S: OUT STD_LOGIC_VECTOR (0 to N-1));
END COMPONENT flipflop;

COMPONENT Multiplexer_General IS
	PORT(R0, R1, R2, R3, R4, R5, R6, R7, Din, G, RStore : IN STD_LOGIC_VECTOR (0 TO 15);
			choice : IN STD_LOGIC_VECTOR(0 TO 3);
			s : OUT STD_LOGIC_VECTOR(0 TO 15));
END COMPONENT;

COMPONENT ALU IS
	PORT(a, b : IN STD_LOGIC_VECTOR(0 to 15);
		selAlu : IN STD_LOGIC_VECTOR(0 to 3);
		resAlu : OUT STD_LOGIC_VECTOR(0 to 15));
END COMPONENT;

signal Busg : STD_LOGIC_VECTOR(0 to 15);
signal runG : STD_LOGIC;
signal clockG : STD_LOGIC;
signal resetG : STD_LOGIC;
signal dinG : STD_LOGIC_VECTOR(0 to 15);

signal sFIr : STD_LOGIC_VECTOR(0 to 15);

signal sFA : STD_LOGIC_VECTOR(0 to 15);

signal sFG : STD_LOGIC_VECTOR(0 to 15);

signal sIrsFSM : STD_LOGIC;
signal sRsFSM : STD_LOGIC_VECTOR(0 to 7);
signal sAsFSM : STD_LOGIC;
signal sGsFSM : STD_LOGIC;
signal sSsFSM : STD_LOGIC;
signal busSelFSM : STD_LOGIC_VECTOR(0 to 3);
signal aluSelFSM : STD_LOGIC_VECTOR(0 to 3);
signal sdoneFSM : STD_LOGIC;

signal sF0 : STD_LOGIC_VECTOR(0 to 15);
signal sF1 : STD_LOGIC_VECTOR(0 to 15);
signal sF2 : STD_LOGIC_VECTOR(0 to 15);
signal sF3 : STD_LOGIC_VECTOR(0 to 15);
signal sF4 : STD_LOGIC_VECTOR(0 to 15);
signal sF5 : STD_LOGIC_VECTOR(0 to 15);
signal sF6 : STD_LOGIC_VECTOR(0 to 15);
signal sF7 : STD_LOGIC_VECTOR(0 to 15);
signal sFStore : STD_LOGIC_VECTOR(0 to 15);

signal sALU : STD_LOGIC_VECTOR(0 to 15);

BEGIN

busp <= Busg;
donep <= sdoneFSM;

runG <= runp;
clockG <= clkp;
resetG <= resetp;
dinG <= dinp;


fIr : flipflop GENERIC MAP (16) PORT MAP (dinG, sIrsFSM, resetG, clockG, sFIr);

--fA : flipflop GENERIC MAP (16) PORT MAP (Busg, sAsFSM, resetG, clockG, sFA);

--fG : flipflop GENERIC MAP (16) PORT MAP (sALU, sGsFSM, resetG, clockG, sFG);

--thealu : ALU PORT MAP(sFA, Busg, aluSelFSM, sALU);

--f0 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(0), resetG, clockG, sF0);
--f1 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(1), resetG, clockG, sF1);
--f2 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(2), resetG, clockG, sF2);
--f3 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(3), resetG, clockG, sF3);
--f4 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(4), resetG, clockG, sF4);
--f5 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(5), resetG, clockG, sF5);
--f6 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(6), resetG, clockG, sF6);
--f7 : flipflop GENERIC MAP (16) PORT MAP (Busg, sRsFSM(7), resetG, clockG, sF7);
--fstore : flipflop GENERIC MAP (16) PORT MAP (Busg, sSsFSM, resetG, clockG, sFStore);

fsm : Controller_FSM PORT MAP (runG, clockG, resetG, sFIr, sIrsFSM, sGsFSM, sAsFSM, sSsFSM, sRsFSM, busSelFSM, aluSelFSM, sdoneFSM);

multg : Multiplexer_General PORT MAP (sf0, sf1, sf2, sf3, sf4, sf5, sf6, sf7, dinG, sFG, sfstore, busSelFSM, Busg);


END Behaviour_processor_16;
