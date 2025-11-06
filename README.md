# FPGA Nand2Tetris

An FPGA-based implementation of the **Nand2Tetris** project using the **Lattice iCEstick**.  
This project brings the Nand2Tetris computer architecture to real hardware, allowing you to run any program, as examples, I included an 8x8 led matrix scrolling text and pong game.

---

## Overview

This project recreates the Nand2Tetris Computer with some small adaptations.
It includes:

- Full hardware implementation of the Nand2Tetris computer in Verilog.
- Implementations of the Assembler and VMTranslator.
- Example applications and demos.
- Integration with 8x8 led matrix and push-buttons.

---

## Specifications

- This implementation only has 8kB of RAM (iCEstick limit), that is 4K registers of 16-bit, instead of the 16K registers from the official HackRAM
- The CPU is not 1-cycle, because the instructions are extracted from the SPI Flash, so the CPU takes approximately 30 cycles per instruction (FETCH, WAIT_INSTR, EXECUTE, WAIT_DATA)
- The builtin iCEstick leds are mapped to the RAM address 16384
- The push-buttons are mapped to the RAM address 16385 (they should be connected to PMOD ports 1, 2, 3 and 4, where 1 is the reset button)
- The LED Matrix should be connected on the PMOD ports 12, 11, 10, 9, 8 and to write to it you just need to write to RAM address 16386 

---

## Demonstrations

### Examples

Scrolling Text:

![Scrolling Text Gif](assets/scrolling_text.gif)

Pong Game:

![Pong Game Gif](assets/pong_game.gif)

---

## Hardware Setup

- **FPGA:** Lattice iCEstick (iCE40HX1K)  
- **External I/O:** 8x8 Led Matrix with MAX7219 driver and Push-buttons
- **Tools:** `yosys`, `nextpnr`, `iceprog`, `iverilog`, etc.

---

## Using the project

1. **Clone this repository:**

   ```bash
   git clone https://github.com/daviolimen/fpga-nand2tetris.git
   cd fpga-nand2tetris
   ```

2. **Put the binary of the program in prog.bin**

   ```bash
   ./copyCodeToProg.sh -a [NAME_OF_ASM_EXAMPLE]
   ```

   or

   ```bash
   ./copyCodeToProg.sh -b [NAME_OF_BYTECODE_EXAMPLE]
   ```

   or

   ```bash
   ./copyCodeToProg.sh -j [NAME_OF_JACK_EXAMPLE]
   ```

3. **Upload the design and instructions to the FPGA**

   ```bash
    cd hardware_description
    make ICESTICK
    make ICESTICK.flash_prog
