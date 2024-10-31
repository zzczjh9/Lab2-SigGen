#!/bin/sh

# Attach USB devices
~/Documents/iac/lab0-devtools/tools/attach_usb.sh

# Cleanup previous build files
rm -rf obj_dir
rm -f sinegen.vcd

# Run Verilator to translate Verilog into C++, including C++ testbench
# Add `rom.sv` and `counter.sv` in the Verilator command along with `singer.sv`
verilator -Wall --cc --trace sinegen.sv rom.sv counter.sv --exe sinegen_tb.cpp --top-module sinegen

# Build C++ project via make automatically generated by Verilator
make -j -C obj_dir/ -f Vsinegen.mk Vsinegen

# Run the executable simulation file
obj_dir/Vsinegen
