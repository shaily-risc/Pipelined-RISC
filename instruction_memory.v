`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2020 12:54:13 AM
// Design Name: 
// Module Name: instruction_memory
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
//writing instruction memory

module instruction_memory(instr,read_address);
input [31:0]read_address;
output reg[31:0]instr;
wire [31:0]mem[31:0];
assign mem[0]=32'b000000_00001_00010_00011_00000_100000;//
//rtype(000000) add(100000) the data from location00101and 00100 and store it to 00110
//op_rs_rt_rd_shamt_function

assign mem[4]=32'b000000_00101_00110_00111_00000_100010;
//rtype(000000) subtract(100010) the data from location00111and 01000 and store it to 01001
assign mem[8]=32'b000000_01001_01010_01011_00000_100100;
//rtype(000000) multiply(100010) the data from location 01010 and01011 and store result in01100
assign mem[12]=32'b000000_01100_01101_01110_00000_100101;
//rtype(000000) divide(100101) the data from location 01101 and 01110 and store result in01111
assign mem[16]=32'b000000_01111_10001_10010_00001_101010;
//rtype(00000) shift_right by amount 1
assign mem[20]=32'b000000_10011_10101_10110_00001_101011;
//rtype(000000) shift left
assign mem[24]=32'b000000_10111_11001_11010_00000_101110;
//rtype(000000) or
assign mem[28]=32'b000000_11011_11101_11110_00001_110000;
//rtype(000000) and
always@(*)
begin
instr<=mem[read_address];
end
endmodule
