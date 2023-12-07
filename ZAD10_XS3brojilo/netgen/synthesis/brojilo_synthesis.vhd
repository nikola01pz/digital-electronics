--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: brojilo_synthesis.vhd
-- /___/   /\     Timestamp: Sun Jul  3 22:43:30 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm brojilo -w -dir netgen/synthesis -ofmt vhdl -sim brojilo.ngc brojilo_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: brojilo.ngc
-- Output file	: /home/nikola/ZAD10_XS3brojilo/netgen/synthesis/brojilo_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: brojilo
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity brojilo is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    ss : in STD_LOGIC := 'X'; 
    freqSel : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    ulaz : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    pokSel : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    pok : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    led : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    binarno : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end brojilo;

architecture Structure of brojilo is
  signal pokSel_1_IBUF_0 : STD_LOGIC; 
  signal pokSel_0_IBUF_1 : STD_LOGIC; 
  signal clk_BUFGP_2 : STD_LOGIC; 
  signal rst_IBUF_3 : STD_LOGIC; 
  signal ss_IBUF_4 : STD_LOGIC; 
  signal led_3_OBUF_5 : STD_LOGIC; 
  signal led_2_OBUF_6 : STD_LOGIC; 
  signal led_1_OBUF_7 : STD_LOGIC; 
  signal led_0_OBUF_8 : STD_LOGIC; 
  signal cur_FSM_FFd1_9 : STD_LOGIC; 
  signal cur_FSM_FFd2_10 : STD_LOGIC; 
  signal cur_FSM_FFd3_11 : STD_LOGIC; 
  signal cur_FSM_FFd4_12 : STD_LOGIC; 
  signal seg_6_OBUF_13 : STD_LOGIC; 
  signal seg_5_OBUF_14 : STD_LOGIC; 
  signal seg_4_OBUF_15 : STD_LOGIC; 
  signal seg_3_OBUF_16 : STD_LOGIC; 
  signal seg_2_OBUF_17 : STD_LOGIC; 
  signal seg_1_OBUF_18 : STD_LOGIC; 
  signal seg_0_OBUF_19 : STD_LOGIC; 
  signal pok_3_OBUF_20 : STD_LOGIC; 
  signal pok_2_OBUF_21 : STD_LOGIC; 
  signal pok_1_OBUF_22 : STD_LOGIC; 
  signal pok_0_OBUF_23 : STD_LOGIC; 
  signal cur_FSM_FFd4_In : STD_LOGIC; 
  signal cur_FSM_FFd3_In : STD_LOGIC; 
  signal cur_FSM_FFd2_In : STD_LOGIC; 
  signal cur_FSM_FFd1_In : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => pok_0_OBUF_23
    );
  cur_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      CLR => rst_IBUF_3,
      D => cur_FSM_FFd4_In,
      Q => cur_FSM_FFd4_12
    );
  cur_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      CLR => rst_IBUF_3,
      D => cur_FSM_FFd3_In,
      Q => cur_FSM_FFd3_11
    );
  cur_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      CLR => rst_IBUF_3,
      D => cur_FSM_FFd2_In,
      Q => cur_FSM_FFd2_10
    );
  cur_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      CLR => rst_IBUF_3,
      D => cur_FSM_FFd1_In,
      Q => cur_FSM_FFd1_9
    );
  cur_n0052_2_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => cur_FSM_FFd4_12,
      I1 => cur_FSM_FFd3_11,
      I2 => cur_FSM_FFd2_10,
      O => seg_2_OBUF_17
    );
  cur_n0052_6_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => cur_FSM_FFd4_12,
      I1 => cur_FSM_FFd2_10,
      O => seg_6_OBUF_13
    );
  cur_n0052_12_1 : LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      I0 => cur_FSM_FFd1_9,
      I1 => cur_FSM_FFd4_12,
      I2 => cur_FSM_FFd3_11,
      O => led_1_OBUF_7
    );
  cur_FSM_FFd4_In1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ss_IBUF_4,
      I1 => cur_FSM_FFd4_12,
      O => cur_FSM_FFd4_In
    );
  Mram_pok111 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => pokSel_0_IBUF_1,
      I1 => pokSel_1_IBUF_0,
      O => pok_1_OBUF_22
    );
  Mram_pok31 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => pokSel_0_IBUF_1,
      I1 => pokSel_1_IBUF_0,
      O => pok_3_OBUF_20
    );
  cur_n0052_11_1 : LUT4
    generic map(
      INIT => X"FED5"
    )
    port map (
      I0 => cur_FSM_FFd4_12,
      I1 => cur_FSM_FFd2_10,
      I2 => cur_FSM_FFd3_11,
      I3 => cur_FSM_FFd1_9,
      O => led_0_OBUF_8
    );
  cur_n0052_13_1 : LUT4
    generic map(
      INIT => X"FF56"
    )
    port map (
      I0 => cur_FSM_FFd2_10,
      I1 => cur_FSM_FFd3_11,
      I2 => cur_FSM_FFd4_12,
      I3 => cur_FSM_FFd1_9,
      O => led_2_OBUF_6
    );
  cur_n0052_14_1 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => cur_FSM_FFd2_10,
      I1 => cur_FSM_FFd4_12,
      I2 => cur_FSM_FFd3_11,
      I3 => cur_FSM_FFd1_9,
      O => led_3_OBUF_5
    );
  cur_n0052_1_1 : LUT4
    generic map(
      INIT => X"8A8E"
    )
    port map (
      I0 => cur_FSM_FFd3_11,
      I1 => cur_FSM_FFd4_12,
      I2 => cur_FSM_FFd2_10,
      I3 => cur_FSM_FFd1_9,
      O => seg_1_OBUF_18
    );
  cur_FSM_FFd3_In1 : LUT5
    generic map(
      INIT => X"55A2FF00"
    )
    port map (
      I0 => ss_IBUF_4,
      I1 => cur_FSM_FFd1_9,
      I2 => cur_FSM_FFd2_10,
      I3 => cur_FSM_FFd3_11,
      I4 => cur_FSM_FFd4_12,
      O => cur_FSM_FFd3_In
    );
  cur_FSM_FFd2_In21 : LUT4
    generic map(
      INIT => X"78F0"
    )
    port map (
      I0 => ss_IBUF_4,
      I1 => cur_FSM_FFd3_11,
      I2 => cur_FSM_FFd2_10,
      I3 => cur_FSM_FFd4_12,
      O => cur_FSM_FFd2_In
    );
  seg_3_1 : LUT4
    generic map(
      INIT => X"8286"
    )
    port map (
      I0 => cur_FSM_FFd2_10,
      I1 => cur_FSM_FFd4_12,
      I2 => cur_FSM_FFd3_11,
      I3 => cur_FSM_FFd1_9,
      O => seg_3_OBUF_16
    );
  seg_4_1 : LUT4
    generic map(
      INIT => X"1014"
    )
    port map (
      I0 => cur_FSM_FFd2_10,
      I1 => cur_FSM_FFd4_12,
      I2 => cur_FSM_FFd3_11,
      I3 => cur_FSM_FFd1_9,
      O => seg_4_OBUF_15
    );
  seg_5_1 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => cur_FSM_FFd2_10,
      I1 => cur_FSM_FFd4_12,
      I2 => cur_FSM_FFd3_11,
      O => seg_5_OBUF_14
    );
  cur_FSM_FFd1_In11 : LUT5
    generic map(
      INIT => X"E444CCCC"
    )
    port map (
      I0 => ss_IBUF_4,
      I1 => cur_FSM_FFd1_9,
      I2 => cur_FSM_FFd2_10,
      I3 => cur_FSM_FFd3_11,
      I4 => cur_FSM_FFd4_12,
      O => cur_FSM_FFd1_In
    );
  seg_0_1 : LUT4
    generic map(
      INIT => X"8901"
    )
    port map (
      I0 => cur_FSM_FFd3_11,
      I1 => cur_FSM_FFd2_10,
      I2 => cur_FSM_FFd1_9,
      I3 => cur_FSM_FFd4_12,
      O => seg_0_OBUF_19
    );
  pokSel_1_IBUF : IBUF
    port map (
      I => pokSel(1),
      O => pokSel_1_IBUF_0
    );
  pokSel_0_IBUF : IBUF
    port map (
      I => pokSel(0),
      O => pokSel_0_IBUF_1
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_3
    );
  ss_IBUF : IBUF
    port map (
      I => ss,
      O => ss_IBUF_4
    );
  pok_3_OBUF : OBUF
    port map (
      I => pok_3_OBUF_20,
      O => pok(3)
    );
  pok_2_OBUF : OBUF
    port map (
      I => pok_2_OBUF_21,
      O => pok(2)
    );
  pok_1_OBUF : OBUF
    port map (
      I => pok_1_OBUF_22,
      O => pok(1)
    );
  pok_0_OBUF : OBUF
    port map (
      I => pok_0_OBUF_23,
      O => pok(0)
    );
  led_3_OBUF : OBUF
    port map (
      I => led_3_OBUF_5,
      O => led(3)
    );
  led_2_OBUF : OBUF
    port map (
      I => led_2_OBUF_6,
      O => led(2)
    );
  led_1_OBUF : OBUF
    port map (
      I => led_1_OBUF_7,
      O => led(1)
    );
  led_0_OBUF : OBUF
    port map (
      I => led_0_OBUF_8,
      O => led(0)
    );
  binarno_3_OBUF : OBUF
    port map (
      I => cur_FSM_FFd1_9,
      O => binarno(3)
    );
  binarno_2_OBUF : OBUF
    port map (
      I => cur_FSM_FFd2_10,
      O => binarno(2)
    );
  binarno_1_OBUF : OBUF
    port map (
      I => cur_FSM_FFd3_11,
      O => binarno(1)
    );
  binarno_0_OBUF : OBUF
    port map (
      I => cur_FSM_FFd4_12,
      O => binarno(0)
    );
  seg_6_OBUF : OBUF
    port map (
      I => seg_6_OBUF_13,
      O => seg(6)
    );
  seg_5_OBUF : OBUF
    port map (
      I => seg_5_OBUF_14,
      O => seg(5)
    );
  seg_4_OBUF : OBUF
    port map (
      I => seg_4_OBUF_15,
      O => seg(4)
    );
  seg_3_OBUF : OBUF
    port map (
      I => seg_3_OBUF_16,
      O => seg(3)
    );
  seg_2_OBUF : OBUF
    port map (
      I => seg_2_OBUF_17,
      O => seg(2)
    );
  seg_1_OBUF : OBUF
    port map (
      I => seg_1_OBUF_18,
      O => seg(1)
    );
  seg_0_OBUF : OBUF
    port map (
      I => seg_0_OBUF_19,
      O => seg(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_2
    );
  Mram_pok21_INV_0 : INV
    port map (
      I => pokSel_1_IBUF_0,
      O => pok_2_OBUF_21
    );

end Structure;

