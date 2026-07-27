`timescale 1ns/1ps

module d_flipflop_tb;

reg clk;
reg d;

wire q;

d_flipflop uut(
    .clk(clk),
    .d(d),
    .q(q)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test sequence
initial begin

    $dumpfile("d_flipflop.vcd");
    $dumpvars(0, d_flipflop_tb);

    d = 0;
    #12;

    d = 1;
    #10;

    d = 0;
    #10;

    d = 1;
    #10;

    $finish;

end

endmodule
