`timescale 1ns / 1ps
`default_nettype none

module loadw (input wire clk, input wire rstn, output wire [15:0] doutaout);

	logic [10:0] addra;
	logic [15:0] dina;
	logic ena;
	logic [0:0] wea;
	logic [31:0] counter;
	logic [15:0] douta;

	BRAM BRAM (
		.addra (addra),
		.dina (dina),
		.wea (wea),
		.clka (clk),
		.douta (douta));

	assign doutaout = douta;

	always @(posedge clk) begin
		if (~rstn) begin
			addra <= 0;
			dina <= 32'b111101;
			wea <= 1'b1;
			ena <= 1;
			counter <= 32'b0;
		end 
		else begin
			if (counter == 32'hfff) begin
				counter <= 0;
				dina <= dina + 1;
				if(dina == 32'b1011111) begin
					wea <= 1'b0;
				end
			// addra <= addra + 1;
			end
			else begin
				counter <= counter + 1;
			end
		end
	// else begin
	end
   
endmodule
