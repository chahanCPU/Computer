`timescale 1ns / 1ps

module memory #( parameter CLK_PER_HALF_BIT = 434, parameter INST_SIZE = 10, parameter BRAM_SIZE = 18)
	(input wire clk,
	input wire rstn,
	input wire [31:0] pc,
	input wire [31:0] bpc,
	input wire branch,
	input wire jump,
	input wire rea, //read enable
	input wire wea, //write enable
	input wire is_jal,
	input wire is_jr,
	input wire [31:0] t,
	input wire [31:0] d,
	output wire [31:0] douta,
	output wire [31:0] npc);

	logic [1:0] latancy;

	assign npc = is_jr ? d 
				: jump ? bpc
				: (branch && d == 32'b1) ? bpc
				: pc + 4;
	
	reg 				 tx_start;
	wire 			 rx_ready;
	wire 			 tx_busy;


	BRAM BRAM (
		.addra (d[BRAM_SIZE+1:2]),
		.dina (t),
		.wea (wea),
		.clka (clk),
		.douta (douta));
				
endmodule
`default_nettype wire
