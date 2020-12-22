`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2020 02:11:54 AM
// Design Name: 
// Module Name: adder_plus4
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
//writing adder module

module adder_plus4(data_out,data_in);
input [31:0] data_in;
output [31:0] data_out;
assign data_out=data_in+32'd4;
endmodule
