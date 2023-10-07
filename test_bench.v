`timescale 1ns/1ns

module top_module_tb;
  reg  [3:0] in1, in2;
  reg [1:0] sel;
  wire [7:0] out;
  alu TestAdder(.a(in1), .b(in2), .sel(sel), .out(out));

  initial begin
  $monitor("%d",out);
  in1 = 4'h3; in2 = 4'h2; sel=2'd0; #100;
  in1 = 4'h3; in2 = 4'hf; sel=2'd2; #100;
  in1 = 4'h8; in2 = 4'hd; sel=2'd3; #100;
  in1 = 4'h3; in2 = 4'hf; sel=2'd1; #100;
  //$display("Hello, World");
  //$display("%d",out);
  $finish;
  //$stop;
  end


endmodule
