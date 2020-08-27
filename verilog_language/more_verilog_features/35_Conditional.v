//Conditional.v
//https://hdlbits.01xz.net/wiki/Conditional

module top_module (
	input  [7:0] a, b, c, d,
	output [7:0] min
);
//
	wire [7:0] y1,y2; //to assign intermidiate stage 
	// Given four unsigned numbers, find the minimum
	assign y1  = a>b ? b:a;
	assign y2  = c>d ? d:c;
	assign min = y1 >y2 ? y2:y1;

endmodule
