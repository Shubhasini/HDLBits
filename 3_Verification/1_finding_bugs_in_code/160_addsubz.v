// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 160_addsubz.v
// Create                 : 2020-11-29 11:24:02
// Revision               : 2020-11-29 11:24:03
// url of que.            : https://hdlbits.01xz.net/wiki/Bugs_addsubz
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input            do_sub        ,
	input      [7:0] a             ,
	input      [7:0] b             ,
	output reg [7:0] out           ,
	output reg       result_is_zero
);//

	always @(*) begin
		case (do_sub)
			0 : out = a+b;
			1 : out = a-b;
		endcase
		result_is_zero = !out; //logical not
	end

endmodule