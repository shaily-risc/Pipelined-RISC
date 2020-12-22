`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2020 12:24:09 AM
// Design Name: 
// Module Name: reg_bank
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
//writing register bank module

module reg_bank(read_data1,read_data2,read_reg1,read_reg2,write_data,write_reg,clk,wr_en);
input [31:0]write_data;
output reg[31:0]read_data1,read_data2;//output of register bank
input clk,wr_en;// clock and write enable are input
input [4:0]read_reg1,read_reg2,write_reg;// read reg1 and read reg2 are 5bit input
reg [31:0]mem[31:0];// initializing 8byte x 32 bit memory
initial
begin
mem[0]=32'd1;mem[1]=32'd2;mem[2]=32'd4;mem[3]=32'd6;mem[4]=32'd8;
mem[5]=32'd9;mem[6]=32'd10;mem[7]=32'd11;mem[8]=32'd12;mem[9]=32'd13;
mem[10]=32'd14;mem[11]=32'd15;mem[12]=32'd16;mem[13]=32'd17;mem[14]=32'd18;
mem[15]=32'd19;mem[16]=32'd20;mem[17]=32'd21;mem[18]=32'd22;mem[19]=32'd23;
mem[20]=32'd24;mem[21]=32'd25;mem[22]=32'd26;mem[23]=32'd27;mem[24]=32'd28;
mem[25]=32'd29;mem[26]=32'd30;mem[27]=32'd31;mem[28]=32'd32;mem[29]=32'd33;
mem[30]=32'd34;mem[31]=32'd35;//initial values in memory 
end
always@(*)
begin
if(wr_en==1)
mem[write_reg]<=write_data;//if write=1 write_data is given to memory location write_reg
else     //if write=0
read_data1<=mem[read_reg1]; //memory location read_reg1 data is given to output read_data1
read_data2<=mem[read_reg2];//memory location read_reg2 data is given to output read_data2
end
endmodule