`timescale 1ns/1ps

module register4bit_tb;

reg clk;
reg [3:0] d;
wire [3:0] q;

register4bit uut(
    .clk(clk),
    .d(d),
    .q(q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    $dumpfile("register4bit.vcd");
    $dumpvars(0, register4bit_tb);

    $display("Time\tCLK\tD\tQ");
    $monitor("%0t\t%b\t%b\t%b", $time, clk, d, q);

    d = 4'b0000;
    #10;

    d = 4'b0101;
    #10;

    d = 4'b1010;
    #10;

    d = 4'b1111;
    #10;

    $finish;
end

endmodule
