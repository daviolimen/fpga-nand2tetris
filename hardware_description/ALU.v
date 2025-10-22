module HackALU (
    input wire [15:0] x,
    input wire [15:0] y,
    input wire zx,
    input wire nx,
    input wire zy,
    input wire ny,
    input wire f,
    input wire no,
    output reg [15:0] out,
    output wire zr,
    output wire ng
);

    reg [15:0] x1, y1, out_f;

    always @* begin
        x1 = zx ? 16'b0 : x;
        if (nx) x1 = ~x1;
        y1 = zy ? 16'b0 : y;
        if (ny) y1 = ~y1;

        if (f) begin
            out_f = x1 + y1;
        end else begin
            out_f = x1 & y1;
        end

        if (no) out = ~out_f;
        else out = out_f;
    end

    assign zr = (out == 16'b0);
    assign ng = out[15];
endmodule