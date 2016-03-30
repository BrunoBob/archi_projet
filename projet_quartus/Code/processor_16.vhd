-- Assemblage final des différents composants 

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY processor_16 IS
		PORT(runp,clkp, resetp : IN STD_LOGIC;
				Dinp : IN STD_LOGIC_VECTOR(0 to 15);
				done : OUT STD_LOGIC;
				busp : OUT STD_LOGIC_VECTOR (0 to 15));
END ENTITY;


ARCHITECTURE Behaviour_processor_16 OF processor_16 IS

COMPONENT debouncer is
		port(s_i, clk: IN std_logic;
			s_o: OUT std_logic);
END COMPONENT;	

COMPONENT Controller_FSM IS
		PORT(run,clk, reset : IN STD_LOGIC;
				Ir : IN STD_LOGIC_VECTOR(0 to 15);
				IRs, Gs, As, Ss : OUT STD_LOGIC;
				Rs : OUT STD_LOGIC_VECTOR(0 to 7);
				busSel, aluSel : OUT STD_LOGIC_VECTOR (0 to 3));
END COMPONENT;

COMPONENT flipflop IS
	Generic( N : positive := 16);
	PORT(D : IN STD_LOGIC_VECTOR (0 to N-1);
		Set,Reset, CLk : IN STD_LOGIC;
		S: OUT STD_LOGIC_VECTOR (0 to N-1));
END COMPONENT flipflop;

COMPONENT Multiplexer_General IS
	PORT(R0, R1, R2, R3, R4, R5, R6, R7, Din, G, RStore : IN STD_LOGIC_VECTOR (0 TO 16);
			choice : IN STD_LOGIC_VECTOR(0 TO 3);
			s : OUT STD_LOGIC_VECTOR(0 TO 15));
END COMPONENT;

signal sRsFSM : STD_LOGIC_VECTOR(0 to 7);
signal sSsFSM : STD_LOGIC;
signal busSelFSM : STD_LOGIC_VECTOR(0 to 3);
signal aluSelFSM : STD_LOGIC_VECTOR(0 to 3);

signal sF0 : STD_LOGIC_VECTOR(0 to 15);
signal sF1 : STD_LOGIC_VECTOR(0 to 15);
signal sF2 : STD_LOGIC_VECTOR(0 to 15);
signal sF3 : STD_LOGIC_VECTOR(0 to 15);
signal sF4 : STD_LOGIC_VECTOR(0 to 15);
signal sF5 : STD_LOGIC_VECTOR(0 to 15);
signal sF6 : STD_LOGIC_VECTOR(0 to 15);
signal sF7 : STD_LOGIC_VECTOR(0 to 15);
signal sFStore : STD_LOGIC_VECTOR(0 to 15);


BEGIN

debounc0 : debouncer PORT MAP (KEY(3), CLOCK_50, so);

-- A rajouter : l'IR

-- A rajouter : A

-- A rajouter : G

-- A rajouter : ALU

-- Ne fonctionne pas, il faut retirer "Reset" des entrées //f0 : flipflop GENERIC MAP (16) PORT MAP (busp,  sRsFSM(0), resetp, clkp, sF0);
-- Ne fonctionne pas, il faut retirer "Reset" des entrées //f1 : flipflop GENERIC MAP (16) PORT MAP (busp,  sRsFSM(1), resetp, clkp, sF1);
-- Ne fonctionne pas, il faut retirer "Reset" des entrées //f2 : flipflop GENERIC MAP (16) PORT MAP (busp,  sRsFSM(2), resetp, clkp, sF2);
-- Ne fonctionne pas, il faut retirer "Reset" des entrées //f3 : flipflop GENERIC MAP (16) PORT MAP (busp,  sRsFSM(3), resetp, clkp, sF3);
-- Ne fonctionne pas, il faut retirer "Reset" des entrées //f4 : flipflop GENERIC MAP (16) PORT MAP (busp,  sRsFSM(4), resetp, clkp, sF4);
-- Ne fonctionne pas, il faut retirer "Reset" des entrées //f5 : flipflop GENERIC MAP (16) PORT MAP (busp,  sRsFSM(5), resetp, clkp, sF5);
-- Ne fonctionne pas, il faut retirer "Reset" des entrées //f6 : flipflop GENERIC MAP (16) PORT MAP (busp,  sRsFSM(6), resetp, clkp, sF6);
-- Ne fonctionne pas, il faut retirer "Reset" des entrées //f7 : flipflop GENERIC MAP (16) PORT MAP (busp,  sRsFSM(7), resetp, clkp, sF7);
-- Ne fonctionne pas, il faut retirer "Reset" des entrées //fstore : flipflop GENERIC MAP (16) PORT MAP (busp,  sSsFSM, resetp, clkp, sFStore);

-- Ne peut pas fonctionner sans IR, G et A //fsm : Controller_FSM PORT MAP (runp, clkp, resetp, SortieIR, EntreeIR, EntreeG, EntreeA, sSsFSM, sRsFSM, busSelFSM, aluSelFSM);

-- Ne fonctionne pas sans f1, f2, etc. et sans G //multg : Multiplexer_General PORT MAP (f0, f1, f2, f3, f4, f5, f6, f7, Dinp, SortieG, fstore, busSelFSM, busp);
 
END Behaviour_processor_16;