module Computer (
    input wire clk,

    input wire [3:0] pmod,
    output reg [4:0] led
);

    wire [15:0] instruction;
    wire [15:0] inM;
    wire [15:0] outM;
    wire [15:0] addressM;
    wire writeM;
    wire [15:0] pc;

    wire reset;
    assign reset = ~pmod[0];

    ROM rom_inst (
        .address(pc[11:0]),
        .data(instruction)
    );

    Memory mem_inst (
        .clk(clk),
        .address(addressM),
        .in(outM),
        .load(writeM),
        .out(inM),
        .pmod(pmod),
        .led(led)
    );

    CPU cpu_inst (
        .clk(clk),
        .reset(reset),
        .inM(inM),
        .instruction(instruction),
        .outM(outM),
        .writeM(writeM),
        .addressM(addressM),
        .pc(pc)
    );
endmodule