#!/bin/sh

ghdl -a $1.vhdl
ghdl -e $1

# run, generate and open waveform
# if the filename contains `tb` (testbench)
case $1 in
    *tb*)
    ./$1 --vcd=$1.vcd
    gtkwave $1.vcd
    ;;
esac
