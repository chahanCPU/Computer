`timescale 1ns / 1ps
`default_nettype none

module top_wrapper (
	input wire rxd, output wire txd, input wire clk, input wire rstn,
	output wire [7:0] led);

	top tp(rxd, txd, clk, rstn, led);

endmodule
