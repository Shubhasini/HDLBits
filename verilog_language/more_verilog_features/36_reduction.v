//reduction_operator.v
//https://hdlbits.01xz.net/wiki/Reduction
module top_module (
	input  [7:0] in    ,
	output       parity
);
	//& a[3:0]     // AND: a[3]&a[2]&a[1]&a[0] : reduction operator
	//even parity of 8 bit
	assign parity = (^ in[7:0]) ? 1'b1:1'b0;
endmodule
