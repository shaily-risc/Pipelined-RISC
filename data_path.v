`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2020 11:00:53 PM
// Design Name: 
// Module Name: data_path
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


module data_path(clk,rst,aluop,write_reg,regwrite,regdst,pcsrc,memtoreg,mem_read,memwrite,alusrc);
input clk,rst;
wire [31:0]instr;
wire [31:0]pc_count,pc_in,addp4out,alu_in2,read_data2,signext_out,shift_left_out,read_data1,write_data;
wire [31:0]alu_out,read_data;
input [4:0]write_reg;
input [2:0]aluop;

input regwrite,regdst,pcsrc,memtoreg,mem_read,memwrite,alusrc;

program_counter pc(pc_count,pc_in,clk,rst);

adder_plus4 pcadd(addp4out,pc_count);

mux_2x1 pcmux(pc_in,addp4out,add_out,pcsrc);

instruction_memory instmem(instr,pc_count,clk,rst);

mux_2x1 instrmemtoregbank(write_reg,instr[20:16],instr[15:11],regdst);

mux_2x1 alusrcm(alu_in2,read_data2,signext_out,alusrc);

alu alubox(alu_out,read_data1,alu_in2,aluop);

data_memory dtmem(read_data,alu_out,read_data2,mem_read,memwrite,clk);

mux_2x1 dtmemtoregbank(write_data,alu_out,read_data,memtoreg);

sign_extension sgnextend(instr[15:0],signext_out);

shift_reg shiftleft2(signext_out,clk,shift_left_out);

reg_bank reg_bnk(read_data1,read_data2,instr[25:21],instr[20:16],write_data,write_reg,clk,wr_en);

adder shiftadd(add_out,addp4out,shift_left_out);

   
endmodule
