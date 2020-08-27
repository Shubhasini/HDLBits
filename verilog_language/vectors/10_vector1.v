//vector1.v

`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module (
	input  wire [15:0] in    ,
	output wire [ 7:0] out_hi,
	output wire [ 7:0] out_lo
);
	//type [upper:lower] vector_name;
	//reg [7:0] mem [255:0];
	// 256 unpacked elements, each of which is a 8-bit packed vector of reg.
	//reg mem2 [28:0];
	// 29 unpacked elements, each of which is a 1-bit reg.
	assign out_lo = in [7:0] ;
	assign out_hi = in [15:8] ;
endmodule
