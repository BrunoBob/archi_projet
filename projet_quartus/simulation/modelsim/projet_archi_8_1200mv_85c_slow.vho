-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/23/2016 16:44:48"

-- 
-- Device: Altera EP4CE115F29C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 TO 17);
	KEY : IN std_logic_vector(0 TO 3);
	LEDG : OUT std_logic_vector(0 TO 7);
	LEDR : OUT std_logic_vector(0 TO 17);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6)
	);
END main;

-- Design Ports Information
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 TO 17);
SIGNAL ww_KEY : std_logic_vector(0 TO 3);
SIGNAL ww_LEDG : std_logic_vector(0 TO 7);
SIGNAL ww_LEDR : std_logic_vector(0 TO 17);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounc0|s_o~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsm|Selector16~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounc0|counter[0]~32_combout\ : std_logic;
SIGNAL \debounc0|counter[0]~33\ : std_logic;
SIGNAL \debounc0|counter[1]~34_combout\ : std_logic;
SIGNAL \debounc0|counter[1]~35\ : std_logic;
SIGNAL \debounc0|counter[2]~36_combout\ : std_logic;
SIGNAL \debounc0|counter[2]~37\ : std_logic;
SIGNAL \debounc0|counter[3]~38_combout\ : std_logic;
SIGNAL \debounc0|counter[3]~39\ : std_logic;
SIGNAL \debounc0|counter[4]~40_combout\ : std_logic;
SIGNAL \debounc0|counter[4]~41\ : std_logic;
SIGNAL \debounc0|counter[5]~42_combout\ : std_logic;
SIGNAL \debounc0|counter[5]~43\ : std_logic;
SIGNAL \debounc0|counter[6]~44_combout\ : std_logic;
SIGNAL \debounc0|counter[6]~45\ : std_logic;
SIGNAL \debounc0|counter[7]~46_combout\ : std_logic;
SIGNAL \debounc0|counter[7]~47\ : std_logic;
SIGNAL \debounc0|counter[8]~48_combout\ : std_logic;
SIGNAL \debounc0|counter[8]~49\ : std_logic;
SIGNAL \debounc0|counter[9]~50_combout\ : std_logic;
SIGNAL \debounc0|counter[9]~51\ : std_logic;
SIGNAL \debounc0|counter[10]~52_combout\ : std_logic;
SIGNAL \debounc0|counter[10]~53\ : std_logic;
SIGNAL \debounc0|counter[11]~54_combout\ : std_logic;
SIGNAL \debounc0|counter[11]~55\ : std_logic;
SIGNAL \debounc0|counter[12]~56_combout\ : std_logic;
SIGNAL \debounc0|counter[12]~57\ : std_logic;
SIGNAL \debounc0|counter[13]~58_combout\ : std_logic;
SIGNAL \debounc0|counter[13]~59\ : std_logic;
SIGNAL \debounc0|counter[14]~60_combout\ : std_logic;
SIGNAL \debounc0|counter[14]~61\ : std_logic;
SIGNAL \debounc0|counter[15]~62_combout\ : std_logic;
SIGNAL \debounc0|counter[15]~63\ : std_logic;
SIGNAL \debounc0|counter[16]~64_combout\ : std_logic;
SIGNAL \debounc0|counter[16]~65\ : std_logic;
SIGNAL \debounc0|counter[17]~66_combout\ : std_logic;
SIGNAL \debounc0|counter[17]~67\ : std_logic;
SIGNAL \debounc0|counter[18]~68_combout\ : std_logic;
SIGNAL \debounc0|counter[18]~69\ : std_logic;
SIGNAL \debounc0|counter[19]~70_combout\ : std_logic;
SIGNAL \debounc0|counter[19]~71\ : std_logic;
SIGNAL \debounc0|counter[20]~72_combout\ : std_logic;
SIGNAL \debounc0|counter[20]~73\ : std_logic;
SIGNAL \debounc0|counter[21]~74_combout\ : std_logic;
SIGNAL \debounc0|counter[21]~75\ : std_logic;
SIGNAL \debounc0|counter[22]~76_combout\ : std_logic;
SIGNAL \debounc0|counter[22]~77\ : std_logic;
SIGNAL \debounc0|counter[23]~78_combout\ : std_logic;
SIGNAL \debounc0|counter[23]~79\ : std_logic;
SIGNAL \debounc0|counter[24]~80_combout\ : std_logic;
SIGNAL \debounc0|counter[24]~81\ : std_logic;
SIGNAL \debounc0|counter[25]~82_combout\ : std_logic;
SIGNAL \debounc0|counter[25]~83\ : std_logic;
SIGNAL \debounc0|counter[26]~84_combout\ : std_logic;
SIGNAL \debounc0|counter[26]~85\ : std_logic;
SIGNAL \debounc0|counter[27]~86_combout\ : std_logic;
SIGNAL \debounc0|counter[27]~87\ : std_logic;
SIGNAL \debounc0|counter[28]~88_combout\ : std_logic;
SIGNAL \debounc0|counter[28]~89\ : std_logic;
SIGNAL \debounc0|counter[29]~90_combout\ : std_logic;
SIGNAL \debounc0|counter[29]~91\ : std_logic;
SIGNAL \debounc0|counter[30]~92_combout\ : std_logic;
SIGNAL \debounc0|counter[30]~93\ : std_logic;
SIGNAL \debounc0|counter[31]~94_combout\ : std_logic;
SIGNAL \debounc0|s_o~q\ : std_logic;
SIGNAL \fsm|comb~2_combout\ : std_logic;
SIGNAL \fsm|comb~3_combout\ : std_logic;
SIGNAL \debounc0|tmp_s_i~q\ : std_logic;
SIGNAL \debounc0|s_o~0_combout\ : std_logic;
SIGNAL \debounc0|LessThan0~0_combout\ : std_logic;
SIGNAL \debounc0|LessThan0~1_combout\ : std_logic;
SIGNAL \debounc0|LessThan0~2_combout\ : std_logic;
SIGNAL \debounc0|LessThan0~3_combout\ : std_logic;
SIGNAL \debounc0|LessThan0~4_combout\ : std_logic;
SIGNAL \debounc0|LessThan0~5_combout\ : std_logic;
SIGNAL \debounc0|LessThan0~6_combout\ : std_logic;
SIGNAL \debounc0|LessThan0~7_combout\ : std_logic;
SIGNAL \debounc0|LessThan0~8_combout\ : std_logic;
SIGNAL \debounc0|s_o~1_combout\ : std_logic;
SIGNAL \debounc0|s_o~2_combout\ : std_logic;
SIGNAL \debounc0|process_0~0_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \debounc0|s_o~clkctrl_outclk\ : std_logic;
SIGNAL \debounc0|tmp_s_i~feeder_combout\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \fsm|comb~7_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \fsm|comb~8_combout\ : std_logic;
SIGNAL \fsm|comb~9_combout\ : std_logic;
SIGNAL \fsm|NS.ST4_346~combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \fsm|CS~12_combout\ : std_logic;
SIGNAL \fsm|CS.ST4~q\ : std_logic;
SIGNAL \fsm|WideOr0~0_combout\ : std_logic;
SIGNAL \fsm|NS.ST0_397~combout\ : std_logic;
SIGNAL \fsm|CS~14_combout\ : std_logic;
SIGNAL \fsm|CS.ST0~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \fsm|Selector16~0_combout\ : std_logic;
SIGNAL \fsm|Selector16~1_combout\ : std_logic;
SIGNAL \fsm|Selector16~1clkctrl_outclk\ : std_logic;
SIGNAL \fsm|NS.ST6_319~combout\ : std_logic;
SIGNAL \fsm|CS~10_combout\ : std_logic;
SIGNAL \fsm|CS.ST6~q\ : std_logic;
SIGNAL \fsm|busSel[0]~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \fsm|comb~6_combout\ : std_logic;
SIGNAL \fsm|comb~4_combout\ : std_logic;
SIGNAL \fsm|comb~5_combout\ : std_logic;
SIGNAL \fsm|NS.ST2_370~combout\ : std_logic;
SIGNAL \fsm|CS~11_combout\ : std_logic;
SIGNAL \fsm|CS.ST2~q\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \fsm|Selector10~0_combout\ : std_logic;
SIGNAL \fsm|Selector10~1_combout\ : std_logic;
SIGNAL \fsm|Selector9~1_combout\ : std_logic;
SIGNAL \fsm|Selector9~2_combout\ : std_logic;
SIGNAL \fsm|Selector8~0_combout\ : std_logic;
SIGNAL \fsm|Selector7~0_combout\ : std_logic;
SIGNAL \fsm|Selector6~0_combout\ : std_logic;
SIGNAL \fsm|Selector5~0_combout\ : std_logic;
SIGNAL \fsm|Selector4~0_combout\ : std_logic;
SIGNAL \fsm|Selector3~0_combout\ : std_logic;
SIGNAL \fsm|aluSel[3]~0_combout\ : std_logic;
SIGNAL \fsm|aluSel[2]~1_combout\ : std_logic;
SIGNAL \fsm|aluSel[1]~2_combout\ : std_logic;
SIGNAL \fsm|aluSel[0]~3_combout\ : std_logic;
SIGNAL \fsm|Selector2~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \fsm|NS.ST5_334~combout\ : std_logic;
SIGNAL \fsm|CS~13_combout\ : std_logic;
SIGNAL \fsm|CS.ST5~q\ : std_logic;
SIGNAL \fsm|Selector2~1_combout\ : std_logic;
SIGNAL \fsm|Selector2~2_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \fsm|Selector1~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \fsm|Selector0~0_combout\ : std_logic;
SIGNAL \fsm|comb~0_combout\ : std_logic;
SIGNAL \fsm|comb~1_combout\ : std_logic;
SIGNAL \fsm|NS.ST1_382~combout\ : std_logic;
SIGNAL \fsm|CS~9_combout\ : std_logic;
SIGNAL \fsm|CS.ST1~q\ : std_logic;
SIGNAL \fsm|Selector9~0_combout\ : std_logic;
SIGNAL \debounc0|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fsm|ALT_INV_CS.ST0~q\ : std_logic;
SIGNAL \fsm|ALT_INV_busSel[0]~1_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX4 <= ww_HEX4;
HEX6 <= ww_HEX6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\debounc0|s_o~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \debounc0|s_o~q\);

