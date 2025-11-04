`include "CPU.v"
`include "Memory.v"
`include "ROM.v"
`include "MAX7219.v"

module Computer (
    input wire clk,

    input wire [3:0] pmod,
    output reg [4:0] led,

    inout spi_mosi,
    inout spi_miso,
    output spi_cs_n,
    output spi_clk,

    output ledmtx_DIN,
    output ledmtx_CS,
    output ledmtx_CLK
);

    wire [15:0] rom_data;
    wire [15:0] inM;
    wire [15:0] outM;
    wire [15:0] addressM;
    wire writeM;
    wire [15:0] pc;
    wire rbusy;
    wire wbusy;
    wire rstrb;
    wire write_matrix;
    wire [15:0] data_matrix;

    wire reset;
    assign reset = ~pmod[0];

    CPU cpu_inst (
        .clk(clk),
        .reset(reset),
        .rom_data(rom_data),
        .rbusy(rbusy),
        .wbusy(wbusy),
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
        .led(led),
        .write_matrix(write_matrix),
        .data_matrix(data_matrix),
        .busy_matrix(wbusy)
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

    MAX7219 max_inst (
        .clk(clk),
        .wstrb(write_matrix),
        .wdata(data_matrix),
        .wbusy(wbusy),
        .DIN(ledmtx_DIN),
        .CLK(ledmtx_CLK),
        .CS(ledmtx_CS)
    );
endmodule