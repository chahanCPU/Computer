`timescale 1ns / 1ps

module decode #( parameter CLK_PER_HALF_BIT = 434, parameter INST_SIZE = 10, parameter BRAM_SIZE = 18)
	(input wire clk,
	input wire rstn,
	input wire [31:0] inst,
	output wire [5:0] instr,
	output wire [31:0] s,
	output wire [31:0] t,
	output wire [31:0] imm,
	output wire [4:0] h,
	output wire [BRAM_SIZE-1:0]addra,
	output wire rea, //read enable
	output wire wea, //write enable
	output wire [5:0] destreg,
	output wire [31:0] lreg,
	output wire [1:0] is_sorf);


	localparam OP_SPECIAL = 6'b000000;
	localparam OP_FPU = 6'b010001;
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

	wire [31:0] addra32;
	reg [31:0][31:0] gpr = {32'b1110100, 32'b0, 32'b0, {27{32'bx}}, 32'b11111111111111100, 32'b0};
	reg [31:0][31:0] fpr = {32{32'b0}};

	assign instr = inst[31:26] == OP_SPECIAL ? inst[5:0]
					: inst[31:26] == OP_FPU ? inst[5:0]
					: inst[31:26];

	assign s = inst[31:26] == OP_FPU 
			? (inst[5:0] == FPU_ITOF ? gpr[inst[15:11]] : fpr[inst[15:11]])
			: gpr[inst[25:21]];

	assign t = inst[31:26] == OP_FPU ? fpr[inst[20:16]] : gpr[inst[20:16]];

	assign imm = inst[31:26] == OP_J ? {6'b0, inst[25:0]}
				: inst[31:26] == OP_JAL ? {6'b0, inst[25:0]}
				: inst[31:26] == OP_LUI ? {16'b0, inst[15:0]}
				: inst[31:26] == OP_BEQ ? {16'b0, inst[15:0]}
				: inst[31:26] == OP_BGTZ ? {16'b0, inst[15:0]}
				: inst[31:26] == OP_BLEZ ? {16'b0, inst[15:0]}
				: inst[31:26] == OP_BNE ? {16'b0, inst[15:0]}
				: {{16{inst[15]}}, inst[15:0]};

	assign h = inst[10:6];

	assign addra32 = (gpr[inst[25:21]] + {{16{inst[15]}}, inst[15:0]}) >> 2;
	assign addra =  addra32[BRAM_SIZE - 1: 0];

	assign rea = (inst[31:26] == OP_LW || inst[31:26] == OP_LW_S);
	assign wea = (inst[31:26] == OP_SW || inst[31:26] == OP_SW_S);

	assign lreg = gpr[31];

	assign destreg = inst[31:26] == OP_FPU ? inst[10:6] : inst[15:11];

	assign is_sorf = inst[31:26] == OP_SPECIAL ? 2'b01 
					: inst[31:26] == OP_FPU ? 2'b10
					: 2'b00;
endmodule

