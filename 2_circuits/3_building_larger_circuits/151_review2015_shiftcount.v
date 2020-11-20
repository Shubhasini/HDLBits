// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 151_review2015_shiftcount.v
// Create                 : 2020-11-18 19:20:33
// Revision               : 2020-11-18 19:20:44
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/review2015_shiftcount
// Description            :  four-bit shift register and down counter
//
// -----------------------------------------------------------------------------

module top_module (
    input clk,
    input shift_ena,
    input count_ena,
    input data,
    output reg [3:0] q);

always @(posedge clk)
	begin : proc_
		if (shift_ena) begin
			q[3:0] <= {q[2:0],data}; //left shift with data input in lsb
		end
		else
			if (count_ena)
				begin
					q <= q - 4'h1; //down counting
				end
	end

endmodule
