module alu_control(
    input [1:0] ALUOp,
    input [2:0] funct3,
    input funct7,
    output reg [3:0] ALUCtrl
);

always @(*) begin
    case(ALUOp)

        // Load/Store -> ADD
        2'b00:
            ALUCtrl = 4'b0010;

        // Branch -> SUB
        2'b01:
            ALUCtrl = 4'b0110;

        // R-Type
        2'b10:
        begin
            case({funct7,funct3})

                4'b0000: ALUCtrl = 4'b0010; // ADD
                4'b1000: ALUCtrl = 4'b0110; // SUB
                4'b0111: ALUCtrl = 4'b0000; // AND
                4'b0110: ALUCtrl = 4'b0001; // OR
                4'b0100: ALUCtrl = 4'b0011; // XOR

                default:
                    ALUCtrl = 4'b1111;

            endcase
        end

        default:
            ALUCtrl = 4'b1111;

    endcase
end

endmodule
