//chip7458.v

module top_module (
	input  p1a, p1b, p1c, p1d, p1e, p1f,
	output p1y,
	input  p2a, p2b, p2c, p2d,
	output p2y
);
	wire and21, and22;
	wire and11, and12;

	//The 7458 is a chip with four AND gates and two OR gates.
	assign and21 = p2a & p2b;
	assign and22 = p2c & p2d;
	assign p2y   = and21 | and22;
	assign and11 = p1a & p1b & p1c;
	assign and12 = p1d & p1e & p1f;
	assign p1y   = and11 | and12;
endmodule
