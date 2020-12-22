`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2020 09:41:02 PM
// Design Name: 
// Module Name: alu_cntrl
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


module alu_cntrl(opcode,aluop,instr);
input [1:0]aluop;
input [31:0]instr;
output reg [2:0]opcode;
always@(*)
begin
if((instr[5:0]==6'b100000)&&(aluop[1:0]==2'b10))
 opcode=3'b000;
else if((instr[5:0]==6'b100010)&&(aluop[1:0]==2'b10))
opcode=3'b001;
else if((instr[5:0]==6'b100100)&&(aluop[1:0]==2'b10))
opcode=3'b010;
else if((instr[5:0]==6'b100101)&&(aluop[1:0]==2'b10))
opcode=3'b011;
else if((instr[5:0]==6'b101010)&&(aluop[1:0]==2'b10))
opcode=3'b100;
else if((instr[5:0]==6'b101011)&&(aluop[1:0]==2'b10))
opcode=3'b101;
else if((instr[5:0]==6'b101110)&&(aluop[1:0]==2'b10))
opcode=3'b110;
else if((instr[5:0]==6'b110000)&&(aluop[1:0]==2'b10))
opcode=3'b111;
else 
opcode=3'bz;
end
endmodule
