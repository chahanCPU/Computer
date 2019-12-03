`timescale 1ns / 1ps

module writereg #( parameter CLK_PER_HALF_BIT = 434, parameter INST_SIZE = 10, parameter BRAM_SIZE = 18)
	(input wire clk,
	input wire rstn,
	input wire memtoreg,
	input wire [31:0] douta,
	input wire [31:0] d,
	input wire [4:0] regdst,
	input wire [31:0] dtowrite);

	assign dtowrite = memtoreg ? douta : d;
				
endmodule
`default_nettype wire
