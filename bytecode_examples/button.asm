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
// function Sys.init 0
(Sys.init)
// label LOOP
(LOOP)
// push buttons 0
@16385
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
// and command
@SP
AM=M-1
D=M
A=A-1
D=D&M
M=D
// pop leds 0
@16384
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
// goto LOOP
@LOOP
0;JMP
