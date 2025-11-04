// MAX7219 module adapted from https://github.com/BrunoLevy/learn-fpga/blob/master/FemtoRV/RTL/DEVICES/MAX7219.v

module MAX7219 (
    input wire 	      clk,      // system clock
    input wire 	      wstrb,    // write strobe 
    input wire [15:0] wdata,    // data to be written

    output wire       wbusy,    // asserted if the driver is busy sending data

                           // MAX7219 pins
    output wire	      DIN, // data in
    output wire	      CLK, // clock
    output wire	      CS   // chip select 
);
  
   reg [2:0] divider;
   always @(posedge clk) begin
      divider <= divider + 1;
   end
   
   // clk=60MHz, slow_clk=60/8 MHz (max = 10 MHz)
   wire       slow_clk = (divider == 3'b000);
   reg[4:0]   bitcount; // 0 means idle
   initial    bitcount = 0;   
   reg[15:0]  shifter;
      
   assign DIN  = shifter[15];
   wire sending = |bitcount;
   assign wbusy = sending;   
   assign CS  = !sending;
   assign CLK = sending && slow_clk;

   always @(posedge clk) begin
      if(wstrb) begin
	    shifter <= wdata;
	    bitcount <= 16;
      end else begin
	 if(sending &&  slow_clk) begin
            bitcount <= bitcount - 5'd1;
            shifter <= {shifter[14:0], 1'b0};
	 end
      end
   end
   
endmodule