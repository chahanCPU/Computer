`timescale 1ns / 1ps

module ALU #( parameter CLK_PER_HALF_BIT = 434, parameter INST_SIZE = 10)
	(input wire clk,
	input wire rstn,
	input wire [1:0] is_sorf,//special or fpu 01=special, 10=fpu
	input wire instr,
	input wire [INST_SIZE - 1 : 0] pc,
	input wire [31:0] s,
	input wire [31:0] t,
	output reg [31:0] imm,
	output reg [4:0] h,
	output logic [31:0] d);

	localparam OP_LW = 6'b100011;
	localparam OP_SW = 6'b101011;
	localparam OP_ADDI = 6'b001000;
	localparam OP_ANDI = 6'b001100;
	localparam OP_ORI = 6'b001101;
	localparam OP_XORI = 6'b001110;
	localparam OP_SLTI = 6'b001010;
	localparam OP_LUI = 6'b001111;
	localparam OP_BEQ = 6'b000100;
	localparam OP_BGTZ = 6'b000111;
	localparam OP_BLEZ = 6'b000110;
	localparam OP_BNE = 6'b000101;
	localparam OP_J = 6'b000010;
	localparam OP_JAL = 6'b000011;
	localparam OP_OUT = 6'b111111;

	localparam OP_LUI_S = 6'b011111;
	localparam OP_LW_S = 6'b110001;
	localparam OP_SW_S = 6'b111001;


	localparam FUNC_ADD = 6'b100000;
	localparam FUNC_SUB = 6'b100010;
	localparam FUNC_MULT = 6'b011000;
	localparam FUNC_DIV = 6'b011010;
	localparam FUNC_AND = 6'b100100;
	localparam FUNC_OR  = 6'b100101;
	localparam FUNC_XOR  = 6'b100110;
	localparam FUNC_SLT  = 6'b101010;
	localparam FUNC_SLL  = 6'b000000; //change!!!!
	localparam FUNC_SLLV = 6'b000100;
	localparam FUNC_SRL  = 6'b000010;
	localparam FUNC_SRLV = 6'b000110;
	localparam FUNC_JR = 6'b001000;

	localparam FPU_ADD = 6'b000000;
	localparam FPU_SUB = 6'b000001;
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

	logic [31:0] latancy;

	logic [31:0] fpu_add_out;
	logic fpu_add_ovf;
	logic [31:0] fpu_sub_out;
	logic fpu_sub_ovf;
	logic [31:0] fpu_mul_out;
	logic fpu_mul_ovf;
	logic [31:0] fpu_inv_out;
	// logic [31:0] fpu_abs_out;
	// logic [31:0] fpu_neg_out;
	logic [31:0] fpu_sqrt_out;
	logic [31:0] fpu_eq_out;
	logic [31:0] fpu_lt_out;
	logic [31:0] fpu_le_out;
	logic [31:0] fpu_ftoi_out;
	logic [31:0] fpu_itof_out;

	// fadd faddo (s, t, fpu_add_out, fpu_add_ovf);
	// fsub fsubo (s, t, fpu_sub_out, fpu_sub_ovf);
	fmul fmulo (s, t, fpu_mul_out, fpu_mul_ovf);
	// finv finvo (s, fpu_inv_out);
	// fabs fabso (s, fpu_abs_out);
	// fneg fnego (s, fpu_neg_out);
	fsqrt fsqrto (s, fpu_sqrt_out);
	feq feqo (s, t, fpu_eq_out);
	flt flto (s, t, fpu_lt_out);
	fle fleo (s, t, fpu_le_out);
	ftoi ftoio (s, fpu_ftoi_out);
	itof itofo (s, fpu_itof_out);

	always @(posedge clk) begin
		if(~rstn) begin
			d <= 0;
			latancy <= 0;
		end
		else begin
			if(is_sorf == 2'b1) begin
				case(instr)
					FUNC_ADD : begin
						d <= s + t;
					end
					FUNC_SUB : begin
						d <= s - t;
					end
					FUNC_MULT : begin
						d <= s * t;
					end
					FUNC_DIV : begin
						d <= s / t;
					end
					FUNC_AND : begin
						d <= s & t;
					end
					FUNC_OR : begin
						d <= s | t;
					end
					FUNC_XOR : begin
						d <= s ^ t;
					end
					FUNC_SLT : begin
						d <= $signed(s) < $signed(t);
					end
					FUNC_SLL : begin
						d <= t << h;
					end
					FUNC_SLLV : begin
						d <= t << s;
					end
					FUNC_SRL : begin
						d <= t >> h;
					end
					FUNC_SRLV : begin
						d <= t >> h;
					end
				endcase

			end
			else if (is_sorf == 2'b10) begin
				case (instr)
					FPU_ADD : begin
						if(latancy == 2) begin
							latancy <= 0;
							d <= fpu_add_out;
						end
						else latancy <= latancy + 1;
					end
					FPU_SUB : begin
						if(latancy == 2) begin
							latancy <= 0;
							d <= fpu_sub_out;
						end
						else latancy <= latancy + 1;
					end
					FPU_MUL : begin
						if(latancy == 2) begin
							latancy <= 0;
							d <= fpu_mul_out;
						end
						else latancy <= latancy + 1;
					end
					FPU_INV : begin
						d <= fpu_inv_out;
					end
					// FPU_ABS : begin
					// 	d <= fpu_abs_out;
					// end
					// FPU_NEG : begin
					//  d <= fpu_neg_out;
					// end
			
					FPU_SQRT : begin
						if(latancy == 2) begin
							latancy <= 0;
							d <= fpu_sqrt_out;
						end
						else latancy <= latancy + 1;
					end
					FPU_EQ : begin
						d <= fpu_eq_out;
					end
					FPU_LT : begin
						d <= fpu_lt_out;
					end
					FPU_LE : begin
						d <= fpu_le_out;
					end
			
					FPU_FTOI : begin
						d <= fpu_ftoi_out;
					end
					
					FPU_ITOF : begin
						d <= fpu_itof_out;
					end
				endcase
			end
			else begin
				case (instr)
					OP_ADDI: begin
						d <= s + imm;
					end
					OP_ANDI: begin
						d <= s & imm;
					end
					OP_ORI: begin
						d <= s | imm;
					end
					OP_XORI: begin
						d <= s ^ imm;
					end
					OP_SLTI: begin
						d <= $signed(s) < $signed(imm);
					end
					OP_LUI: begin
						d <= imm;
					end
					OP_BEQ: begin
						d <= (s == t);
					end
					OP_BGTZ: begin
						d <= (s > 0);
					end
					OP_BLEZ: begin
						d <= (s <= 0);
					end
					OP_BNE: begin
						d <= (s != t);
					end
				endcase
			end
		end
	end

endmodule
`default_nettype wire
