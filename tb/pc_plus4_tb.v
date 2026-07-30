`timescale 1ns/1ps

module pc_plus4_tb;

reg [31:0] pc;
wire [31:0] next_pc;

pc_plus4 uut(
    .pc(pc),
    .next_pc(next_pc)
);

initial begin

    $dumpfile("pc_plus4.vcd");
    $dumpvars(0, pc_plus4_tb);

    pc = 32'd0;
    #10;

    pc = 32'd4;
    #10;

    pc = 32'd100;
    #10;

    pc = 32'd256;
    #10;

    $finish;

end

endmodule
