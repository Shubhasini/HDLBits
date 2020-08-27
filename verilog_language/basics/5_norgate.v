//nor_gate.v

module top_module (
	input  a  ,
	input  b  ,
	output out
);
	//Create a module that implements a NOR gate.
	assign out = !(a | b);
endmodule
