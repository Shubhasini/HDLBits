// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 :  Shubhasini D (shubhasinid@gmail.com)
// File                   :  136_Fsm_hdlc.v
// Create                 :  2020-09-23 15:04:18
// Revision               :  2020-09-23 15:04:19
// url of que.            :  https://hdlbits.01xz.net/wiki/Fsm_hdlc
// Description            :  sequence detector
//
// -----------------------------------------------------------------------------

module top_module (
	input      clk  ,
	input      reset, // Synchronous reset
	input      in   ,
	output reg disc ,
	output reg flag ,
	output reg err
);

	reg [3:0] present_state, next_state;

	parameter bit1 = 1, bit2 =2,bit3 =3,bit4 =4,bit5 =5,bit6 =6;
	parameter idle = 7, error = 8, fl=9, discard=10            ;

	always @(posedge clk)
		begin : proc_
			if (reset) begin
				present_state <= idle;
			end
			else
				present_state <= next_state;
		end
	always @(*)
		begin : proc
			case (present_state)
				idle    : next_state = in ? bit1 : idle;
				bit1    : next_state = in ? bit2 : idle;
				bit2    : next_state = in ? bit3 : idle;
				bit3    : next_state = in ? bit4 : idle;
				bit4    : next_state = in ? bit5 : idle;
				bit5    : next_state = in ? bit6 : discard;
				bit6    : next_state = in ? error: fl;
				fl      : next_state = in ? bit1 : idle;
				discard : next_state = in ? bit1 : idle;
				error   : next_state = in ? error: idle;
				default : next_state = idle;
			endcase
		end

	always @(*)
		begin : output_logic
			disc = (present_state == discard);
			err  = (present_state == error);
			flag = (present_state == fl);
		end

endmodule
