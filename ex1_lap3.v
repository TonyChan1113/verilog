module Ex1(f,x,y,z);
	input x,y,z;
	output f;
	not X1(x1,x);
	not Y1(y1,y);
	not Z1(z1,z);
	and XY(n1,x1,y1);
	and XZ(n2,x1,z1);
	or F(f,n1,n2);
endmodule