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
