#!/bin/zsh
source ~/.zshrc

if [[ $# -lt 2 ]]; then
    echo "Missing required arguments"
    exit 1
fi

if [[ "$1" == "-a" ]]; then
    cd asm_examples/
    cp "$2" ../hardware_description/prog.asm
elif [[ "$1" == "-b" ]]; then
    cd bytecode_examples/
    VMTRANSLATOR "$2"
    cp "$2.asm" ../hardware_description/prog.asm
elif [[ "$1" == "-j" ]]; then
    cd jack_examples/
    VMTRANSLATOR "$2"
    cp "$2.asm" ../hardware_description/prog.asm
fi

cd ../hardware_description
HACKASSEMBLER prog.asm
make prog.bin