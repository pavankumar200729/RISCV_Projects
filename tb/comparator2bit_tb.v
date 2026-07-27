`timescale 1ns/1ps

module comparator2bit_tb;

reg [1:0] A;
reg [1:0] B;

wire A_gt_B;
wire A_eq_B;
wire A_lt_B;

comparator2bit uut(
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_eq_B(A_eq_B),
    .A_lt_B(A_lt_B)
);

initial begin

    $dumpfile("comparator2bit.vcd");
    $dumpvars(0, comparator2bit_tb);

    $display(" A  B | >  =  <");
    $monitor("%b %b | %b  %b  %b",
             A, B,
             A_gt_B,
             A_eq_B,
             A_lt_B);

    A = 2'b00; B = 2'b00; #10;
    A = 2'b01; B = 2'b00; #10;
    A = 2'b10; B = 2'b11; #10;
    A = 2'b11; B = 2'b01; #10;

    $finish;

end

endmodule
