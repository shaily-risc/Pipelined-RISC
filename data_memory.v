`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2020 12:51:56 AM
// Design Name: 
// Module Name: data_memory
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
//writing module for data memory

module data_memory(read_data,address,write_data,mem_read,mem_write,clk);
input [31:0]address,write_data;//address is alu output result,write data is readdata2 of regbank 
input mem_read,mem_write,clk;//memread and memwrite are control signals
output reg [31:0]read_data;//output of the data memory
reg [31:0]mem[31:0];//creating a 32x32 memory
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
always@(posedge clk)
begin
if(mem_read)//if mem_read=1 then output of alu is given to output of data memory
begin
read_data=mem[address];
end
else if(mem_write)//if write=1 then data output2 of regbank is written in data memory
begin
mem[address]=write_data;
end
end
endmodule
