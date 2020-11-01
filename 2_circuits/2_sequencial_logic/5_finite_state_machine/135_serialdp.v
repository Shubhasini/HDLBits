// -----------------------------------------------------------------------------
// Copyright (c) 2020 All rights reserved
// -----------------------------------------------------------------------------
// Author                 :  Shubhasini D (shubhasinid@gmail.com)
// File                   :  135_serialdp.v
// Create                 :  2020-09-23 14:55:22
// Revision               :  2020-09-23 14:55:24
// url of que.            :  https://hdlbits.01xz.net/wiki/Fsm_serialdp
// Description            :
//
// -----------------------------------------------------------------------------

module top_module (
	input        clk     ,
	input        in      ,
	input        reset   , // Synchronous reset
	output [7:0] out_byte,
	output       done
);//

	// Modify FSM and datapath from Fsm_serialdata
	reg [3:0] present_state, next_state; //state decl
	reg [7:0] out          ;
	reg       odd, done_reg;
	reg       reset_p      ;

	//start bit =0, stop bit=1
	parameter idle = 0, start = 1, bit1=2, bit2 = 3         ;
	parameter bit3 = 4, bit4 = 5,  bit5=6,  bit6 = 7        ;
	parameter bit7 = 8, bit8 = 9, pr= 10, stop = 11, err= 12;


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
			case (present_state)
				//in=0 -> start bit
				idle    : next_state = in ? idle : start; //start bit is zero
				start   : next_state = bit1;
				bit1    : next_state = bit2;
				bit2    : next_state = bit3;
				bit3    : next_state = bit4;
				bit4    : next_state = bit5;
				bit5    : next_state = bit6;
				bit6    : next_state = bit7;
				bit7    : next_state = bit8;
				bit8    : next_state = pr;
				pr      : next_state = in ? idle : err;
				err     : next_state = in ? idle : err;
				default : next_state = idle;
			endcase
		end

	//output logic
	assign done = done_reg;


	// New: Datapath to latch input bits.
	assign out_byte[7:0] = done ? out : 8'd0;
	// New: Add parity checking.

	always @(posedge clk)
		begin
			if (reset) begin
				out      <= 8'b0;
				reset_p  <= 1'b1;
				done_reg <= 1'b0;
			end
			else
				if (next_state == bit1 || next_state == bit2 || next_state == bit3 || next_state == bit4 || next_state == bit5 || next_state == bit6 || next_state == bit7 || next_state == bit8)
					begin
						out <= {in, out[7:1]};
					end
			else
				if (next_state == start) begin
					out      <= 8'b0;
					reset_p  <= 1'b0;
					done_reg <= 1'b0;
				end
			else
				if (next_state == idle) begin
					done_reg <= odd;
				end
			else if (next_state == pr) begin
				reset_p <= 1'b1;
			end
		end

	parity i_parity (.clk(clk), .reset(reset|reset_p), .in(in), .odd(odd));
			endmodule

module parity (
	input      clk  ,
	input      reset,
	input      in   ,
	output reg odd
);

	always @(posedge clk)
		if (reset) odd <= 0;
		else if (in) odd <= ~odd;
	endmodule