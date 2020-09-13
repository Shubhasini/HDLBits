// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 131_Fsm_ps2.v
// Create           : 2020-09-12 19:03:53
// Revision         : 2020-09-12 19:03:54
// url of que.      : https://hdlbits.01xz.net/wiki/Fsm_ps2
// Description      :
//
// -----------------------------------------------------------------------------

module top_module (
	input        clk  ,
	input  [7:0] in   ,
	input        reset, // Synchronous reset
	output       done
);
//

	reg [1:0] present_state, next_state;

	parameter byte1=0, byte2=1, byte3=2, dn=3 ;

	// State transition logic (combinational)
	always @(*)
	begin : proc_
     case (present_state)
        byte1 : next_state = in[3] ? byte2 : byte1;
        byte2 : next_state = byte3;
        byte3 : next_state = dn;
        //continue loop
        dn : next_state = in[3] ? byte2 : byte1;
     	default : next_state = byte1;
     endcase
	end

	// State flip-flops (sequential)
	always @(posedge clk)
		begin : proc
			if (reset) begin
				present_state <= byte1;
			end
			else
				present_state <= next_state;
		end

	// Output logic
    assign done = (present_state == dn);
endmodule
