module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 

    
    wire condition;
    assign condition = sel_b1 & sel_b2;
    
    always @(*) begin
        if (condition==1'b1) begin
            out_always = b;
        end
        else begin
            out_always = a;
        end
	end
    
    assign out_assign = (condition) ? b : a;
    
endmodule