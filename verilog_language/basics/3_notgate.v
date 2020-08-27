//inverter.v
module top_module (
	input  in ,
	output out
);
	//Create a module that implements a NOT gate.
	assign out = !in;
endmodule
