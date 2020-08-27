//bcdadd100.v
//https://hdlbits.01xz.net/wiki/Bcdadd100

module top_module (
	input  [399:0] a, b,
	input          cin ,
	output         cout,
	output [399:0] sum
);
	wire[99:0] cout_i;

	generate
		genvar i;
		//initial adder with carry input (one digit adder)
		bcd_fadd i_bcd_fadd (
			.a   (a[3:0]       ),
			.b   (b[3:0]       ),
			.cin (cin          ),
			.cout(cout_i[0]    ),
			.sum (sum[3:0])
		);
		for(i=4;i<400;i=i+4)
			begin: bcd_adder_instances  //generating other adder

				bcd_fadd
					i_bcd_fadd0(.a(a[i+3:i]),
						.b   (b[i+3:i]     ),
						.cin (cout_i[i/4-1]),
						.cout(cout_i[i/4]  ),
						.sum (sum[i+3:i]   )
					);
			end
	endgenerate

	assign cout = cout_i[99]; //assigning cout
endmodule
