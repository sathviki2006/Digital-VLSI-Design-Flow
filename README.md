# Digital VLSI Design Flow & STA Analysis

Implementation of digital VLSI design flow using AMD Xilinx Vivado.

## Project Structure & Deliverables
- **Task 1: RTL Design & Functional Simulation (`alu_8bit.v`, `tb_alu_8bit.v`)**
  - Synthesizable Verilog 8-bit ALU handling arithmetic, bitwise logic, and shift operations.
  - Comprehensive testbench with directed and random test cases verified in behavioral simulation.
- **Task 3: Static Timing Analysis & Timing Closure (`constraints.xdc`, `alu_8bit_pipelined.v`)**
  - Setup and hold timing analysis on synthesized and implemented netlists at 100 MHz target frequency.
  - Microarchitectural pipelining applied to eliminate negative slack and achieve complete timing closure.
- **Task 4: DFT & Basic Physical Verification (`alu_8bit_dft.v`)**
  - Internal observability implemented using `(* mark_debug = "true" *)` attributes preserving debug nets.
  - Design Rule Checking (DRC) execution and I/O pin planning analysis.

## Tools & Target Architecture
- **EDA Suite:** AMD Vivado Design Suite 2026.1
- **Target FPGA:** Kintex-7 (`xc7vx485tffg1157-1`)
- **HDL/Constraints:** Verilog HDL, XDC Constraints
