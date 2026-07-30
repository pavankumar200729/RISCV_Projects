`timescale 1ns/1ps

module branch_target_adder_tb;

reg [31:0] pc;
reg [31:0] immediate;

wire [31:0] branch_address;

branch_target_adder uut(
    .pc(pc),
    .immediate(immediate),
    .branch_address(branch_address)
);

initial begin

    $dumpfile("branch_target_adder.vcd");
    $dumpvars(0, branch_target_adder_tb);

    pc = 32'd100;
    immediate = 32'd16;
    #10;

    pc = 32'd200;
    immediate = 32'd32;
    #10;

    pc = 32'd400;
    immediate = 32'd4;
    #10;

    pc = 32'd1000;
    immediate = 32'd64;
    #10;

    $finish;

end

endmodule
