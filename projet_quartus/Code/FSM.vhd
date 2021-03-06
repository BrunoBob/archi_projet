--Automate du controlleur

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Controller_FSM IS
		PORT(run,clk, reset : IN STD_LOGIC;
				Ir : IN STD_LOGIC_VECTOR(15 downto 0);
				IRs, Gs, As, Ss : OUT STD_LOGIC;
				Rs : OUT STD_LOGIC_VECTOR(7 downto 0);
				busSel, aluSel : OUT STD_LOGIC_VECTOR (3 downto 0);
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
				if( run='1'  AND (Ir(15 downto 12)="0000" OR Ir(15 downto 12)="0010")) then
					NS<=ST1;
				elsif(run='1' AND Ir(15 downto 12)="0001") then
					NS<=ST2;
				elsif(run='1' AND Ir(15 downto 12)="0011") then
					NS<=ST3;
				elsif(run='1' AND (Ir(15 downto 12)="0100" OR Ir(15 downto 12)="0101" OR Ir(15 downto 12)="0110" OR Ir(15 downto 12)="0111" OR Ir(15 downto 12)="1000" OR Ir(15 downto 12)="1001")) then
					NS<=ST4;
				elsif(run='0') then
					NS <= NS;					
				END if;			
			when ST1 => 
				NS<=ST0;				
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
			when others =>
				
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
				IRs<='1';
			When ST1 =>
				busSel<="1000";
				if(Ir(13)='0')then
					Case Ir(11 downto 9) is
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
					end case;
				elsif(Ir(13)='1')then
					Ss <='1';
				END IF;
				done <= '1';
			when ST2 =>
				busSel(3)<='0';
				busSel(2 downto 0)<=IR(11 downto 9);
				Case Ir(8 downto 6) is
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
				end case;
				done <= '1';
			
			when ST3 =>
				busSel <= "1010";
				
				done <= '1';
			When ST4 =>
				busSel(3)<='0';
				busSel(2 downto 0)<=IR(11 downto 9);
				
				aluSel <= Ir(3 downto 0);
				
				As<='1';
			
			When ST5 =>
				busSel(3)<='0';
				busSel(2 downto 0)<=IR(8 downto 6);
				Gs<='1';
			When ST6 =>
				busSel<="1001";
				Case IR(11 downto 9) is
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
				end case;
				done <= '1';
			when others =>
		END case;
	END PROCESS SB;
	
	CL : process(clk, reset)
	begin
		if1 : IF((clk = '1')) THEN
			if2 : IF(reset = '0') THEN
				CS <= ST0;
			ELSIF(reset = '1') THEN
				CS <= NS;
			END IF if2;
		END IF if1;
		
	END PROCESS CL;
	
END Controller_FSM_behaviour;
