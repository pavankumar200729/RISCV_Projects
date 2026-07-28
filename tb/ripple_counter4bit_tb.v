`timescale 1ns/1ps

module ripple_counter4bit_tb;

reg clk;
wire [3:0] q;

ripple_counter4bit uut(
    .clk(clk),
    .q(q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $dumpfile("ripple_counter4bit.vcd");
    $dumpvars(0, ripple_counter4bit_tb);

    $display("Time\tCLK\tQ");
    $monitor("%0t\t%b\t%b", $time, clk, q);

    #100;
    $finish;
end

endmodule
