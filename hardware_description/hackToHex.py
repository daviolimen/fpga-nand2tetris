with open("prog.hack") as f_in, open("program.hex", "w") as f_out:
    for line in f_in:
        instr = line.strip()
        if instr:
            f_out.write(f"{int(instr, 2):04x}\n")
