// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 139_ece241_2014_q5b.v
// Create                 : 2020-11-01 17:32:42
// Revision               : 2020-11-01 17:32:43
// url of que.            : https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q5b
// Description            : Mealy machine
//
// -----------------------------------------------------------------------------

module top_module (
	input      clk   ,
	input      areset,
	input      x     ,
	output reg z
);

	reg [1:0] present_state, next_state;

	parameter A = 1, B=2;

	always @(posedge clk, posedge areset)
		begin : proc_
			if (areset) begin
				present_state <= A;
			end
			else
				present_state <= next_state;
		end

	always @(*)
		begin : proc
			case (present_state)
				A :
					begin
						next_state = x ? B : A ;
						z          = x;
					end

				B :
					begin
						next_state = B ;
						z          = ~x;
					end
				default :
					begin
						next_state = A;
						z          = 1'b0;
					end
			endcase
		end
endmodule
