# JK Flip-Flop using Verilog

## Overview
This project implements a JK Flip-Flop using Verilog HDL. A JK Flip-Flop is a sequential logic circuit that eliminates the invalid state of the SR flip-flop.

## Truth Table

| J | K | Q(next) | Operation |
|---|---|---------|-----------|
| 0 | 0 | Q       | No Change |
| 0 | 1 | 0       | Reset |
| 1 | 0 | 1       | Set |
| 1 | 1 | Q'      | Toggle |

## Files

- `jk_flipflop.v` - Verilog implementation
- `jk_flipflop_tb.v` - Testbench
- `simulation_results.png` - Output waveform
- `README.md` - Project documentation

## Module Description

### Inputs
- `clk` : Clock signal
- `reset` : Asynchronous reset
- `J` : J input
- `K` : K input

### Output
- `Q` : Flip-Flop output

## Simulation

The testbench verifies:
- Reset operation
- No Change
- Set
- Reset
- Toggle

## Expected Output

During simulation:

```
Reset → Q = 0
J=0 K=0 → Q remains same
J=1 K=0 → Q = 1
J=0 K=1 → Q = 0
J=1 K=1 → Q toggles
```

## Tools Used

- Verilog HDL
- ModelSim / Vivado / Icarus Verilog
- GTKWave (optional)

## Author

Your Name