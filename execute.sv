`timescale 1ns / 1ps

module execute #( parameter CLK_PER_HALF_BIT = 434, parameter INST_SIZE = 10, parameter BRAM_SIZE = 18)
	(input wire clk,
	input wire rstn,
	input wire [INST_SIZE-1:0] pc,
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
	output wire [31:0] d,
	output wire [INST_SIZE-1:0] bpc);


	ALU #(CLK_PER_HALF_BIT, INST_SIZE) _ALU(clk, rstn, is_sorf, instr, s, t, imm, h, d);

	assign bpc = ((pc & 32'hf0000000) | (imm << 2));
endmodule
`default_nettype wire
