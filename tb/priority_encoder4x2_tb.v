`timescale 1ns/1ps

module priority_encoder4x2_tb;

reg [3:0] d;
wire [1:0] y;
wire valid;

priority_encoder4x2 uut(
    .d(d),
    .y(y),
    .valid(valid)
);

initial begin

    $dumpfile("priority_encoder4x2.vcd");
    $dumpvars(0, priority_encoder4x2_tb);

    $display(" D    | Y  Valid");
    $monitor("%b | %b   %b", d, y, valid);

    d = 4'b0000; #10;
    d = 4'b0001; #10;
    d = 4'b0011; #10;
    d = 4'b0101; #10;
    d = 4'b1111; #10;

    $finish;

end

endmodule
