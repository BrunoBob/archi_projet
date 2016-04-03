-- Testbench for processor_16
library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
-- empty
end testbench;

architecture tb of testbench is

-- processor component
component processor_16 is
port(
  runp, clkp, resetp : in std_logic;
  Dinp: in std_logic_vector(0 to 15);
  donep : out std_logic;
  busp: out std_logic_vector(0 to 15));
end component;

signal runp_in, clkp_in, resetp_in, donep_out : std_logic;
signal Dinp_in, busp_out : std_logic_vector(0 to 15);

begin

  -- Connect DUT
  processor: processor_16 port map(runp_in, clkp_in, resetp_in, Dinp_in, donep_out, busp_out);

  process
  begin
    runp_in <= '1';
    resetp_in <= '1';

 -- test MVI de 3 dans R3
    Dinp_in <= "0000011000000000";
    clkp_in <= '1';

    -- On met la valeur 3 dans Din
    Dinp_in <= "0000000000000011";
    clkp_in <= '0';

    wait for 1ns;
    assert(donep_out='1') report "Fail MVI/done/1" severity error;
	assert(busp_out="0000000000000011") report "Fail MVI/busp/3" severity error;
 -- fin test MVI



 -- test STORE de 2 dans RStore
    Dinp_in <= "0010000000000000";
    clkp_in <= '1';

    -- On met la valeur 2 dans Din
    Dinp_in <= "0000000000000010";
    clkp_in <= '0';

    wait for 1ns;
    assert(donep_out='1') report "Fail STORE/done/1" severity error;
	assert(busp_out="0000000000000010") report "Fail STORE/busp/2" severity error;
 -- fin test STORE



 -- test MV de R3 dans R1
    Dinp_in <= "0001001011000000";
    clkp_in <= '1';

    clkp_in <= '0';

    wait for 1ns;
   assert(donep_out='1') report "Fail MV/done/1" severity error;
	assert(busp_out="0000000000000011") report "Fail MVI/busp/3" severity error;
 -- fin test MV


 -- test LOAD de RStore (2) sur le bus
    Dinp_in <= "0011000000000000";
    clkp_in <= '1';

    clkp_in <= '0';

    wait for 1ns;
    assert(donep_out='1') report "Fail LOAD/done/1" severity error;
	assert(busp_out="0000000000000010") report "Fail LOAD/busp/2" severity error;
 -- fin test LOAD




 -- test ADD de R1 et R3 dans R1
    Dinp_in <= "0100001011000000";
    clkp_in <= '1';
    clkp_in <= '0';

	-- lecture de R1 (3) et ecriture dans A
    wait for 1ns;
    assert(donep_out='0') report "Fail ADD/done/0_etape1" severity error;
	assert(busp_out="0000000000000011") report "Fail ADD/busp/3_etape1" severity error;

    clkp_in <= '1';
    clkp_in <= '0';

    -- lecture de R3 (3) et ecriture dans G
    wait for 1ns;
    assert(donep_out='0') report "Fail ADD/done/0_etape2" severity error;
	assert(busp_out="0000000000000011") report "Fail ADD/busp/3_etape2" severity error;

    clkp_in <= '1';
    clkp_in <= '0';

    -- lecture de G (6) et écriture dans R1
    wait for 1ns;
    assert(donep_out='1') report "Fail ADD/done/1_etape3" severity error;
	assert(busp_out="0000000000000110") report "Fail ADD/busp/6_etape3" severity error;


 -- fin test ADD



 -- test MULT de R1 et R3 dans R1
    Dinp_in <= "0110001011000000";
    clkp_in <= '1';
    clkp_in <= '0';

	-- lecture de R1 (6) et ecriture dans A
    wait for 1ns;
    assert(donep_out='0') report "Fail MULT/done/0_etape1" severity error;
	assert(busp_out="0000000000000110") report "Fail MULT/busp/6_etape1" severity error;

    clkp_in <= '1';
    clkp_in <= '0';

    -- lecture de R3 (3) et ecriture dans G
    wait for 1ns;
    assert(donep_out='0') report "Fail MULT/done/0_etape2" severity error;
	assert(busp_out="0000000000000011") report "Fail MULT/busp/3_etape2" severity error;

    clkp_in <= '1';
    clkp_in <= '0';

    -- lecture de G (18) et écriture dans R1
    wait for 1ns;
    assert(donep_out='1') report "Fail MULT/done/1_etape3" severity error;
	assert(busp_out="0000000000010010") report "Fail MULT/busp/18_etape3" severity error;

 -- fin test MULT



 -- test SUB de R1 et R3 dans R1
    Dinp_in <= "0101001011000000";
    clkp_in <= '1';
    clkp_in <= '0';

	-- lecture de R1 (18) et ecriture dans A
    wait for 1ns;
    assert(donep_out='0') report "Fail SUB/done/0_etape1" severity error;
	assert(busp_out="0000000000010010") report "Fail SUB/busp/18_etape1" severity error;

    clkp_in <= '1';
    clkp_in <= '0';

    -- lecture de R3 (3) et ecriture dans G
    wait for 1ns;
    assert(donep_out='0') report "Fail SUB/done/0_etape2" severity error;
	assert(busp_out="0000000000000011") report "Fail SUB/busp/3_etape2" severity error;

    clkp_in <= '1';
    clkp_in <= '0';

    -- lecture de G (15) et écriture dans R1
    wait for 1ns;
    assert(donep_out='1') report "Fail SUB/done/1_etape3" severity error;
	assert(busp_out="0000000000001111") report "Fail SUB/busp/15_etape3" severity error;

 -- fin test SUB


 -- test OR de R1 et R3 dans R1
    Dinp_in <= "1001001011000000";
    clkp_in <= '1';
    clkp_in <= '0';

	-- lecture de R1 (15) et ecriture dans A
    wait for 1ns;
    assert(donep_out='0') report "Fail OR/done/0_etape1" severity error;
	assert(busp_out="0000000000001111") report "Fail OR/busp/15_etape1" severity error;

    clkp_in <= '1';
    clkp_in <= '0';

    -- lecture de R3 (3) et ecriture dans G
    wait for 1ns;
    assert(donep_out='0') report "Fail OR/done/0_etape2" severity error;
	assert(busp_out="0000000000000011") report "Fail OR/busp/3_etape2" severity error;

    clkp_in <= '1';
    clkp_in <= '0';

    -- lecture de G (15) et écriture dans R1
    wait for 1ns;
    assert(donep_out='1') report "Fail OR/done/1_etape3" severity error;
	assert(busp_out="0000000000001111") report "Fail OR/busp/15_etape3" severity error;

 -- fin test OR


 -- test AND de R3 et R1 dans R3
    Dinp_in <= "1000011001000000";
    clkp_in <= '1';
    clkp_in <= '0';


	-- lecture de R3 (3) et ecriture dans A
    wait for 1ns;
    assert(donep_out='0') report "Fail AND/done/0_etape1" severity error;
	assert(busp_out="0000000000000011") report "Fail AND/busp/3_etape1" severity error;

    clkp_in <= '1';
    clkp_in <= '0';

    -- lecture de R1 (15) et ecriture dans G
    wait for 1ns;
    assert(donep_out='0') report "Fail AND/done/0_etape2" severity error;
	assert(busp_out="0000000000001111") report "Fail AND/busp/15_etape2" severity error;

    clkp_in <= '1';
    clkp_in <= '0';

    -- lecture de G (15) et écriture dans R1
    wait for 1ns;
    assert(donep_out='1') report "Fail AND/done/1_etape3" severity error;
	assert(busp_out="0000000000000011") report "Fail AND/busp/3_etape3" severity error;

 -- fin test AND


    assert false report "Test done." severity note;
    wait;
  end process;
end tb;
