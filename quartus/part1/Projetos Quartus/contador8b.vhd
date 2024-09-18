-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"
-- CREATED		"Tue Sep 10 16:52:54 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY contador8b IS 
	PORT
	(
		CLO_CK :  IN  STD_LOGIC;
		ENA_BLE :  IN  STD_LOGIC;
		CLE_AR :  IN  STD_LOGIC;
		Q_0 :  OUT  STD_LOGIC;
		Q_1 :  OUT  STD_LOGIC;
		Q_2 :  OUT  STD_LOGIC;
		Q_3 :  OUT  STD_LOGIC;
		Q_4 :  OUT  STD_LOGIC;
		Q_5 :  OUT  STD_LOGIC;
		Q_6 :  OUT  STD_LOGIC;
		Q_7 :  OUT  STD_LOGIC
	);
END contador8b;

ARCHITECTURE bdf_type OF contador8b IS 

SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	TFF_inst10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	TFF_inst12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	TFF_inst :  STD_LOGIC;
SIGNAL	TFF_inst1 :  STD_LOGIC;
SIGNAL	TFF_inst2 :  STD_LOGIC;
SIGNAL	TFF_inst3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	TFF_inst8 :  STD_LOGIC;


BEGIN 
Q_0 <= TFF_inst;
Q_1 <= TFF_inst1;
Q_2 <= TFF_inst2;
Q_3 <= TFF_inst3;
Q_4 <= TFF_inst8;
Q_5 <= TFF_inst10;
Q_6 <= TFF_inst12;



PROCESS(CLO_CK,CLE_AR)
VARIABLE TFF_inst_synthesized_var : STD_LOGIC;
BEGIN
IF (CLE_AR = '0') THEN
	TFF_inst_synthesized_var := '0';
ELSIF (RISING_EDGE(CLO_CK)) THEN
	TFF_inst_synthesized_var := TFF_inst_synthesized_var XOR ENA_BLE;
END IF;
	TFF_inst <= TFF_inst_synthesized_var;
END PROCESS;


PROCESS(CLO_CK,CLE_AR)
VARIABLE TFF_inst1_synthesized_var : STD_LOGIC;
BEGIN
IF (CLE_AR = '0') THEN
	TFF_inst1_synthesized_var := '0';
ELSIF (RISING_EDGE(CLO_CK)) THEN
	TFF_inst1_synthesized_var := TFF_inst1_synthesized_var XOR SYNTHESIZED_WIRE_13;
END IF;
	TFF_inst1 <= TFF_inst1_synthesized_var;
END PROCESS;


PROCESS(CLO_CK,CLE_AR)
VARIABLE TFF_inst10_synthesized_var : STD_LOGIC;
BEGIN
IF (CLE_AR = '0') THEN
	TFF_inst10_synthesized_var := '0';
ELSIF (RISING_EDGE(CLO_CK)) THEN
	TFF_inst10_synthesized_var := TFF_inst10_synthesized_var XOR SYNTHESIZED_WIRE_14;
END IF;
	TFF_inst10 <= TFF_inst10_synthesized_var;
END PROCESS;


SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_14 AND TFF_inst10;


PROCESS(CLO_CK,CLE_AR)
VARIABLE TFF_inst12_synthesized_var : STD_LOGIC;
BEGIN
IF (CLE_AR = '0') THEN
	TFF_inst12_synthesized_var := '0';
ELSIF (RISING_EDGE(CLO_CK)) THEN
	TFF_inst12_synthesized_var := TFF_inst12_synthesized_var XOR SYNTHESIZED_WIRE_15;
END IF;
	TFF_inst12 <= TFF_inst12_synthesized_var;
END PROCESS;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_15 AND TFF_inst12;


PROCESS(CLO_CK,CLE_AR)
VARIABLE Q_7_synthesized_var : STD_LOGIC;
BEGIN
IF (CLE_AR = '0') THEN
	Q_7_synthesized_var := '0';
ELSIF (RISING_EDGE(CLO_CK)) THEN
	Q_7_synthesized_var := Q_7_synthesized_var XOR SYNTHESIZED_WIRE_5;
END IF;
	Q_7 <= Q_7_synthesized_var;
END PROCESS;


PROCESS(CLO_CK,CLE_AR)
VARIABLE TFF_inst2_synthesized_var : STD_LOGIC;
BEGIN
IF (CLE_AR = '0') THEN
	TFF_inst2_synthesized_var := '0';
ELSIF (RISING_EDGE(CLO_CK)) THEN
	TFF_inst2_synthesized_var := TFF_inst2_synthesized_var XOR SYNTHESIZED_WIRE_16;
END IF;
	TFF_inst2 <= TFF_inst2_synthesized_var;
END PROCESS;


PROCESS(CLO_CK,CLE_AR)
VARIABLE TFF_inst3_synthesized_var : STD_LOGIC;
BEGIN
IF (CLE_AR = '0') THEN
	TFF_inst3_synthesized_var := '0';
ELSIF (RISING_EDGE(CLO_CK)) THEN
	TFF_inst3_synthesized_var := TFF_inst3_synthesized_var XOR SYNTHESIZED_WIRE_17;
END IF;
	TFF_inst3 <= TFF_inst3_synthesized_var;
END PROCESS;


SYNTHESIZED_WIRE_13 <= ENA_BLE AND TFF_inst;


SYNTHESIZED_WIRE_16 <= SYNTHESIZED_WIRE_13 AND TFF_inst1;


SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_16 AND TFF_inst2;


SYNTHESIZED_WIRE_18 <= SYNTHESIZED_WIRE_17 AND TFF_inst3;


PROCESS(CLO_CK,CLE_AR)
VARIABLE TFF_inst8_synthesized_var : STD_LOGIC;
BEGIN
IF (CLE_AR = '0') THEN
	TFF_inst8_synthesized_var := '0';
ELSIF (RISING_EDGE(CLO_CK)) THEN
	TFF_inst8_synthesized_var := TFF_inst8_synthesized_var XOR SYNTHESIZED_WIRE_18;
END IF;
	TFF_inst8 <= TFF_inst8_synthesized_var;
END PROCESS;


SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_18 AND TFF_inst8;


END bdf_type;