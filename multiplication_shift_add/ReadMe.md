# 32-bit Binary Multiplier (Shift-and-Add Method)

## 1. 📌 Overview

This project describes a **32-bit unsigned binary multiplier** based on the **Shift-and-Add algorithm**.

It multiplies two 32-bit input numbers and produces a **64-bit product**.

Since:

**32-bit × 32-bit = 64-bit result**

The output width is defined as **64 bits** to ensure accurate multiplication without overflow.

---

## 2. 🧾 Module Specification

**Table 2.1 — I/O Signals**

| Signal | Width  | Direction | Description     |
|--------|--------|----------|-----------------|
| `a`    | 32-bit | Input    | Multiplicand    |
| `b`    | 32-bit | Input    | Multiplier      |
| `c`    | 64-bit | Output   | Product         |

---

## 3. ⚙️ Working Principle

The multiplication process follows the same logic as manual binary multiplication.

### 3.1 Step-by-Step Process

1. Initialize the result to zero.
2. Examine each bit of the multiplier from LSB to MSB.
3. If the current multiplier bit is `1`:
   - Shift the multiplicand left by the bit position.
   - Add the shifted value to the result.
4. Repeat for all 32 bits.
5. The accumulated value is the final 64-bit product.

---

## 4. 📐 Mathematical Model

### 4.1 Main Equation

**Equation (4.1): Product computation**

𝑐=∑128_(𝑖=0)^31▒𝑏 [𝑖]×(𝑎<<𝑖)<img width="700" height="115" alt="image" src="https://github.com/user-attachments/assets/15f3b6a2-5448-4af0-9d11-813106032884" />


Where:

- \( b[i] \) → i-th bit of the multiplier  
- \( (a \ll i) \) → multiplicand shifted left by i positions  
- \( \sum \) → summation of all partial products  

### 4.2 Bit Contribution Rule

**Equation (4.2): Partial product**

\[
PP_i =
\begin{cases}
(a \ll i), & \text{if } b[i]=1 \\
0, & \text{if } b[i]=0
\end{cases}
\]

### 4.3 Accumulation Rule

**Equation (4.3): Final product as sum of partial products**

\[
c = \sum_{i=0}^{31} PP_i
\]

---

## 5. 🧮 Example 1

### 5.1 Given

\[
a = 3,\quad b = 5
\]

Binary Representation:

- \( a = 0011_2 \)
- \( b = 0101_2 \)

### 5.2 Step-by-Step Calculation

**Table 5.1 — Partial products**

| i | b[i] | Shifted Value     | Partial Result |
|---|------|-------------------|---------------|
| 0 | 1    | \(3 \ll 0 = 3\)    | 3             |
| 1 | 0    | 0                 | 3             |
| 2 | 1    | \(3 \ll 2 = 12\)   | 15            |
| 3 | 0    | 0                 | 15            |

### 5.3 Final Result


3 * 5 = 15


---

## 6. 🧮 Example 2

### 6.1 Given

\[
a = 4,\quad b = 6
\]

Binary Representation:

- \( a = 0100_2 \)
- \( b = 0110_2 \)

### 6.2 Step-by-Step Calculation

**Table 6.1 — Partial products**

| i | b[i] | Shifted Value     | Partial Result |
|---|------|-------------------|---------------|
| 0 | 0    | 0                 | 0             |
| 1 | 1    | \(4 \ll 1 = 8\)    | 8             |
| 2 | 1    | \(4 \ll 2 = 16\)   | 24            |
| 3 | 0    | 0                 | 24            |

### 6.3 Final Result

\[
4 \times 6 = 24
\]

---

## 7. 🏗️ Hardware Interpretation

**Table 7.1 — Design features**

| Feature | Description |
|--------|------------|
| Logic Type | Combinational |
| Shift Operations | Up to 32 |
| Additions | Accumulates partial products |
| Output Width | 64-bit |
| Latency | Single evaluation cycle |
| Control Logic | Bitwise evaluation of multiplier |

---

## 8. 🔍 Design Characteristics

1. Fully combinational logic
2. No clock required
3. Uses shift and addition operations
4. Produces accurate 64-bit product
5. Demonstrates behavioral modeling approach
6. Mimics manual binary multiplication process

---

## 9. 📊 Advantages

1. Simple to understand
2. Easy to simulate and verify
3. Clear demonstration of binary arithmetic
4. Suitable for educational purposes

---

## 10. 📌 Conclusion

The Shift-and-Add multiplier evaluates each bit of the multiplier, shifts the multiplicand accordingly, and accumulates all partial products to produce the final 64-bit result.

This design demonstrates how multiplication can be implemented using basic digital arithmetic operations.

---

