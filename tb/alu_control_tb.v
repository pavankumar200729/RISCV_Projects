`timescale 1ns/1ps

module alu_control_tb;

reg [1:0] ALUOp;
reg [2:0] funct3;
reg funct7;

wire [3:0] ALUCtrl;

alu_control uut(
    .ALUOp(ALUOp),
    .funct3(funct3),
    .funct7(funct7),
    .ALUCtrl(ALUCtrl)
);

initial begin

    $dumpfile("alu_control.vcd");
    $dumpvars(0, alu_control_tb);

    // ADD
    ALUOp = 2'b10;
    funct7 = 0;
    funct3 = 3'b000;
    #10;

    // SUB
    funct7 = 1;
    funct3 = 3'b000;
    #10;

    // AND
    funct7 = 0;
    funct3 = 3'b111;
    #10;

    // OR
    funct7 = 0;
    funct3 = 3'b110;
    #10;

    // XOR
    funct7 = 0;
    funct3 = 3'b100;
    #10;

    $finish;

end

endmodule
