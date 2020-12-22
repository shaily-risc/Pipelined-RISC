`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2020 01:02:28 AM
// Design Name: 
// Module Name: shift_reg
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
module shift_reg(in,clk,out);
  input [31:0]in;
  input clk;
  output out;
  reg [31:0] bits;
  assign out = bits[31];
  always @(posedge clk) 
  begin
  bits <= bits << 2;
  bits[0] <= in;
  end
endmodule