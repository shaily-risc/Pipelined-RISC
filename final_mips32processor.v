`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2020 04:58:26 AM
// Design Name: 
// Module Name: final_mips32processor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module final_mips32processor(clk,rst);
input clk,rst;
wire [31:0]instr,instr_pd1;
wire [31:0]pc_count,pc_count_d1,pc_in,addp4out,alu_in2,read_data2,signext_out;
wire [31:0]shift_left_out,read_data1,write_data;
wire[31:0]alu_out,read_data;
wire [4:0]write_reg;
wire [1:0]aluop;
wire [2:0]opcode;

wire regwrite,regdst,pcsrc,memtoreg,mem_read,memwrite,alusrc;

program_counter pc(pc_count,pc_in,clk,rst);

adder_plus4 pcadd(addp4out,pc_count);

mux_2x1 pcmux(pc_in,addp4out,add_out,pcsrc);

instruction_memory instmem(instr,pc_count);

mux_2x1_5bit insttoregbank(write_reg,instr[20:16],instr[15:11],regdst);

mux_2x1 alusrcm(alu_in2,read_data2,signext_out,alusrc);

alu alubox(alu_out,read_data1,alu_in2,opcode);

data_memory dtmem(read_data,alu_out,read_data2,mem_read,memwrite,clk);

mux_2x1 dtmemtoregbank(write_data,alu_out,read_data,memtoreg);

sign_extension sgnextend(instr[15:0],signext_out);

shift_reg shiftleft2(signext_out,clk,shift_left_out);

reg_bank reg_bnk(read_data1,read_data2,instr[25:21],instr[20:16],write_data,write_reg,clk,wr_en);

adder shiftadd(add_out,addp4out,shift_left_out);

controller maincontrol(wr_en,regdst,pcsrc,aluop,memtoreg,mem_read,memwrite,alusrc,jump,instr[31:26]);
alu_cntrl ctrl(opcode,aluop,instr[5:0]);
endmodule
