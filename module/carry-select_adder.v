module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
 
wire add16_c;
wire [15:0] sum_1o;
add16 test1(a[15:0], b[15:0], 1'b0, sum_lo, add16_c);

wire [15:0] sum0,sum1;
add16 test2_1(a[31:16], b[31:16], 1'b0, sum);
add16 test2_2(a[31:16], b[31:16], 1'b1, sum1);

always @(*) begin
    case(add16_c)
        1'b0: sum = {fsumo,sum_lo};
        1'b1: sum = {fsum1,sum_lo};
    endcase
end

endmodule