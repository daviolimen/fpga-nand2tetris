`timescale 1ns/1ps

module Computer_tb;
    reg clk;
    reg [3:0] pmod;
    wire [4:0] led;

    // DUT
    Computer uut (
        .clk(clk),
        .pmod(pmod),
        .led(led)
    );

    // Clock generator (10ns period = 100 MHz)
    initial clk = 0;
    always #5 clk = ~clk;

    // Stimulus
    initial begin
        // dump waves
        $dumpfile("_build/default/Computer_tb.vcd");
        $dumpvars(0, Computer_tb);

        // init
        pmod = 4'b0000;
        pmod[0] = 0; // hold reset
        #20;
        pmod[0] = 1; // release reset

        // run for some cycles
        #1000;

        $finish;
    end
endmodule
