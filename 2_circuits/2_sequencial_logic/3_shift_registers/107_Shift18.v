// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 107_Shift18.v
// Create           : 2020-09-07 22:35:55
// Revision         : 2020-09-07 22:36:06
// Description      : 64-bit arithmetic shift register, with synchronous load.
//
// -----------------------------------------------------------------------------

module top_module (
	input             clk   ,
	input             load  ,
	input             ena   ,
	input      [ 1:0] amount,
	input      [63:0] data  ,
	output reg [63:0] q
);

	always @(posedge clk)
		begin : proc
			if (load)
				q <= data;
			else begin
				if (ena)
					begin
						if (amount == 2'b00) //shift left by 1 bit
							begin
								q <= q << 1;
							end
						if (amount == 2'b01) //shift left by 8 bit
							begin
								q <= q << 8;
							end
						if (amount == 2'b10)
							begin            //shift right by 1 bit
								q <= q >> 1;
								if(q[63] == 1) //sign bit
									q[63] <= 1;
							end
						if (amount == 2'b11) //shift left by 8 bit
							begin
								q <= q >> 8;
								if(q[63] == 1) //sign bit
									q[63:56] <= {8{1'b1}};
							end
					end
			end
		end
endmodule
