--Automate du controlleur

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Controller_FSM IS
		PORT(run,clk, reset : IN STD_LOGIC;
				Ir : IN STD_LOGIC_VECTOR(0 to 15);
				IRs, Gs, As, Ss : OUT STD_LOGIC;
				Rs : OUT STD_LOGIC_VECTOR(0 to 7);
				busSel, aluSel : OUT STD_LOGIC_VECTOR (0 to 3);
				done : OUT STD_LOGIC_VECTOR);
END ENTITY;

ARCHITECTURE Controller_FSM_behaviour OF Controller_FSM IS
	type ST is(ST0, ST1, ST2, ST3, ST4, ST5, ST6);	
	signal CS,NS :ST;
	
BEGIN
	
	SM : process(CS,Ir,run)
	begin
		Case CS is
			when ST0 =>
				if(run='1'  AND (Ir(0 to 3)="0000" OR Ir(0 to 3)="0010")) then
					NS<=ST1;
				elsif(run='1' AND Ir(0 to 3)="0001") then
					NS<=ST2;
				elsif(run='1' AND Ir(0 to 3)="0011") then
					NS<=ST3;
				elsif(run='1' AND (Ir(0 to 3)="0100" OR Ir(0 to 3)="0101" OR Ir(0 to 3)="0110" OR Ir(0 to 3)="0111" OR Ir(0 to 3)="1000" OR Ir(0 to 3)="1001")) then
					NS<=ST4;
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
		done <='0'
		Case CS is
			When ST0 =>
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
					end case;
				elsif(Ir(2)='1')then
					Ss <='1';
				END IF;
				
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
				end case;
			
			when ST3 =>
				
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
				end case;
		END case;
	END PROCESS SB;
	
	CL : process(clk, reset)
	begin
		if1 : IF(clk'event and clk = '1') THEN
			if2 : IF(reset = '0') THEN
				CS <= ST0;
			ELSIF(reset = '1') THEN
				CS <= NS;
			END IF if2;
		END IF if1;
		
	END PROCESS CL;
	
END Controller_FSM_behaviour;
