module ROM (
    input wire clk,
    input wire [11:0] address,
    output reg [15:0] data
);

    reg [15:0] rom [0:2047];

    initial begin
        $readmemh("program.hex", rom);
    end

    always @(posedge clk) begin
        data <= rom[address];
    end
endmodule