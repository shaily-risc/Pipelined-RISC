`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2020 08:44:54 PM
// Design Name: 
// Module Name: dflipflop12
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


module dflipflop12(out1,out2,in1,in2,clk);
input [31:0]in1,in2;
input clk;
output reg [31:0]out1,out2;
always@(posedge clk)
begin
out1<=in1;
out2<=in2;
end
endmodule
