module CPU (
    input wire clk,
    input wire reset,
    input wire [15:0] inM,
    input wire [15:0] instruction,

    output wire [15:0] outM,
    output wire [15:0] addressM,
    output wire [15:0] pc,
    output wire writeM
);

    wire isC = instruction[15];

    wire [15:0] a_out;
    wire [15:0] d_out;
    reg [15:0] a_in;
    wire [15:0] alu_out;
    wire alu_zero, alu_neg;

    always @(*) begin
        if (!isC) a_in = instruction;
        else a_in = alu_out;
    end

    wire loadA = (!isC) | (isC && instruction[5]);

    ARegister areg (
        .clk(clk),
        .load(loadA),
        .in(a_in),
        .out(a_out)
    );

    wire loadD = isC && instruction[4];

    DRegister dreg (
        .clk(clk),
        .load(loadD),
        .in(alu_out),
        .out(d_out)
    );

    wire [15:0] alu_y = instruction[12] ? inM : a_out;

    HackALU alu (
        .x(d_out),
        .y(alu_y),
        .zx(instruction[11]),
        .nx(instruction[10]),
        .zy(instruction[9]),
        .ny(instruction[8]),
        .f(instruction[7]),
        .no(instruction[6]),
        .out(alu_out),
        .zr(alu_zero),
        .ng(alu_neg)
    );

    assign outM = alu_out;
    assign addressM = a_out;

    assign writeM = isC && instruction[3];

    wire jump = isC && (
        (instruction[0] && (!alu_neg && !alu_zero)) || (instruction[1] && alu_zero) || (instruction[2] && (alu_zero || alu_neg))
    );

    wire loadPC = jump;

    PC pcreg (
        .clk(clk),
        .reset(reset),
        .load(loadPC),
        .in(a_out),
        .out(pc)
    );
endmodule