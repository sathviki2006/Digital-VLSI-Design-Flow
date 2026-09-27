`timescale 1ns / 1ps

module tb_alu_8bit;
    reg [7:0] A;
    reg [7:0] B;
    reg [2:0] opcode;
    wire [7:0] result;
    wire zero_flag;

    // Instantiate Unit Under Test (UUT)
    alu_8bit uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result),
        .zero_flag(zero_flag)
    );

    integer i;

    initial begin
        // Directed Tests
        A = 8'h05; B = 8'h03; opcode = 3'b000; #10; // ADD (5+3=8)
        A = 8'h0A; B = 8'h04; opcode = 3'b001; #10; // SUB (10-4=6)
        A = 8'hFF; B = 8'h0F; opcode = 3'b010; #10; // AND

        // Random Tests
        for (i = 0; i < 5; i = i + 1) begin
            A = $random;
            B = $random;
            opcode = $random % 7;
            #10;
        end

        $finish;
    end
endmodule