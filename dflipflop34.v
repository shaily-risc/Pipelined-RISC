`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2020 09:10:02 PM
// Design Name: 
// Module Name: dflipflop34
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


module dflipflop34(addp4out23, alu_out34, read_data234, write_reg34, memwrite34, mem_read34, wr_en34, memtoreg34, jump34, pcsrc34,

                   addp4out34, alu_out23, read_data223, write_reg23, memwrite23, mem_read23, wr_en23, memtoreg23, jump23, pcsrc23, clk);
                  
output reg [31:0]addp4out34, alu_out34, read_data234;

output reg [4:0]write_reg34;

output reg memwrite34, mem_read34, wr_en34, memtoreg34, jump34, pcsrc34;

input [31:0]addp4out23, alu_out23, read_data223;

input [4:0]write_reg23;

  input memwrite23, mem_read23, wr_en23, memtoreg23, jump23, pcsrc23, clk;
  
 always@(posedge clk)
 
 begin
 addp4out34<=addp4out23;
 alu_out34<=alu_out23;
 read_data234<=read_data223;
 write_reg34<=write_reg23;
 memwrite34<=memwrite23;
 mem_read34<=mem_read23;
 wr_en34<=wr_en23;
 memtoreg34<=memtoreg23;
 jump34<=jump23;   
 pcsrc34<=pcsrc23;            
end
endmodule
