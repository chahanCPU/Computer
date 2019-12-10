`timescale 1ns / 1ps

module fetch #( parameter CLK_PER_HALF_BIT = 434, parameter INST_SIZE = 10)
	(input wire rxd,
	input wire clk,
	input wire mode,
	input wire [31:0] pc,
	input wire rstn,
	output wire [31:0] inst,
	output reg done);

	localparam STALL = 0;
	localparam LOAD = 1;
	localparam EXEC = 2;



	logic [INST_SIZE-1:0] pc_main;

	reg [31:0] inst_mem[(2 ** INST_SIZE - 1) : 0];


	assign inst = inst_mem[pc_main];
	assign pc_main = pc[INST_SIZE+1:2];

	logic [INST_SIZE - 1 : 0] addra;
	logic [31:0] dina;
	logic [0:0] wea;
	logic [31:0] douta;

	logic [1:0] latancy;

	INST_BRAM _INST_BRAM (
		.addra (addra),
		.dina (dina),
		.wea (wea),
		.clka (clk),
		.douta (douta));

	always @(posedge clk) begin
		if(~rstn) begin
			done <= 0;
			latancy <= 0;
			addra <= 0;
			dina <= 0;
			wea <= 0;
		end
		else begin
			if(mode == LOAD) begin
				if(latancy == 0) begin
					if(inst_mem[addra-1] == 32'b111111) begin
						done <= 1;
					end
					else begin
						latancy <= 1;
					end
				end
				else begin
					inst_mem[addra] <= douta;
					addra <= addra + 1;
					latancy <= 0;
				end
			end
		end
	end

endmodule
`default_nettype wire
