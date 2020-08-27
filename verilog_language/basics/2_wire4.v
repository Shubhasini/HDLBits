//four_wires.v

module top_module (
	input  a, b, c,
	output w, x, y, z
);
	//a -> w
    //b -> x
    //b -> y
    //c -> z
	assign w = a;
	assign x = b;
	assign y = b;
	assign z = c;
endmodule
