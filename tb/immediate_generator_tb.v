`timescale 1ns/1ps

module immediate_generator_tb;

reg [31:0] instruction;
wire [31:0] immediate;

immediate_generator uut(
    .instruction(instruction),
    .immediate(immediate)
);

initial begin

    $dumpfile("immediate_generator.vcd");
    $dumpvars(0, immediate_generator_tb);

    // Example ADDI instruction
    instruction = 32'h00A30313;
    #10;

    // Example with negative immediate
    instruction = 32'hFFF30313;
    #10;

    $finish;

end

endmodule
