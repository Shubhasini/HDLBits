//xnor.v

module top_module (
	input  a  ,
	input  b  ,
	output out
);
	//Create a module that implements an XNOR gate.
	assign out = !(a ^ b);
endmodule
