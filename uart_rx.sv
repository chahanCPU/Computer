`timescale 1ns / 1ps

module uart_rx #(CLK_PER_HALF_BIT = 5208) (
               output logic [7:0] rdata,
               output logic       rdata_ready,
               output logic       ferr,
               input wire         rxd,
               input wire         clk,
               input wire         rstn);

	localparam e_clk_bit = CLK_PER_HALF_BIT * 2 - 1;

	localparam e_clk = CLK_PER_HALF_BIT - 1;

	localparam e_clk_stop_bit = (CLK_PER_HALF_BIT*2*9)/10 - 1;

	(* ASYNC_REG = "true" *) reg [1:0] sync_reg;

	logic [31:0]                counter;
    logic [3:0]                  status;
	logic						next;
	logic						fin_stop_bit;
	logic                       start_read;
	logic						rst_ctr;
	logic                       update;


	localparam s_idle = 0;
	localparam s_start_bit = 1;
	localparam s_bit_0 = 2;
	localparam s_bit_1 = 3;
	localparam s_bit_2 = 4;
	localparam s_bit_3 = 5;
	localparam s_bit_4 = 6;
	localparam s_bit_5 = 7;
	localparam s_bit_6 = 8;
	localparam s_bit_7 = 9;
	localparam s_stop_bit = 10;
   
	always @(posedge clk) begin
      if (~rstn) begin
         counter <= 0;
         next <= 0;
         fin_stop_bit <=0;
      end else begin
         if (counter == e_clk_bit || rst_ctr) begin
            counter <= 0;
         end else begin
            counter <= counter + 1;
         end
         if (~rst_ctr && counter == e_clk_bit) begin
            next <= 1;
         end else begin
            next <= 0;
		 end
		 if (~rst_ctr && counter == e_clk) begin
			start_read <= 1;
         end else begin
            start_read <= 0;
         end
         if (~rst_ctr && counter == e_clk_stop_bit) begin
            fin_stop_bit <= 1;
         end else begin
            fin_stop_bit <= 0;
         end
	 end
  end

  always @(posedge clk) begin
      if (~rstn) begin
         rdata <= 8'b0;
		 rdata_ready <= 0;
         status <= s_idle;
         rst_ctr <= 0;
		 ferr <= 0;
      end else begin
         rst_ctr <= 0;

		 sync_reg <= sync_reg << 1;
		 sync_reg[0] <= rxd;

		 if (update == 1) begin
			 if (sync_reg == 2'b11) begin
				 rdata <= rdata >> 1;
				 rdata[7] <= 1;
				 update = 0;
			 end else if (sync_reg == 2'b0) begin
				 rdata <= rdata >> 1;
				 rdata[7] <= 0;
				 update = 0;
			 end
		 end
         
         if (status == s_idle) begin
			if (rdata_ready == 1) begin
				 rdata_ready = 0;
			end
            if (sync_reg == 2'b0) begin
               status <= s_start_bit;
			   rdata <= 8'b0;
			   rdata_ready <= 0;
               rst_ctr <= 1;
            end
		 end else if (status == s_start_bit) begin
			if (start_read) begin
				rst_ctr <= 1;
				status <= status + 1;
			end
         end else if (status == s_stop_bit) begin
            if (fin_stop_bit) begin
				if (sync_reg == 2'b0) begin
					ferr = 1;
				end
                rdata_ready <= 1;
				status <= s_idle;
            end
         end else if (next) begin
			 update = 1;
            if (status == s_bit_7) begin
               status <= s_stop_bit;
            end else begin
               status <= status + 1;
            end
         end
      end
   end
   
endmodule
`default_nettype wire
