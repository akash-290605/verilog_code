# 32-bit Binary Multiplier (Shift-and-Add Method)

## 📌 Overview

This project describes a **32-bit unsigned binary multiplier** based on the **Shift-and-Add algorithm**.

The system multiplies two 32-bit input numbers and produces a **64-bit product**.

Since:

32-bit × 32-bit = 64-bit result

The output width is defined as 64 bits to ensure accurate multiplication without overflow.

---

## 🧾 Module Specification

| Signal | Width  | Direction | Description     |
|--------|--------|----------|-----------------|
| a      | 32-bit | Input    | Multiplicand    |
| b      | 32-bit | Input    | Multiplier      |
| c      | 64-bit | Output   | Product         |

---

## ⚙️ Working Principle

The multiplication process follows the same logic as manual binary multiplication.

### Step-by-Step Process

1. Initialize the result to zero.
2. Examine each bit of the multiplier (from LSB to MSB).
3. If the current multiplier bit is `1`:
   - Shift the multiplicand left by the bit position.
   - Add the shifted value to the result.
4. Continue the process for all 32 bits.
5. The accumulated value becomes the final 64-bit product.

---

## 📐 Mathematical Representation

<img width="700" height="115" alt="image" src="https://github.com/user-attachments/assets/a56077f7-bee0-468c-a684-e70dd4fb7e4c" />


Where:

- `b[i]` → i-th bit of the multiplier  
- `a << i` → multiplicand shifted left by i positions  
- `Σ` → summation of all partial products  

---

## 🧮 Example 1

### Given

a = 3
b = 5


Binary Representation

a = 0011
b = 0101


### Step-by-Step Calculation

| i | b[i] | Shifted Value | Partial Result |
|---|------|--------------|---------------|
| 0 | 1 | 3 << 0 = 3  | 3  |
| 1 | 0 | —            | 3  |
| 2 | 1 | 3 << 2 = 12 | 15 |
| 3 | 0 | —            | 15 |

### Final Result

3 × 5 = 15


---

## 🧮 Example 2

### Given
a = 4
b = 6

Binary Representation
a = 0100
b = 0110


### Step-by-Step Calculation

| i | b[i] | Shifted Value | Partial Result |
|---|------|--------------|---------------|
| 0 | 0 | —            | 0  |
| 1 | 1 | 4 << 1 = 8  | 8  |
| 2 | 1 | 4 << 2 = 16 | 24 |
| 3 | 0 | —            | 24 |

### Final Result
4 × 6 = 24

---

## 🏗️ Hardware Interpretation

| Feature | Description |
|----------|------------|
| Logic Type | Combinational |
| Shift Operations | Up to 32 |
| Addition | Accumulates partial products |
| Output Width | 64-bit |
| Latency | Single evaluation cycle |
| Control Logic | Bitwise evaluation of multiplier |

---

## 🔍 Design Characteristics

- Fully combinational logic
- No clock required
- Uses shift and addition operations
- Produces accurate 64-bit product
- Mimics manual binary multiplication process

---

## ✅ FPGA Implementation (Using VIO + ILA Blocks)

This section explains how to implement and verify the multiplier on FPGA using **Vivado** with:

- **VIO (Virtual Input/Output)** for providing input values (`a`, `b`)
- **ILA (Integrated Logic Analyzer)** for observing output (`c`) and internal signals

### 🎯 Goal

- Change `a` and `b` in real-time using VIO
- Observe `c` (product) live in hardware using ILA

---

### 🧩 Top-Level FPGA Block Diagram

<img width="1040" height="335" alt="image" src="https://github.com/user-attachments/assets/d438769e-ccb0-4490-beef-3e5bab0acc7a" />


---

### 🛠️ Steps in Vivado (Hardware Verification)

#### 1) Create RTL Project
- Show Language: Verilog
- Add your multiplier module
- Select your FPGA board/part
   ####  Simulation Output

#### 2) Create a Top Module
Top module connects:
- VIO outputs → multiplier inputs
- multiplier output → ILA probe

#### 3) Add IP Cores
From **IP Catalog**, add:
- **VIO**
- **ILA**

#### 4) Configure VIO
Set:
- Output probes = 2
  - Probe0 width = 32  (for `a`)
  - Probe1 width = 32  (for `b`)
- (Optional) Add input probe to read `c` as well, but main monitoring is done by ILA.

#### 5) Configure ILA
Set:
- Number of probes = 1 (minimum)
  - Probe0 width = 64 (for `c`)
- (Optional) Add extra probes:
  - Probe1 = `a` (32-bit)
  - Probe2 = `b` (32-bit)

Recommended ILA Probes:

| Probe | Width | Signal |
|------:|------:|--------|
| 0     | 64    | c      |
| 1     | 32    | a (optional) |
| 2     | 32    | b (optional) |

#### 6) Connect Clock
Both VIO and ILA require a clock input.
- Connect FPGA system clock (e.g., 100 MHz board clock) to:
  - `vio.clk`
  - `ila.clk`

#### 7) Generate Bitstream
- Run Synthesis
- Run Implementation
- Generate Bitstream

#### 8) Hardware Testing
- Open **Hardware Manager**
- Program the FPGA
- Open the VIO Dashboard
- Enter values for `a` and `b`
- Trigger ILA capture to observe `c`

---

### ✅ Hardware Test Procedure (Example)

Set in VIO:

| a | b | Expected c |
|---:|---:|----------:|
| 3 | 5 | 15 |
| 4 | 6 | 24 |
| 10 | 20 | 200 |
| 100 | 7 | 700 |

Use ILA to confirm that `c` matches the expected product.

---
### 📌 Output

- Output obtained using simulation
<img width="241" height="232" alt="image" src="https://github.com/user-attachments/assets/28d2651d-200b-4815-969a-488555ad2a84" />
<img width="1582" height="262" alt="image" src="https://github.com/user-attachments/assets/5c67c69c-dcc0-4b3b-a64c-c1e1e64525a6" />

- Output obtained using FPGA
<img width="1859" height="932" alt="image" src="https://github.com/user-attachments/assets/d7d9cfe5-389e-4d4e-90c5-4fea43a45a3a" />

  ---

### 📝 Notes

- VIO allows changing inputs without physical switches.
- ILA allows viewing signals like a built-in logic analyzer.
- The multiplier is combinational, so output `c` updates immediately after input changes (clock is only for VIO/ILA operation).

---

## 📌 Conclusion

The Shift-and-Add multiplier evaluates each bit of the multiplier, shifts the multiplicand accordingly, and accumulates all partial products to produce the final 64-bit result.

Using **VIO** and **ILA** in Vivado, the design can be verified directly on FPGA by applying inputs in real-time and observing the output product through hardware debugging tools.

