`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2020 02:28:59 AM
// Design Name: 
// Module Name: alu
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
//writing module for alu

module alu(data_out,data_in1,data_in2,opcode);
input [31:0]data_in1,data_in2;//two data are input
output reg [31:0]data_out;//result data output
input [2:0]opcode;//to detect the operation
parameter add=3'b000,sub=3'b001,mul=3'b010,div=3'b011,shift_right=3'b100,shift_left=3'b101,
ord=3'b110,andd=3'b111;
always@(*)
begin
case(opcode)
add:data_out<=data_in1+data_in2;
sub:data_out<=data_in1-data_in2;
mul:data_out<=data_in1*data_in2;
div:data_out<=data_in1/data_in2;
shift_right:data_out<=data_in1>>1;
shift_left:data_out<=data_in1<<1;
ord:data_out<=data_in1|data_in2;
andd:data_out<=data_in1&data_in2;

endcase
end
endmodule
