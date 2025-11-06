// bootstrap code
@256
D=A
@SP
M=D
// call Sys.init 0
@Sys.init$ret1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(Sys.init$ret1)
// function Main.main 0
(Main.main)
// label Main.main.Main_0
(Main.main.Main_0)
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// neg command
@SP
A=M-1
M=-M
// not command
@SP
A=M-1
M=!M
// if-gotoMain.main.Main_1
@SP
AM=M-1
D=M
@Main.main.Main_1
D;JNE
// push constant 16385
@16385
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Memory.peek 1
@Memory.peek$ret2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.peek
0;JMP
(Memory.peek$ret2)
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// and command
@SP
AM=M-1
D=M
A=A-1
D=D&M
M=D
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_0
D;JEQ
@SP
A=M-1
M=0
(__COMPARISON_LABEL_0)
// not command
@SP
A=M-1
M=!M
// if-gotoMain.main.Main_3
@SP
AM=M-1
D=M
@Main.main.Main_3
D;JNE
// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Memory.poke 2
@Memory.poke$ret3
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.poke
0;JMP
(Memory.poke$ret3)
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto Main.main.Main_2
@Main.main.Main_2
0;JMP
// label Main.main.Main_3
(Main.main.Main_3)
// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Memory.poke 2
@Memory.poke$ret4
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@7
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.poke
0;JMP
(Memory.poke$ret4)
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label Main.main.Main_2
(Main.main.Main_2)
// goto Main.main.Main_0
@Main.main.Main_0
0;JMP
// label Main.main.Main_1
(Main.main.Main_1)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@LCL
D=M
@13
M=D
@5
A=D-A
D=M
@14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A
@SP
M=D+1
@13
AM=M-1
D=M
@THAT
M=D
@13
AM=M-1
D=M
@THIS
M=D
@13
AM=M-1
D=M
@ARG
M=D
@13
AM=M-1
D=M
@LCL
M=D
@14
A=M
0;JMP
// function Memory.init 0
(Memory.init)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop static 0
@Memory.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 14334
@14334
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 2049
@2049
D=A
@SP
A=M
M=D
@SP
M=M+1
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 2050
@2050
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@LCL
D=M
@13
M=D
@5
A=D-A
D=M
@14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A
@SP
M=D+1
@13
AM=M-1
D=M
@THAT
M=D
@13
AM=M-1
D=M
@THIS
M=D
@13
AM=M-1
D=M
@ARG
M=D
@13
AM=M-1
D=M
@LCL
M=D
@14
A=M
0;JMP
// function Memory.peek 0
(Memory.peek)
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// return
@LCL
D=M
@13
M=D
@5
A=D-A
D=M
@14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A
@SP
M=D+1
@13
AM=M-1
D=M
@THAT
M=D
@13
AM=M-1
D=M
@THIS
M=D
@13
AM=M-1
D=M
@ARG
M=D
@13
AM=M-1
D=M
@LCL
M=D
@14
A=M
0;JMP
// function Memory.poke 0
(Memory.poke)
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push argument 1
@ARG
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@LCL
D=M
@13
M=D
@5
A=D-A
D=M
@14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A
@SP
M=D+1
@13
AM=M-1
D=M
@THAT
M=D
@13
AM=M-1
D=M
@THIS
M=D
@13
AM=M-1
D=M
@ARG
M=D
@13
AM=M-1
D=M
@LCL
M=D
@14
A=M
0;JMP
// function Memory.alloc 2
(Memory.alloc)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_1
D;JLT
@SP
A=M-1
M=0
(__COMPARISON_LABEL_1)
// if-gotoMemory.alloc.IF_TRUE0
@SP
AM=M-1
D=M
@Memory.alloc.IF_TRUE0
D;JNE
// goto Memory.alloc.IF_FALSE0
@Memory.alloc.IF_FALSE0
0;JMP
// label Memory.alloc.IF_TRUE0
(Memory.alloc.IF_TRUE0)
// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Sys.error 1
@Sys.error$ret5
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.error
0;JMP
(Sys.error$ret5)
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label Memory.alloc.IF_FALSE0
(Memory.alloc.IF_FALSE0)
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_2
D;JEQ
@SP
A=M-1
M=0
(__COMPARISON_LABEL_2)
// if-gotoMemory.alloc.IF_TRUE1
@SP
AM=M-1
D=M
@Memory.alloc.IF_TRUE1
D;JNE
// goto Memory.alloc.IF_FALSE1
@Memory.alloc.IF_FALSE1
0;JMP
// label Memory.alloc.IF_TRUE1
(Memory.alloc.IF_TRUE1)
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop argument 0
@ARG
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label Memory.alloc.IF_FALSE1
(Memory.alloc.IF_FALSE1)
// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label Memory.alloc.WHILE_EXP0
(Memory.alloc.WHILE_EXP0)
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 16383
@16383
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_3
D;JLT
@SP
A=M-1
M=0
(__COMPARISON_LABEL_3)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// lt command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_4
D;JLT
@SP
A=M-1
M=0
(__COMPARISON_LABEL_4)
// and command
@SP
AM=M-1
D=M
A=A-1
D=D&M
M=D
// not command
@SP
A=M-1
M=!M
// if-gotoMemory.alloc.WHILE_END0
@SP
AM=M-1
D=M
@Memory.alloc.WHILE_END0
D;JNE
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_5
D;JEQ
@SP
A=M-1
M=0
(__COMPARISON_LABEL_5)
// push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 16382
@16382
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_6
D;JGT
@SP
A=M-1
M=0
(__COMPARISON_LABEL_6)
// or command
@SP
AM=M-1
D=M
A=A-1
D=D|M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_7
D;JEQ
@SP
A=M-1
M=0
(__COMPARISON_LABEL_7)
// or command
@SP
AM=M-1
D=M
A=A-1
D=D|M
M=D
// if-gotoMemory.alloc.IF_TRUE2
@SP
AM=M-1
D=M
@Memory.alloc.IF_TRUE2
D;JNE
// goto Memory.alloc.IF_FALSE2
@Memory.alloc.IF_FALSE2
0;JMP
// label Memory.alloc.IF_TRUE2
(Memory.alloc.IF_TRUE2)
// push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto Memory.alloc.IF_END2
@Memory.alloc.IF_END2
0;JMP
// label Memory.alloc.IF_FALSE2
(Memory.alloc.IF_FALSE2)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// sub command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// eq command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_8
D;JEQ
@SP
A=M-1
M=0
(__COMPARISON_LABEL_8)
// if-gotoMemory.alloc.IF_TRUE3
@SP
AM=M-1
D=M
@Memory.alloc.IF_TRUE3
D;JNE
// goto Memory.alloc.IF_FALSE3
@Memory.alloc.IF_FALSE3
0;JMP
// label Memory.alloc.IF_TRUE3
(Memory.alloc.IF_TRUE3)
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto Memory.alloc.IF_END3
@Memory.alloc.IF_END3
0;JMP
// label Memory.alloc.IF_FALSE3
(Memory.alloc.IF_FALSE3)
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label Memory.alloc.IF_END3
(Memory.alloc.IF_END3)
// label Memory.alloc.IF_END2
(Memory.alloc.IF_END2)
// goto Memory.alloc.WHILE_EXP0
@Memory.alloc.WHILE_EXP0
0;JMP
// label Memory.alloc.WHILE_END0
(Memory.alloc.WHILE_END0)
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 16379
@16379
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_9
D;JGT
@SP
A=M-1
M=0
(__COMPARISON_LABEL_9)
// if-gotoMemory.alloc.IF_TRUE4
@SP
AM=M-1
D=M
@Memory.alloc.IF_TRUE4
D;JNE
// goto Memory.alloc.IF_FALSE4
@Memory.alloc.IF_FALSE4
0;JMP
// label Memory.alloc.IF_TRUE4
(Memory.alloc.IF_TRUE4)
// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Sys.error 1
@Sys.error$ret6
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.error
0;JMP
(Sys.error$ret6)
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label Memory.alloc.IF_FALSE4
(Memory.alloc.IF_FALSE4)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// gt command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_10
D;JGT
@SP
A=M-1
M=0
(__COMPARISON_LABEL_10)
// if-gotoMemory.alloc.IF_TRUE5
@SP
AM=M-1
D=M
@Memory.alloc.IF_TRUE5
D;JNE
// goto Memory.alloc.IF_FALSE5
@Memory.alloc.IF_FALSE5
0;JMP
// label Memory.alloc.IF_TRUE5
(Memory.alloc.IF_TRUE5)
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// sub command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=D
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=D
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// eq command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_11
D;JEQ
@SP
A=M-1
M=0
(__COMPARISON_LABEL_11)
// if-gotoMemory.alloc.IF_TRUE6
@SP
AM=M-1
D=M
@Memory.alloc.IF_TRUE6
D;JNE
// goto Memory.alloc.IF_FALSE6
@Memory.alloc.IF_FALSE6
0;JMP
// label Memory.alloc.IF_TRUE6
(Memory.alloc.IF_TRUE6)
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto Memory.alloc.IF_END6
@Memory.alloc.IF_END6
0;JMP
// label Memory.alloc.IF_FALSE6
(Memory.alloc.IF_FALSE6)
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label Memory.alloc.IF_END6
(Memory.alloc.IF_END6)
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label Memory.alloc.IF_FALSE5
(Memory.alloc.IF_FALSE5)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// return
@LCL
D=M
@13
M=D
@5
A=D-A
D=M
@14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A
@SP
M=D+1
@13
AM=M-1
D=M
@THAT
M=D
@13
AM=M-1
D=M
@THIS
M=D
@13
AM=M-1
D=M
@ARG
M=D
@13
AM=M-1
D=M
@LCL
M=D
@14
A=M
0;JMP
// function Memory.deAlloc 2
(Memory.deAlloc)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=D
// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_12
D;JEQ
@SP
A=M-1
M=0
(__COMPARISON_LABEL_12)
// if-gotoMemory.deAlloc.IF_TRUE0
@SP
AM=M-1
D=M
@Memory.deAlloc.IF_TRUE0
D;JNE
// goto Memory.deAlloc.IF_FALSE0
@Memory.deAlloc.IF_FALSE0
0;JMP
// label Memory.deAlloc.IF_TRUE0
(Memory.deAlloc.IF_TRUE0)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// sub command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=D
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=D
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto Memory.deAlloc.IF_END0
@Memory.deAlloc.IF_END0
0;JMP
// label Memory.deAlloc.IF_FALSE0
(Memory.deAlloc.IF_FALSE0)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// sub command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// eq command
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@__COMPARISON_LABEL_13
D;JEQ
@SP
A=M-1
M=0
(__COMPARISON_LABEL_13)
// if-gotoMemory.deAlloc.IF_TRUE1
@SP
AM=M-1
D=M
@Memory.deAlloc.IF_TRUE1
D;JNE
// goto Memory.deAlloc.IF_FALSE1
@Memory.deAlloc.IF_FALSE1
0;JMP
// label Memory.deAlloc.IF_TRUE1
(Memory.deAlloc.IF_TRUE1)
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto Memory.deAlloc.IF_END1
@Memory.deAlloc.IF_END1
0;JMP
// label Memory.deAlloc.IF_FALSE1
(Memory.deAlloc.IF_FALSE1)
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add command
@SP
AM=M-1
D=M
A=A-1
D=D+M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push that 0
@THAT
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// pop pointer 1
@4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// label Memory.deAlloc.IF_END1
(Memory.deAlloc.IF_END1)
// label Memory.deAlloc.IF_END0
(Memory.deAlloc.IF_END0)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return
@LCL
D=M
@13
M=D
@5
A=D-A
D=M
@14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A
@SP
M=D+1
@13
AM=M-1
D=M
@THAT
M=D
@13
AM=M-1
D=M
@THIS
M=D
@13
AM=M-1
D=M
@ARG
M=D
@13
AM=M-1
D=M
@LCL
M=D
@14
A=M
0;JMP
// function Sys.init 0
(Sys.init)
// call Main.main 0
@Main.main$ret7
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.main
0;JMP
(Main.main$ret7)
// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// return; command
@SP
AM=M-1
D=M
A=A-1
M=D