\fsm|Selector16~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fsm|Selector16~1_combout\);
\fsm|ALT_INV_CS.ST0~q\ <= NOT \fsm|CS.ST0~q\;
\fsm|ALT_INV_busSel[0]~1_combout\ <= NOT \fsm|busSel[0]~1_combout\;

-- Location: FF_X35_Y49_N31
\debounc0|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[31]~94_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(31));

-- Location: FF_X35_Y50_N13
\debounc0|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[6]~44_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(6));

-- Location: FF_X35_Y50_N15
\debounc0|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[7]~46_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(7));

-- Location: FF_X35_Y50_N17
\debounc0|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[8]~48_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(8));

-- Location: FF_X35_Y50_N19
\debounc0|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[9]~50_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(9));

-- Location: FF_X35_Y50_N21
\debounc0|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[10]~52_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(10));

-- Location: FF_X35_Y50_N23
\debounc0|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[11]~54_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(11));

-- Location: FF_X35_Y50_N25
\debounc0|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[12]~56_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(12));

-- Location: FF_X35_Y50_N27
\debounc0|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[13]~58_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(13));

-- Location: FF_X35_Y50_N3
\debounc0|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[1]~34_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(1));

-- Location: FF_X35_Y50_N5
\debounc0|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[2]~36_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(2));

-- Location: FF_X35_Y50_N7
\debounc0|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[3]~38_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(3));

-- Location: FF_X35_Y50_N9
\debounc0|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[4]~40_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(4));

-- Location: FF_X35_Y50_N11
\debounc0|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[5]~42_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(5));

-- Location: FF_X35_Y50_N29
\debounc0|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[14]~60_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(14));

-- Location: FF_X35_Y50_N31
\debounc0|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[15]~62_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(15));

-- Location: FF_X35_Y49_N1
\debounc0|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[16]~64_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(16));

-- Location: FF_X35_Y49_N3
\debounc0|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[17]~66_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(17));

-- Location: FF_X35_Y49_N5
\debounc0|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[18]~68_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(18));

-- Location: FF_X35_Y49_N7
\debounc0|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[19]~70_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(19));

-- Location: FF_X35_Y49_N9
\debounc0|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[20]~72_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(20));

-- Location: FF_X35_Y49_N11
\debounc0|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[21]~74_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(21));

-- Location: FF_X35_Y49_N13
\debounc0|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[22]~76_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(22));

-- Location: FF_X35_Y49_N15
\debounc0|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[23]~78_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(23));

-- Location: FF_X35_Y49_N17
\debounc0|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[24]~80_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(24));

-- Location: FF_X35_Y49_N19
\debounc0|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[25]~82_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(25));

-- Location: FF_X35_Y49_N21
\debounc0|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[26]~84_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(26));

-- Location: FF_X35_Y49_N23
\debounc0|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[27]~86_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(27));

-- Location: FF_X35_Y49_N25
\debounc0|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[28]~88_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(28));

-- Location: FF_X35_Y49_N27
\debounc0|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[29]~90_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(29));

-- Location: FF_X35_Y49_N29
\debounc0|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[30]~92_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(30));

-- Location: FF_X35_Y50_N1
\debounc0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|counter[0]~32_combout\,
	sclr => \debounc0|process_0~0_combout\,
	ena => \debounc0|s_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|counter\(0));

