//and_gate.v

module top_module (
	input  a  ,
	input  b  ,
	output out
);
	//Create a module that implements an AND gate.
	assign out = a & b;
endmodule
