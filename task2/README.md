## Counter Module (`counter`)

- Increments an address value based on an input `incr` value.
- Resets when the rreset signal (`rst`) is high and increments when enabled (`en` is high).

## ROM Module (`rom`)

- Stores the sine wave data, readsvalues from a file (`sinerom.mem`).
- Each clock cycle, it outputs two data values, `dout1` and `dout2`, based on two address inputs (`addr` and `addr2`).
- `addr` comes from the main counter, and `addr2` is offset by a given value.

## Sine Wave Generator Module (`sinegen`)

- Combinecounter and ROM to produce2 sine wave outputs.
- Uses the address from the counter and an offset address (`addr2`) to produce `dout1` and `dout2` as sine wave outputs.

## Testbench Summary

The testbench:

- Simulation runs for `MAX_SIM_CYC`.
- Inputs (`clk`, `rst`, `en`, and `incr`) initialized and updated; the offset value is dynamically read from vbuddy.
- ROM output signals `dout1` and `dout2` are ploted in real time, simulating 2 sine wave output.
