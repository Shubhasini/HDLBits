//replication1.v
module top_module (
	input         a, b, c, d, e,
	output [24:0] out
);
//

	// The output is XNOR of two vectors created by
	// concatenating and replicating the five inputs.
	assign out[24:20] = ~{ a,b,c,d,e } ^ { a,a,a,a,a };
	assign out[19:15] = ~{ a,b,c,d,e } ^ { b,b,b,b,b };
	assign out[14:10] = ~{ a,b,c,d,e } ^ { c,c,c,c,c };
	assign out[9:5]   = ~{ a,b,c,d,e } ^ { d,d,d,d,d };
	assign out[4:0]   = ~{ a,b,c,d,e } ^ { e,e,e,e,e };

endmodule

///////////////////////or/////////////////

//module top_module (
//	input a, b, c, d, e,
//	output [24:0] out
//);

//	wire [24:0] top, bottom;
//	assign top    = { {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} };
//	assign bottom = {5{a,b,c,d,e}};
//	assign out = ~top ^ bottom;	// Bitwise XNOR

	// This could be done on one line:
	// assign out = ~{ {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} } ^ {5{a,b,c,d,e}};
	
//endmodule
