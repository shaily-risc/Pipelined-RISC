`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2020 12:32:01 AM
// Design Name: 
// Module Name: program_counter
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
module program_counter(pc_count,pc_in,clk,rst);
output reg [31:0]pc_count;
input [31:0] pc_in;
input clk,rst;
initial
pc_count<=32'd0;

always@(posedge clk or posedge rst)
begin
if(rst)
begin
pc_count<=32'd0;
end
else
pc_count<=pc_in;
end
endmodule
