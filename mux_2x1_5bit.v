`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2020 11:48:15 PM
// Design Name: 
// Module Name: mux_2x1_5bit
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


module mux_2x1_5bit(data_out,data_in1,data_in2,sel);
input [4:0]data_in1,data_in2;
output [4:0]data_out;
input sel;
assign data_out=sel?data_in1:data_in2;
endmodule
