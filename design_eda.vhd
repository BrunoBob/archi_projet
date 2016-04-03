-- Additioneur 1 bit

LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity FA_1 IS
	PORT(a,b,cin : IN STD_LOGIC;
		s,cout : OUT STD_LOGIC);
END FA_1;

ARCHITECTURE behavior_FA1 OF FA_1 IS
BEGIN
	s <= a XOR b XOR cin;
	cout <= (a AND b) OR (cin AND (a XOR b));
END behavior_FA1;


-- Additioneur générique

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Full_Adder_Generique IS
	Generic( N : positive := 8);
	PORT(a, b : IN STD_LOGIC_VECTOR(0 TO N-1);
			cin : IN STD_LOGIC;
			s : OUT STD_LOGIC_VECTOR(0 TO N-1);
			cout : OUT STD_LOGIC);
END Full_Adder_Generique;

ARCHITECTURE behaviour_FAG OF Full_Adder_Generique IS
	COMPONENT FA_1 IS
		PORT(a,b,cin : IN STD_LOGIC;
		s,cout : OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL c : STD_LOGIC_VECTOR(0 to N-2);
	SIGNAL Stemp : STD_LOGIC_VECTOR(0 TO N-1);
BEGIN
	jeff_array : for i in 1 to N generate

		first_jeff : if i = 1 generate
			fag1: FA_1 port map(a => a(0), b => b(0), cin => cin, s => Stemp(0), cout => c(0));
		end generate first_jeff;

		int_jeff: if i > 1 and i < N generate
			fagi: FA_1 port map(a => a(i-1), b => b(i-1), cin => c(i-2), s => Stemp(i-1), cout => c(i-1));
		end generate int_jeff;

		last_jeff : if i = N generate
			fagN: FA_1 port map(a => a(i-1), b => b(i-1), cin => c(i-2), s => Stemp(i-1));
		end generate last_jeff;
	end generate jeff_array;
	cout <= ((a(N-1) and b(N-1) and (not Stemp(N-1))) or ((not a(N-1)) and (not b(N-1)) and Stemp(N-1)));
	s <= Stemp;

END behaviour_FAG;


--Multiplicateur générique

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY multiplier_N IS
	Generic(N : positive := 4);
	PORT (ma,mb : IN STD_LOGIC_VECTOR(0 TO N-1);
			ms : OUT STD_LOGIC_VECTOR(0 TO (2*N)-1));
END multiplier_N;

ARCHITECTURE Behavior_multiplierN of multiplier_N IS
COMPONENT FA_1 IS
	PORT(a,b,cin : IN STD_LOGIC;
		s,cout : OUT STD_LOGIC);
END COMPONENT;

type mem_E is ARRAY(0 to N-1) of STD_LOGIC_VECTOR(0 TO N-1);
type mem_S is ARRAY(0 to N-1) of STD_LOGIC_VECTOR(0 TO N);
type mem_C is ARRAY(0 to N-1) of STD_LOGIC_VECTOR(0 TO N);

signal memE : mem_E;
signal memS : mem_S;
signal memC : mem_C;

BEGIN

	memC(0)(N) <= '0';

	ligne : for i in 0 to N-1 generate

		memC(i)(0) <= '0';

		colonne : for j in 0 to N-1 generate

			memE(i)(j) <= ma(j) AND mb(i);

			premLigne : if i = 0 generate
				memS(0)(j) <= memE(0)(j);
			end generate premLigne;

			other : if i > 0 generate
				faij : FA_1 port map (a => memS(i-1)(j+1), b => memE(i)(j), cin => memC(i)(j), cout => memC(i)(j+1), s => memS(i)(j));
			end generate other;

		end generate colonne;

		memS(i)(N) <= memC(i)(N);
		ms(i) <= memS(i)(0);

	end generate ligne;

	ms(N to (2*N)-1) <= memS(N-1)(1 to N);

END Behavior_multiplierN;


-- Multiplexer ALU

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY multiplexer_ALU IS
	PORT(code_ALU : IN STD_LOGIC_VECTOR(0 to 3);
			resAdd, resSub, resMult, resNot, resAnd, resOr : IN STD_LOGIC_VECTOR(0 to 15);
			resALU : OUT STD_LOGIC_VECTOR(0 to 15));
END multiplexer_ALU;

ARCHITECTURE behavior_multiplexer_ALU OF multiplexer_ALU IS
BEGIN
	With code_ALU select
		resALU <= 	resAdd when "0100",
						resSub when "0101",
						resMult when "0110",
						resNot when "0111",
						resAnd when "1000",
						resOr when "1001",
						"0000000000000000" when others;


END behavior_multiplexer_ALU;


--ALU

library IEEE;
use IEEE.std_logic_1164.all;

entity ALU is
	PORT(a, b : IN STD_logic_vector(0 to 15);
    	selAlu : IN STD_logic_vector(0 to 3);
        resAlu : OUT STD_logic_vector(0 to 15));
end alu;

architecture behavior_ALU of ALU is
component multiplexer_ALU IS
	PORT(code_ALU : IN STD_LOGIC_VECTOR(0 to 3);
			resAdd, resSub, resMult, resNot, resAnd, resOr : IN STD_LOGIC_VECTOR(0 to 15);
			resALu : OUT STD_LOGIC_VECTOR(0 to 15));
END component;
begin
	mult : multiplexer_ALU PORT MAP (selAlu, "0000000000000100", "0000000000000101", "0000000000000110", "0000000000000111", "0000000000001000", "0000000000001001", resAlu);
end behavior_ALU;



-- registre Générique

LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity flipflop IS
	Generic( N : positive := 16);
	PORT(D : IN STD_LOGIC_VECTOR (0 to N-1);
		Set,Reset, CLk : IN STD_LOGIC;
		S: OUT STD_LOGIC_VECTOR (0 to N-1));
END entity flipflop;

Architecture behaviour_flipflop OF flipflop IS
BEGIN
	Process(Clk)
	BEGIN
		if1 : If(clk'event and clk='1') THEN
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
	Port(val : IN STD_logic_vector(0 to 15);
    		decodVal : OUT STD_logic_vector(0 to 15));
END TwoComplementDecoder;

architecture behavior_TwoComplementDecoder of TwoComplementDecoder is

component Full_Adder_Generique IS
	Generic( N : positive := 8);
	PORT(a, b : IN STD_LOGIC_VECTOR(0 TO N-1);
			cin : IN STD_LOGIC;
			s : OUT STD_LOGIC_VECTOR(0 TO N-1);
			cout : OUT STD_LOGIC);
END component;

signal valTemp : STD_logic_vector(0 to 15);

begin
    valtemp <= (NOT val) ;
	add : Full_Adder_Generique generic map (16) port map (valtemp, "0000000000000001", '0', decodVal);

END behavior_TwoComplementDecoder;






-- multiplexer general

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Multiplexer_General IS
	PORT(R0, R1, R2, R3, R4, R5, R6, R7, Din, G, RStore : IN STD_LOGIC_VECTOR (0 TO 15);
			choice : IN STD_LOGIC_VECTOR(0 TO 3);
			s : OUT STD_LOGIC_VECTOR(0 TO 15));
END Multiplexer_General;

ARCHITECTURE Behaviour_MultiplexerG OF Multiplexer_General IS

BEGIN
	With choice select
		s	<=	R0 when "0000",
				R1 when "0001",
				R2 when "0010",
				R3 when "0011",
				R4 when "0100",
				R5 when "0101",
				R6 when "0110",
				R7 when "0111",
				Din when "1000",
				G when "1001",
				Rstore when "1010",
				"0000000000000000" when others;

END Behaviour_MultiplexerG;



--Automate du controlleur

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Controller_FSM IS
		PORT(run,clk, reset : IN STD_LOGIC;
				Ir : IN STD_LOGIC_VECTOR(0 to 15);
				IRs, Gs, As, Ss : OUT STD_LOGIC;
				Rs : OUT STD_LOGIC_VECTOR(0 to 7);
				busSel, aluSel : OUT STD_LOGIC_VECTOR (0 to 3);
				done : OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE Controller_FSM_behaviour OF Controller_FSM IS
	type ST is(ST0, ST1, ST2, ST3, ST4, ST5, ST6);
	signal CS,NS :ST;

BEGIN

	SM : process(CS,Ir,run)
	begin
		Case CS is
			when ST0 =>
				if( run='1'  AND (Ir(0 to 3)="0000" OR Ir(0 to 3)="0010")) then
					NS<=ST1;
				elsif(run='1' AND Ir(0 to 3)="0001") then
					NS<=ST2;
				elsif(run='1' AND Ir(0 to 3)="0011") then
					NS<=ST3;
				elsif(run='1' AND (Ir(0 to 3)="0100" OR Ir(0 to 3)="0101" OR Ir(0 to 3)="0110" OR Ir(0 to 3)="0111" OR Ir(0 to 3)="1000" OR Ir(0 to 3)="1001")) then
					NS<=ST4;
				elsif(run='0') then
					NS <= NS;
				END if;
			when ST1 => NS<=ST0;

			when ST2 =>
				NS<=ST0;
			when ST3 =>
				NS<=ST0;
			when ST4 =>
				NS<=ST5;
			when ST5 =>
				NS<=ST6;
			when ST6 =>
				NS<=ST0;

		END case;
	END PROCESS SM;

	SB : process(CS)
	begin
		IRs<='0';
		As<='0';
		Gs<='0';
		Ss<='0';
		Rs<="00000000";
		busSel<="0000";
		aluSel<="0000";
		done <='0';
		Case CS is
			When ST0 =>
				As<='0';
				Gs<='0';
				Ss<='0';
				Rs<="00000000";
				busSel<="0000";
				aluSel<="0000";
				done <='0';
				IRs<='1';
			When ST1 =>
				busSel<="1000";
				if(Ir(2)='0')then
					Case Ir(4 to 6) is
						When "000" =>
							Rs<="10000000";
						When "001" =>
							Rs<="01000000";
						When "010" =>
							Rs<="00100000";
						When "011" =>
							Rs<="00010000";
						When "100" =>
							Rs<="00001000";
						When "101" =>
							Rs<="00000100";
						When "110" =>
							Rs<="00000010";
						When "111" =>
							Rs<="00000001";
                       	When others =>
                        	Rs <= "00000000";
					end case;
				elsif(Ir(2)='1')then
					Ss <='1';
				END IF;
				done <= '1';
			when ST2 =>
				busSel(0)<='0';
				busSel(1 to 3)<=IR(7 to 9);
				Case Ir(4 to 6) is
					When "000" =>
						Rs<="10000000";
					When "001" =>
						Rs<="01000000";
					When "010" =>
						Rs<="00100000";
					When "011" =>
						Rs<="00010000";
					When "100" =>
						Rs<="00001000";
					When "101" =>
						Rs<="00000100";
					When "110" =>
						Rs<="00000010";
					When "111" =>
						Rs<="00000001";
                    When others =>
                    	Rs <= "00000000";
				end case;
				done <= '1';

			when ST3 =>
				busSel <= "1010";

				done <= '1';
			When ST4 =>
				busSel(0)<='0';
				busSel(1 to 3)<=IR(4 to 6);

				aluSel <= Ir(0 TO 3);

				As<='1';

			When ST5 =>
				busSel(0)<='0';
				busSel(1 to 3)<=IR(7 to 9);
				Gs<='1';
			When ST6 =>
				busSel<="1001";
				Case IR(4 to 6) is
						When "000" =>
							Rs<="10000000";
						When "001" =>
							Rs<="01000000";
						When "010" =>
							Rs<="00100000";
						When "011" =>
							Rs<="00010000";
						When "100" =>
							Rs<="00001000";
						When "101" =>
							Rs<="00000100";
						When "110" =>
							Rs<="00000010";
						When "111" =>
							Rs<="00000001";
                        When others =>
                         	Rs <= "00000000";
				end case;
				done <= '1';
		END case;
	END PROCESS SB;

	CL : process(clk, reset)
	begin
		if1 : IF(RISING_EDGE(clk)) THEN
			if2 : IF(reset = '0') THEN
				CS <= ST0;
			ELSIF(reset = '1') THEN
				CS <= NS;
			END IF if2;
		END IF if1;

	END PROCESS CL;

END Controller_FSM_behaviour;



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

fA : flipflop GENERIC MAP (16) PORT MAP (Busg, sAsFSM, resetG, clockG, sFA);

fG : flipflop GENERIC MAP (16) PORT MAP (sALU, sGsFSM, resetG, clockG, sFG);

thealu : ALU PORT MAP(sFA, Busg, aluSelFSM, sALU);

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
