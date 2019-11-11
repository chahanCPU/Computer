`timescale 1ns / 1ps
`default_nettype none

// HALF_TMCLK corresponds to 100 MHz system clock
// TMBIT and CLK_PER_HALF_BIT corresponds to 9600 bps

module test_memory();
	

	logic clk = 0;
	logic rstn = 0;

	int i = 0;

	loadw lw(clk, rstn);

	initial begin
		clk <= 0;
		rstn <= 0;
		#5;
		for(i = 0; i < 1000000; i++) begin
			if (i == 10) begin
				rstn <= 1;
			end
			clk <= !clk;
			#5;
		end
	end

endmodule

