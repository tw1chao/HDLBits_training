// Adder-subtractor

module top_module(
    input [31:0] a, b,
    input sub,
    output [31:0] sum
);

// module add16( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout);
wire [31:0] sub_b;
wire add_c;

    assign sub_b = b ^ {32{sub}};

    add16 test1(a[15:0], sub_b[15:0], sub, sum[15:0], add_c);
add16 test2(a[31:16], sub_b[31:16], add_c, sum[31:16]);
endmodule

endmodule