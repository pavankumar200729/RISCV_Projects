`timescale 1ns/1ps

module branch_comparator_tb;

reg [31:0] a;
reg [31:0] b;

wire equal;

branch_comparator uut(
    .a(a),
    .b(b),
    .equal(equal)
);

initial begin

    $dumpfile("branch_comparator.vcd");
    $dumpvars(0, branch_comparator_tb);

    // Equal values
    a = 32'd10;
    b = 32'd10;
    #10;

    // Not equal
    a = 32'd20;
    b = 32'd10;
    #10;

    // Equal values
    a = 32'd100;
    b = 32'd100;
    #10;

    // Not equal
    a = 32'd5;
    b = 32'd15;
    #10;

    $finish;

end

endmodule
