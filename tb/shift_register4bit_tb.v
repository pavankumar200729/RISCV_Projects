`timescale 1ns/1ps

module shift_register4bit_tb;

reg clk;
reg serial_in;
wire [3:0] q;

shift_register4bit uut(
    .clk(clk),
    .serial_in(serial_in),
    .q(q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    $dumpfile("shift_register4bit.vcd");
    $dumpvars(0, shift_register4bit_tb);

    $display("Time\tCLK\tSI\tQ");
    $monitor("%0t\t%b\t%b\t%b", $time, clk, serial_in, q);

    serial_in = 1; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;

    $finish;

end

endmodule
