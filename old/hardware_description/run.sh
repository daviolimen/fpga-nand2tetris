#!/bin/zsh
source ~/.zshrc

cd /home/davi/repos/fpga-nand2tetris/

if [[ $# -lt 2 ]]; then
    echo "Missing required arguments"
    exit 1
fi

if [[ "$1" == "-a" ]]; then
    cd /home/davi/repos/fpga-nand2tetris/asm_examples/
    cp "$2" /home/davi/repos/fpga-nand2tetris/hardware_description/prog.asm
elif [[ "$1" == "-b" ]]; then
    cd /home/davi/repos/fpga-nand2tetris/bytecode_examples/
    VMTRANSLATOR "$2"
    cp "$2.asm" /home/davi/repos/fpga-nand2tetris/hardware_description/prog.asm
fi

cd /home/davi/repos/fpga-nand2tetris/hardware_description/
HACKASSEMBLER prog.asm
python hackToHex.py
apio clean
apio build
apio upload