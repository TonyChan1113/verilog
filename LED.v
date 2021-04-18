module LED(in,out,clk,set,rst,en,on);

input [3:0] in;
input rst,clk,set,en,on;
output reg [6:0] out;

parameter led0 = 7'b0111111,led1 = 7'b0000110,led2 = 7'b1011011,led3 = 7'b1001111,led4 = 7'b1100110,led5 = 7'b1101101,led6 = 7'b1111101 ,led7 = 7'b0000111,led8 = 7'b1111111,led9 = 7'b1101111; 
parameter wrong = 7'b1000000;
parameter l0 = 4'b0000,l1 = 4'b0001,l2 = 4'b0010,l3 = 4'b0011,l4 = 4'b0100,l5 = 4'b0101,l6 = 4'b0110,l7 = 4'b0111,l8 = 4'b1000,l9 = 4'b1001;
always @(negedge clk,negedge rst) begin
	if(!rst) out <= ~led0;
	else if(on) begin
		if(en) begin			
			if(set) out <= ~led8;
			else begin
					case (in)
						l0 : out = ~led0 ;
						l1 : out = ~led1 ;
						l2 : out = ~led2 ;
						l3 : out = ~led3 ;
						l4 : out = ~led4 ;
						l5 : out = ~led5 ;
						l6 : out = ~led6 ;
						l7 : out = ~led7 ;
						l8 : out = ~led8 ;
						l9 : out = ~led9 ;
					endcase
					if(in > 4'b1001) out <= ~wrong;						
				end
			end
		else out <= out;			
		end	
	else out <= 7'b1111111;
end

			
endmodule