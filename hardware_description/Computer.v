`include "CPU.v"
`include "Memory.v"
`include "ROM.v"

module Computer (
    input wire clk,

    input wire [3:0] pmod,
    output reg [4:0] led,

    inout spi_mosi,
    inout spi_miso,
    output spi_cs_n,
    output spi_clk
);

    wire [15:0] rom_data;
    wire [15:0] inM;
    wire [15:0] outM;
    wire [15:0] addressM;
    wire writeM;
    wire [15:0] pc;
    wire rbusy;
    wire rstrb;

    wire reset;
    assign reset = ~pmod[0];

    CPU cpu_inst (
        .clk(clk),
        .reset(reset),
        .rom_data(rom_data),
        .rbusy(rbusy),
        .addrRom(pc),
        .rstrb(rstrb),
        .inM(inM),
        .outM(outM),
        .addrM(addressM),
        .writeM(writeM)
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

    ROM rom_inst (
        .clk(clk),
        .rstrb(rstrb),
        .word_address(pc),
        .rdata(rom_data),
        .rbusy(rbusy),
        .CLK(spi_clk),
        .CS_N(spi_cs_n),
        .IO({spi_miso, spi_mosi})
    );
endmodule