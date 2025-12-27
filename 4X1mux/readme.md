# 🔀 4×1 Multiplexer (4×1 MUX) using Verilog

---

## 📌 Overview
A **Multiplexer (MUX)** is a **combinational digital circuit** that selects **one input from multiple inputs** and forwards it to a **single output** based on select lines.  
This project demonstrates the **design and verification of a 4×1 multiplexer using Verilog HDL** 🧠💻.

---

## 📘 Theory

### ❓ What is a Multiplexer?
A multiplexer allows multiple signals to share one output line.  
The input to be routed is selected using **select lines**.

### 🧩 4×1 Multiplexer Components
A **4×1 MUX** consists of:
- 🔢 **4 Data Inputs**: `I0, I1, I2, I3`
- 🎚️ **2 Select Lines**: `S1, S0`
- 📤 **1 Output**: `Y`

---

### 🧮 Number of Select Lines
The number of select lines required for a multiplexer is:

> **Select Lines = log₂(N)**

Where **N** is the number of inputs.

For a **4×1 MUX**:

> 🔹 **log₂(4) = 2**

✔️ Hence, **2 select lines** are required.

---

### 📊 Truth Table

| 🔹 S1 | 🔹 S0 | 📤 Output Y |
|-----|-----|------------|
| 0 | 0 | I0 |
| 0 | 1 | I1 |
| 1 | 0 | I2 |
| 1 | 1 | I3 |

---

### 🧠 Boolean Expression
The output of a 4×1 multiplexer is given by:

> 🟦 **Y = I0·S1'·S0' + I1·S1'·S0 + I2·S1·S0' + I3·S1·S0**

This equation ensures that **only one input** is selected at a time based on the values of select lines `S1` and `S0`.

---

### ⚙️ Working Principle
- 🎯 Select lines `S1` and `S0` determine the active input  
- 🔁 Only **one input** is transferred to the output at a time  
- 🧩 The multiplexer is a **purely combinational circuit** (no memory elements)

---

## 💻 Verilog Implementation
- Implemented using **behavioral modeling**
- Uses a `case` statement for input selection
- 🧪 Includes a **testbench** for verification
- ✔️ Fully **synthesizable Verilog code**

---

## 🧪 Simulation
- All select line combinations are tested
- 📈 Output `Y` changes correctly
- 🛠️ Functional verification done using a Verilog simulator

---

## 🚀 Applications
- 🔀 Data routing in digital circuits  
- ➗ ALU input selection  
- 🧠 CPU datapath design  
- 📡 Communication systems  
- 🧩 FPGA and VLSI projects  

---

## ⭐ Features
- 🎓 Beginner-friendly design  
- 🧠 Easy-to-understand logic  
- ⚙️ Synthesizable Verilog code  
- 📚 Ideal for academic learning and interviews  

---

## ✅ Conclusion
This project provides a **clear understanding of a 4×1 Multiplexer**, covering both **theoretical concepts** and **practical Verilog implementation**.  
It serves as a **fundamental building block** for advanced **digital and VLSI system designs** 🚀.

---

## 👤 Author
**Akash K**  
🎓 Electronics & Communication Engineering  
💡 Interests: **VLSI | Digital Design | Verilog HDL**
