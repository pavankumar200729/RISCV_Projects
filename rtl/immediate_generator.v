module immediate_generator(
    input [31:0] instruction,
    output reg [31:0] immediate
);

always @(*) begin
    // I-Type Immediate
    immediate = {{20{instruction[31]}}, instruction[31:20]};
end

endmodule
