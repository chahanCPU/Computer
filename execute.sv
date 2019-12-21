`timescale 1ns / 1ps

module execute #( parameter CLK_PER_HALF_BIT = 434, parameter INST_SIZE = 10, parameter BRAM_SIZE = 18)
	(input wire clk,
	input wire rstn,
	input wire rxd,
	input wire [31:0] pc,
	input wire [5:0] instr,
	input wire [1:0] is_sorf,
	input wire [31:0] s,
	input wire [31:0] t,
	input wire [31:0] imm,
	input wire [4:0] h,
	input wire branch,
	input wire jump,
	input wire rea, //read enable
	input wire wea, //write enable
	input wire is_jal,
	input wire is_jr,
	input wire is_in,
	input wire [3:0] latancy,
	output wire [31:0] d,
	output wire [31:0] bpc,
	output wire in_valid);



	ALU #(CLK_PER_HALF_BIT, INST_SIZE) _ALU(clk, rstn, rxd, is_sorf, instr, s, t, imm, h, is_in, latancy, d, in_valid);

	assign bpc = ((pc & 32'hf0000000) | (imm << 2));
endmodule
`default_nettype wire
