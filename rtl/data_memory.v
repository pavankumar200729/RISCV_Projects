module data_memory(
    input clk,
    input we,
    input [31:0] address,
    input [31:0] write_data,
    output [31:0] read_data
);

reg [31:0] memory [0:15];

// Asynchronous read
assign read_data = memory[address[5:2]];

// Synchronous write
always @(posedge clk) begin
    if (we)
        memory[address[5:2]] <= write_data;
end

endmodule
