// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 132_ps2data.v
// Create           : 2020-09-13 19:52:48
// Revision         : 2020-09-13 19:52:49
// url of que.      : https://hdlbits.01xz.net/wiki/Fsm_ps2data
// Description      :
// 
// -----------------------------------------------------------------------------

module top_module (
	input         clk      ,
	input  [ 7:0] in       ,
	input         reset    , // Synchronous reset
	output [23:0] out_bytes,
	output        done
);
//

	// FSM from fsm_ps2
	reg [ 1:0] present_state, next_state;
	reg [23:0] data         ; 

	parameter byte1 = 0, byte2=1, byte3=2, dn=3;

	// State transition logic (combinational)
	always @(*)
	begin : proc_
		case (present_state)
			byte1   : next_state = in[3] ? byte2 : byte1;
			byte2   : next_state = byte3;
			byte3   : next_state = dn;
			//continue loop
			dn      : next_state = in[3] ? byte2 : byte1;
			default : next_state = byte1;
		endcase
	end

	// State flip-flops (sequential)
	always @(posedge clk)
		begin : proc
			if (reset) begin
				present_state <= byte1;
				data          <= '0;
			end
			else
				present_state <= next_state;
			//to store data
			//byte1 -> data[23:16]
			data[7:0]   <= in[7:0];
			data[15:8]  <= data[7:0];
			data[23:16] <= data[15:8];
		end

	// Output logic
	assign done = (present_state == dn);

	// New: Datapath to store incoming bytes.
	//out_bytes is valide iff done = 1.
	assign out_bytes[23:0] = done ? data : 'x;
endmodule
