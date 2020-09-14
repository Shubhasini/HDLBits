// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 133_Fsm_serial.v
// Create           : 2020-09-14 19:50:51
// Revision         : 2020-09-14 19:50:52
// url of que.      : https://hdlbits.01xz.net/wiki/Fsm_serial
// Description      :
//
// -----------------------------------------------------------------------------

module top_module (
	input  clk  ,
	input  in   ,
	input  reset, // Synchronous reset
	output done
);

	reg [3:0] present_state, next_state;

    //start bit =0, stop bit=1
	parameter idle = 0, start = 1, bit1=2, bit2 = 3 ;
	parameter bit3 = 4, bit4 = 5,  bit5=6,  bit6 = 7;
	parameter bit7 = 8, bit8 = 9, stop = 10, err= 11;

	always @(posedge clk)
		begin : proc_
			if (reset)
				present_state <= idle; //initial state
			else
				present_state <= next_state;
		end

	//state transition

	always @(*)
		begin : proc
			next_state = idle;
			case (present_state)
				//in=0 -> start bit
				idle    : next_state = in ? idle : start;
				start   : next_state = bit1;
				bit1    : next_state = bit2;
				bit2    : next_state = bit3;
				bit3    : next_state = bit4;
				bit4    : next_state = bit5;
				bit5    : next_state = bit6;
				bit6    : next_state = bit7;
				bit7    : next_state = bit8;
				bit8    : next_state = in ? stop : err;
				//in=1 -> stop bit
				stop    : next_state = in ? idle : start;
				//err -> reject byte, search in =1 for next byte
				err     : next_state = in ? idle : err;
				default : next_state = idle;
			endcase
		end

	//output logic
	assign done = (present_state == stop);
endmodule 