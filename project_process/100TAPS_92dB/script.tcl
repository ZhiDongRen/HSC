############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_process
set_top fir_fixed
add_files fir_fixed.cpp
add_files fir_filter.h
add_files fir_double.cpp
add_files -tb tb_fir_fixed.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "100TAPS_92dB"
set_part {xc7z007s-clg225-1}
create_clock -period 10 -name default
source "./project_process/100TAPS_92dB/directives.tcl"
csim_design
csynth_design
cosim_design -O -trace_level all -rtl vhdl -tool xsim
export_design -rtl verilog -format ip_catalog
