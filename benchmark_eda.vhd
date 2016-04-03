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

 -- test MVI de 1 dans R3
    Dinp_in <= "0000011000000000";
    clkp_in <= '1';

    -- On met la valeur 1 dans Din
    Dinp_in <= "0000000000000001";
    clkp_in <= '0';

    wait for 1ns;
    assert(donep_out='1') report "Fail MVI/done/1" severity error;
	assert(busp_out="0000000000000001") report "Fail MVI/busp/1" severity error;
 -- fin test MVI

 -- test MV de R3 dans R1
--    Dinp_in <= "0001001011000000";
--    clkp_in <= '1';

--    clkp_in <= '0';

--    wait for 1ns;
--   assert(donep_out='1') report "Fail MV/done/1" severity error;
--	assert(busp_out="0000000000000001") report "Fail MVI/busp/1" severity error;
 -- fin test MV

    assert false report "Test done." severity note;
    wait;
  end process;
end tb;
