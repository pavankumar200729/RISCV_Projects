`timescale 1ns/1ps

module encoder4x2_tb;

reg d0, d1, d2, d3;
wire y1, y0;

encoder4x2 uut(
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .y1(y1),
    .y0(y0)
);

initial begin
    $dumpfile("encoder4x2.vcd");
    $dumpvars(0, encoder4x2_tb);

    $display("D3 D2 D1 D0 | Y1 Y0");
    $monitor("%b  %b  %b  %b | %b  %b", d3, d2, d1, d0, y1, y0);

    d0=1; d1=0; d2=0; d3=0;
    #10;

    d0=0; d1=1; d2=0; d3=0;
    #10;

    d0=0; d1=0; d2=1; d3=0;
    #10;

    d0=0; d1=0; d2=0; d3=1;
    #10;

    $finish;
end

endmodule
