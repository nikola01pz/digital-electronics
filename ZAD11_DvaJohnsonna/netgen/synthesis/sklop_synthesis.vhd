--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: sklop_synthesis.vhd
-- /___/   /\     Timestamp: Sun Jul  3 23:03:02 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm sklop -w -dir netgen/synthesis -ofmt vhdl -sim sklop.ngc sklop_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: sklop.ngc
-- Output file	: /home/nikola/ZAD11_DvaJohnsonna/netgen/synthesis/sklop_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: sklop
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

entity sklop is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    ss : in STD_LOGIC := 'X'; 
    freqSel1 : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    freqSel2 : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    led1 : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    led2 : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end sklop;

architecture Structure of sklop is
  signal freqSel1_1_IBUF_0 : STD_LOGIC; 
  signal freqSel1_0_IBUF_1 : STD_LOGIC; 
  signal clk_BUFGP_2 : STD_LOGIC; 
  signal rst_IBUF_3 : STD_LOGIC; 
  signal a1_clk_o_4 : STD_LOGIC; 
  signal a2_clk_o_5 : STD_LOGIC; 
  signal led2_2_6 : STD_LOGIC; 
  signal led2_1_7 : STD_LOGIC; 
  signal led2_0_8 : STD_LOGIC; 
  signal led2_3_9 : STD_LOGIC; 
  signal led1_0_10 : STD_LOGIC; 
  signal led1_3_11 : STD_LOGIC; 
  signal led1_2_12 : STD_LOGIC; 
  signal led1_1_13 : STD_LOGIC; 
  signal clk_o1 : STD_LOGIC; 
  signal a3_clk_o_15 : STD_LOGIC; 
  signal led2_3_INV_5_o : STD_LOGIC; 
  signal led1_0_INV_4_o : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal a1_n0001_inv : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_4_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_5_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_6_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_7_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_8_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_9_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_10_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_11_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_12_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_13_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_14_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_15_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_16_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_17_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_18_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_19_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_20_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_21_Q : STD_LOGIC; 
  signal a1_temp_22_GND_6_o_add_0_OUT_22_Q : STD_LOGIC; 
  signal a2_n0001_inv : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_7_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_8_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_9_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_10_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_11_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_12_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_13_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_14_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_15_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_16_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_17_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_18_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_19_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_20_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_21_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_22_Q : STD_LOGIC; 
  signal a2_temp_23_GND_7_o_add_0_OUT_23_Q : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_0_2 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_lut_0_Q : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_0_Q_155 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_1_Q_156 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_2_Q_157 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_3_Q_158 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_4_Q_159 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_5_Q_160 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_6_Q_161 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_7_Q_162 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_8_Q_163 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_9_Q_164 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_10_Q_165 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_11_Q_166 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_12_Q_167 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_13_Q_168 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_14_Q_169 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_15_Q_170 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_16_Q_171 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_17_Q_172 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_18_Q_173 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_19_Q_174 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_20_Q_175 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_21_Q_176 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_lut_0_Q : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_0_Q_178 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_1_Q_179 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_2_Q_180 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_3_Q_181 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_4_Q_182 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_5_Q_183 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_6_Q_184 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_7_Q_185 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_8_Q_186 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_9_Q_187 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_10_Q_188 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_11_Q_189 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_12_Q_190 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_13_Q_191 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_14_Q_192 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_15_Q_193 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_16_Q_194 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_17_Q_195 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_18_Q_196 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_19_Q_197 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_20_Q_198 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_21_Q_199 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_22_Q_200 : STD_LOGIC; 
  signal a2_n0001_inv1_250 : STD_LOGIC; 
  signal a2_n0001_inv2_251 : STD_LOGIC; 
  signal a2_n0001_inv3_252 : STD_LOGIC; 
  signal a2_n0001_inv4_253 : STD_LOGIC; 
  signal a1_n0001_inv1_254 : STD_LOGIC; 
  signal a1_n0001_inv2_255 : STD_LOGIC; 
  signal a1_n0001_inv3_256 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_1_rt_269 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_2_rt_270 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_3_rt_271 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_4_rt_272 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_5_rt_273 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_6_rt_274 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_7_rt_275 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_8_rt_276 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_9_rt_277 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_10_rt_278 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_11_rt_279 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_12_rt_280 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_13_rt_281 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_14_rt_282 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_15_rt_283 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_16_rt_284 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_17_rt_285 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_18_rt_286 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_19_rt_287 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_20_rt_288 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_21_rt_289 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_1_rt_290 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_2_rt_291 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_3_rt_292 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_4_rt_293 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_5_rt_294 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_6_rt_295 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_7_rt_296 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_8_rt_297 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_9_rt_298 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_10_rt_299 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_11_rt_300 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_12_rt_301 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_13_rt_302 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_14_rt_303 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_15_rt_304 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_16_rt_305 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_17_rt_306 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_18_rt_307 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_19_rt_308 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_20_rt_309 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_21_rt_310 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_22_rt_311 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_1_rt_312 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_2_rt_313 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_3_rt_314 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_4_rt_315 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_5_rt_316 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_6_rt_317 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_7_rt_318 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_8_rt_319 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_9_rt_320 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_10_rt_321 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_11_rt_322 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_12_rt_323 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_13_rt_324 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_14_rt_325 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_15_rt_326 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_16_rt_327 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_17_rt_328 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_18_rt_329 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_19_rt_330 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_20_rt_331 : STD_LOGIC; 
  signal a1_Mcount_temp_cy_21_rt_332 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_1_rt_333 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_2_rt_334 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_3_rt_335 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_4_rt_336 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_5_rt_337 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_6_rt_338 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_7_rt_339 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_8_rt_340 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_9_rt_341 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_10_rt_342 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_11_rt_343 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_12_rt_344 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_13_rt_345 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_14_rt_346 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_15_rt_347 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_16_rt_348 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_17_rt_349 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_18_rt_350 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_19_rt_351 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_20_rt_352 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_21_rt_353 : STD_LOGIC; 
  signal a2_Mcount_temp_cy_22_rt_354 : STD_LOGIC; 
  signal a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_22_rt_355 : STD_LOGIC; 
  signal a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_23_rt_356 : STD_LOGIC; 
  signal a1_Mcount_temp_xor_22_rt_357 : STD_LOGIC; 
  signal a2_Mcount_temp_xor_23_rt_358 : STD_LOGIC; 
  signal a3_clk_o_rstpot_359 : STD_LOGIC; 
  signal a2_n0001_inv5_rstpot_360 : STD_LOGIC; 
  signal a2_clk_o_dpot_361 : STD_LOGIC; 
  signal a1_clk_o_dpot_362 : STD_LOGIC; 
  signal a2_temp_0_rstpot_363 : STD_LOGIC; 
  signal a2_temp_1_rstpot_364 : STD_LOGIC; 
  signal a2_temp_2_rstpot_365 : STD_LOGIC; 
  signal a2_temp_3_rstpot_366 : STD_LOGIC; 
  signal a2_temp_4_rstpot_367 : STD_LOGIC; 
  signal a2_temp_5_rstpot_368 : STD_LOGIC; 
  signal a2_temp_6_rstpot_369 : STD_LOGIC; 
  signal a2_temp_7_rstpot_370 : STD_LOGIC; 
  signal a2_temp_8_rstpot_371 : STD_LOGIC; 
  signal a2_temp_9_rstpot_372 : STD_LOGIC; 
  signal a2_temp_10_rstpot_373 : STD_LOGIC; 
  signal a2_temp_11_rstpot_374 : STD_LOGIC; 
  signal a2_temp_12_rstpot_375 : STD_LOGIC; 
  signal a2_temp_13_rstpot_376 : STD_LOGIC; 
  signal a2_temp_14_rstpot_377 : STD_LOGIC; 
  signal a2_temp_15_rstpot_378 : STD_LOGIC; 
  signal a2_temp_16_rstpot_379 : STD_LOGIC; 
  signal a2_temp_17_rstpot_380 : STD_LOGIC; 
  signal a2_temp_18_rstpot_381 : STD_LOGIC; 
  signal a2_temp_19_rstpot_382 : STD_LOGIC; 
  signal a2_temp_20_rstpot_383 : STD_LOGIC; 
  signal a2_temp_21_rstpot_384 : STD_LOGIC; 
  signal a2_temp_22_rstpot_385 : STD_LOGIC; 
  signal a2_temp_23_rstpot_386 : STD_LOGIC; 
  signal a1_temp_0_rstpot_387 : STD_LOGIC; 
  signal a1_temp_1_rstpot_388 : STD_LOGIC; 
  signal a1_temp_2_rstpot_389 : STD_LOGIC; 
  signal a1_temp_3_rstpot_390 : STD_LOGIC; 
  signal a1_temp_4_rstpot_391 : STD_LOGIC; 
  signal a1_temp_5_rstpot_392 : STD_LOGIC; 
  signal a1_temp_6_rstpot_393 : STD_LOGIC; 
  signal a1_temp_7_rstpot_394 : STD_LOGIC; 
  signal a1_temp_8_rstpot_395 : STD_LOGIC; 
  signal a1_temp_9_rstpot_396 : STD_LOGIC; 
  signal a1_temp_10_rstpot_397 : STD_LOGIC; 
  signal a1_temp_11_rstpot_398 : STD_LOGIC; 
  signal a1_temp_12_rstpot_399 : STD_LOGIC; 
  signal a1_temp_13_rstpot_400 : STD_LOGIC; 
  signal a1_temp_14_rstpot_401 : STD_LOGIC; 
  signal a1_temp_15_rstpot_402 : STD_LOGIC; 
  signal a1_temp_16_rstpot_403 : STD_LOGIC; 
  signal a1_temp_17_rstpot_404 : STD_LOGIC; 
  signal a1_temp_18_rstpot_405 : STD_LOGIC; 
  signal a1_temp_19_rstpot_406 : STD_LOGIC; 
  signal a1_temp_20_rstpot_407 : STD_LOGIC; 
  signal a1_temp_21_rstpot_408 : STD_LOGIC; 
  signal a1_temp_22_rstpot_409 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal a2_n0001_inv5_416 : STD_LOGIC; 
  signal a1_n0001_inv4_417 : STD_LOGIC; 
  signal a1_temp : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal a2_temp : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal a1_Mcount_temp_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal a1_Mcount_temp_cy : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal a3_temp : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal a2_Mcount_temp_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal a2_Mcount_temp_cy : STD_LOGIC_VECTOR ( 22 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  led2_0 : FDC
    port map (
      C => clk_o1,
      CLR => rst_IBUF_3,
      D => led2_3_INV_5_o,
      Q => led2_0_8
    );
  led2_1 : FDC
    port map (
      C => clk_o1,
      CLR => rst_IBUF_3,
      D => led2_0_8,
      Q => led2_1_7
    );
  led2_2 : FDC
    port map (
      C => clk_o1,
      CLR => rst_IBUF_3,
      D => led2_1_7,
      Q => led2_2_6
    );
  led2_3 : FDC
    port map (
      C => clk_o1,
      CLR => rst_IBUF_3,
      D => led2_2_6,
      Q => led2_3_9
    );
  led1_0 : FDC
    port map (
      C => clk_o1,
      CLR => rst_IBUF_3,
      D => led1_1_13,
      Q => led1_0_10
    );
  led1_1 : FDC
    port map (
      C => clk_o1,
      CLR => rst_IBUF_3,
      D => led1_2_12,
      Q => led1_1_13
    );
  led1_2 : FDC
    port map (
      C => clk_o1,
      CLR => rst_IBUF_3,
      D => led1_3_11,
      Q => led1_2_12
    );
  led1_3 : FDC
    port map (
      C => clk_o1,
      CLR => rst_IBUF_3,
      D => led1_0_INV_4_o,
      Q => led1_3_11
    );
  a1_clk_o : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      CE => a1_temp_22_GND_6_o_add_0_OUT_22_Q,
      D => a1_clk_o_dpot_362,
      Q => a1_clk_o_4
    );
  a2_clk_o : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      CE => a2_temp_23_GND_7_o_add_0_OUT_23_Q,
      D => a2_clk_o_dpot_361,
      Q => a2_clk_o_5
    );
  a3_temp_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => a1_clk_o_4,
      D => Result_0_2,
      R => Result_1_2,
      Q => a3_temp(0)
    );
  a3_temp_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => a1_clk_o_4,
      D => Result_1_2,
      R => Result_1_2,
      Q => a3_temp(1)
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_lut_0_Q,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_0_Q_155
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_1_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_0_Q_155,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_1_rt_269,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_1_Q_156
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_2_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_1_Q_156,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_2_rt_270,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_2_Q_157
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_3_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_2_Q_157,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_3_rt_271,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_3_Q_158
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_4_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_3_Q_158,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_4_rt_272,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_4_Q_159
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_4_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_3_Q_158,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_4_rt_272,
      O => a1_temp_22_GND_6_o_add_0_OUT_4_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_5_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_4_Q_159,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_5_rt_273,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_5_Q_160
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_5_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_4_Q_159,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_5_rt_273,
      O => a1_temp_22_GND_6_o_add_0_OUT_5_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_6_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_5_Q_160,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_6_rt_274,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_6_Q_161
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_6_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_5_Q_160,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_6_rt_274,
      O => a1_temp_22_GND_6_o_add_0_OUT_6_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_7_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_6_Q_161,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_7_rt_275,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_7_Q_162
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_7_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_6_Q_161,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_7_rt_275,
      O => a1_temp_22_GND_6_o_add_0_OUT_7_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_8_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_7_Q_162,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_8_rt_276,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_8_Q_163
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_8_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_7_Q_162,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_8_rt_276,
      O => a1_temp_22_GND_6_o_add_0_OUT_8_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_9_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_8_Q_163,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_9_rt_277,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_9_Q_164
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_9_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_8_Q_163,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_9_rt_277,
      O => a1_temp_22_GND_6_o_add_0_OUT_9_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_10_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_9_Q_164,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_10_rt_278,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_10_Q_165
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_10_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_9_Q_164,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_10_rt_278,
      O => a1_temp_22_GND_6_o_add_0_OUT_10_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_11_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_10_Q_165,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_11_rt_279,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_11_Q_166
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_11_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_10_Q_165,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_11_rt_279,
      O => a1_temp_22_GND_6_o_add_0_OUT_11_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_12_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_11_Q_166,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_12_rt_280,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_12_Q_167
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_12_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_11_Q_166,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_12_rt_280,
      O => a1_temp_22_GND_6_o_add_0_OUT_12_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_13_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_12_Q_167,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_13_rt_281,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_13_Q_168
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_13_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_12_Q_167,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_13_rt_281,
      O => a1_temp_22_GND_6_o_add_0_OUT_13_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_14_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_13_Q_168,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_14_rt_282,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_14_Q_169
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_14_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_13_Q_168,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_14_rt_282,
      O => a1_temp_22_GND_6_o_add_0_OUT_14_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_15_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_14_Q_169,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_15_rt_283,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_15_Q_170
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_15_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_14_Q_169,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_15_rt_283,
      O => a1_temp_22_GND_6_o_add_0_OUT_15_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_16_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_15_Q_170,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_16_rt_284,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_16_Q_171
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_16_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_15_Q_170,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_16_rt_284,
      O => a1_temp_22_GND_6_o_add_0_OUT_16_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_17_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_16_Q_171,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_17_rt_285,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_17_Q_172
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_17_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_16_Q_171,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_17_rt_285,
      O => a1_temp_22_GND_6_o_add_0_OUT_17_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_18_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_17_Q_172,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_18_rt_286,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_18_Q_173
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_18_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_17_Q_172,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_18_rt_286,
      O => a1_temp_22_GND_6_o_add_0_OUT_18_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_19_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_18_Q_173,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_19_rt_287,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_19_Q_174
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_19_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_18_Q_173,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_19_rt_287,
      O => a1_temp_22_GND_6_o_add_0_OUT_19_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_20_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_19_Q_174,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_20_rt_288,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_20_Q_175
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_20_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_19_Q_174,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_20_rt_288,
      O => a1_temp_22_GND_6_o_add_0_OUT_20_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_21_Q : MUXCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_20_Q_175,
      DI => N0,
      S => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_21_rt_289,
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_21_Q_176
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_21_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_20_Q_175,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_21_rt_289,
      O => a1_temp_22_GND_6_o_add_0_OUT_21_Q
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_22_Q : XORCY
    port map (
      CI => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_21_Q_176,
      LI => a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_22_rt_355,
      O => a1_temp_22_GND_6_o_add_0_OUT_22_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_lut_0_Q,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_0_Q_178
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_1_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_0_Q_178,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_1_rt_290,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_1_Q_179
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_2_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_1_Q_179,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_2_rt_291,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_2_Q_180
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_3_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_2_Q_180,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_3_rt_292,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_3_Q_181
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_4_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_3_Q_181,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_4_rt_293,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_4_Q_182
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_5_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_4_Q_182,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_5_rt_294,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_5_Q_183
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_6_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_5_Q_183,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_6_rt_295,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_6_Q_184
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_7_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_6_Q_184,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_7_rt_296,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_7_Q_185
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_7_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_6_Q_184,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_7_rt_296,
      O => a2_temp_23_GND_7_o_add_0_OUT_7_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_8_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_7_Q_185,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_8_rt_297,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_8_Q_186
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_8_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_7_Q_185,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_8_rt_297,
      O => a2_temp_23_GND_7_o_add_0_OUT_8_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_9_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_8_Q_186,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_9_rt_298,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_9_Q_187
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_9_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_8_Q_186,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_9_rt_298,
      O => a2_temp_23_GND_7_o_add_0_OUT_9_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_10_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_9_Q_187,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_10_rt_299,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_10_Q_188
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_10_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_9_Q_187,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_10_rt_299,
      O => a2_temp_23_GND_7_o_add_0_OUT_10_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_11_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_10_Q_188,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_11_rt_300,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_11_Q_189
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_11_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_10_Q_188,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_11_rt_300,
      O => a2_temp_23_GND_7_o_add_0_OUT_11_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_12_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_11_Q_189,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_12_rt_301,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_12_Q_190
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_12_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_11_Q_189,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_12_rt_301,
      O => a2_temp_23_GND_7_o_add_0_OUT_12_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_13_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_12_Q_190,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_13_rt_302,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_13_Q_191
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_13_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_12_Q_190,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_13_rt_302,
      O => a2_temp_23_GND_7_o_add_0_OUT_13_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_14_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_13_Q_191,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_14_rt_303,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_14_Q_192
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_14_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_13_Q_191,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_14_rt_303,
      O => a2_temp_23_GND_7_o_add_0_OUT_14_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_15_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_14_Q_192,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_15_rt_304,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_15_Q_193
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_15_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_14_Q_192,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_15_rt_304,
      O => a2_temp_23_GND_7_o_add_0_OUT_15_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_16_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_15_Q_193,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_16_rt_305,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_16_Q_194
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_16_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_15_Q_193,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_16_rt_305,
      O => a2_temp_23_GND_7_o_add_0_OUT_16_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_17_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_16_Q_194,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_17_rt_306,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_17_Q_195
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_17_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_16_Q_194,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_17_rt_306,
      O => a2_temp_23_GND_7_o_add_0_OUT_17_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_18_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_17_Q_195,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_18_rt_307,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_18_Q_196
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_18_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_17_Q_195,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_18_rt_307,
      O => a2_temp_23_GND_7_o_add_0_OUT_18_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_19_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_18_Q_196,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_19_rt_308,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_19_Q_197
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_19_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_18_Q_196,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_19_rt_308,
      O => a2_temp_23_GND_7_o_add_0_OUT_19_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_20_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_19_Q_197,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_20_rt_309,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_20_Q_198
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_20_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_19_Q_197,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_20_rt_309,
      O => a2_temp_23_GND_7_o_add_0_OUT_20_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_21_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_20_Q_198,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_21_rt_310,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_21_Q_199
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_21_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_20_Q_198,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_21_rt_310,
      O => a2_temp_23_GND_7_o_add_0_OUT_21_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_22_Q : MUXCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_21_Q_199,
      DI => N0,
      S => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_22_rt_311,
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_22_Q_200
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_22_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_21_Q_199,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_22_rt_311,
      O => a2_temp_23_GND_7_o_add_0_OUT_22_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_23_Q : XORCY
    port map (
      CI => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_22_Q_200,
      LI => a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_23_rt_356,
      O => a2_temp_23_GND_7_o_add_0_OUT_23_Q
    );
  a1_Mcount_temp_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a1_Mcount_temp_lut(0),
      O => a1_Mcount_temp_cy(0)
    );
  a1_Mcount_temp_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => a1_Mcount_temp_lut(0),
      O => Result(0)
    );
  a1_Mcount_temp_cy_1_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(0),
      DI => N0,
      S => a1_Mcount_temp_cy_1_rt_312,
      O => a1_Mcount_temp_cy(1)
    );
  a1_Mcount_temp_xor_1_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(0),
      LI => a1_Mcount_temp_cy_1_rt_312,
      O => Result(1)
    );
  a1_Mcount_temp_cy_2_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(1),
      DI => N0,
      S => a1_Mcount_temp_cy_2_rt_313,
      O => a1_Mcount_temp_cy(2)
    );
  a1_Mcount_temp_xor_2_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(1),
      LI => a1_Mcount_temp_cy_2_rt_313,
      O => Result(2)
    );
  a1_Mcount_temp_cy_3_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(2),
      DI => N0,
      S => a1_Mcount_temp_cy_3_rt_314,
      O => a1_Mcount_temp_cy(3)
    );
  a1_Mcount_temp_xor_3_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(2),
      LI => a1_Mcount_temp_cy_3_rt_314,
      O => Result(3)
    );
  a1_Mcount_temp_cy_4_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(3),
      DI => N0,
      S => a1_Mcount_temp_cy_4_rt_315,
      O => a1_Mcount_temp_cy(4)
    );
  a1_Mcount_temp_xor_4_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(3),
      LI => a1_Mcount_temp_cy_4_rt_315,
      O => Result(4)
    );
  a1_Mcount_temp_cy_5_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(4),
      DI => N0,
      S => a1_Mcount_temp_cy_5_rt_316,
      O => a1_Mcount_temp_cy(5)
    );
  a1_Mcount_temp_xor_5_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(4),
      LI => a1_Mcount_temp_cy_5_rt_316,
      O => Result(5)
    );
  a1_Mcount_temp_cy_6_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(5),
      DI => N0,
      S => a1_Mcount_temp_cy_6_rt_317,
      O => a1_Mcount_temp_cy(6)
    );
  a1_Mcount_temp_xor_6_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(5),
      LI => a1_Mcount_temp_cy_6_rt_317,
      O => Result(6)
    );
  a1_Mcount_temp_cy_7_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(6),
      DI => N0,
      S => a1_Mcount_temp_cy_7_rt_318,
      O => a1_Mcount_temp_cy(7)
    );
  a1_Mcount_temp_xor_7_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(6),
      LI => a1_Mcount_temp_cy_7_rt_318,
      O => Result(7)
    );
  a1_Mcount_temp_cy_8_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(7),
      DI => N0,
      S => a1_Mcount_temp_cy_8_rt_319,
      O => a1_Mcount_temp_cy(8)
    );
  a1_Mcount_temp_xor_8_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(7),
      LI => a1_Mcount_temp_cy_8_rt_319,
      O => Result(8)
    );
  a1_Mcount_temp_cy_9_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(8),
      DI => N0,
      S => a1_Mcount_temp_cy_9_rt_320,
      O => a1_Mcount_temp_cy(9)
    );
  a1_Mcount_temp_xor_9_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(8),
      LI => a1_Mcount_temp_cy_9_rt_320,
      O => Result(9)
    );
  a1_Mcount_temp_cy_10_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(9),
      DI => N0,
      S => a1_Mcount_temp_cy_10_rt_321,
      O => a1_Mcount_temp_cy(10)
    );
  a1_Mcount_temp_xor_10_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(9),
      LI => a1_Mcount_temp_cy_10_rt_321,
      O => Result(10)
    );
  a1_Mcount_temp_cy_11_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(10),
      DI => N0,
      S => a1_Mcount_temp_cy_11_rt_322,
      O => a1_Mcount_temp_cy(11)
    );
  a1_Mcount_temp_xor_11_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(10),
      LI => a1_Mcount_temp_cy_11_rt_322,
      O => Result(11)
    );
  a1_Mcount_temp_cy_12_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(11),
      DI => N0,
      S => a1_Mcount_temp_cy_12_rt_323,
      O => a1_Mcount_temp_cy(12)
    );
  a1_Mcount_temp_xor_12_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(11),
      LI => a1_Mcount_temp_cy_12_rt_323,
      O => Result(12)
    );
  a1_Mcount_temp_cy_13_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(12),
      DI => N0,
      S => a1_Mcount_temp_cy_13_rt_324,
      O => a1_Mcount_temp_cy(13)
    );
  a1_Mcount_temp_xor_13_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(12),
      LI => a1_Mcount_temp_cy_13_rt_324,
      O => Result(13)
    );
  a1_Mcount_temp_cy_14_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(13),
      DI => N0,
      S => a1_Mcount_temp_cy_14_rt_325,
      O => a1_Mcount_temp_cy(14)
    );
  a1_Mcount_temp_xor_14_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(13),
      LI => a1_Mcount_temp_cy_14_rt_325,
      O => Result(14)
    );
  a1_Mcount_temp_cy_15_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(14),
      DI => N0,
      S => a1_Mcount_temp_cy_15_rt_326,
      O => a1_Mcount_temp_cy(15)
    );
  a1_Mcount_temp_xor_15_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(14),
      LI => a1_Mcount_temp_cy_15_rt_326,
      O => Result(15)
    );
  a1_Mcount_temp_cy_16_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(15),
      DI => N0,
      S => a1_Mcount_temp_cy_16_rt_327,
      O => a1_Mcount_temp_cy(16)
    );
  a1_Mcount_temp_xor_16_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(15),
      LI => a1_Mcount_temp_cy_16_rt_327,
      O => Result(16)
    );
  a1_Mcount_temp_cy_17_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(16),
      DI => N0,
      S => a1_Mcount_temp_cy_17_rt_328,
      O => a1_Mcount_temp_cy(17)
    );
  a1_Mcount_temp_xor_17_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(16),
      LI => a1_Mcount_temp_cy_17_rt_328,
      O => Result(17)
    );
  a1_Mcount_temp_cy_18_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(17),
      DI => N0,
      S => a1_Mcount_temp_cy_18_rt_329,
      O => a1_Mcount_temp_cy(18)
    );
  a1_Mcount_temp_xor_18_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(17),
      LI => a1_Mcount_temp_cy_18_rt_329,
      O => Result(18)
    );
  a1_Mcount_temp_cy_19_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(18),
      DI => N0,
      S => a1_Mcount_temp_cy_19_rt_330,
      O => a1_Mcount_temp_cy(19)
    );
  a1_Mcount_temp_xor_19_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(18),
      LI => a1_Mcount_temp_cy_19_rt_330,
      O => Result(19)
    );
  a1_Mcount_temp_cy_20_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(19),
      DI => N0,
      S => a1_Mcount_temp_cy_20_rt_331,
      O => a1_Mcount_temp_cy(20)
    );
  a1_Mcount_temp_xor_20_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(19),
      LI => a1_Mcount_temp_cy_20_rt_331,
      O => Result(20)
    );
  a1_Mcount_temp_cy_21_Q : MUXCY
    port map (
      CI => a1_Mcount_temp_cy(20),
      DI => N0,
      S => a1_Mcount_temp_cy_21_rt_332,
      O => a1_Mcount_temp_cy(21)
    );
  a1_Mcount_temp_xor_21_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(20),
      LI => a1_Mcount_temp_cy_21_rt_332,
      O => Result(21)
    );
  a1_Mcount_temp_xor_22_Q : XORCY
    port map (
      CI => a1_Mcount_temp_cy(21),
      LI => a1_Mcount_temp_xor_22_rt_357,
      O => Result(22)
    );
  a2_Mcount_temp_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => a2_Mcount_temp_lut(0),
      O => a2_Mcount_temp_cy(0)
    );
  a2_Mcount_temp_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => a2_Mcount_temp_lut(0),
      O => Result_0_1
    );
  a2_Mcount_temp_cy_1_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(0),
      DI => N0,
      S => a2_Mcount_temp_cy_1_rt_333,
      O => a2_Mcount_temp_cy(1)
    );
  a2_Mcount_temp_xor_1_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(0),
      LI => a2_Mcount_temp_cy_1_rt_333,
      O => Result_1_1
    );
  a2_Mcount_temp_cy_2_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(1),
      DI => N0,
      S => a2_Mcount_temp_cy_2_rt_334,
      O => a2_Mcount_temp_cy(2)
    );
  a2_Mcount_temp_xor_2_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(1),
      LI => a2_Mcount_temp_cy_2_rt_334,
      O => Result_2_1
    );
  a2_Mcount_temp_cy_3_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(2),
      DI => N0,
      S => a2_Mcount_temp_cy_3_rt_335,
      O => a2_Mcount_temp_cy(3)
    );
  a2_Mcount_temp_xor_3_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(2),
      LI => a2_Mcount_temp_cy_3_rt_335,
      O => Result_3_1
    );
  a2_Mcount_temp_cy_4_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(3),
      DI => N0,
      S => a2_Mcount_temp_cy_4_rt_336,
      O => a2_Mcount_temp_cy(4)
    );
  a2_Mcount_temp_xor_4_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(3),
      LI => a2_Mcount_temp_cy_4_rt_336,
      O => Result_4_1
    );
  a2_Mcount_temp_cy_5_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(4),
      DI => N0,
      S => a2_Mcount_temp_cy_5_rt_337,
      O => a2_Mcount_temp_cy(5)
    );
  a2_Mcount_temp_xor_5_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(4),
      LI => a2_Mcount_temp_cy_5_rt_337,
      O => Result_5_1
    );
  a2_Mcount_temp_cy_6_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(5),
      DI => N0,
      S => a2_Mcount_temp_cy_6_rt_338,
      O => a2_Mcount_temp_cy(6)
    );
  a2_Mcount_temp_xor_6_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(5),
      LI => a2_Mcount_temp_cy_6_rt_338,
      O => Result_6_1
    );
  a2_Mcount_temp_cy_7_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(6),
      DI => N0,
      S => a2_Mcount_temp_cy_7_rt_339,
      O => a2_Mcount_temp_cy(7)
    );
  a2_Mcount_temp_xor_7_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(6),
      LI => a2_Mcount_temp_cy_7_rt_339,
      O => Result_7_1
    );
  a2_Mcount_temp_cy_8_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(7),
      DI => N0,
      S => a2_Mcount_temp_cy_8_rt_340,
      O => a2_Mcount_temp_cy(8)
    );
  a2_Mcount_temp_xor_8_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(7),
      LI => a2_Mcount_temp_cy_8_rt_340,
      O => Result_8_1
    );
  a2_Mcount_temp_cy_9_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(8),
      DI => N0,
      S => a2_Mcount_temp_cy_9_rt_341,
      O => a2_Mcount_temp_cy(9)
    );
  a2_Mcount_temp_xor_9_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(8),
      LI => a2_Mcount_temp_cy_9_rt_341,
      O => Result_9_1
    );
  a2_Mcount_temp_cy_10_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(9),
      DI => N0,
      S => a2_Mcount_temp_cy_10_rt_342,
      O => a2_Mcount_temp_cy(10)
    );
  a2_Mcount_temp_xor_10_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(9),
      LI => a2_Mcount_temp_cy_10_rt_342,
      O => Result_10_1
    );
  a2_Mcount_temp_cy_11_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(10),
      DI => N0,
      S => a2_Mcount_temp_cy_11_rt_343,
      O => a2_Mcount_temp_cy(11)
    );
  a2_Mcount_temp_xor_11_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(10),
      LI => a2_Mcount_temp_cy_11_rt_343,
      O => Result_11_1
    );
  a2_Mcount_temp_cy_12_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(11),
      DI => N0,
      S => a2_Mcount_temp_cy_12_rt_344,
      O => a2_Mcount_temp_cy(12)
    );
  a2_Mcount_temp_xor_12_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(11),
      LI => a2_Mcount_temp_cy_12_rt_344,
      O => Result_12_1
    );
  a2_Mcount_temp_cy_13_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(12),
      DI => N0,
      S => a2_Mcount_temp_cy_13_rt_345,
      O => a2_Mcount_temp_cy(13)
    );
  a2_Mcount_temp_xor_13_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(12),
      LI => a2_Mcount_temp_cy_13_rt_345,
      O => Result_13_1
    );
  a2_Mcount_temp_cy_14_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(13),
      DI => N0,
      S => a2_Mcount_temp_cy_14_rt_346,
      O => a2_Mcount_temp_cy(14)
    );
  a2_Mcount_temp_xor_14_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(13),
      LI => a2_Mcount_temp_cy_14_rt_346,
      O => Result_14_1
    );
  a2_Mcount_temp_cy_15_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(14),
      DI => N0,
      S => a2_Mcount_temp_cy_15_rt_347,
      O => a2_Mcount_temp_cy(15)
    );
  a2_Mcount_temp_xor_15_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(14),
      LI => a2_Mcount_temp_cy_15_rt_347,
      O => Result_15_1
    );
  a2_Mcount_temp_cy_16_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(15),
      DI => N0,
      S => a2_Mcount_temp_cy_16_rt_348,
      O => a2_Mcount_temp_cy(16)
    );
  a2_Mcount_temp_xor_16_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(15),
      LI => a2_Mcount_temp_cy_16_rt_348,
      O => Result_16_1
    );
  a2_Mcount_temp_cy_17_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(16),
      DI => N0,
      S => a2_Mcount_temp_cy_17_rt_349,
      O => a2_Mcount_temp_cy(17)
    );
  a2_Mcount_temp_xor_17_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(16),
      LI => a2_Mcount_temp_cy_17_rt_349,
      O => Result_17_1
    );
  a2_Mcount_temp_cy_18_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(17),
      DI => N0,
      S => a2_Mcount_temp_cy_18_rt_350,
      O => a2_Mcount_temp_cy(18)
    );
  a2_Mcount_temp_xor_18_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(17),
      LI => a2_Mcount_temp_cy_18_rt_350,
      O => Result_18_1
    );
  a2_Mcount_temp_cy_19_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(18),
      DI => N0,
      S => a2_Mcount_temp_cy_19_rt_351,
      O => a2_Mcount_temp_cy(19)
    );
  a2_Mcount_temp_xor_19_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(18),
      LI => a2_Mcount_temp_cy_19_rt_351,
      O => Result_19_1
    );
  a2_Mcount_temp_cy_20_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(19),
      DI => N0,
      S => a2_Mcount_temp_cy_20_rt_352,
      O => a2_Mcount_temp_cy(20)
    );
  a2_Mcount_temp_xor_20_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(19),
      LI => a2_Mcount_temp_cy_20_rt_352,
      O => Result_20_1
    );
  a2_Mcount_temp_cy_21_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(20),
      DI => N0,
      S => a2_Mcount_temp_cy_21_rt_353,
      O => a2_Mcount_temp_cy(21)
    );
  a2_Mcount_temp_xor_21_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(20),
      LI => a2_Mcount_temp_cy_21_rt_353,
      O => Result_21_1
    );
  a2_Mcount_temp_cy_22_Q : MUXCY
    port map (
      CI => a2_Mcount_temp_cy(21),
      DI => N0,
      S => a2_Mcount_temp_cy_22_rt_354,
      O => a2_Mcount_temp_cy(22)
    );
  a2_Mcount_temp_xor_22_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(21),
      LI => a2_Mcount_temp_cy_22_rt_354,
      O => Result_22_1
    );
  a2_Mcount_temp_xor_23_Q : XORCY
    port map (
      CI => a2_Mcount_temp_cy(22),
      LI => a2_Mcount_temp_xor_23_rt_358,
      O => Result(23)
    );
  Result_1_21 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a3_temp(1),
      I1 => a3_temp(0),
      O => Result_1_2
    );
  Mmux_clk_o111 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => freqSel1_1_IBUF_0,
      I1 => a2_clk_o_5,
      I2 => freqSel1_0_IBUF_1,
      I3 => a1_clk_o_4,
      I4 => a3_clk_o_15,
      O => clk_o1
    );
  a2_n0001_inv1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a2_temp_23_GND_7_o_add_0_OUT_20_Q,
      I1 => a2_temp_23_GND_7_o_add_0_OUT_19_Q,
      O => a2_n0001_inv1_250
    );
  a2_n0001_inv2 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => a2_temp_23_GND_7_o_add_0_OUT_16_Q,
      I1 => a2_temp_23_GND_7_o_add_0_OUT_17_Q,
      I2 => a2_temp_23_GND_7_o_add_0_OUT_18_Q,
      O => a2_n0001_inv2_251
    );
  a2_n0001_inv3 : LUT4
    generic map(
      INIT => X"E000"
    )
    port map (
      I0 => a2_temp_23_GND_7_o_add_0_OUT_7_Q,
      I1 => a2_temp_23_GND_7_o_add_0_OUT_8_Q,
      I2 => a2_temp_23_GND_7_o_add_0_OUT_9_Q,
      I3 => a2_temp_23_GND_7_o_add_0_OUT_10_Q,
      O => a2_n0001_inv3_252
    );
  a2_n0001_inv4 : LUT6
    generic map(
      INIT => X"FFFC0000FFF80000"
    )
    port map (
      I0 => a2_temp_23_GND_7_o_add_0_OUT_11_Q,
      I1 => a2_temp_23_GND_7_o_add_0_OUT_12_Q,
      I2 => a2_temp_23_GND_7_o_add_0_OUT_13_Q,
      I3 => a2_temp_23_GND_7_o_add_0_OUT_14_Q,
      I4 => a2_temp_23_GND_7_o_add_0_OUT_15_Q,
      I5 => a2_n0001_inv3_252,
      O => a2_n0001_inv4_253
    );
  a2_n0001_inv5 : LUT6
    generic map(
      INIT => X"AAA8AAA8AAA8A8A8"
    )
    port map (
      I0 => a2_temp_23_GND_7_o_add_0_OUT_23_Q,
      I1 => a2_temp_23_GND_7_o_add_0_OUT_21_Q,
      I2 => a2_temp_23_GND_7_o_add_0_OUT_22_Q,
      I3 => a2_n0001_inv1_250,
      I4 => a2_n0001_inv2_251,
      I5 => a2_n0001_inv4_253,
      O => a2_n0001_inv
    );
  a1_n0001_inv1 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => a1_temp_22_GND_6_o_add_0_OUT_16_Q,
      I1 => a1_temp_22_GND_6_o_add_0_OUT_17_Q,
      I2 => a1_temp_22_GND_6_o_add_0_OUT_18_Q,
      I3 => a1_temp_22_GND_6_o_add_0_OUT_19_Q,
      I4 => a1_temp_22_GND_6_o_add_0_OUT_20_Q,
      O => a1_n0001_inv1_254
    );
  a1_n0001_inv2 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => a1_temp_22_GND_6_o_add_0_OUT_4_Q,
      I1 => a1_temp_22_GND_6_o_add_0_OUT_5_Q,
      I2 => a1_temp_22_GND_6_o_add_0_OUT_6_Q,
      I3 => a1_temp_22_GND_6_o_add_0_OUT_7_Q,
      I4 => a1_temp_22_GND_6_o_add_0_OUT_8_Q,
      O => a1_n0001_inv2_255
    );
  a1_n0001_inv3 : LUT6
    generic map(
      INIT => X"FFFF8000FFFF0000"
    )
    port map (
      I0 => a1_temp_22_GND_6_o_add_0_OUT_9_Q,
      I1 => a1_temp_22_GND_6_o_add_0_OUT_10_Q,
      I2 => a1_temp_22_GND_6_o_add_0_OUT_11_Q,
      I3 => a1_temp_22_GND_6_o_add_0_OUT_12_Q,
      I4 => a1_temp_22_GND_6_o_add_0_OUT_13_Q,
      I5 => a1_n0001_inv2_255,
      O => a1_n0001_inv3_256
    );
  a1_n0001_inv4 : LUT6
    generic map(
      INIT => X"FE00F000FC00F000"
    )
    port map (
      I0 => a1_temp_22_GND_6_o_add_0_OUT_14_Q,
      I1 => a1_temp_22_GND_6_o_add_0_OUT_15_Q,
      I2 => a1_temp_22_GND_6_o_add_0_OUT_21_Q,
      I3 => a1_temp_22_GND_6_o_add_0_OUT_22_Q,
      I4 => a1_n0001_inv1_254,
      I5 => a1_n0001_inv3_256,
      O => a1_n0001_inv
    );
  freqSel1_1_IBUF : IBUF
    port map (
      I => freqSel1(1),
      O => freqSel1_1_IBUF_0
    );
  freqSel1_0_IBUF : IBUF
    port map (
      I => freqSel1(0),
      O => freqSel1_0_IBUF_1
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_3
    );
  led1_3_OBUF : OBUF
    port map (
      I => led1_3_11,
      O => led1(3)
    );
  led1_2_OBUF : OBUF
    port map (
      I => led1_2_12,
      O => led1(2)
    );
  led1_1_OBUF : OBUF
    port map (
      I => led1_1_13,
      O => led1(1)
    );
  led1_0_OBUF : OBUF
    port map (
      I => led1_0_10,
      O => led1(0)
    );
  led2_3_OBUF : OBUF
    port map (
      I => led2_3_9,
      O => led2(3)
    );
  led2_2_OBUF : OBUF
    port map (
      I => led2_2_6,
      O => led2(2)
    );
  led2_1_OBUF : OBUF
    port map (
      I => led2_1_7,
      O => led2(1)
    );
  led2_0_OBUF : OBUF
    port map (
      I => led2_0_8,
      O => led2(0)
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(1),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_1_rt_269
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(2),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_2_rt_270
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(3),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_3_rt_271
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(4),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_4_rt_272
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(5),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_5_rt_273
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(6),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_6_rt_274
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(7),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_7_rt_275
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(8),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_8_rt_276
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(9),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_9_rt_277
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(10),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_10_rt_278
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(11),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_11_rt_279
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(12),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_12_rt_280
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(13),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_13_rt_281
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(14),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_14_rt_282
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(15),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_15_rt_283
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(16),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_16_rt_284
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(17),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_17_rt_285
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(18),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_18_rt_286
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(19),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_19_rt_287
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(20),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_20_rt_288
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(21),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_cy_21_rt_289
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(1),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_1_rt_290
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(2),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_2_rt_291
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(3),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_3_rt_292
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(4),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_4_rt_293
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(5),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_5_rt_294
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(6),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_6_rt_295
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(7),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_7_rt_296
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(8),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_8_rt_297
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(9),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_9_rt_298
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(10),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_10_rt_299
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(11),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_11_rt_300
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(12),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_12_rt_301
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(13),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_13_rt_302
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(14),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_14_rt_303
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(15),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_15_rt_304
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(16),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_16_rt_305
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(17),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_17_rt_306
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(18),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_18_rt_307
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(19),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_19_rt_308
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(20),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_20_rt_309
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(21),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_21_rt_310
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(22),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_cy_22_rt_311
    );
  a1_Mcount_temp_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(1),
      O => a1_Mcount_temp_cy_1_rt_312
    );
  a1_Mcount_temp_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(2),
      O => a1_Mcount_temp_cy_2_rt_313
    );
  a1_Mcount_temp_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(3),
      O => a1_Mcount_temp_cy_3_rt_314
    );
  a1_Mcount_temp_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(4),
      O => a1_Mcount_temp_cy_4_rt_315
    );
  a1_Mcount_temp_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(5),
      O => a1_Mcount_temp_cy_5_rt_316
    );
  a1_Mcount_temp_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(6),
      O => a1_Mcount_temp_cy_6_rt_317
    );
  a1_Mcount_temp_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(7),
      O => a1_Mcount_temp_cy_7_rt_318
    );
  a1_Mcount_temp_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(8),
      O => a1_Mcount_temp_cy_8_rt_319
    );
  a1_Mcount_temp_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(9),
      O => a1_Mcount_temp_cy_9_rt_320
    );
  a1_Mcount_temp_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(10),
      O => a1_Mcount_temp_cy_10_rt_321
    );
  a1_Mcount_temp_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(11),
      O => a1_Mcount_temp_cy_11_rt_322
    );
  a1_Mcount_temp_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(12),
      O => a1_Mcount_temp_cy_12_rt_323
    );
  a1_Mcount_temp_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(13),
      O => a1_Mcount_temp_cy_13_rt_324
    );
  a1_Mcount_temp_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(14),
      O => a1_Mcount_temp_cy_14_rt_325
    );
  a1_Mcount_temp_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(15),
      O => a1_Mcount_temp_cy_15_rt_326
    );
  a1_Mcount_temp_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(16),
      O => a1_Mcount_temp_cy_16_rt_327
    );
  a1_Mcount_temp_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(17),
      O => a1_Mcount_temp_cy_17_rt_328
    );
  a1_Mcount_temp_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(18),
      O => a1_Mcount_temp_cy_18_rt_329
    );
  a1_Mcount_temp_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(19),
      O => a1_Mcount_temp_cy_19_rt_330
    );
  a1_Mcount_temp_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(20),
      O => a1_Mcount_temp_cy_20_rt_331
    );
  a1_Mcount_temp_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(21),
      O => a1_Mcount_temp_cy_21_rt_332
    );
  a2_Mcount_temp_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(1),
      O => a2_Mcount_temp_cy_1_rt_333
    );
  a2_Mcount_temp_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(2),
      O => a2_Mcount_temp_cy_2_rt_334
    );
  a2_Mcount_temp_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(3),
      O => a2_Mcount_temp_cy_3_rt_335
    );
  a2_Mcount_temp_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(4),
      O => a2_Mcount_temp_cy_4_rt_336
    );
  a2_Mcount_temp_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(5),
      O => a2_Mcount_temp_cy_5_rt_337
    );
  a2_Mcount_temp_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(6),
      O => a2_Mcount_temp_cy_6_rt_338
    );
  a2_Mcount_temp_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(7),
      O => a2_Mcount_temp_cy_7_rt_339
    );
  a2_Mcount_temp_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(8),
      O => a2_Mcount_temp_cy_8_rt_340
    );
  a2_Mcount_temp_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(9),
      O => a2_Mcount_temp_cy_9_rt_341
    );
  a2_Mcount_temp_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(10),
      O => a2_Mcount_temp_cy_10_rt_342
    );
  a2_Mcount_temp_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(11),
      O => a2_Mcount_temp_cy_11_rt_343
    );
  a2_Mcount_temp_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(12),
      O => a2_Mcount_temp_cy_12_rt_344
    );
  a2_Mcount_temp_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(13),
      O => a2_Mcount_temp_cy_13_rt_345
    );
  a2_Mcount_temp_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(14),
      O => a2_Mcount_temp_cy_14_rt_346
    );
  a2_Mcount_temp_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(15),
      O => a2_Mcount_temp_cy_15_rt_347
    );
  a2_Mcount_temp_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(16),
      O => a2_Mcount_temp_cy_16_rt_348
    );
  a2_Mcount_temp_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(17),
      O => a2_Mcount_temp_cy_17_rt_349
    );
  a2_Mcount_temp_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(18),
      O => a2_Mcount_temp_cy_18_rt_350
    );
  a2_Mcount_temp_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(19),
      O => a2_Mcount_temp_cy_19_rt_351
    );
  a2_Mcount_temp_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(20),
      O => a2_Mcount_temp_cy_20_rt_352
    );
  a2_Mcount_temp_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(21),
      O => a2_Mcount_temp_cy_21_rt_353
    );
  a2_Mcount_temp_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(22),
      O => a2_Mcount_temp_cy_22_rt_354
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(22),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_xor_22_rt_355
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(23),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_xor_23_rt_356
    );
  a1_Mcount_temp_xor_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a1_temp(22),
      O => a1_Mcount_temp_xor_22_rt_357
    );
  a2_Mcount_temp_xor_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => a2_temp(23),
      O => a2_Mcount_temp_xor_23_rt_358
    );
  a3_clk_o : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => a1_clk_o_4,
      D => a3_clk_o_rstpot_359,
      Q => a3_clk_o_15
    );
  a2_temp_0_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_0_1,
      I1 => a2_n0001_inv,
      O => a2_temp_0_rstpot_363
    );
  a2_temp_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_0_rstpot_363,
      Q => a2_temp(0)
    );
  a2_temp_1_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_1_1,
      I1 => a2_n0001_inv,
      O => a2_temp_1_rstpot_364
    );
  a2_temp_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_1_rstpot_364,
      Q => a2_temp(1)
    );
  a2_temp_2_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_2_1,
      I1 => a2_n0001_inv,
      O => a2_temp_2_rstpot_365
    );
  a2_temp_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_2_rstpot_365,
      Q => a2_temp(2)
    );
  a2_temp_3_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_3_1,
      I1 => a2_n0001_inv,
      O => a2_temp_3_rstpot_366
    );
  a2_temp_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_3_rstpot_366,
      Q => a2_temp(3)
    );
  a2_temp_4_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_4_1,
      I1 => a2_n0001_inv,
      O => a2_temp_4_rstpot_367
    );
  a2_temp_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_4_rstpot_367,
      Q => a2_temp(4)
    );
  a2_temp_5_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_5_1,
      I1 => a2_n0001_inv,
      O => a2_temp_5_rstpot_368
    );
  a2_temp_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_5_rstpot_368,
      Q => a2_temp(5)
    );
  a2_temp_6_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_6_1,
      I1 => a2_n0001_inv,
      O => a2_temp_6_rstpot_369
    );
  a2_temp_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_6_rstpot_369,
      Q => a2_temp(6)
    );
  a2_temp_7_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_7_1,
      I1 => a2_n0001_inv,
      O => a2_temp_7_rstpot_370
    );
  a2_temp_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_7_rstpot_370,
      Q => a2_temp(7)
    );
  a2_temp_8_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_8_1,
      I1 => a2_n0001_inv,
      O => a2_temp_8_rstpot_371
    );
  a2_temp_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_8_rstpot_371,
      Q => a2_temp(8)
    );
  a2_temp_9_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_9_1,
      I1 => a2_n0001_inv,
      O => a2_temp_9_rstpot_372
    );
  a2_temp_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_9_rstpot_372,
      Q => a2_temp(9)
    );
  a2_temp_10_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_10_1,
      I1 => a2_n0001_inv,
      O => a2_temp_10_rstpot_373
    );
  a2_temp_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_10_rstpot_373,
      Q => a2_temp(10)
    );
  a2_temp_11_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_11_1,
      I1 => a2_n0001_inv,
      O => a2_temp_11_rstpot_374
    );
  a2_temp_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_11_rstpot_374,
      Q => a2_temp(11)
    );
  a2_temp_12_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_12_1,
      I1 => a2_n0001_inv,
      O => a2_temp_12_rstpot_375
    );
  a2_temp_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_12_rstpot_375,
      Q => a2_temp(12)
    );
  a2_temp_13_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_13_1,
      I1 => a2_n0001_inv5_416,
      O => a2_temp_13_rstpot_376
    );
  a2_temp_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_13_rstpot_376,
      Q => a2_temp(13)
    );
  a2_temp_14_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_14_1,
      I1 => a2_n0001_inv5_416,
      O => a2_temp_14_rstpot_377
    );
  a2_temp_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_14_rstpot_377,
      Q => a2_temp(14)
    );
  a2_temp_15_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_15_1,
      I1 => a2_n0001_inv5_416,
      O => a2_temp_15_rstpot_378
    );
  a2_temp_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_15_rstpot_378,
      Q => a2_temp(15)
    );
  a2_temp_16_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_16_1,
      I1 => a2_n0001_inv5_416,
      O => a2_temp_16_rstpot_379
    );
  a2_temp_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_16_rstpot_379,
      Q => a2_temp(16)
    );
  a2_temp_17_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_17_1,
      I1 => a2_n0001_inv5_416,
      O => a2_temp_17_rstpot_380
    );
  a2_temp_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_17_rstpot_380,
      Q => a2_temp(17)
    );
  a2_temp_18_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_18_1,
      I1 => a2_n0001_inv5_416,
      O => a2_temp_18_rstpot_381
    );
  a2_temp_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_18_rstpot_381,
      Q => a2_temp(18)
    );
  a2_temp_19_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_19_1,
      I1 => a2_n0001_inv5_416,
      O => a2_temp_19_rstpot_382
    );
  a2_temp_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_19_rstpot_382,
      Q => a2_temp(19)
    );
  a2_temp_20_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_20_1,
      I1 => a2_n0001_inv5_416,
      O => a2_temp_20_rstpot_383
    );
  a2_temp_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_20_rstpot_383,
      Q => a2_temp(20)
    );
  a2_temp_21_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_21_1,
      I1 => a2_n0001_inv5_416,
      O => a2_temp_21_rstpot_384
    );
  a2_temp_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_21_rstpot_384,
      Q => a2_temp(21)
    );
  a2_temp_22_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result_22_1,
      I1 => a2_n0001_inv5_416,
      O => a2_temp_22_rstpot_385
    );
  a2_temp_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_22_rstpot_385,
      Q => a2_temp(22)
    );
  a2_temp_23_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(23),
      I1 => a2_n0001_inv5_416,
      O => a2_temp_23_rstpot_386
    );
  a2_temp_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a2_temp_23_rstpot_386,
      Q => a2_temp(23)
    );
  a1_temp_0_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(0),
      I1 => a1_n0001_inv,
      O => a1_temp_0_rstpot_387
    );
  a1_temp_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_0_rstpot_387,
      Q => a1_temp(0)
    );
  a1_temp_1_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(1),
      I1 => a1_n0001_inv,
      O => a1_temp_1_rstpot_388
    );
  a1_temp_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_1_rstpot_388,
      Q => a1_temp(1)
    );
  a1_temp_2_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(2),
      I1 => a1_n0001_inv,
      O => a1_temp_2_rstpot_389
    );
  a1_temp_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_2_rstpot_389,
      Q => a1_temp(2)
    );
  a1_temp_3_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(3),
      I1 => a1_n0001_inv,
      O => a1_temp_3_rstpot_390
    );
  a1_temp_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_3_rstpot_390,
      Q => a1_temp(3)
    );
  a1_temp_4_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(4),
      I1 => a1_n0001_inv,
      O => a1_temp_4_rstpot_391
    );
  a1_temp_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_4_rstpot_391,
      Q => a1_temp(4)
    );
  a1_temp_5_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(5),
      I1 => a1_n0001_inv,
      O => a1_temp_5_rstpot_392
    );
  a1_temp_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_5_rstpot_392,
      Q => a1_temp(5)
    );
  a1_temp_6_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(6),
      I1 => a1_n0001_inv,
      O => a1_temp_6_rstpot_393
    );
  a1_temp_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_6_rstpot_393,
      Q => a1_temp(6)
    );
  a1_temp_7_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(7),
      I1 => a1_n0001_inv,
      O => a1_temp_7_rstpot_394
    );
  a1_temp_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_7_rstpot_394,
      Q => a1_temp(7)
    );
  a1_temp_8_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(8),
      I1 => a1_n0001_inv,
      O => a1_temp_8_rstpot_395
    );
  a1_temp_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_8_rstpot_395,
      Q => a1_temp(8)
    );
  a1_temp_9_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(9),
      I1 => a1_n0001_inv,
      O => a1_temp_9_rstpot_396
    );
  a1_temp_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_9_rstpot_396,
      Q => a1_temp(9)
    );
  a1_temp_10_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(10),
      I1 => a1_n0001_inv,
      O => a1_temp_10_rstpot_397
    );
  a1_temp_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_10_rstpot_397,
      Q => a1_temp(10)
    );
  a1_temp_11_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(11),
      I1 => a1_n0001_inv,
      O => a1_temp_11_rstpot_398
    );
  a1_temp_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_11_rstpot_398,
      Q => a1_temp(11)
    );
  a1_temp_12_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(12),
      I1 => a1_n0001_inv4_417,
      O => a1_temp_12_rstpot_399
    );
  a1_temp_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_12_rstpot_399,
      Q => a1_temp(12)
    );
  a1_temp_13_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(13),
      I1 => a1_n0001_inv4_417,
      O => a1_temp_13_rstpot_400
    );
  a1_temp_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_13_rstpot_400,
      Q => a1_temp(13)
    );
  a1_temp_14_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(14),
      I1 => a1_n0001_inv4_417,
      O => a1_temp_14_rstpot_401
    );
  a1_temp_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_14_rstpot_401,
      Q => a1_temp(14)
    );
  a1_temp_15_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(15),
      I1 => a1_n0001_inv4_417,
      O => a1_temp_15_rstpot_402
    );
  a1_temp_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_15_rstpot_402,
      Q => a1_temp(15)
    );
  a1_temp_16_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(16),
      I1 => a1_n0001_inv4_417,
      O => a1_temp_16_rstpot_403
    );
  a1_temp_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_16_rstpot_403,
      Q => a1_temp(16)
    );
  a1_temp_17_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(17),
      I1 => a1_n0001_inv4_417,
      O => a1_temp_17_rstpot_404
    );
  a1_temp_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_17_rstpot_404,
      Q => a1_temp(17)
    );
  a1_temp_18_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(18),
      I1 => a1_n0001_inv4_417,
      O => a1_temp_18_rstpot_405
    );
  a1_temp_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_18_rstpot_405,
      Q => a1_temp(18)
    );
  a1_temp_19_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(19),
      I1 => a1_n0001_inv4_417,
      O => a1_temp_19_rstpot_406
    );
  a1_temp_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_19_rstpot_406,
      Q => a1_temp(19)
    );
  a1_temp_20_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(20),
      I1 => a1_n0001_inv4_417,
      O => a1_temp_20_rstpot_407
    );
  a1_temp_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_20_rstpot_407,
      Q => a1_temp(20)
    );
  a1_temp_21_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(21),
      I1 => a1_n0001_inv4_417,
      O => a1_temp_21_rstpot_408
    );
  a1_temp_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_21_rstpot_408,
      Q => a1_temp(21)
    );
  a1_temp_22_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(22),
      I1 => a1_n0001_inv4_417,
      O => a1_temp_22_rstpot_409
    );
  a1_temp_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_2,
      D => a1_temp_22_rstpot_409,
      Q => a1_temp(22)
    );
  a2_clk_o_dpot : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => a2_clk_o_5,
      I1 => a2_n0001_inv5_rstpot_360,
      O => a2_clk_o_dpot_361
    );
  a2_n0001_inv4_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => a2_temp_23_GND_7_o_add_0_OUT_22_Q,
      I1 => a2_temp_23_GND_7_o_add_0_OUT_21_Q,
      O => N11
    );
  a2_n0001_inv4_SW2 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFE00"
    )
    port map (
      I0 => a2_temp_23_GND_7_o_add_0_OUT_12_Q,
      I1 => a2_temp_23_GND_7_o_add_0_OUT_13_Q,
      I2 => a2_temp_23_GND_7_o_add_0_OUT_14_Q,
      I3 => a2_temp_23_GND_7_o_add_0_OUT_15_Q,
      I4 => a2_temp_23_GND_7_o_add_0_OUT_21_Q,
      I5 => a2_temp_23_GND_7_o_add_0_OUT_22_Q,
      O => N13
    );
  a2_n0001_inv5_rstpot : LUT6
    generic map(
      INIT => X"FFCCF7C4FBC8F3C0"
    )
    port map (
      I0 => a2_n0001_inv3_252,
      I1 => a2_n0001_inv1_250,
      I2 => a2_n0001_inv2_251,
      I3 => N11,
      I4 => N13,
      I5 => N12,
      O => a2_n0001_inv5_rstpot_360
    );
  a1_clk_o_dpot : LUT5
    generic map(
      INIT => X"565A555A"
    )
    port map (
      I0 => a1_clk_o_4,
      I1 => a1_temp_22_GND_6_o_add_0_OUT_15_Q,
      I2 => a1_temp_22_GND_6_o_add_0_OUT_21_Q,
      I3 => a1_n0001_inv1_254,
      I4 => N15,
      O => a1_clk_o_dpot_362
    );
  a1_n0001_inv4_rstpot_SW0_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
    port map (
      I0 => a1_temp_22_GND_6_o_add_0_OUT_4_Q,
      I1 => a1_temp_22_GND_6_o_add_0_OUT_5_Q,
      I2 => a1_temp_22_GND_6_o_add_0_OUT_6_Q,
      I3 => a1_temp_22_GND_6_o_add_0_OUT_7_Q,
      I4 => a1_temp_22_GND_6_o_add_0_OUT_8_Q,
      I5 => a1_temp_22_GND_6_o_add_0_OUT_9_Q,
      O => N17
    );
  a1_n0001_inv4_rstpot_SW0 : LUT6
    generic map(
      INIT => X"007FFFFF00FFFFFF"
    )
    port map (
      I0 => a1_temp_22_GND_6_o_add_0_OUT_10_Q,
      I1 => a1_temp_22_GND_6_o_add_0_OUT_11_Q,
      I2 => a1_temp_22_GND_6_o_add_0_OUT_12_Q,
      I3 => a1_temp_22_GND_6_o_add_0_OUT_13_Q,
      I4 => a1_temp_22_GND_6_o_add_0_OUT_14_Q,
      I5 => N17,
      O => N15
    );
  a2_n0001_inv4_SW1 : MUXF7
    port map (
      I0 => N19,
      I1 => N1,
      S => a2_temp_23_GND_7_o_add_0_OUT_22_Q,
      O => N12
    );
  a2_n0001_inv4_SW1_F : LUT6
    generic map(
      INIT => X"FFFFFFFFFFF80000"
    )
    port map (
      I0 => a2_temp_23_GND_7_o_add_0_OUT_11_Q,
      I1 => a2_temp_23_GND_7_o_add_0_OUT_12_Q,
      I2 => a2_temp_23_GND_7_o_add_0_OUT_13_Q,
      I3 => a2_temp_23_GND_7_o_add_0_OUT_14_Q,
      I4 => a2_temp_23_GND_7_o_add_0_OUT_15_Q,
      I5 => a2_temp_23_GND_7_o_add_0_OUT_21_Q,
      O => N19
    );
  a3_clk_o_rstpot : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a3_temp(0),
      I1 => a3_temp(1),
      I2 => a3_clk_o_15,
      O => a3_clk_o_rstpot_359
    );
  a2_n0001_inv5_1 : LUT6
    generic map(
      INIT => X"AAA8AAA8AAA8A8A8"
    )
    port map (
      I0 => a2_temp_23_GND_7_o_add_0_OUT_23_Q,
      I1 => a2_temp_23_GND_7_o_add_0_OUT_21_Q,
      I2 => a2_temp_23_GND_7_o_add_0_OUT_22_Q,
      I3 => a2_n0001_inv1_250,
      I4 => a2_n0001_inv2_251,
      I5 => a2_n0001_inv4_253,
      O => a2_n0001_inv5_416
    );
  a1_n0001_inv4_1 : LUT6
    generic map(
      INIT => X"FE00F000FC00F000"
    )
    port map (
      I0 => a1_temp_22_GND_6_o_add_0_OUT_14_Q,
      I1 => a1_temp_22_GND_6_o_add_0_OUT_15_Q,
      I2 => a1_temp_22_GND_6_o_add_0_OUT_21_Q,
      I3 => a1_temp_22_GND_6_o_add_0_OUT_22_Q,
      I4 => a1_n0001_inv1_254,
      I5 => a1_n0001_inv3_256,
      O => a1_n0001_inv4_417
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_2
    );
  a1_Madd_temp_22_GND_6_o_add_0_OUT_lut_0_INV_0 : INV
    port map (
      I => a1_temp(0),
      O => a1_Madd_temp_22_GND_6_o_add_0_OUT_lut_0_Q
    );
  a2_Madd_temp_23_GND_7_o_add_0_OUT_lut_0_INV_0 : INV
    port map (
      I => a2_temp(0),
      O => a2_Madd_temp_23_GND_7_o_add_0_OUT_lut_0_Q
    );
  a1_Mcount_temp_lut_0_INV_0 : INV
    port map (
      I => a1_temp(0),
      O => a1_Mcount_temp_lut(0)
    );
  a2_Mcount_temp_lut_0_INV_0 : INV
    port map (
      I => a2_temp(0),
      O => a2_Mcount_temp_lut(0)
    );
  led2_3_INV_5_o1_INV_0 : INV
    port map (
      I => led2_3_9,
      O => led2_3_INV_5_o
    );
  led1_0_INV_4_o1_INV_0 : INV
    port map (
      I => led1_0_10,
      O => led1_0_INV_4_o
    );
  a3_Mcount_temp_xor_0_11_INV_0 : INV
    port map (
      I => a3_temp(0),
      O => Result_0_2
    );

end Structure;

