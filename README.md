Mayur M Vernekar
Subject : SoC design lab
Roll no. 152502014

Overview
--------
This repository contains lab work and resources for the SoC Design Lab course. Each LAB_* folder covers key topics in Zynq-based system design on the ZedBoard platform.

LAB_1
-----
Introduction to HLS and Vivado design flow. Covers basic combinational circuit implementation and synthesis using Xilinx Vivado tools on the ZedBoard platform.

LAB_2
-----
Zynq-7000 SoC architecture and high-level synthesis (HLS) fundamentals. Provides background knowledge on Zynq platform and HLS design concepts.

LAB_3
-----
FIR (Finite Impulse Response) filter design and optimization using HLS. Explores multiple implementation variants and their performance characteristics.

LAB_4
-----
Processing System (PS) and Programmable Logic (PL) communication using memory-mapped I/O. Implements LED control via AXI interfaces on the Zynq platform.

LAB_5
-----
FIR filter implementation on Zynq SoC using AXI-DMA for data transfer. Demonstrates full system integration with HLS IP and Vitis software design.

matmul
------
Matrix multiplication implementations with various optimization techniques. Includes raw implementation, stream-based optimization, and unoptimized versions for performance comparison.

Files:
- mat_mul_raw.cpp: Basic matrix multiplication implementation
- mat_mul_stream.cpp: Stream-optimized matrix multiplication using HLS streams
- matmul_unoptimized.cpp: Unoptimized baseline implementation for comparison

FFT
---
Fast Fourier Transform (FFT) implementation for 8-point DIT (Decimation-In-Time) FFT using HLS. Includes complete HLS synthesis flow with Verilog and VHDL generation for hardware implementation on FPGA.

Files:
- fft8.cpp: Main FFT implementation
- fft8.h: Header file with function declarations
- fft8_tb.cpp: Testbench for FFT verification

Insertion_sort
--------------
Sorting algorithm implementations using insertion sort with two different AXI interface versions. Compares Memory AXI and Stream AXI interface patterns for data exchange.

Files:
- Insertion_sort.cpp: Insertion sort with Memory AXI interface
- Insertion_sort_maxi.cpp: Insertion sort with Stream AXI interface
- tb_Insertion_sort.cpp: Testbench for Memory AXI version
- tb_Insertion_sort_maxi.cpp: Testbench for Stream AXI version
