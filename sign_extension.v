`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2020 02:10:58 AM
// Design Name: 
// Module Name: sign_extension
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


module sign_extension(intr,sign_extend_out);
input [31:0]intr;//output of instruction memory of 16 bits
output [31:0]sign_extend_out;//to be extended to 32 bits
assign sign_extend_out={{16{intr[15]}},intr};//concatenation of exteension msb bits and the data_in
endmodule
