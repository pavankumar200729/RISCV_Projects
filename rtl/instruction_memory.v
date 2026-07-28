module instruction_memory(
    input [31:0] address,
    output [31:0] instruction
);

reg [31:0] memory [0:15];

initial begin
    memory[0] = 32'h00000013; // NOP
    memory[1] = 32'h00100093;
    memory[2] = 32'h00200113;
    memory[3] = 32'h003081B3;
end

assign instruction = memory[address[5:2]];

endmodule
