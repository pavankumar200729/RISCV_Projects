module shift_register4bit(
    input clk,
    input serial_in,
    output reg [3:0] q
);

always @(posedge clk)
begin
    q <= {q[2:0], serial_in};
end

endmodule
