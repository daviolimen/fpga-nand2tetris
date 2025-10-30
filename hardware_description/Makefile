# this Makefile was adapted from the https://github.com/BrunoLevy/learn-fpga/blob/master/FemtoRV/RTL/DEVICES/MappedSPIFlash.v repository, check it out!

PROJECTNAME=Computer
PCF_FILE=ports.pcf
VERILOGS=Computer.v
YOSYS_ICESTICK_OPT=-DICE_STICK -q -p "synth_ice40 -relut -top $(PROJECTNAME) -json $(PROJECTNAME).json"
NEXTPNR_ICESTICK_OPT=--force --json $(PROJECTNAME).json --pcf $(PCF_FILE) --asc $(PROJECTNAME).asc \
                     --freq 12 --hx1k --package tq144 --opt-timing


#######################################################################################################################

ICESTICK: ICESTICK.synth ICESTICK.prog

ICESTICK.synth: 
	yosys $(YOSYS_ICESTICK_OPT) $(VERILOGS)
	nextpnr-ice40 $(NEXTPNR_ICESTICK_OPT)
	icetime -p $(PCF_FILE) -P tq144 -r $(PROJECTNAME).timings -d hx1k -t $(PROJECTNAME).asc 
	icepack -s $(PROJECTNAME).asc $(PROJECTNAME).bin

ICESTICK.show: 
	yosys $(YOSYS_ICESTICK_OPT) $(VERILOGS)
	nextpnr-ice40 $(NEXTPNR_ICESTICK_OPT) --gui

ICESTICK.prog:
	iceprog $(PROJECTNAME).bin

ICESTICK.lint:
	verilator -DICE_STICK -DBENCH --lint-only --top-module $(PROJECTNAME) \
         -IRTL -IRTL/PROCESSOR -IRTL/DEVICES -IRTL/PLL $(VERILOGS)

# Convert .hack assembly to binary format for SPI Flash
prog.bin: prog.hack
	python3 hack2bin.py prog.hack prog.bin

# Flash the program to SPI Flash at offset 0x820000 (after FPGA bitstream)
ICESTICK.flash_prog: prog.bin
	iceprog -o 128k prog.bin

# Complete workflow: synthesize, program FPGA, and flash program
ICESTICK.all: ICESTICK.synth ICESTICK.prog ICESTICK.flash_prog

#########################################################################################################Computer######