// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author           : Shubhasini D (shubhasinid@gmail.com)
// File             : 134_serialdata.v
// Create           : 2020-09-23 14:31:58
// Revision         : 2020-09-23 14:32:09
// url of que.      : https://hdlbits.01xz.net/wiki/Fsm_serialdata
// Description      :
//
// -----------------------------------------------------------------------------

module top_module (
	input        clk     ,
	input        in      ,
	input        reset   , // Synchronous reset
	output [7:0] out_byte,
	output       done
);//

	// Use FSM from Fsm_serial
	reg [3:0] present_state, next_state;
	reg [7:0] out          ;

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
				idle  : next_state = in ? idle : start;
				start :
					begin
						next_state = bit1;
						out[0]     = in;  //store the input value
					end
				bit1    :
					begin
						next_state = bit2;
						out[1] = in;
					end
				bit2    :
					begin
						next_state = bit3;
						out[2] = in;
					end
				bit3    :
					begin
						next_state = bit4;
						out[3] = in;
					end
				bit4    :
					begin
						next_state = bit5;
						out[4] = in;
					end
				bit5    :
					begin
						next_state = bit6;
						out[5] = in;
					end
				bit6    :
					begin
						next_state = bit7;
						out[6] = in;
					end
				bit7    :
					begin
						next_state = bit8;
						out[7] = in;
					end
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


	// New: Datapath to latch input bits.
	assign out_byte[7:0] = done ? out : 'x;
endmodule