`timescale 1ns/1ps

module data_memory_tb;

reg clk;
reg we;
reg [31:0] address;
reg [31:0] write_data;

wire [31:0] read_data;

data_memory uut(
    .clk(clk),
    .we(we),
    .address(address),
    .write_data(write_data),
    .read_data(read_data)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    $dumpfile("data_memory.vcd");
    $dumpvars(0,data_memory_tb);

    we = 1;
    address = 0;
    write_data = 32'd25;
    #10;

    address = 4;
    write_data = 32'd100;
    #10;

    we = 0;

    address = 0;
    #10;

    address = 4;
    #10;

    $finish;

end

endmodule
