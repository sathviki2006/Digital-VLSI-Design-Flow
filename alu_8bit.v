module alu_8bit (
    input wire clk,
    input wire [7:0] A_in,
    input wire [7:0] B_in,
    input wire [2:0] opcode_in,
    output reg [7:0] result,
    output reg zero_flag
);

    // STEP 1: Add mark_debug above internal registers to probe them
    (* mark_debug = "true" *) reg [7:0] A, B;
    (* mark_debug = "true" *) reg [2:0] opcode;

    always @(posedge clk) begin
        A <= A_in;
        B <= B_in;
        opcode <= opcode_in;
    end

    // STEP 2: Add mark_debug above intermediate combinational signals
    (* mark_debug = "true" *) reg [7:0] alu_out;
    
    always @(*) begin
        case (opcode)
            3'b000: alu_out = A + B;
            3'b001: alu_out = A - B;
            3'b010: alu_out = A & B;
            3'b011: alu_out = A | B;
            3'b010: alu_out = A ^ B;
            default: alu_out = 8'b0;
        endcase
    end

    // Register outputs
    always @(posedge clk) begin
        result <= alu_out;
        zero_flag <= (alu_out == 8'b0);
    end

endmodule