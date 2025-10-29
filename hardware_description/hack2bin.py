import sys

if len(sys.argv) != 3:
    print("Expected 2 arguments: input.hack and output.bin")
    sys.exit(1)

infile, outfile = sys.argv[1], sys.argv[2]

with open(infile, 'r') as fin, open(outfile, 'wb') as fout:
        for line in fin:
              line = line.strip()
              if len(line) != 16: continue
              word = int(line, 2)
              # Write as 16-bit big-endian (2 bytes per instruction)
              fout.write(word.to_bytes(2, byteorder="big"))
