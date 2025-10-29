// Fast SPI Flash implementation adapted from https://github.com/BrunoLevy/learn-fpga/blob/master/FemtoRV/RTL/DEVICES/MappedSPIFlash.v

/*
BSD 3-Clause License

Copyright (c) 2020, Bruno Levy
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

`define SPI_FLASH_DUMMY_CLOCKS 8

module ROM ( 
    input wire 	       clk,          // system clock
    input wire 	       rstrb,        // read strobe		
    input wire [15:0]  word_address, // address to be read

		      
    output wire [15:0] rdata, // data read
    output wire        rbusy, // asserted if busy receiving data 

    output wire        CLK,  // clock
    output reg 	       CS_N, // chip select negated (active low)		
    inout wire [1:0]   IO    // two bidirectional IO pins
);

   reg [4:0]  clock_cnt; // send/receive clock, 2 bits per clock (dual IO)
   reg [39:0] shifter;   // used for sending and receiving

   reg 	      dir; // 1 if sending, 0 otherwise

   wire       busy      = (clock_cnt != 0);
   wire       sending   = (dir  && busy);
   wire       receiving = (!dir && busy);
   assign     rbusy     = !CS_N; 

   // The two data pins IO0 (=MOSI) and IO1 (=MISO) used in bidirectional mode.
   reg IO_oe = 1'b1;
   wire [1:0] IO_out = shifter[39:38];
   wire [1:0] IO_in  = IO;
   assign IO = IO_oe ? IO_out : 2'bZZ;
   
   initial CS_N = 1'b1;
   assign  CLK  = !CS_N && !clk; 

   // since least significant bytes are read first, we need to swizzle...
   assign rdata={shifter[7:0],shifter[15:8]};

   // Duplicates the bits (used because when sending command, dual IO is
   // not active yet, and I do not want to have a separate shifter for
   // the command and for the args...).
   function [15:0] bbyyttee;
      input [7:0] x;
      begin
	 bbyyttee = {
	     x[7],x[7],x[6],x[6],x[5],x[5],x[4],x[4],
	     x[3],x[3],x[2],x[2],x[1],x[1],x[0],x[0]
	 }; 	 
      end
   endfunction

   wire [23:0] real_address = 24'h020000 + {7'b0, word_address[15:0], 1'b0};

   always @(posedge clk) begin
      if(rstrb) begin
	 CS_N  <= 1'b0;
	 IO_oe <= 1'b1;
	 dir   <= 1'b1;
	 shifter <= {bbyyttee(8'hbb), real_address};
	 clock_cnt <= 5'd20 + `SPI_FLASH_DUMMY_CLOCKS; // cmd: 8 clocks  address: 12 clocks  + dummy clocks
      end else begin
	 if(busy) begin
	    shifter <= {shifter[37:0], (receiving ? IO_in : 2'b11)};
	    clock_cnt <= clock_cnt - 5'd1;	    
	    if(dir && clock_cnt == 1) begin
 	       clock_cnt <= 5'd8; // 32 bits, 2 bits per clock
	       IO_oe <= 1'b0;
	       dir   <= 1'b0;
	    end 
	 end else begin
	    CS_N <= 1'b1;
	 end
      end
   end
endmodule