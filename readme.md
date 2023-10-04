
## About The Project

This project is a soft-core processor written in Verilog. It is fully-fledged with on-board memory, branching (including conditional branching), and 

The project utilizes Verilog for programming the DE1-SOC's FPGA using Intel Quartus Prime,  ARMv7-style assembly, and an assembler script provided by Professor Steven Brown and other contributors.

I/O functionality is also available: a seven-segment display module and an initialization module of SW0-9 + KEY0-3 are instantiated in separate Verilog files. These are also included in this project.

The timing sequences for this project have been verified using ModelSim.

## How to run this Project
Given that you have Intel Quartus Prime, you can instantiate this processor by letting top.v as the top-level module. Ensure that you have an appropriate .qsf file for your device.

Use the sbasm.py script to output to a .mif file to program the soft-core processor with assembly instructions (.s files).
