`timescale 1ns / 1ps

module writereg #( parameter CLK_PER_HALF_BIT = 434, parameter INST_SIZE = 10, parameter BRAM_SIZE = 18)
	(input wire clk,
	input wire rstn,
	input wire out,
	input wire memtoreg,
	input wire [31:0] douta,
	input wire [31:0] d,
	input wire [4:0] regdst,
	output wire txd,
	output wire [31:0] dtowrite);

	parameter BUFFER_SIZE = 12;
	logic [8:0] buffer[BUFFER_SIZE**2-1:0];

	logic [BUFFER_SIZE-1:0] bot;
	logic [BUFFER_SIZE-1:0] top;
	logic [1:0] latancy;

	reg 				 tx_start;
	wire 			 rx_ready;
	wire 			 tx_busy;


   uart_tx #(CLK_PER_HALF_BIT) u1(buffer[bot], tx_start, tx_busy, txd, clk, rstn);

	assign dtowrite = memtoreg ? douta : d;

	always @(posedge clk) begin
		if(~rstn) begin
			bot <= 0;
			top <= 0;
			latancy <= 0;
		end
		else begin
			if (out) begin
				buffer[top] <= dtowrite[7:0];
				top <= top + 1;
			end

			if(latancy == 1) begin
				tx_start <= 0;
				bot <= bot + 1;
				latancy <= 0;
			end
			else begin
				if (~tx_busy && top != bot) begin
					tx_start <= 1;
					latancy <= latancy + 1;
				end
			end
		end
	end
				
endmodule
`default_nettype wire
