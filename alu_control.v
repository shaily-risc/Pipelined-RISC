`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2020 01:14:14 AM
// Design Name: 
// Module Name: alu_control
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

module alu_cntrl(opcode,aluop,data_in);
input [1:0]aluop;
input [5:0]data_in;
output reg [2:0]opcode;
always@(*)
begin
if((data_in==6'b100000)&&(aluop[1:0]==2'b10))
 opcode=3'b000;
else if((data_in==6'b100010)&&(aluop[1:0]==2'b10))
opcode=3'b001;
else if((data_in==6'b100100)&&(aluop[1:0]==2'b10))
opcode=3'b010;
else if((data_in==6'b100101)&&(aluop[1:0]==2'b10))
opcode=3'b011;
else if((data_in==6'b101010)&&(aluop[1:0]==2'b10))
opcode=3'b100;
else if((data_in==6'b101011)&&(aluop[1:0]==2'b10))
opcode=3'b101;
else if((data_in==6'b101110)&&(aluop[1:0]==2'b10))
opcode=3'b110;
else if((data_in==6'b110000)&&(aluop[1:0]==2'b10))
opcode=3'b111;
else 
opcode=3'bz;
end
endmodule
