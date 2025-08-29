module PC (
    input wire clk,
    input wire reset,
    input wire load,
    input wire [15:0] in,
    output reg [15:0] out
);

    always @ (posedge clk or posedge reset) begin
        if (reset) begin
            out <= 16'b0;
        end else if (load) begin
            out <= in;
        end else begin
            out <= out + 16'b1;
        end
    end
endmodule