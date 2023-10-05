module alu(a,b,sel,out);
input [3:0] a,b;
input [1:0] sel;
output reg [7:0] out;

always @ (*) begin

case (sel)
    2'b00: out = a+b;
    2'b01: out = a-b;
    2'b10: out = a*b;
    2'b11: out = a/b;
endcase


end

endmodule