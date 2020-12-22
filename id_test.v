`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2020 08:05:36 AM
// Design Name: 
// Module Name: id_test
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


module id_test();
reg  clk,rst,pcsrc34,wr_en42;
wire wr_en12,regdst12,pcsrc12,memtoreg12,mem_read12,memwrite12,alusrc12,jump12,wr_en23,
regdst23,pcsrc23,memtoreg23,mem_read23,memwrite23,alusrc23,jump23;
wire [31:0]instr41;
wire [31:0]instr12,addp4out12,signext_out12;
wire [31:0]pc_count,pc_in,addp4out41,add_out34,read_data112,read_data212,write_data42;
wire [4:0]write_reg42;
wire [31:0] addp4out23,read_data123,read_data223,signext_out23,instr23;
wire [1:0]aluop23,aluop12;

program_counter t1(pc_count,pc_in,clk,rst);
adder_plus4 t2(addp4out41,pc_count);
mux_2x1 t3(pc_in,addp4out41,,pcsrc34);
instruction_memory t4(instr41,pc_count);
dflipflop12 t5(instr12[31:0],addp4out12,instr41[31:0],addp4out41,clk);

reg_bank t6(read_data112,read_data212,instr12[25:21],instr12[20:16],write_data42,write_reg42,clk,wr_en42);

sign_extension t7(instr12[15:0],signext_out12);

controller t8(wr_en12,regdst12,pcsrc12,aluop12[1:0],memtoreg12,mem_read12,memwrite12,alusrc12,jump12,instr12);

dflipflop23 t9(addp4out23,read_data123,read_data223,signext_out23,instr23[5:0],instr23[20:16],instr23[15:11],

               wr_en23,regdst23,pcsrc23,memtoreg23,mem_read23,memwrite23,alusrc23,aluop23[1:0],jump23,
               
               addp4out12,read_data112,read_data212,signext_out12,instr12[5:0],instr12[20:16],instr12[15:11],
               
               wr_en12,regdst12,pcsrc12,memtoreg12,mem_read12,memwrite12,alusrc12,aluop12[1:0],jump12,clk);
               
               initial
begin 
clk=1'b0;rst=1'b1;pcsrc34=1'b1;wr_en42=1'b0;
#5 rst=1'b0;
end
always #5 clk=~clk;
endmodule
