//todo 
//fix bgtz and etc. add $signed
`timescale 1ns / 1ps

module top #( parameter CLK_PER_HALF_BIT = 434)

		     (input wire  rxd,
		     output wire txd,
		     input wire  clk,
		     input wire  rstn,
			 output wire [7:0] led);

	localparam INST_SIZE = 10;
	localparam BRAM_SIZE = 18;

	localparam FETCH = 0;
	localparam DECODE = 1;
	localparam EXECUTE = 2;
	localparam MEMORY = 3;
	localparam WRITEREG = 4;
	localparam STOP = 5;


	localparam STALL = 0;
	localparam LOAD = 1;
	localparam EXEC = 2;

	logic [31:0] f_inst;
	logic [31:0] fd_inst;


	logic [5:0] d_instr;
	logic [1:0] d_is_sorf;
	logic [31:0] d_s;
	logic [31:0] d_t;
	logic [31:0] d_imm;
	logic [4:0] d_h;
	logic d_branch;
	logic d_jump;
	logic d_rea; //read enable
	logic d_wea; //write enable
	logic d_memtoreg;
	logic [1:0] d_regwrite;
	logic d_is_jal;
	logic d_is_jr;
	logic d_out;
	logic d_stop;
	logic [4:0] d_regdst;

	logic [5:0] de_instr;
	logic [1:0] de_is_sorf;
	logic [31:0] de_s;
	logic [31:0] de_t;
	logic [31:0] de_imm;
	logic [4:0] de_h;
	logic de_branch;
	logic de_jump;
	logic de_rea; //read enable
	logic de_wea; //write enable
	logic de_memtoreg;
	logic [1:0] de_regwrite;
	logic de_is_jal;
	logic de_is_jr;
	logic de_out;
	logic de_stop;
	logic [4:0] de_regdst;

	logic [31:0] e_d;
	logic [INST_SIZE-1:0] e_bpc;

	logic [31:0] em_d;
	logic [INST_SIZE-1:0] em_bpc;

	logic [31:0] m_douta;
	logic [INST_SIZE-1:0] m_npc;

	logic [31:0] mw_douta;

	logic wd_out;
	logic [31:0] w_dtowrite;
	logic [31:0] wd_dtowrite;
	logic [31:0] wd_regdstin;
	logic [1:0] wd_regwritein;

	logic [1:0] mode;
	logic [7:0] pipe;
	logic [INST_SIZE - 1 : 0] pc;
	logic [31:0] inst;
	assign led = pc[7:0] | (mode << 4);

	logic [3:0] latancy;
	logic [2:0] stage;
	logic load_done;


	wire [7:0] 			 rdata;
	wire 			 rx_ready;
	wire 			 ferr;
	uart_rx #(CLK_PER_HALF_BIT) u2(rdata, rx_ready, ferr, rxd, clk, rstn);

	fetch #(CLK_PER_HALF_BIT, INST_SIZE) _fetch(rxd, clk, mode, pc, rstn, f_inst, load_done);
	decode #(CLK_PER_HALF_BIT, INST_SIZE, BRAM_SIZE) _decode(clk, rstn, pc, fd_inst, wd_regwritein, wd_dtowrite, wd_regdstin, d_instr,
							d_is_sorf, d_s, d_t, d_imm, d_h, d_branch, d_jump, 
							d_rea, d_wea, d_memtoreg, d_regwrite, d_is_jal, d_is_jr, d_out, d_stop, d_regdst);
	execute #(CLK_PER_HALF_BIT, INST_SIZE, BRAM_SIZE) _execute(clk, rstn, pc, de_instr, de_is_sorf, de_s, de_t, de_imm, de_h, de_branch, de_jump,
							de_rea, de_wea, de_is_jal, de_is_jr, e_d, e_bpc);
	memory #(CLK_PER_HALF_BIT, INST_SIZE, BRAM_SIZE) _memory(clk, rstn, pc, e_bpc, de_branch, de_jump, de_rea, de_wea, de_is_jal, de_is_jr,
							de_t, e_d, m_douta, m_npc);
	writereg #(CLK_PER_HALF_BIT, INST_SIZE, BRAM_SIZE) _writereg(clk, rstn, wd_out, de_memtoreg, mw_douta, em_d, de_regdst, txd, w_dtowrite);

   always @(posedge clk) begin
    if (~rstn) begin
		 pc <= 0;
		 latancy <= 0;
		 mode <= STALL;
		 pipe <= FETCH;
		 stage <= 0;
	end 
	else begin
		if (mode == STALL) begin
			if (rx_ready && rdata == 8'b10101010) begin
				mode <= LOAD;
			end
		end
		else if (mode == LOAD) begin
			if(load_done) begin
				mode <= EXEC;
			end
		end
		else begin
			if(pipe == FETCH) begin
				if(latancy == 0) begin
					fd_inst <= f_inst;


					latancy <= 0;
					pipe <= DECODE;
				end
				else latancy <= latancy + 1;
			end
			else if(pipe == DECODE) begin
				if(latancy == 0) begin
					de_instr <= d_instr;
					de_is_sorf <= d_is_sorf;
					de_s <= d_s;
					de_t <= d_t;
					de_imm <= d_imm;
					de_h <= d_h;
					de_branch <= d_branch;
					de_jump <= d_jump;
					de_rea <= d_rea;
					de_wea <= d_wea;
					de_memtoreg <= d_memtoreg;
					de_regwrite <= d_regwrite;
					de_is_jal <= d_is_jal;
					de_is_jr <= d_is_jr;
					de_out <= d_out;
					de_stop <= d_stop;
					de_regdst <= d_regdst;


					latancy <= 0;
					pipe <= EXECUTE;
				end
				else latancy <= latancy + 1;
			end
			else if(pipe == EXECUTE) begin
				if(latancy == 3) begin
					em_d <= e_d;
					em_bpc <= e_bpc;


					latancy <= 0;
					pipe <= MEMORY;
				end
				else latancy <= latancy + 1;
			end
			else if(pipe == MEMORY) begin
				if(latancy == 0) begin
					mw_douta <= m_douta;
					pc <= m_npc;

					latancy <= 0;
					pipe <= WRITEREG;
				end
				else latancy <= latancy + 1;
			end
			else if(pipe == WRITEREG) begin
				if(latancy == 0) begin
					wd_out <= de_out;
					wd_dtowrite <= w_dtowrite;
					wd_regwritein <= de_regwrite;
					wd_regdstin <= de_regdst;
					latancy <= latancy + 1;
				end
				else if (latancy == 1) begin
					wd_regwritein <= 2'b0;
					wd_out <= 0;
					latancy <= 0;
					if(de_stop) pipe <= STOP;
					else pipe <= FETCH;
				end
				else latancy <= latancy + 1;
			end
		end
	 end
   end

endmodule

