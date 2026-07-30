`timescale 1ns/1ps

module sign_extension_tb;

reg  [11:0] immediate;
wire [31:0] extended;

sign_extension uut(
    .immediate(immediate),
    .extended(extended)
);

initial begin

    $dumpfile("sign_extension.vcd");
    $dumpvars(0, sign_extension_tb);

    // Positive number (5)
    immediate = 12'b000000000101;
    #10;

    // Positive number (127)
    immediate = 12'b000001111111;
    #10;

    // Negative number (-1)
    immediate = 12'b111111111111;
    #10;

    // Negative number (-8)
    immediate = 12'b111111111000;
    #10;

    $finish;

end

endmodule
