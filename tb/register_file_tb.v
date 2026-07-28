`timescale 1ns/1ps

module register_file_tb;

reg clk;
reg we;

reg [2:0] rs1;
reg [2:0] rs2;
reg [2:0] rd;

reg [31:0] write_data;

wire [31:0] read_data1;
wire [31:0] read_data2;

register_file uut(
    .clk(clk),
    .we(we),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .write_data(write_data),
    .read_data1(read_data1),
    .read_data2(read_data2)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    $dumpfile("register_file.vcd");
    $dumpvars(0, register_file_tb);

    we = 1;

    rd = 3'd1;
    write_data = 32'd100;
    #10;

    rd = 3'd2;
    write_data = 32'd200;
    #10;

    we = 0;

    rs1 = 3'd1;
    rs2 = 3'd2;
    #10;

    $finish;

end

endmodule
