// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 95_Edgecapture.v
// Create           : 2020-09-01 14:20:36
// Revision         : 2020-09-01 15:59:39
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
	input             clk  ,
	input             reset,
	input      [31:0] in   ,
	output reg [31:0] out
);
	integer        i          ;
	reg     [31:0] delayed_sig; //storing 1 clk cycle delayed signal

	always @(posedge clk)
		begin
			delayed_sig <= in;
			if (reset)  //reset condition
				begin
					out <= '0;
				end
			else
				begin
					for (i = 0; i < 32; i=i+1)
						begin
							//change iff negative edge occures
							if (in[i] == 0 && delayed_sig[i] == 1)
								begin
									out[i] <= 1;
								end
						end
				end
		end
endmodule
