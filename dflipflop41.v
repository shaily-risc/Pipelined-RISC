`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2020 09:19:21 PM
// Design Name: 
// Module Name: dflipflop41
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


module dflipflop41(read_data42,alu_out42,memtoreg42,wr_en42,write_reg42,
                   read_data34,alu_out34,wr_en34,write_reg34,memtoreg34,clk);
                   output reg [31:0]read_data42,alu_out42;
                   output reg [4:0]write_reg42;
                   output reg memtoreg42,wr_en42;
                   input [31:0]read_data34,alu_out34;
                   input[4:0]write_reg34;
                   input memtoreg34,wr_en34,clk;
                   
always@(posedge clk )

begin
read_data42<=read_data34;
alu_out42<=alu_out34;
write_reg42<=write_reg34;
memtoreg42<=memtoreg34;
wr_en42<=wr_en34;
end
endmodule
