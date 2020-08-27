
//procedures.v
module top_module (
	input       a              ,
	input       b              ,
	output wire out_assign     ,
	output reg  out_alwaysblock
);
	assign out_assign = a & b; //assign statement
	always @(*)
	out_alwaysblock = a & b; //combinational always statement
endmodule
