`timescale 1ns / 1ps

module fetch #( parameter CLK_PER_HALF_BIT = 434, parameter INST_SIZE = 10)
	(input wire rxd,
	input wire clk,
	input wire mode,
	input wire [INST_SIZE - 1: 0] pc,
	input wire rstn,
	output wire [31:0] inst,
	output reg done);

	localparam STALL = 0;
	localparam LOAD = 1;
	localparam EXEC = 2;


	wire [7:0] 			 rdata;
	wire rx_ready;
	wire ferr;

	logic [INST_SIZE - 1: 0] qc;
	logic [1:0] qc_sub;

	reg [31:0] inst_mem[(2 ** INST_SIZE - 1) : 0];

	assign inst = inst_mem[pc >> 2];
	assign qc_sub = qc[1:0];

	uart_rx #(CLK_PER_HALF_BIT) u2(rdata, rx_ready, ferr, rxd, clk, rstn);

	always @(posedge clk) begin
		if(~rstn) begin
			qc <= 0;
			done <= 0;
		end
		else begin
			if(mode == LOAD) begin
				if(inst_mem[(qc >> 2) - 1] == 32'b111111) begin
					done <= 1;
				end
				if (rx_ready) begin
					inst_mem[qc >> 2][24 - qc_sub * 8 +: 8] <= rdata;
					qc <= qc + 1;
				end
			end
		end
	end

endmodule
`default_nettype wire
