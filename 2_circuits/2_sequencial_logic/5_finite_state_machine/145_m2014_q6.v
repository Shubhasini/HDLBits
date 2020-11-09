// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 : Shubhasini D (shubhasinid@gmail.com)
// File                   : 145_m2014_q6.v
// Create                 : 2020-11-08 18:55:00
// Revision               : 2020-11-08 19:02:22
// url of que.            :
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input  clk  ,
	input  reset, // synchronous reset
	input  w    ,
	output z
);

	reg [2:0] present_state, next_state;

	parameter A = 0, B =1 , C =2;
	parameter D = 3, E = 4, F= 5;

	always @(posedge clk) begin : proc_
		if(reset) begin
			present_state <= A;
		end else begin
			present_state <= next_state;
		end
	end

	always @(*)
		begin : proc
			case (present_state)
				A       : next_state = w ? A : B;
				B       : next_state = w ? D : C;
				C       : next_state = w ? D : E;
				D       : next_state = w ? A : F;
				E       : next_state = w ? D : E;
				F       : next_state = w ? D : C;
				default : next_state = A;
			endcase
		end

	assign z = (present_state == E) | (present_state == F) ;	
endmodule
