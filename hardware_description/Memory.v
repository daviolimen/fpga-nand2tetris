module Memory (
    input wire clk,
    input wire [15:0] address,
    input wire [15:0] in,
    input wire load,
    output reg [15:0] out,

    input wire [3:0] pmod,
    output reg [4:0] led
);

    reg [15:0] ram [0:4095];

    wire write_ram = load && (address[14] == 1'b0);
    wire write_led = load && (address[14:0] == 15'd16384);
    wire write_pmod = load && (address[14:0] == 15'd16385);

    always @ (posedge clk) begin
        if (write_ram) begin
            ram[address[11:0]] <= in;
        end if (write_led) begin
            led[4:0] <= in[4:0];
        end
    end

    always @(*) begin
        if (address[14] == 1'b0) begin
            out = ram[address[11:0]];
        end else if (address[14:0] == 15'd16384) begin
            out = {11'b0, led};
        end else if (address[14:0] == 15'd16385) begin
            out = {12'b0, pmod};
        end else begin
            out = 16'h0000;
        end
    end
endmodule