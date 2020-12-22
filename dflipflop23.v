`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2020 08:51:12 PM
// Design Name: 
// Module Name: dflipflop23
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


module dflipflop23( addp4out23, read_data123, read_data223, signext_out23, instr23, a, c,

                   wr_en23, regdst23, pcsrc23, memtoreg23, mem_read23, memwrite23, alusrc23, aluop23, jump23,
                   
                   addp4out12, read_data112, read_data212, signext_out12, instr12, b, d,
                   
                   wr_en12, regdst12, pcsrc12, memtoreg12, mem_read12, memwrite12, alusrc12, aluop12, jump12,
                  
                   clk);

output reg [31:0]addp4out23,read_data123,read_data223,signext_out23;
output reg [31:0]instr23,a,c;
output reg[1:0]aluop23;
output reg wr_en23,regdst23,pcsrc23,memtoreg23,mem_read23,memwrite23,alusrc23,jump23;

input [31:0]addp4out12,read_data112,read_data212,signext_out12;
input [31:0]instr12,b,d;
input [1:0]aluop12;
input wr_en12,regdst12,pcsrc12,memtoreg12,mem_read12,memwrite12,alusrc12,jump12;
input clk;

always@(posedge clk)

begin
addp4out23<=addp4out12;
read_data123<=read_data112;
read_data223<=read_data212;
signext_out23<=signext_out12;
instr23<=instr12;
a<=b;
c<=d;
wr_en23<=wr_en12;
regdst23<=regdst12;
pcsrc23<=pcsrc12;
memtoreg23<=memtoreg12;
mem_read23<=mem_read12;
memwrite23<=memwrite12;
alusrc23<=alusrc12;
jump23<=jump12;
aluop23<=aluop12;
end
endmodule
