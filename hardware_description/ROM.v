module ROM (
    input wire [11:0] address,
    output reg [15:0] data
);

    reg [15:0] rom [0:4095];

    initial begin
        $readmemh("program.hex", rom);
    end

    always @(*) begin
        data = rom[address];
    end
endmodule