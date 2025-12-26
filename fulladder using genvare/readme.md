# Full Adder using `genvar` (Verilog)

This repository contains a Verilog HDL implementation of a **Full Adder** using the
`genvar` and `generate` constructs. The design is written in a clear and
synthesizable style, suitable for VLSI, FPGA, and academic projects.

---

## 📌 Overview

A **Full Adder** is a combinational circuit that adds three 1-bit inputs:   

- A
- B
- Cin (Carry-in)

and produces two outputs:

- Sum
- Cout (Carry-out)

The `genvar` construct is used to demonstrate scalable and reusable hardware design
techniques.

---

## 🧠 Logic Equations

**Sum** = `A ⊕ B ⊕ Cin`  
**Cout** = `(A · B) + (A · Cin) + (B · Cin)`

---

## ✨ Features

- Written in Verilog HDL
- Uses `genvar` and `generate`
- Fully synthesizable
- Easy to extend to multi-bit adders
- Beginner-friendly and well structured

---

## 🧪 Simulation

This design can be simulated using:

- ModelSim
- QuestaSim
- Vivado Simulator
- Icarus Verilog

Verify the outputs by applying all combinations of inputs (`A`, `B`, `Cin`) and
observing `Sum` and `Cout`.

---

## 📊 Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

---

## 🎯 Applications

- Ripple Carry Adders
- Arithmetic Logic Units (ALU)
- Digital system design
- FPGA and ASIC learning projects

---

## 👤 Author

**Akash K**  
VLSI / Digital Design Enthusiast

----------------------------------------------------------------------------------------------------------------------------------------------

