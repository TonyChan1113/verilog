module Ex3(in, out, clk,set,en,on,rst);
input [3:0]in;
input clk,set,en,on,rst;
output reg[7:0] out;

always@(*) begin
case(in)
4'b0000: out = 8'b00000000;//0
4'b0001: out = 8'b00000001;//1
4'b0010: out = 8'b00000010;//2
4'b0011: out = 8'b00000011;//3
4'b0100: out = 8'b00000100;//4
4'b0101: out = 8'b00000101;//5
4'b0110: out = 8'b00000110;//6
4'b0111: out = 8'b00000111;//7
4'b1000: out = 8'b00001000;//8
4'b1001: out = 8'b00001001;//9
4'b1010: out = 8'b00010000;//10
4'b1011: out = 8'b00010001;//11
4'b1100: out = 8'b00010010;//12
4'b1101: out = 8'b00010011;//13
4'b1110: out = 8'b00010100;//14
4'b1111: out = 8'b00010101;//15
endcase
end
LED2 A(
	.in(out)
	,.clk(clk)
	,.set(set)
	,.rst(rst)
	,.en(en)
	,.on(on)
);
endmodule
