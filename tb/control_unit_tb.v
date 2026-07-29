`timescale 1ns/1ps

module control_unit_tb;

reg [6:0] opcode;

wire RegWrite;
wire ALUSrc;
wire MemRead;
wire MemWrite;
wire MemtoReg;
wire Branch;
wire [1:0] ALUOp;

control_unit uut(
    .opcode(opcode),
    .RegWrite(RegWrite),
    .ALUSrc(ALUSrc),
    .MemRead(MemRead),
    .MemWrite(MemWrite),
    .MemtoReg(MemtoReg),
    .Branch(Branch),
    .ALUOp(ALUOp)
);

initial begin

    $dumpfile("control_unit.vcd");
    $dumpvars(0, control_unit_tb);

    opcode = 7'b0110011; #10; // R-Type
    opcode = 7'b0000011; #10; // Load
    opcode = 7'b0100011; #10; // Store
    opcode = 7'b1100011; #10; // Branch

    $finish;

end

endmodule
