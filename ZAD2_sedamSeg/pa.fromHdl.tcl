
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ZAD2_sedamSeg -dir "/home/nikola/ZAD2_sedamSeg/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "sklop.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {freqDivGen.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {sklop.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top sklop $srcset
add_files [list {sklop.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
