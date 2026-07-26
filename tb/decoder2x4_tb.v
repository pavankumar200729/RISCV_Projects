`timescale 1ns/1ps

module decoder2x4_tb;

reg [1:0] a;
wire [3:0] y;

decoder2x4 uut(
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("decoder2x4.vcd");
    $dumpvars(0, decoder2x4_tb);

    a = 2'b00;
    #10 a = 2'b01;
    #10 a = 2'b10;
    #10 a = 2'b11;
    #10 $finish;
end

endmodule
