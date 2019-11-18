`timescale 1ns / 1ps
`default_nettype none

module top_wrapper #(parameter CLK_PER_HALF_BIT = 434) (
	input wire rxd, output wire txd, input wire clk, input wire rstn,
	output wire [7:0] led);

	top #(CLK_PER_HALF_BIT) tp(rxd, txd, clk, rstn, led);

endmodule
