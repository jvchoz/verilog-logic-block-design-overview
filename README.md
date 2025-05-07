# Logic Block Design in Verilog

This project implements a collection of fundamental digital logic blocks in Verilog.

The modules include both arithmetic and logic components, each tested individually via simulation to verify correctness.

---

## Features

### Inputs & Outputs (by module):

#### Half Adder
- **Inputs**: `A` (1-bit), `B` (1-bit)  
- **Outputs**: `Sum`, `Cout`  
  Logic: `Sum = A ^ B`, `Cout = A & B`

#### 1-bit Full Adder
- **Inputs**: `A`, `B`, `Cin` (1-bit each)  
- **Outputs**: `Sum`, `Cout`  
  Logic: `Sum = A ^ B ^ Cin`,  
  `Cout = (A & B) | (A & Cin) | (B & Cin)`

#### 4-bit Full Adder
- **Inputs**: `A[3:0]`, `B[3:0]`, `Cin`  
- **Outputs**: `Sum[3:0]`, `Cout`  
  Constructed by chaining four 1-bit full adders.

#### 2:1 Multiplexer
- **Inputs**: `D1`, `D2`, `S` (1-bit each)  
- **Output**: `Y = (~S & D1) | (S & D2)`

#### 4:1 Multiplexer
- **Inputs**: `D1`, `D2`, `D3`, `D4` (1-bit each), `S[1:0]`  
- **Output**:  
  `Y =` one of the inputs based on the value of selector `S`

---

## Simulation & Testing

Each module was paired with its own testbench to verify functionality using Vivado.

Waveforms demonstrate correct logical behavior across all relevant input combinations:
- Adders were tested for carry propagation and overflow.
- Multiplexers were tested against all selector values.

---

## Files Included

- `ha.v`, `ha_tb.v`
- `fa.v`, `fa_tb.v`
- `fa4.v`, `fa4_tb.v`
- `mux21.v`, `mux21_tb.v`
- `mux41.v`, `mux41_tb.v`
- `EECS31L_LabReport1_LogicBlockDesign.pdf`

---

## Tools Used

- Vivado Design Suite
- ModelSim (for simulation)

---

## Author

James Ong  
---

## Academic Honesty Notice

This project was created for coursework in EECS 31L at UC Irvine.  
It is shared publicly for educational and portfolio purposes only.  
**Do not reuse or submit this code for academic credit.**

---

## License

This project is licensed under the [Creative Commons BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/) license.

> You may view and share this work with attribution, but you may not reuse it for academic credit, modify it, or use it commercially.
