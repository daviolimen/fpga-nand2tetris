module CPU (
    input clk,
    input reset,

    input [15:0] rom_data,
    input rbusy,
    output [23:0] addrRom,
    output rstrb,

    input [15:0] inM,
    output [15:0] outM,
    output [15:0] addrM,
    output writeM
);

    // Registers Declaration
    reg [15:0] Areg;
    reg [15:0] Dreg;

    // ALU
    reg [15:0] x1;
    reg [15:0] y1;
    reg [15:0] alu_out;

    always @(*) begin

        x1 = instruction[11] ? 16'b0 : Dreg;
        if (instruction[10]) x1 = ~x1;

        y1 = instruction[12] ? inM : Areg;
        if (instruction[9]) y1 = 16'b0;
        if (instruction[8]) y1 = ~y1;

        if (instruction[7]) begin
            alu_out = x1 + y1;
        end else begin
            alu_out = x1 & y1;
        end

        if (instruction[6]) alu_out = ~alu_out;
    end

    wire alu_neg = alu_out[15];
    wire alu_zero = (alu_out == 16'b0);

    // Assigning the output wires for memory writing
    assign outM = alu_out;
    assign addrM = Areg;
    assign writeM = writeM_reg;

    reg writeM_reg;

    // Jump logic
    wire jump = instruction[15] && (
        (instruction[2] && alu_neg) ||
        (instruction[1] && alu_zero) ||
        (instruction[0] && (!alu_neg && !alu_zero))
    );

    reg [23:0] pc;
    assign addrRom = pc;

    // CPU Finite State Machine
    localparam FETCH_INSTR_bit     = 0;
    localparam WAIT_INSTR_bit      = 1;
    localparam EXECUTE_bit         = 2;
    localparam WAIT_MEM_bit        = 3;

    localparam FETCH_INSTR     = 1 << FETCH_INSTR_bit;
    localparam WAIT_INSTR      = 1 << WAIT_INSTR_bit;
    localparam EXECUTE         = 1 << EXECUTE_bit;
    localparam WAIT_MEM        = 1 << WAIT_MEM_bit;

    reg [3:0] state;

    assign rstrb = state[FETCH_INSTR_bit];

    // instruction register to store the rom_data
    reg [15:0] instruction;

    always @(posedge clk) begin
        if (reset) begin
            pc <= 24'b0;
            state <= WAIT_MEM;
        end else begin

            case (1'b1)

                state[FETCH_INSTR_bit]: begin
                    state <= WAIT_INSTR;
                end

                state[WAIT_INSTR_bit]: begin
                    if (!rbusy) begin
                        instruction <= rom_data;
                        state <= EXECUTE;
                    end
                end

                state[EXECUTE_bit]: begin

                    // Register and PC logic
                    if (instruction[15]) begin
                        if (instruction[5]) Areg <= alu_out;
                        if (instruction[4]) Dreg <= alu_out;
                    end else begin
                        Areg <= instruction;
                    end

                    if (jump) begin
                        pc <= {8'b0, Areg};
                    end else begin
                        pc <= pc + 24'b1;
                    end

                    if (instruction[15] && instruction[3]) begin
                        state <= WAIT_MEM;
                        writeM_reg <= 1;
                    end else begin
                        state <= FETCH_INSTR;
                    end
                end

                state[WAIT_MEM_bit]: begin
                    state <= FETCH_INSTR;
                end
            endcase
        end
    end 
endmodule