# 4×1 Multiplexer (4×1 MUX) using Verilog

## Overview
A **Multiplexer (MUX)** is a combinational digital circuit that selects **one input from multiple inputs** and forwards it to a **single output** based on the select lines.  
This project demonstrates the **design and verification of a 4×1 multiplexer using Verilog HDL**.

---

## Theory

### What is a Multiplexer?
A multiplexer allows multiple signals to share one output line. The input to be routed is selected using **select lines**.

A **4×1 Multiplexer** consists of:
- **4 data inputs**: \( I_0, I_1, I_2, I_3 \)
- **2 select lines**: \( S_1, S_0 \)
- **1 output**: \( Y \)

---

### Number of Select Lines
The number of select lines required for a multiplexer is:

**Number of Select Lines = log₂(N)**

where **N** is the number of input lines.

For a 4×1 multiplexer:

**log₂(4) = 2**

Hence, **two select lines** are required.
---

### Truth Table

| \(S_1\) | \(S_0\) | Output \(Y\) |
|--------|--------|--------------|
|   0    |   0    | \(I_0\)      |
|   0    |   1    | \(I_1\)      |
|   1    |   0    | \(I_2\)      |
|   1    |   1    | \(I_3\)      |

---

### Boolean Expression
The output of a 4×1 multiplexer is given by the Boolean expression:

**Y = I0·S1'·S0' + I1·S1'·S0 + I2·S1·S0' + I3·S1·S0**

This equation ensures that only one input is selected at a time based on the values of the select lines **S1** and **S0**.
---

### Working Principle
- The select lines \( S_1 \) and \( S_0 \) determine which input is connected to the output.
- Only **one input** is transferred to the output at any given time.
- The multiplexer is a **purely combinational circuit** and contains no memory elements.

---

## Verilog Implementation
The 4×1 multiplexer is implemented using **behavioral modeling** in Verilog HDL with a `case` statement.  
A **testbench** is included to verify the design by applying all possible combinations of select lines and inputs.

---

## Simulation
- All select line combinations are tested.
- The output \( Y \) changes correctly based on the selected input.
- Functional verification is performed using a Verilog simulator.

---

## Applications
- Data routing in digital circuits  
- ALU input selection  
- CPU datapath design  
- Communication systems  
- FPGA and VLSI projects  

---

## Features
- Simple and beginner-friendly design  
- Synthesizable Verilog code  
- Clear and structured implementation  
- Suitable for academic learning and interview preparation  

---

## Conclusion
This project provides a clear understanding of the **4×1 multiplexer**, covering both **theoretical concepts** and **practical Verilog implementation**.  
It serves as a fundamental building block for advanced digital and VLSI system designs.

---

## Author
**Akash K**  
Electronics & Communication Engineering  
Interests: VLSI, Digital Design, Verilog HDL
