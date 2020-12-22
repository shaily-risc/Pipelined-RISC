`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2020 02:36:07 AM
// Design Name: 
// Module Name: controller
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


module controller(wr_en,regdst,pcsrc,aluop,memtoreg,memread,memwrite,alusrc,jump,instr);
output reg wr_en,regdst,memtoreg,memread,memwrite,alusrc,pcsrc,jump;
output reg[1:0]aluop;
input [31:0]instr;

always@(*)
begin
case(instr[31:26])

6'b000000: 
begin//r type
regdst=1;wr_en=0;alusrc=1;memwrite=0;memread=1;memtoreg=0;pcsrc=1;jump=0;aluop[1:0]=2'b10;
end
6'b100011:
begin//i type lw
regdst=0;wr_en=1;alusrc=1;memwrite=0;memread=1;memtoreg=1;pcsrc=0;jump=0;aluop[1:0]=2'b00;
end
6'b101011:
begin//i type sw
regdst=1'bX;wr_en=0;alusrc=1;memwrite=1;memread=0;memtoreg=1'bX;pcsrc=0;jump=0;aluop[1:0]=2'b00;
end
6'b000100:
begin//beq
regdst=1'bX;wr_en=0;alusrc=0;memwrite=0;memread=0;memtoreg=1'bX;pcsrc=1;jump=0;aluop[1:0]=2'b01;
end
6'b000010:
begin//j type
regdst=1'bX;wr_en=0;alusrc=1'bX;memwrite=0;memread=0;memtoreg=1'bX;pcsrc=0;jump=1;aluop[1:0]=2'bXX;
end
endcase
end
endmodule
