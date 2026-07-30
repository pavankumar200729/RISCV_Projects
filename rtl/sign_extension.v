module sign_extension(
    input  [11:0] immediate,
    output [31:0] extended
);

assign extended = {{20{immediate[11]}}, immediate};

endmodule
