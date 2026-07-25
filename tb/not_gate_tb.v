`timescale 1ns/1ps

module not_gate_tb;

reg a;
wire y;

// Instantiate the DUT (Device Under Test)
not_gate uut (
    .a(a),
    .y(y)
);

initial begin
    // Create waveform file
    $dumpfile("not_gate.vcd");
    $dumpvars(0, not_gate_tb);

    // Print output
    $display("a | y");
    $monitor("%b | %b", a, y);

    // Apply test inputs
    a = 0;
    #10 a = 1;
    #10 $finish;
end

endmodule