-- Location: LCCOMB_X35_Y50_N0
\debounc0|counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[0]~32_combout\ = \debounc0|counter\(0) $ (VCC)
-- \debounc0|counter[0]~33\ = CARRY(\debounc0|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(0),
	datad => VCC,
	combout => \debounc0|counter[0]~32_combout\,
	cout => \debounc0|counter[0]~33\);

-- Location: LCCOMB_X35_Y50_N2
\debounc0|counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[1]~34_combout\ = (\debounc0|counter\(1) & (!\debounc0|counter[0]~33\)) # (!\debounc0|counter\(1) & ((\debounc0|counter[0]~33\) # (GND)))
-- \debounc0|counter[1]~35\ = CARRY((!\debounc0|counter[0]~33\) # (!\debounc0|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(1),
	datad => VCC,
	cin => \debounc0|counter[0]~33\,
	combout => \debounc0|counter[1]~34_combout\,
	cout => \debounc0|counter[1]~35\);

-- Location: LCCOMB_X35_Y50_N4
\debounc0|counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[2]~36_combout\ = (\debounc0|counter\(2) & (\debounc0|counter[1]~35\ $ (GND))) # (!\debounc0|counter\(2) & (!\debounc0|counter[1]~35\ & VCC))
-- \debounc0|counter[2]~37\ = CARRY((\debounc0|counter\(2) & !\debounc0|counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(2),
	datad => VCC,
	cin => \debounc0|counter[1]~35\,
	combout => \debounc0|counter[2]~36_combout\,
	cout => \debounc0|counter[2]~37\);

-- Location: LCCOMB_X35_Y50_N6
\debounc0|counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[3]~38_combout\ = (\debounc0|counter\(3) & (!\debounc0|counter[2]~37\)) # (!\debounc0|counter\(3) & ((\debounc0|counter[2]~37\) # (GND)))
-- \debounc0|counter[3]~39\ = CARRY((!\debounc0|counter[2]~37\) # (!\debounc0|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(3),
	datad => VCC,
	cin => \debounc0|counter[2]~37\,
	combout => \debounc0|counter[3]~38_combout\,
	cout => \debounc0|counter[3]~39\);

-- Location: LCCOMB_X35_Y50_N8
\debounc0|counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[4]~40_combout\ = (\debounc0|counter\(4) & (\debounc0|counter[3]~39\ $ (GND))) # (!\debounc0|counter\(4) & (!\debounc0|counter[3]~39\ & VCC))
-- \debounc0|counter[4]~41\ = CARRY((\debounc0|counter\(4) & !\debounc0|counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(4),
	datad => VCC,
	cin => \debounc0|counter[3]~39\,
	combout => \debounc0|counter[4]~40_combout\,
	cout => \debounc0|counter[4]~41\);

-- Location: LCCOMB_X35_Y50_N10
\debounc0|counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[5]~42_combout\ = (\debounc0|counter\(5) & (!\debounc0|counter[4]~41\)) # (!\debounc0|counter\(5) & ((\debounc0|counter[4]~41\) # (GND)))
-- \debounc0|counter[5]~43\ = CARRY((!\debounc0|counter[4]~41\) # (!\debounc0|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(5),
	datad => VCC,
	cin => \debounc0|counter[4]~41\,
	combout => \debounc0|counter[5]~42_combout\,
	cout => \debounc0|counter[5]~43\);

-- Location: LCCOMB_X35_Y50_N12
\debounc0|counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[6]~44_combout\ = (\debounc0|counter\(6) & (\debounc0|counter[5]~43\ $ (GND))) # (!\debounc0|counter\(6) & (!\debounc0|counter[5]~43\ & VCC))
-- \debounc0|counter[6]~45\ = CARRY((\debounc0|counter\(6) & !\debounc0|counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(6),
	datad => VCC,
	cin => \debounc0|counter[5]~43\,
	combout => \debounc0|counter[6]~44_combout\,
	cout => \debounc0|counter[6]~45\);

-- Location: LCCOMB_X35_Y50_N14
\debounc0|counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[7]~46_combout\ = (\debounc0|counter\(7) & (!\debounc0|counter[6]~45\)) # (!\debounc0|counter\(7) & ((\debounc0|counter[6]~45\) # (GND)))
-- \debounc0|counter[7]~47\ = CARRY((!\debounc0|counter[6]~45\) # (!\debounc0|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(7),
	datad => VCC,
	cin => \debounc0|counter[6]~45\,
	combout => \debounc0|counter[7]~46_combout\,
	cout => \debounc0|counter[7]~47\);

-- Location: LCCOMB_X35_Y50_N16
\debounc0|counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[8]~48_combout\ = (\debounc0|counter\(8) & (\debounc0|counter[7]~47\ $ (GND))) # (!\debounc0|counter\(8) & (!\debounc0|counter[7]~47\ & VCC))
-- \debounc0|counter[8]~49\ = CARRY((\debounc0|counter\(8) & !\debounc0|counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(8),
	datad => VCC,
	cin => \debounc0|counter[7]~47\,
	combout => \debounc0|counter[8]~48_combout\,
	cout => \debounc0|counter[8]~49\);

-- Location: LCCOMB_X35_Y50_N18
\debounc0|counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[9]~50_combout\ = (\debounc0|counter\(9) & (!\debounc0|counter[8]~49\)) # (!\debounc0|counter\(9) & ((\debounc0|counter[8]~49\) # (GND)))
-- \debounc0|counter[9]~51\ = CARRY((!\debounc0|counter[8]~49\) # (!\debounc0|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(9),
	datad => VCC,
	cin => \debounc0|counter[8]~49\,
	combout => \debounc0|counter[9]~50_combout\,
	cout => \debounc0|counter[9]~51\);

-- Location: LCCOMB_X35_Y50_N20
\debounc0|counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[10]~52_combout\ = (\debounc0|counter\(10) & (\debounc0|counter[9]~51\ $ (GND))) # (!\debounc0|counter\(10) & (!\debounc0|counter[9]~51\ & VCC))
-- \debounc0|counter[10]~53\ = CARRY((\debounc0|counter\(10) & !\debounc0|counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(10),
	datad => VCC,
	cin => \debounc0|counter[9]~51\,
	combout => \debounc0|counter[10]~52_combout\,
	cout => \debounc0|counter[10]~53\);

-- Location: LCCOMB_X35_Y50_N22
\debounc0|counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[11]~54_combout\ = (\debounc0|counter\(11) & (!\debounc0|counter[10]~53\)) # (!\debounc0|counter\(11) & ((\debounc0|counter[10]~53\) # (GND)))
-- \debounc0|counter[11]~55\ = CARRY((!\debounc0|counter[10]~53\) # (!\debounc0|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(11),
	datad => VCC,
	cin => \debounc0|counter[10]~53\,
	combout => \debounc0|counter[11]~54_combout\,
	cout => \debounc0|counter[11]~55\);

-- Location: LCCOMB_X35_Y50_N24
\debounc0|counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[12]~56_combout\ = (\debounc0|counter\(12) & (\debounc0|counter[11]~55\ $ (GND))) # (!\debounc0|counter\(12) & (!\debounc0|counter[11]~55\ & VCC))
-- \debounc0|counter[12]~57\ = CARRY((\debounc0|counter\(12) & !\debounc0|counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(12),
	datad => VCC,
	cin => \debounc0|counter[11]~55\,
	combout => \debounc0|counter[12]~56_combout\,
	cout => \debounc0|counter[12]~57\);

-- Location: LCCOMB_X35_Y50_N26
\debounc0|counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[13]~58_combout\ = (\debounc0|counter\(13) & (!\debounc0|counter[12]~57\)) # (!\debounc0|counter\(13) & ((\debounc0|counter[12]~57\) # (GND)))
-- \debounc0|counter[13]~59\ = CARRY((!\debounc0|counter[12]~57\) # (!\debounc0|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(13),
	datad => VCC,
	cin => \debounc0|counter[12]~57\,
	combout => \debounc0|counter[13]~58_combout\,
	cout => \debounc0|counter[13]~59\);

-- Location: LCCOMB_X35_Y50_N28
\debounc0|counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[14]~60_combout\ = (\debounc0|counter\(14) & (\debounc0|counter[13]~59\ $ (GND))) # (!\debounc0|counter\(14) & (!\debounc0|counter[13]~59\ & VCC))
-- \debounc0|counter[14]~61\ = CARRY((\debounc0|counter\(14) & !\debounc0|counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(14),
	datad => VCC,
	cin => \debounc0|counter[13]~59\,
	combout => \debounc0|counter[14]~60_combout\,
	cout => \debounc0|counter[14]~61\);

-- Location: LCCOMB_X35_Y50_N30
\debounc0|counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[15]~62_combout\ = (\debounc0|counter\(15) & (!\debounc0|counter[14]~61\)) # (!\debounc0|counter\(15) & ((\debounc0|counter[14]~61\) # (GND)))
-- \debounc0|counter[15]~63\ = CARRY((!\debounc0|counter[14]~61\) # (!\debounc0|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(15),
	datad => VCC,
	cin => \debounc0|counter[14]~61\,
	combout => \debounc0|counter[15]~62_combout\,
	cout => \debounc0|counter[15]~63\);

-- Location: LCCOMB_X35_Y49_N0
\debounc0|counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[16]~64_combout\ = (\debounc0|counter\(16) & (\debounc0|counter[15]~63\ $ (GND))) # (!\debounc0|counter\(16) & (!\debounc0|counter[15]~63\ & VCC))
-- \debounc0|counter[16]~65\ = CARRY((\debounc0|counter\(16) & !\debounc0|counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(16),
	datad => VCC,
	cin => \debounc0|counter[15]~63\,
	combout => \debounc0|counter[16]~64_combout\,
	cout => \debounc0|counter[16]~65\);

-- Location: LCCOMB_X35_Y49_N2
\debounc0|counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[17]~66_combout\ = (\debounc0|counter\(17) & (!\debounc0|counter[16]~65\)) # (!\debounc0|counter\(17) & ((\debounc0|counter[16]~65\) # (GND)))
-- \debounc0|counter[17]~67\ = CARRY((!\debounc0|counter[16]~65\) # (!\debounc0|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(17),
	datad => VCC,
	cin => \debounc0|counter[16]~65\,
	combout => \debounc0|counter[17]~66_combout\,
	cout => \debounc0|counter[17]~67\);

-- Location: LCCOMB_X35_Y49_N4
\debounc0|counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[18]~68_combout\ = (\debounc0|counter\(18) & (\debounc0|counter[17]~67\ $ (GND))) # (!\debounc0|counter\(18) & (!\debounc0|counter[17]~67\ & VCC))
-- \debounc0|counter[18]~69\ = CARRY((\debounc0|counter\(18) & !\debounc0|counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(18),
	datad => VCC,
	cin => \debounc0|counter[17]~67\,
	combout => \debounc0|counter[18]~68_combout\,
	cout => \debounc0|counter[18]~69\);

-- Location: LCCOMB_X35_Y49_N6
\debounc0|counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[19]~70_combout\ = (\debounc0|counter\(19) & (!\debounc0|counter[18]~69\)) # (!\debounc0|counter\(19) & ((\debounc0|counter[18]~69\) # (GND)))
-- \debounc0|counter[19]~71\ = CARRY((!\debounc0|counter[18]~69\) # (!\debounc0|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(19),
	datad => VCC,
	cin => \debounc0|counter[18]~69\,
	combout => \debounc0|counter[19]~70_combout\,
	cout => \debounc0|counter[19]~71\);

-- Location: LCCOMB_X35_Y49_N8
\debounc0|counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[20]~72_combout\ = (\debounc0|counter\(20) & (\debounc0|counter[19]~71\ $ (GND))) # (!\debounc0|counter\(20) & (!\debounc0|counter[19]~71\ & VCC))
-- \debounc0|counter[20]~73\ = CARRY((\debounc0|counter\(20) & !\debounc0|counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(20),
	datad => VCC,
	cin => \debounc0|counter[19]~71\,
	combout => \debounc0|counter[20]~72_combout\,
	cout => \debounc0|counter[20]~73\);

-- Location: LCCOMB_X35_Y49_N10
\debounc0|counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[21]~74_combout\ = (\debounc0|counter\(21) & (!\debounc0|counter[20]~73\)) # (!\debounc0|counter\(21) & ((\debounc0|counter[20]~73\) # (GND)))
-- \debounc0|counter[21]~75\ = CARRY((!\debounc0|counter[20]~73\) # (!\debounc0|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(21),
	datad => VCC,
	cin => \debounc0|counter[20]~73\,
	combout => \debounc0|counter[21]~74_combout\,
	cout => \debounc0|counter[21]~75\);

-- Location: LCCOMB_X35_Y49_N12
\debounc0|counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[22]~76_combout\ = (\debounc0|counter\(22) & (\debounc0|counter[21]~75\ $ (GND))) # (!\debounc0|counter\(22) & (!\debounc0|counter[21]~75\ & VCC))
-- \debounc0|counter[22]~77\ = CARRY((\debounc0|counter\(22) & !\debounc0|counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(22),
	datad => VCC,
	cin => \debounc0|counter[21]~75\,
	combout => \debounc0|counter[22]~76_combout\,
	cout => \debounc0|counter[22]~77\);

-- Location: LCCOMB_X35_Y49_N14
\debounc0|counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[23]~78_combout\ = (\debounc0|counter\(23) & (!\debounc0|counter[22]~77\)) # (!\debounc0|counter\(23) & ((\debounc0|counter[22]~77\) # (GND)))
-- \debounc0|counter[23]~79\ = CARRY((!\debounc0|counter[22]~77\) # (!\debounc0|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(23),
	datad => VCC,
	cin => \debounc0|counter[22]~77\,
	combout => \debounc0|counter[23]~78_combout\,
	cout => \debounc0|counter[23]~79\);

-- Location: LCCOMB_X35_Y49_N16
\debounc0|counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[24]~80_combout\ = (\debounc0|counter\(24) & (\debounc0|counter[23]~79\ $ (GND))) # (!\debounc0|counter\(24) & (!\debounc0|counter[23]~79\ & VCC))
-- \debounc0|counter[24]~81\ = CARRY((\debounc0|counter\(24) & !\debounc0|counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(24),
	datad => VCC,
	cin => \debounc0|counter[23]~79\,
	combout => \debounc0|counter[24]~80_combout\,
	cout => \debounc0|counter[24]~81\);

-- Location: LCCOMB_X35_Y49_N18
\debounc0|counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[25]~82_combout\ = (\debounc0|counter\(25) & (!\debounc0|counter[24]~81\)) # (!\debounc0|counter\(25) & ((\debounc0|counter[24]~81\) # (GND)))
-- \debounc0|counter[25]~83\ = CARRY((!\debounc0|counter[24]~81\) # (!\debounc0|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(25),
	datad => VCC,
	cin => \debounc0|counter[24]~81\,
	combout => \debounc0|counter[25]~82_combout\,
	cout => \debounc0|counter[25]~83\);

-- Location: LCCOMB_X35_Y49_N20
\debounc0|counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[26]~84_combout\ = (\debounc0|counter\(26) & (\debounc0|counter[25]~83\ $ (GND))) # (!\debounc0|counter\(26) & (!\debounc0|counter[25]~83\ & VCC))
-- \debounc0|counter[26]~85\ = CARRY((\debounc0|counter\(26) & !\debounc0|counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(26),
	datad => VCC,
	cin => \debounc0|counter[25]~83\,
	combout => \debounc0|counter[26]~84_combout\,
	cout => \debounc0|counter[26]~85\);

-- Location: LCCOMB_X35_Y49_N22
\debounc0|counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[27]~86_combout\ = (\debounc0|counter\(27) & (!\debounc0|counter[26]~85\)) # (!\debounc0|counter\(27) & ((\debounc0|counter[26]~85\) # (GND)))
-- \debounc0|counter[27]~87\ = CARRY((!\debounc0|counter[26]~85\) # (!\debounc0|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(27),
	datad => VCC,
	cin => \debounc0|counter[26]~85\,
	combout => \debounc0|counter[27]~86_combout\,
	cout => \debounc0|counter[27]~87\);

-- Location: LCCOMB_X35_Y49_N24
\debounc0|counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[28]~88_combout\ = (\debounc0|counter\(28) & (\debounc0|counter[27]~87\ $ (GND))) # (!\debounc0|counter\(28) & (!\debounc0|counter[27]~87\ & VCC))
-- \debounc0|counter[28]~89\ = CARRY((\debounc0|counter\(28) & !\debounc0|counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(28),
	datad => VCC,
	cin => \debounc0|counter[27]~87\,
	combout => \debounc0|counter[28]~88_combout\,
	cout => \debounc0|counter[28]~89\);

-- Location: LCCOMB_X35_Y49_N26
\debounc0|counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[29]~90_combout\ = (\debounc0|counter\(29) & (!\debounc0|counter[28]~89\)) # (!\debounc0|counter\(29) & ((\debounc0|counter[28]~89\) # (GND)))
-- \debounc0|counter[29]~91\ = CARRY((!\debounc0|counter[28]~89\) # (!\debounc0|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(29),
	datad => VCC,
	cin => \debounc0|counter[28]~89\,
	combout => \debounc0|counter[29]~90_combout\,
	cout => \debounc0|counter[29]~91\);

-- Location: LCCOMB_X35_Y49_N28
\debounc0|counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[30]~92_combout\ = (\debounc0|counter\(30) & (\debounc0|counter[29]~91\ $ (GND))) # (!\debounc0|counter\(30) & (!\debounc0|counter[29]~91\ & VCC))
-- \debounc0|counter[30]~93\ = CARRY((\debounc0|counter\(30) & !\debounc0|counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounc0|counter\(30),
	datad => VCC,
	cin => \debounc0|counter[29]~91\,
	combout => \debounc0|counter[30]~92_combout\,
	cout => \debounc0|counter[30]~93\);

-- Location: LCCOMB_X35_Y49_N30
\debounc0|counter[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|counter[31]~94_combout\ = \debounc0|counter\(31) $ (\debounc0|counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(31),
	cin => \debounc0|counter[30]~93\,
	combout => \debounc0|counter[31]~94_combout\);

-- Location: FF_X36_Y49_N27
\debounc0|s_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounc0|s_o~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|s_o~q\);

-- Location: LCCOMB_X114_Y37_N30
\fsm|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|comb~2_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (!\fsm|CS.ST0~q\ & \SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \fsm|CS.ST0~q\,
	datad => \SW[17]~input_o\,
	combout => \fsm|comb~2_combout\);

-- Location: LCCOMB_X114_Y37_N10
\fsm|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|comb~3_combout\ = (\SW[3]~input_o\) # (!\fsm|comb~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|comb~2_combout\,
	datad => \SW[3]~input_o\,
	combout => \fsm|comb~3_combout\);

-- Location: FF_X34_Y49_N13
\debounc0|tmp_s_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounc0|tmp_s_i~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounc0|tmp_s_i~q\);

-- Location: LCCOMB_X34_Y49_N18
\debounc0|s_o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|s_o~0_combout\ = (\debounc0|counter\(31)) # (\KEY[3]~input_o\ $ (\debounc0|tmp_s_i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datac => \debounc0|counter\(31),
	datad => \debounc0|tmp_s_i~q\,
	combout => \debounc0|s_o~0_combout\);

-- Location: LCCOMB_X36_Y49_N20
\debounc0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|LessThan0~0_combout\ = (!\debounc0|counter\(8) & (!\debounc0|counter\(9) & (!\debounc0|counter\(7) & !\debounc0|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(8),
	datab => \debounc0|counter\(9),
	datac => \debounc0|counter\(7),
	datad => \debounc0|counter\(6),
	combout => \debounc0|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y49_N8
\debounc0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|LessThan0~1_combout\ = (!\debounc0|counter\(13) & (!\debounc0|counter\(11) & (!\debounc0|counter\(12) & !\debounc0|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(13),
	datab => \debounc0|counter\(11),
	datac => \debounc0|counter\(12),
	datad => \debounc0|counter\(10),
	combout => \debounc0|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y49_N16
\debounc0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|LessThan0~2_combout\ = ((!\debounc0|counter\(2) & (!\debounc0|counter\(1) & !\debounc0|counter\(3)))) # (!\debounc0|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(2),
	datab => \debounc0|counter\(1),
	datac => \debounc0|counter\(3),
	datad => \debounc0|counter\(4),
	combout => \debounc0|LessThan0~2_combout\);

-- Location: LCCOMB_X36_Y49_N24
\debounc0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|LessThan0~3_combout\ = (\debounc0|LessThan0~1_combout\ & (\debounc0|LessThan0~0_combout\ & ((\debounc0|LessThan0~2_combout\) # (!\debounc0|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(5),
	datab => \debounc0|LessThan0~2_combout\,
	datac => \debounc0|LessThan0~1_combout\,
	datad => \debounc0|LessThan0~0_combout\,
	combout => \debounc0|LessThan0~3_combout\);

-- Location: LCCOMB_X36_Y49_N2
\debounc0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|LessThan0~4_combout\ = (!\debounc0|counter\(17) & (!\debounc0|counter\(15) & (!\debounc0|counter\(14) & !\debounc0|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(17),
	datab => \debounc0|counter\(15),
	datac => \debounc0|counter\(14),
	datad => \debounc0|counter\(16),
	combout => \debounc0|LessThan0~4_combout\);

-- Location: LCCOMB_X36_Y49_N14
\debounc0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|LessThan0~5_combout\ = (!\debounc0|counter\(20) & (!\debounc0|counter\(18) & (!\debounc0|counter\(19) & !\debounc0|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(20),
	datab => \debounc0|counter\(18),
	datac => \debounc0|counter\(19),
	datad => \debounc0|counter\(21),
	combout => \debounc0|LessThan0~5_combout\);

-- Location: LCCOMB_X36_Y49_N6
\debounc0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|LessThan0~6_combout\ = (!\debounc0|counter\(23) & (!\debounc0|counter\(25) & (!\debounc0|counter\(24) & !\debounc0|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(23),
	datab => \debounc0|counter\(25),
	datac => \debounc0|counter\(24),
	datad => \debounc0|counter\(22),
	combout => \debounc0|LessThan0~6_combout\);

-- Location: LCCOMB_X36_Y49_N4
\debounc0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|LessThan0~7_combout\ = (!\debounc0|counter\(29) & (!\debounc0|counter\(27) & (!\debounc0|counter\(26) & !\debounc0|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|counter\(29),
	datab => \debounc0|counter\(27),
	datac => \debounc0|counter\(26),
	datad => \debounc0|counter\(28),
	combout => \debounc0|LessThan0~7_combout\);

-- Location: LCCOMB_X36_Y49_N22
\debounc0|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|LessThan0~8_combout\ = (\debounc0|LessThan0~6_combout\ & (\debounc0|LessThan0~5_combout\ & (\debounc0|LessThan0~7_combout\ & \debounc0|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|LessThan0~6_combout\,
	datab => \debounc0|LessThan0~5_combout\,
	datac => \debounc0|LessThan0~7_combout\,
	datad => \debounc0|LessThan0~4_combout\,
	combout => \debounc0|LessThan0~8_combout\);

-- Location: LCCOMB_X36_Y49_N0
\debounc0|s_o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|s_o~1_combout\ = (\debounc0|s_o~0_combout\) # ((\debounc0|LessThan0~8_combout\ & (!\debounc0|counter\(30) & \debounc0|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|LessThan0~8_combout\,
	datab => \debounc0|counter\(30),
	datac => \debounc0|s_o~0_combout\,
	datad => \debounc0|LessThan0~3_combout\,
	combout => \debounc0|s_o~1_combout\);

-- Location: LCCOMB_X36_Y49_N12
\debounc0|s_o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|s_o~2_combout\ = (\debounc0|s_o~1_combout\ & ((\debounc0|s_o~q\))) # (!\debounc0|s_o~1_combout\ & (\debounc0|tmp_s_i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounc0|tmp_s_i~q\,
	datac => \debounc0|s_o~q\,
	datad => \debounc0|s_o~1_combout\,
	combout => \debounc0|s_o~2_combout\);

-- Location: LCCOMB_X34_Y49_N20
\debounc0|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|process_0~0_combout\ = \KEY[3]~input_o\ $ (\debounc0|tmp_s_i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datad => \debounc0|tmp_s_i~q\,
	combout => \debounc0|process_0~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: CLKCTRL_G13
\debounc0|s_o~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \debounc0|s_o~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \debounc0|s_o~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y49_N12
\debounc0|tmp_s_i~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounc0|tmp_s_i~feeder_combout\ = \KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \debounc0|tmp_s_i~feeder_combout\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector10~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector9~2_combout\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector8~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector7~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector6~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector5~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector4~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector3~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|aluSel[3]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|aluSel[2]~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|aluSel[1]~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|aluSel[0]~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector2~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector0~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_busSel[0]~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|Selector9~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|CS.ST4~q\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|CS.ST5~q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ALT_INV_CS.ST0~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X114_Y37_N0
\fsm|comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|comb~7_combout\ = (\fsm|CS.ST0~q\) # ((!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \fsm|CS.ST0~q\,
	datad => \SW[17]~input_o\,
	combout => \fsm|comb~7_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X114_Y37_N18
\fsm|comb~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|comb~8_combout\ = (\SW[17]~input_o\ & ((\SW[0]~input_o\ & (!\SW[1]~input_o\ & !\SW[2]~input_o\)) # (!\SW[0]~input_o\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \fsm|comb~8_combout\);

-- Location: LCCOMB_X114_Y37_N14
\fsm|comb~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|comb~9_combout\ = (!\fsm|CS.ST0~q\ & \fsm|comb~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|CS.ST0~q\,
	datad => \fsm|comb~8_combout\,
	combout => \fsm|comb~9_combout\);

-- Location: LCCOMB_X114_Y37_N16
\fsm|NS.ST4_346\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|NS.ST4_346~combout\ = (!\fsm|comb~7_combout\ & ((\fsm|comb~9_combout\) # (\fsm|NS.ST4_346~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|comb~7_combout\,
	datac => \fsm|comb~9_combout\,
	datad => \fsm|NS.ST4_346~combout\,
	combout => \fsm|NS.ST4_346~combout\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X107_Y50_N28
\fsm|CS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|CS~12_combout\ = (\fsm|NS.ST4_346~combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|NS.ST4_346~combout\,
	datad => \SW[16]~input_o\,
	combout => \fsm|CS~12_combout\);

-- Location: FF_X107_Y50_N29
\fsm|CS.ST4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounc0|s_o~clkctrl_outclk\,
	d => \fsm|CS~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|CS.ST4~q\);

-- Location: LCCOMB_X107_Y50_N12
\fsm|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr0~0_combout\ = (\fsm|CS.ST5~q\) # ((\fsm|CS.ST4~q\) # (!\fsm|CS.ST0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|CS.ST5~q\,
	datac => \fsm|CS.ST0~q\,
	datad => \fsm|CS.ST4~q\,
	combout => \fsm|WideOr0~0_combout\);

-- Location: LCCOMB_X107_Y50_N2
\fsm|NS.ST0_397\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|NS.ST0_397~combout\ = (GLOBAL(\fsm|Selector16~1clkctrl_outclk\) & ((!\fsm|WideOr0~0_combout\))) # (!GLOBAL(\fsm|Selector16~1clkctrl_outclk\) & (\fsm|NS.ST0_397~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|NS.ST0_397~combout\,
	datac => \fsm|WideOr0~0_combout\,
	datad => \fsm|Selector16~1clkctrl_outclk\,
	combout => \fsm|NS.ST0_397~combout\);

-- Location: LCCOMB_X107_Y50_N6
\fsm|CS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|CS~14_combout\ = (\SW[16]~input_o\ & !\fsm|NS.ST0_397~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datad => \fsm|NS.ST0_397~combout\,
	combout => \fsm|CS~14_combout\);

-- Location: FF_X107_Y50_N7
\fsm|CS.ST0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounc0|s_o~q\,
	d => \fsm|CS~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|CS.ST0~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y37_N28
\fsm|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector16~0_combout\ = (\SW[17]~input_o\ & (((!\SW[1]~input_o\ & !\SW[2]~input_o\)) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \fsm|Selector16~0_combout\);

-- Location: LCCOMB_X114_Y37_N12
\fsm|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector16~1_combout\ = (\fsm|CS.ST0~q\) # (\fsm|Selector16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|CS.ST0~q\,
	datad => \fsm|Selector16~0_combout\,
	combout => \fsm|Selector16~1_combout\);

-- Location: CLKCTRL_G9
\fsm|Selector16~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsm|Selector16~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsm|Selector16~1clkctrl_outclk\);

-- Location: LCCOMB_X107_Y50_N0
\fsm|NS.ST6_319\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|NS.ST6_319~combout\ = (GLOBAL(\fsm|Selector16~1clkctrl_outclk\) & (\fsm|CS.ST5~q\)) # (!GLOBAL(\fsm|Selector16~1clkctrl_outclk\) & ((\fsm|NS.ST6_319~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|CS.ST5~q\,
	datab => \fsm|NS.ST6_319~combout\,
	datad => \fsm|Selector16~1clkctrl_outclk\,
	combout => \fsm|NS.ST6_319~combout\);

-- Location: LCCOMB_X107_Y50_N14
\fsm|CS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|CS~10_combout\ = (\SW[16]~input_o\ & \fsm|NS.ST6_319~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datad => \fsm|NS.ST6_319~combout\,
	combout => \fsm|CS~10_combout\);

-- Location: FF_X107_Y50_N15
\fsm|CS.ST6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounc0|s_o~clkctrl_outclk\,
	d => \fsm|CS~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|CS.ST6~q\);

-- Location: LCCOMB_X107_Y50_N24
\fsm|busSel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|busSel[0]~1_combout\ = (!\fsm|CS.ST1~q\ & !\fsm|CS.ST6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|CS.ST1~q\,
	datac => \fsm|CS.ST6~q\,
	combout => \fsm|busSel[0]~1_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X114_Y37_N20
\fsm|comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|comb~6_combout\ = ((\SW[2]~input_o\) # (!\SW[3]~input_o\)) # (!\fsm|comb~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|comb~2_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \fsm|comb~6_combout\);

-- Location: LCCOMB_X114_Y37_N8
\fsm|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|comb~4_combout\ = (!\SW[0]~input_o\ & (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \fsm|comb~4_combout\);

-- Location: LCCOMB_X114_Y37_N26
\fsm|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|comb~5_combout\ = (!\fsm|CS.ST0~q\ & ((\fsm|comb~4_combout\) # (!\fsm|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|CS.ST0~q\,
	datac => \fsm|comb~4_combout\,
	datad => \fsm|Selector16~0_combout\,
	combout => \fsm|comb~5_combout\);

-- Location: LCCOMB_X114_Y37_N24
\fsm|NS.ST2_370\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|NS.ST2_370~combout\ = (\fsm|comb~5_combout\ & ((\fsm|NS.ST2_370~combout\) # (!\fsm|comb~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|comb~6_combout\,
	datac => \fsm|comb~5_combout\,
	datad => \fsm|NS.ST2_370~combout\,
	combout => \fsm|NS.ST2_370~combout\);

-- Location: LCCOMB_X107_Y50_N8
\fsm|CS~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|CS~11_combout\ = (\fsm|NS.ST2_370~combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|NS.ST2_370~combout\,
	datad => \SW[16]~input_o\,
	combout => \fsm|CS~11_combout\);

-- Location: FF_X107_Y50_N9
\fsm|CS.ST2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounc0|s_o~clkctrl_outclk\,
	d => \fsm|CS~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|CS.ST2~q\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X107_Y50_N26
\fsm|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector10~0_combout\ = (\SW[6]~input_o\ & (\fsm|Selector9~0_combout\ $ (((\fsm|CS.ST2~q\) # (!\fsm|busSel[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector9~0_combout\,
	datab => \fsm|busSel[0]~1_combout\,
	datac => \fsm|CS.ST2~q\,
	datad => \SW[6]~input_o\,
	combout => \fsm|Selector10~0_combout\);

-- Location: LCCOMB_X107_Y69_N28
\fsm|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector10~1_combout\ = (\SW[4]~input_o\ & (\SW[5]~input_o\ & \fsm|Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \fsm|Selector10~0_combout\,
	combout => \fsm|Selector10~1_combout\);

-- Location: LCCOMB_X107_Y50_N16
\fsm|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector9~1_combout\ = (!\SW[6]~input_o\ & (\fsm|Selector9~0_combout\ $ (((\fsm|CS.ST2~q\) # (!\fsm|busSel[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector9~0_combout\,
	datab => \fsm|busSel[0]~1_combout\,
	datac => \fsm|CS.ST2~q\,
	datad => \SW[6]~input_o\,
	combout => \fsm|Selector9~1_combout\);

-- Location: LCCOMB_X107_Y69_N6
\fsm|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector9~2_combout\ = (\SW[4]~input_o\ & (\SW[5]~input_o\ & \fsm|Selector9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \fsm|Selector9~1_combout\,
	combout => \fsm|Selector9~2_combout\);

-- Location: LCCOMB_X107_Y69_N20
\fsm|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector8~0_combout\ = (\SW[4]~input_o\ & (!\SW[5]~input_o\ & \fsm|Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \fsm|Selector10~0_combout\,
	combout => \fsm|Selector8~0_combout\);

-- Location: LCCOMB_X107_Y69_N18
\fsm|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector7~0_combout\ = (\SW[4]~input_o\ & (!\SW[5]~input_o\ & \fsm|Selector9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \fsm|Selector9~1_combout\,
	combout => \fsm|Selector7~0_combout\);

-- Location: LCCOMB_X107_Y69_N24
\fsm|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector6~0_combout\ = (!\SW[4]~input_o\ & (\SW[5]~input_o\ & \fsm|Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \fsm|Selector10~0_combout\,
	combout => \fsm|Selector6~0_combout\);

-- Location: LCCOMB_X107_Y69_N22
\fsm|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector5~0_combout\ = (!\SW[4]~input_o\ & (\SW[5]~input_o\ & \fsm|Selector9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \fsm|Selector9~1_combout\,
	combout => \fsm|Selector5~0_combout\);

-- Location: LCCOMB_X107_Y69_N8
\fsm|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector4~0_combout\ = (!\SW[4]~input_o\ & (!\SW[5]~input_o\ & \fsm|Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \fsm|Selector10~0_combout\,
	combout => \fsm|Selector4~0_combout\);

-- Location: LCCOMB_X107_Y69_N10
\fsm|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~0_combout\ = (!\SW[4]~input_o\ & (!\SW[5]~input_o\ & \fsm|Selector9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \fsm|Selector9~1_combout\,
	combout => \fsm|Selector3~0_combout\);

-- Location: LCCOMB_X106_Y50_N22
\fsm|aluSel[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|aluSel[3]~0_combout\ = (\fsm|CS.ST4~q\ & \SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|CS.ST4~q\,
	datad => \SW[3]~input_o\,
	combout => \fsm|aluSel[3]~0_combout\);

-- Location: LCCOMB_X106_Y50_N0
\fsm|aluSel[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|aluSel[2]~1_combout\ = (\SW[2]~input_o\ & \fsm|CS.ST4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \fsm|CS.ST4~q\,
	combout => \fsm|aluSel[2]~1_combout\);

-- Location: LCCOMB_X106_Y50_N18
\fsm|aluSel[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|aluSel[1]~2_combout\ = (\fsm|CS.ST4~q\ & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|CS.ST4~q\,
	datad => \SW[1]~input_o\,
	combout => \fsm|aluSel[1]~2_combout\);

-- Location: LCCOMB_X106_Y50_N24
\fsm|aluSel[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|aluSel[0]~3_combout\ = (\SW[0]~input_o\ & \fsm|CS.ST4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \fsm|CS.ST4~q\,
	combout => \fsm|aluSel[0]~3_combout\);

-- Location: LCCOMB_X107_Y50_N10
\fsm|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector2~0_combout\ = (\fsm|CS.ST4~q\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|CS.ST4~q\,
	datad => \SW[6]~input_o\,
	combout => \fsm|Selector2~0_combout\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X107_Y50_N18
\fsm|NS.ST5_334\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|NS.ST5_334~combout\ = (GLOBAL(\fsm|Selector16~1clkctrl_outclk\) & ((\fsm|CS.ST4~q\))) # (!GLOBAL(\fsm|Selector16~1clkctrl_outclk\) & (\fsm|NS.ST5_334~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|NS.ST5_334~combout\,
	datac => \fsm|CS.ST4~q\,
	datad => \fsm|Selector16~1clkctrl_outclk\,
	combout => \fsm|NS.ST5_334~combout\);

-- Location: LCCOMB_X107_Y50_N22
\fsm|CS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|CS~13_combout\ = (\SW[16]~input_o\ & \fsm|NS.ST5_334~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datad => \fsm|NS.ST5_334~combout\,
	combout => \fsm|CS~13_combout\);

-- Location: FF_X107_Y50_N23
\fsm|CS.ST5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounc0|s_o~clkctrl_outclk\,
	d => \fsm|CS~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|CS.ST5~q\);

-- Location: LCCOMB_X107_Y50_N4
\fsm|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector2~1_combout\ = (\fsm|CS.ST2~q\) # (\fsm|CS.ST5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|CS.ST2~q\,
	datad => \fsm|CS.ST5~q\,
	combout => \fsm|Selector2~1_combout\);

-- Location: LCCOMB_X107_Y50_N20
\fsm|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector2~2_combout\ = (\fsm|Selector2~0_combout\) # ((\fsm|CS.ST6~q\) # ((\SW[9]~input_o\ & \fsm|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector2~0_combout\,
	datab => \SW[9]~input_o\,
	datac => \fsm|CS.ST6~q\,
	datad => \fsm|Selector2~1_combout\,
	combout => \fsm|Selector2~2_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X107_Y69_N12
\fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector1~0_combout\ = (\SW[8]~input_o\ & ((\fsm|Selector2~1_combout\) # ((\SW[5]~input_o\ & \fsm|CS.ST4~q\)))) # (!\SW[8]~input_o\ & (\SW[5]~input_o\ & (\fsm|CS.ST4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \fsm|CS.ST4~q\,
	datad => \fsm|Selector2~1_combout\,
	combout => \fsm|Selector1~0_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X107_Y69_N26
\fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~0_combout\ = (\fsm|CS.ST4~q\ & ((\SW[4]~input_o\) # ((\SW[7]~input_o\ & \fsm|Selector2~1_combout\)))) # (!\fsm|CS.ST4~q\ & (\SW[7]~input_o\ & ((\fsm|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|CS.ST4~q\,
	datab => \SW[7]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \fsm|Selector2~1_combout\,
	combout => \fsm|Selector0~0_combout\);

-- Location: LCCOMB_X114_Y37_N4
\fsm|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|comb~0_combout\ = (!\SW[0]~input_o\ & (!\SW[3]~input_o\ & !\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \fsm|comb~0_combout\);

-- Location: LCCOMB_X114_Y37_N22
\fsm|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|comb~1_combout\ = (!\fsm|CS.ST0~q\ & ((\fsm|comb~0_combout\) # (!\fsm|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|CS.ST0~q\,
	datac => \fsm|comb~0_combout\,
	datad => \fsm|Selector16~0_combout\,
	combout => \fsm|comb~1_combout\);

-- Location: LCCOMB_X114_Y37_N6
\fsm|NS.ST1_382\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|NS.ST1_382~combout\ = (\fsm|comb~1_combout\ & ((\fsm|NS.ST1_382~combout\) # (!\fsm|comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|comb~3_combout\,
	datac => \fsm|comb~1_combout\,
	datad => \fsm|NS.ST1_382~combout\,
	combout => \fsm|NS.ST1_382~combout\);

-- Location: LCCOMB_X107_Y50_N30
\fsm|CS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|CS~9_combout\ = (\fsm|NS.ST1_382~combout\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|NS.ST1_382~combout\,
	datad => \SW[16]~input_o\,
	combout => \fsm|CS~9_combout\);

-- Location: FF_X107_Y50_N31
\fsm|CS.ST1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debounc0|s_o~clkctrl_outclk\,
	d => \fsm|CS~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|CS.ST1~q\);

-- Location: LCCOMB_X106_Y50_N8
\fsm|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector9~0_combout\ = (\fsm|CS.ST1~q\ & \SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|CS.ST1~q\,
	datac => \SW[2]~input_o\,
	combout => \fsm|Selector9~0_combout\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;
END structure;


