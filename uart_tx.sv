`timescale 1ns / 1ps

module uart_tx #(CLK_PER_HALF_BIT = 5208) (
               input wire [7:0] sdata,
               input wire       tx_start,
               output logic     tx_busy,
               output logic     txd,
               input wire       clk,
               input wire       rstn);
   
   localparam e_clk_bit = CLK_PER_HALF_BIT * 2 - 3;

   
   logic [7:0]                  txbuf;
   logic [3:0]                  status;
   logic [31:0]                 counter;
   logic                        next;
   
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
   localparam s_stall_bit1 = 10;
   localparam s_stall_bit2 = 11;
   localparam s_stall_bit3 = 12;
   localparam s_stall_bit4 = 13;
   localparam s_stall_bit5 = 14;
   localparam s_stop_bit = 15;
   
   always @(posedge clk) begin
      if (~rstn) begin
         txbuf <= 8'b0;
         status <= s_idle;
         txd <= 1;
         tx_busy <= 0;
		 counter <= 0;
      end else begin
         if (status == s_idle) begin
            if (tx_start) begin
               txbuf <= sdata;
               status <= s_start_bit;
               txd <= 0;
               tx_busy <= 1;
			   counter <= 0;
            end
         end 
		 else if (status == s_stop_bit && counter == e_clk_bit) begin
			   txd <= 1;
			   status <= s_idle;
			   tx_busy <= 0;
			   counter <= 0;
         end 
		 else if (counter == e_clk_bit) begin
            if (status == s_bit_7 || status == s_stall_bit1 
				|| status == s_stall_bit2 || status == s_stall_bit3
				|| status == s_stall_bit4 || status == s_stall_bit5) begin
               txd <= 1;
               status <= status + 1;
			   counter <= 0;
            end else begin
               txd <= txbuf[0];
               txbuf <= txbuf >> 1;
               status <= status + 1;
			   counter <= 0;
            end
         end
		 else begin
			 counter <= counter + 1;
		 end
      end
   end
endmodule // uart_tx
`default_nettype wire
