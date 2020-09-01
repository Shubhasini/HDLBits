
`timescale 1ns/1ps

module tb_top_module (); /* this is automatically generated */

	logic rstb;
	logic srst;
	logic clk;

	// clock
	initial begin
		clk = '0;
		forever #(0.5) clk = ~clk;
	end

	// reset
	initial begin
		rstb <= '0;
		srst <= '0;
		#20
		rstb <= '1;
		repeat (5) @(posedge clk);
		srst <= '1;
		repeat (1) @(posedge clk);
		srst <= '0;
	end

	// (*NOTE*) replace reset, clock, others

	logic  d;
	logic  q;

	top_module inst_top_module (.clk(clk), .d(d), .q(q));

	initial begin
		d = 1;
		#5
		d=0;
		#10
		d= 1;
		#15
		$finish;

		repeat(10)@(posedge clk);
		$finish;
	end

	// dump wave
	initial begin
		if ( $test$plusargs("fsdb") ) begin
			$fsdbDumpfile("tb_top_module.fsdb");
			$fsdbDumpvars(0, "tb_top_module", "+mda", "+functions");
		end
	end

endmodule
