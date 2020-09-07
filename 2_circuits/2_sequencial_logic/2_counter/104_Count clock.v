// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 104_Count clock.v
// Create           : 2020-09-07 13:03:56
// Revision         : 2020-09-07 15:01:46
// Description      : a 12-hour clock (with am/pm indicator)
//
// -----------------------------------------------------------------------------

module top_module (
	input            clk  ,
	input            reset,
	input            ena  ,
	output reg       pm   ,
	output reg [7:0] hh   ,
	output reg [7:0] mm   ,
	output reg [7:0] ss
);

	always @(posedge clk)
		begin : proc
			if (reset) //reset condition
				begin
					pm <= 0;
					hh <= {4'h1,4'h2} ;  //reset to 12 AM
					mm <= 8'd0;
					ss <= 8'd0;
				end
			else
				begin
					if (ena)
						begin
							//////sec condition
							if (ss != {4'h5, 4'h9} )
								begin
									if (ss[3:0] != 4'd9)
										begin
											//increment of sec zero digit
											ss <= ss + 4'd1;
										end
									else
										//increment of sec tenth digit
										begin
											ss[3:0] <= 4'd0;
											ss[7:4] <= ss[7:4]  + 4'd1;
										end
								end
							else  //ss ==59 (bcd)
								begin
									ss      <= 0; //sec turns 0
									mm[7:0] <= mm[7:0] + 1;// min increment by 1
									//////////min condition///////////
								if (mm != {4'h5, 4'h9} )
										begin
											if (mm[3:0] != 4'd9)
												//increment of min zero digit
												begin
													mm <= mm + 4'd1;
												end
											else
												//increment of min tenth digit
												begin
													mm[3:0] <= 4'd0;
													mm[7:4] <= mm[7:4]  + 4'd1;
												end
										end
									else  //mm == 59 & ss==59 (bcd)
										begin
											mm      <= 0; //min turns 0
											hh[7:0] <= hh[7:0] + 1;// hour increment by 1
											/////////hour condition//
											//hh=11 & mm =59 & ss =59
											if(hh == {4'h1, 4'h1})
												pm <= !pm;

											if (hh != {4'h1, 4'h2} )
												begin

												if (hh[3:0] != 4'd9)
													//increment of hh zero digit
													begin
														hh <= hh + 4'd1;
													end
												else
													//increment of hh tenth digit
													begin
														hh[3:0] <= 4'd0;
														hh[7:4] <= hh[7:4]  + 4'd1;
													end
												end
											else //hh = 12 & mm =59 & ss=59
												begin
													hh <= 1;
												end
										end
								end
						end
				end
		end
endmodule