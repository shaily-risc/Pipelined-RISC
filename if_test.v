`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2020 08:02:44 AM
// Design Name: 
// Module Name: if_test
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


module if_test();
reg clk,rst;
wire [31:0]pc_count,pc_in,addp4out41,add_out34;
reg pcsrc34 ;
wire [31:0]instr41;
wire [31:0]instr12,addp4out12;

program_counter t1(pc_count,pc_in,clk,rst);
adder_plus4 t2(addp4out41,pc_count);
mux_2x1 t3(pc_in,addp4out41,,pcsrc34);
instruction_memory t4(instr41,pc_count);
dflipflop12 t5(instr12[31:0],addp4out12,instr41[31:0],addp4out41,clk,rst);
initial
begin
clk=1'b0;rst=1'b1;
#15 rst=1'b0;
pcsrc34=1'b1;
end
always #15 clk=~clk;
endmodule

   