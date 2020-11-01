// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 137_ece241_2013_q8.v
// Create                 : 2020-11-01 14:07:01
// Revision               : 2020-11-01 17:31:12
// url of que.            :
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input      clk    ,
	input      aresetn, // Asynchronous active-low reset
	input      x      ,
	output reg z
);

reg [1:0] present_state, next_state;

parameter bit1 = 1, bit2 =2, bit3 = 3;

always @(posedge clk, negedge aresetn)
	begin : proc_
		if (~aresetn) begin
			present_state <= bit1;
		end
		else
			present_state <= next_state;
	end


always @(*)
	begin : proc
		case (present_state)
			bit1 :
				begin
					next_state = x ? bit2 : bit1 ;
					z          = 1'b0;
				end
			bit2 :
				begin
					next_state = x ? bit2 : bit3 ;
					z          = 1'b0;
				end
			bit3 :
				begin
					next_state = x ? bit2 : bit1;
					z          = x ? 1'b1 : 1'b0 ;
				end
			default : next_state = bit1;
		endcase
	end
endmodule
