// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 101_2014_q7a.v
// Create           : 2020-09-01 22:14:51
// Revision         : 2020-09-01 22:45:47
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
	input            clk     ,
	input            reset   ,
	input            enable  ,
	output reg [3:0] Q       ,
	output           c_enable,
	output           c_load  ,
	output     [3:0] c_d
);
    reg [3:0] q_inst;

    assign c_enable = enable;
    assign c_d = c_load ? 1 : 0; 
	// 1-12 counter
	always @(posedge clk)
		begin : proc_
          if(reset || (Q == 4'hc && enable)) begin
				Q <= 1;
				c_load <=1;
			end
			else if (enable) begin
                Q<=Q+1;
                q_inst <= q_inst + 1;
			end
		end
    
    count4 the_counter (clk,c_enable,c_load,c_d,q_inst);
endmodule
