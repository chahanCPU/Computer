`timescale 1ns / 1ps

module top(

		     input wire  rxd,
		     output wire txd,
		     input wire  clk,
		     input wire  rstn,
			 output wire [7:0] led);

	localparam CLK_PER_HALF_BIT = 434;
	localparam INST_SIZE = 8;
	localparam BRAM_SIZE = 15;

	localparam OP_SPECIAL = 6'b000000;
	localparam OP_FPU = 6'b010001;
	localparam OP_LW = 6'b100011;
	localparam OP_SW = 6'b101011;
	localparam OP_ADDI = 6'b001000;
	localparam OP_ANDI = 6'b001100;
	localparam OP_ORI = 6'b001101;
	localparam OP_XORI = 6'b001110;
	localparam OP_SLTI = 6'b001010;
	localparam OP_BEQ = 6'b000100;
	localparam OP_BGTZ = 6'b000111;
	localparam OP_BLEZ = 6'b000110;
	localparam OP_BNE = 6'b000101;
	localparam OP_J = 6'b000010;
	localparam OP_JAL = 6'b000011;
	localparam OP_OUT = 6'b111111;


	localparam FUNC_ADD = 6'b100000;
	localparam FUNC_SUB = 6'b100010;
	localparam FUNC_MULT = 6'b011000;
	localparam FUNC_DIV = 6'b011001;
	localparam FUNC_AND = 6'b100100;
	localparam FUNC_OR  = 6'b100101;
	localparam FUNC_XOR  = 6'b100110;
	localparam FUNC_SLT  = 6'b100110;
	localparam FUNC_SLL  = 6'b111111; //change!!!!
	localparam FUNC_SLLV = 6'b000100;
	localparam FUNC_SRL  = 6'b000010;
	localparam FUNC_SRLV = 6'b000110;
	localparam FUNC_JR = 6'b001000;


	localparam FPU_ADD = 6'b000000;
	localparam FPU_SUB = 6'b000001; //check!!!!!!!
	localparam FPU_MUL = 6'b000010;
	localparam FPU_INV = 6'b000011;
	localparam FPU_ABS = 6'b000101;
	localparam FPU_NEG = 6'b000111;
	localparam FPU_SQRT = 6'b000100;
	localparam FPU_EQ = 6'b110010;
	localparam FPU_LT = 6'b110100;
	localparam FPU_LE = 6'b110110;
	localparam FPU_FTOI = 6'b001000;
	localparam FPU_ITOF = 6'b001001;

	localparam STALL = 0;
	localparam LOAD = 1;
	localparam EXEC = 2;

   reg [7:0] 			 data;
   reg 				 data_valid;
   wire [7:0] 			 rdata;
   reg 				 tx_start;
   wire 			 rx_ready;
   wire 			 tx_busy;
   wire 			 ferr;

   reg [31:0] inst_mem[(2 ** INST_SIZE - 1) : 0];

	logic [31:0] addra32;
	logic [BRAM_SIZE - 1 : 0] addra;
	logic [31:0] dina;
	logic ena;
	logic [0:0] wea;
	logic [31:0] douta;
	logic [31:0] inst;
	logic [31:0] immd;
	logic [31:0] signed_immd;

	


	BRAM BRAM (
		.addra (addra),
		.dina (dina),
		.wea (wea),
		.clka (clk),
		.douta (douta));

	

   uart_rx #(CLK_PER_HALF_BIT) u2(rdata, rx_ready, ferr, rxd, clk, rstn);
   uart_tx #(CLK_PER_HALF_BIT) u1(data, tx_start, tx_busy, txd, clk, rstn);

   logic [7:0] mode;
   logic [INST_SIZE - 1 : 0] pc;
   logic [1:0] pc_sub;
   reg [31:0][31:0] gpr = {32'b1110100, 32'b100000000000, 32'b100000000000, {27{32'bx}}, 32'b11111111111111100, 32'b0};

   logic [1:0] latancy;


   assign addra32 = (gpr[inst[25:21]] + {{16{inst[15]}}, inst[15:0]}) >> 2;
   assign addra = addra32[BRAM_SIZE - 1:0];
   assign inst = inst_mem[pc >> 2];
   assign immd = {16'b0, inst[15:0]};
   assign signed_immd = {{16{inst[15]}}, inst[15:0]};
   assign pc_sub = pc[1:0];
   assign led = pc[7:0] | (mode << 4);
   assign dina = gpr[inst[20:16]];
   assign wea = (mode == EXEC && inst[31:26] == OP_SW);

   reg [31:0][31:0] fpr = {32'b1110100, {29{32'bx}}, 32'b10010, 32'b0};

	logic [31:0] fpu_add_out;
	logic fpu_add_ovf;
	logic [31:0] fpu_sub_out;
	logic fpu_sub_ovf;
	logic [31:0] fpu_mul_out;
	logic fpu_mul_ovf;
	logic [31:0] fpu_inv_out;
	// logic [31:0] fpu_abs_out;
	// logic [31:0] fpu_neg_out;
	// logic [31:0] fpu_sqrt_out;
	logic [31:0] fpu_eq_out;
	logic [31:0] fpu_lt_out;
	logic [31:0] fpu_le_out;
	// logic [31:0] fpu_ftoi_out;
	// logic [31:0] fpu_itof_out;

	// fadd faddo (fpr[inst[20:16]], fpr[inst[15:11]], fpu_add_out, fpu_add_ovf);
	// fsub fsubo (fpr[inst[20:16]], fpr[inst[15:11]], fpu_sub_out, fpu_sub_ovf);
	// fmul fmulo (fpr[inst[20:16]], fpr[inst[15:11]], fpu_mul_out, fpu_mul_ovf);
	// finv finvo (fpr[inst[15:11]], fpu_inv_out);
	// fabs fabso (fpr[inst[15:11]], fpu_abs_out);
	// fneg fnego (fpr[inst[15:11]], fpu_neg_out);
	// fsqrt fsqrto (fpr[inst[15:11]], fpu_sqrt_out);
	// feq feqo (fpr[inst[20:16]], fpr[inst[15:11]], fpu_eq_out);
	// flt flto (fpr[inst[20:16]], fpr[inst[15:11]], fpu_lt_out);
	// fle fleo (fpr[inst[20:16]], fpr[inst[15:11]], fpu_le_out);
	// ftoi ftoio (fpr[inst[15:11]], fpu_ftoi_out);
	// itof itofo (gpr[inst[15:11]], fpu_itof_out);


   always @(posedge clk) begin
    if (~rstn) begin
		 data <= 8'b0;
		 data_valid <= 0;
		 tx_start <= 0;
		 pc <= 0;
		 latancy <= 0;
		 // dina <= 0;
		 // wea <= 0;
		 mode <= STALL;
	end 
	else begin
		if (mode == STALL) begin
			if (rx_ready && rdata == 8'b10101010) begin
				mode <= LOAD;
			end
		end
		else if (mode == LOAD) begin
			 if((pc >> 2)  && inst_mem[(pc >> 2) - 1] == 32'b0) begin
				 mode <= EXEC;
				 pc <= 0;
			 end
			 if (rx_ready) begin
				inst_mem[pc >> 2][24 - pc_sub * 8 +: 8] <= rdata;
				pc <= pc + 1;
			 end
		end

		else begin
			case (inst[31:26])
				OP_SPECIAL: begin
					case (inst[5:0])
						FUNC_ADD : begin
							gpr[inst[15:11]] <= gpr[inst[25:21]] + gpr[inst[20:16]];
							pc <= pc + 4;
						end
						FUNC_SUB : begin
							gpr[inst[15:11]] <= gpr[inst[25:21]] - gpr[inst[20:16]];
							pc <= pc + 4;
						end
						FUNC_MULT : begin
							gpr[inst[15:11]] <= gpr[inst[25:21]] * gpr[inst[20:16]];
							pc <= pc + 4;
						end
						FUNC_DIV : begin
							gpr[inst[15:11]] <= gpr[inst[25:21]] / gpr[inst[20:16]];
							pc <= pc + 4;
						end
						FUNC_AND : begin
							gpr[inst[15:11]] <= gpr[inst[25:21]] & gpr[inst[20:16]];
							pc <= pc + 4;
						end
						FUNC_OR : begin
							gpr[inst[15:11]] <= gpr[inst[25:21]] | gpr[inst[20:16]];
							pc <= pc + 4;
						end
						FUNC_XOR : begin
							gpr[inst[15:11]] <= gpr[inst[25:21]] ^ gpr[inst[20:16]];
							pc <= pc + 4;
						end
						FUNC_SLT : begin
							gpr[inst[15:11]] <= gpr[inst[25:21]] < $signed(gpr[inst[20:16]]);
							pc <= pc + 4;
						end
						FUNC_SLL : begin
							gpr[inst[15:11]] <= gpr[inst[20:16]] << inst[10:6];
							pc <= pc + 4;
						end
						FUNC_SLLV : begin
							gpr[inst[15:11]] <= gpr[inst[25:21]] << gpr[inst[20:16]];
							pc <= pc + 4;
						end
						FUNC_SRL : begin
							gpr[inst[15:11]] <= gpr[inst[20:16]] >> inst[10:6];
							pc <= pc + 4;
						end
						FUNC_SRLV : begin
							gpr[inst[15:11]] <= gpr[inst[25:21]] >> gpr[inst[20:16]];
							pc <= pc + 4;
						end
						FUNC_JR : begin
							pc <= gpr[inst[25:21]];
						end
					endcase
				end

				// OP_FPU: begin
				// 	case (inst[5:0])
				// 		FPU_ADD : begin
				// 			if(latancy == 2) begin
				// 				latancy <= 0;
				// 				fpr[inst[10:6]] <= fpu_add_out;
				// 				pc <= pc + 4;
				// 			end
				// 			else latancy <= latancy + 1;
				// 		end
				// 		FPU_SUB : begin
				// 			if(latancy == 2) begin
				// 				latancy <= 0;
				// 				fpr[inst[10:6]] <= fpu_sub_out;
				// 				pc <= pc + 4;
				// 			end
				// 			else latancy <= latancy + 1;
				// 		end
				// 		FPU_MUL : begin
				// 			if(latancy == 2) begin
				// 				latancy <= 0;
				// 				fpr[inst[10:6]] <= fpu_mul_out;
				// 				pc <= pc + 4;
				// 			end
				// 			else latancy <= latancy + 1;
				// 		end
				// 		FPU_INV : begin
				// 			fpr[inst[10:6]] <= fpu_inv_out;
				// 			pc <= pc + 4;
				// 		end
				// 		// FPU_ABS : begin
				// 		// 	fpr[inst[10:6]] <= fpu_abs_out;
				// 		// 	pc <= pc + 4;
				// 		// end
				// 		// FPU_NEG : begin
				// 		// 	fpr[inst[10:6]] <= fpu_neg_out;
				// 		// 	pc <= pc + 4;
				// 		// end
				//
				// 		// FPU_SQRT : begin
				// 		// 	fpr[inst[10:6]] <= fpu_sqrt_out;
				// 		// 	pc <= pc + 4;
				// 		// end
				// 		FPU_EQ : begin
				// 			gpr[inst[10:6]] <= fpu_eq_out;
				// 			pc <= pc + 4;
				// 		end
				// 		FPU_LT : begin
				// 			gpr[inst[10:6]] <= fpu_lt_out;
				// 			pc <= pc + 4;
				// 		end
				// 		FPU_LE : begin
				// 			gpr[inst[10:6]] <= fpu_le_out;
				// 			pc <= pc + 4;
				// 		end
				//
				// 		// FPU_FTOI : begin
				// 		// 	gpr[inst[10:6]] <= fpu_ftoi_out;
				// 		// 	pc <= pc + 4;
				// 		// end
				// 		//
				// 		// FPU_ITOF : begin
				// 		// 	fpr[inst[10:6]] <= fpu_itof_out;
				// 		// 	pc <= pc + 4;
				// 		// end
				//
				// 	endcase
				// end

				OP_ADDI: begin
					gpr[inst[20:16]] <= gpr[inst[25:21]] + signed_immd;
					pc <= pc + 4;
				end
				OP_ANDI: begin
					gpr[inst[20:16]] <= gpr[inst[25:21]] & immd;
					pc <= pc + 4;
				end
				OP_ORI: begin
					gpr[inst[20:16]] <= gpr[inst[25:21]] | immd;
					pc <= pc + 4;
				end
				OP_XORI: begin
					gpr[inst[20:16]] <= gpr[inst[25:21]] ^ immd;
					pc <= pc + 4;
				end
				OP_SLTI: begin
					gpr[inst[20:16]] <= $signed(gpr[inst[25:21]]) < $signed(signed_immd);
					pc <= pc + 4;
				end
				OP_BEQ: begin
					if(gpr[inst[25:21]] == gpr[inst[20:16]]) begin
						pc <= (pc & 32'hf0000000) | {14'b0, inst[15:0], 2'b0};
					end
					else begin
						pc <= pc + 4;
					end
				end
				OP_BGTZ: begin
					if(gpr[inst[25:21]] > 0) begin
						pc <= (pc & 32'hf0000000) | {14'b0, inst[15:0], 2'b0};
					end
					else begin
						pc <= pc + 4;
					end
				end
				OP_BLEZ: begin
					if(gpr[inst[25:21]] <= 0) begin
						pc <= (pc & 32'hf0000000) | {14'b0, inst[15:0], 2'b0};
					end
					else begin
						pc <= pc + 4;
					end
				end
				OP_BNE: begin
					if(gpr[inst[25:21]] != gpr[inst[20:16]]) begin
						pc <= (pc & 32'hf0000000) | {14'b0, inst[15:0], 2'b0};
					end
					else begin
						pc <= pc + 4;
					end
				end
				OP_J: begin
					pc <= (pc & 32'hf0000000) | {4'b0, inst[25:0], 2'b0};
				end
				OP_JAL: begin
					pc <= (pc & 32'hf0000000) | {4'b0, inst[25:0], 2'b0};
					gpr[31] <= pc + 4;
				end

				OP_SW: begin
					// if (latancy == 1) begin
					// 	wea <= 0;
					// 	latancy <= 0;
					// 	pc <= pc + 4;
					// end
					// else begin
					// 	dina <= gpr[inst[20:16]];
					// 	wea <= 1;
					// 	latancy <= latancy + 1;
					// end
					pc <= pc + 4;
				end
				OP_LW: begin
					if (latancy == 1) begin
						gpr[inst[20:16]] <= douta;
						latancy <= 0;
						pc <= pc + 4;
					end
					else begin
						latancy <= latancy + 1;
					end
				end
				OP_OUT: begin
					if (latancy == 1) begin
						tx_start <= 0;
						latancy <= 0;
						pc <= pc + 4;
					end
					else begin
						if(~tx_busy) begin
							tx_start <= 1;
							data <= gpr[inst[25:21]][7:0];
							latancy <= latancy + 1;
						end
					end
				end
			endcase
		end
	 end
   end

endmodule
`default_nettype wire
