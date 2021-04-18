module LED2(in,out1,out2,clk,set,rst,en,on);

input [7:0] in;
input clk,set,rst,en,on;
output [6:0] out1;
output [6:0] out2;
reg [3:0] in1,in0;
always @(*) begin 
in1 = in[7:4];
in0 = in[3:0];
end


LED E(
	.in(in0)
	,.out(out1[6:0])
	,.clk(clk)
	,.set(set)
	,.rst(rst)
	,.en(en)
	,.on(on)
	);
LED F(
	.in(in1)
	,.out(out2[6:0])
	,.clk(clk)
	,.set(set)
	,.rst(rst)
	,.en(en)
	,.on(on)
	);
	
endmodule