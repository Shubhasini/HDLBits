// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 103_Countbcd.v
// Create           : 2020-09-06 12:59:01
// Revision         : 2020-09-06 17:59:33
// Description      :
//
// -----------------------------------------------------------------------------
module top_module (
	input             clk  ,
	input             reset, // Synchronous active-high reset
	output     [ 3:1] ena  ,
	output reg [15:0] q
);
	//4 digit bcd counter
	always @(posedge clk)
		begin : bcd_counter
			if (reset)
				begin
					q = 16'd0; //reset condition

				end
			else
				begin
					q = q + 4'd1; //counting
					if (ena[1] == 1)  //1st bcd digit
						begin
							q[3:0] = 4'd0;
							q[7:4] = q[7:4] + 4'd1;
						end
					if (ena[2] == 1)  //2nd bcd digit
						begin
							q[3:0]  = 4'd0;
							q[7:4]  = 4'd0;
							q[11:8] = q[11:8] + 4'd1;
						end
					if (ena[3] == 1) //3rd bcd digit
						begin
							q[3:0]   = 4'd0;
							q[7:4]   = 4'd0;
							q[11:8]  = 4'd0;
							q[15:12] = q[15:12] + 4'd1;
						end
					if ( q[15:12]== 4'd10) //4th bcd digit
						begin
							q = 0;
						end

				end
		end
	assign ena[1] = q[0] & q[3];  // q[3:0] == 9
	assign ena[2] = q[4] & q[7] & ena[1]; // q[7:0] == 99
	assign ena[3] = q[8] & q[11] & ena[1] & ena[2]; // q[11:0] == 999
endmodule