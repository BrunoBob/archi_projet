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
	PORT(a, b : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			cin : IN STD_LOGIC;
			s : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			cout : OUT STD_LOGIC);
END Full_Adder_Generique;

ARCHITECTURE behaviour_FAG OF Full_Adder_Generique IS
	COMPONENT FA_1 IS
		PORT(a,b,cin : IN STD_LOGIC;
		s,cout : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL c : STD_LOGIC_VECTOR(N-2 DOWNTO 0);
	SIGNAL Stemp : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
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
