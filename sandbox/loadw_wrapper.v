`timescale 1ns / 1ps
`default_nettype none

module loadw_wrapper (
	input wire clk, input wire rstn, output wire [15:0] douta);

	loadw lw(clk, rstn, douta);

endmodule
