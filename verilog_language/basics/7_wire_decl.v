//Declaring_wires.v

`default_nettype none
module top_module (
	input  a    ,
	input  b    ,
	input  c    ,
	input  d    ,
	output out  ,
	output out_n
);
	wire and1, and2;
	wire or1 ;
	assign and1  = a & b;  //intermidiate wire
	assign and2  = c &d;   //intermidiate wire
	assign or1   = and1 | and2;  //intermidiate wire
	assign out_n = !or1;
	assign out   = or1;  //final output
endmodule
