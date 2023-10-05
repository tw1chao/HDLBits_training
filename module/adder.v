module Adder (in1, in2, out);
  input [3:0] in1, in2;
  output [4:0] out;

  assign out = in1 + in2;
endmodule



//module adder(
//input clk,
//input reset,
//input [7:0]a,
//input [7:0]b,
//
//output reg[7:0]c
//    ); 
// 
// always@(posedge clk)begin
//   if(reset)
//     c <= 0;
//   else
//     c <= a + b;
// end
//    
//endmodule

