`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2020 04:15:30 PM
// Design Name: 
// Module Name: mem_read_data_mem
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


module mem_read_data_mem();
reg clk, rst;

                 wire wr_en12, regdst12,pcsrc12,memtoreg12,mem_read12,memwrite12,alusrc12,jump12,wr_en23,pcsrc34,
                      
                      regdst23,pcsrc23,memtoreg23,mem_read23,memwrite23,alusrc23,jump23,memwrite34,mem_read34,wr_en34,memtoreg34,jump34;

                  wire [31:0]instr41,alu_in2;

                  wire [31:0]instr12,addp4out12,signext_out12;

                  wire [31:0]pc_count,pc_in,addp4out41,add_out23,add_out34,read_data112,read_data212,read_data223,read_data123,write_data42;
wire [4:0]write_reg42,write_reg34,write_reg23;
wire [31:0] addp4out23,addp4out34,signext_out23,instr23,alu_out23,shift_left_out;
wire [1:0]aluop23,aluop12;
wire [2:0]opcode;

wire[31:0]alu_out34,read_data234;

program_counter t1(pc_count,pc_in,clk,rst);

adder_plus4 t2(addp4out41,pc_count);

mux_2x1 t3(pc_in,addp4out41,addp4out41,pcsrc34);

instruction_memory t4(instr41,pc_count);

dflipflop12 t5(instr12[31:0],addp4out12,instr41[31:0],addp4out41,clk);

reg_bank t6(read_data112,read_data212,instr12[25:21],instr12[20:16],write_data42,write_reg42,clk,wr_en42);

sign_extension t7(instr12[15:0],signext_out12);

controller t8(wr_en12,regdst12,pcsrc12,aluop12[1:0],memtoreg12,mem_read12,memwrite12,alusrc12,jump12,instr12);

dflipflop23 t9(addp4out23,read_data123,read_data223,signext_out23,instr23[5:0],instr23[20:16],instr23[15:11],

               wr_en23,regdst23,pcsrc23,memtoreg23,mem_read23,memwrite23,alusrc23,aluop23[1:0],jump23,
               
               addp4out12,read_data112,read_data212,signext_out12,instr12[5:0],instr12[20:16],instr12[15:11],
               
               wr_en12,regdst12,pcsrc12,memtoreg12,mem_read12,memwrite12,alusrc12,aluop12[1:0],jump12,clk);
                   
mux_2x1 t10(alu_in2,read_data223,signext_out23,alusrc23);

alu t11(alu_out23,read_data123,alu_in2,opcode);

shift_reg t12(signext_out23,clk,shift_left_out);

adder t13(add_out23,addp4out23,shift_left_out);

alu_cntrl t14(opcode,aluop23[1:0],instr23[5:0]);

mux_2x1_5bit t15(write_reg23[4:0],instr23[20:16],instr23[15:11],regdst23);

dflipflop34 t16(addp4out34,alu_out34,read_data234,write_reg34[4:0],memwrite34,mem_read34,wr_en34,memtoreg34,jump34,pcsrc34,
                addp4out23,alu_out23,read_data223,write_reg23[4:0],memwrite23,mem_read23,wr_en23,memtoreg23,jump23,pcsrc23,clk);
                
data_memory t17(read_data34,alu_out34,read_data234,mem_read34,memwrite34,clk);
                  
dflipflop41 t18(read_data42, alu_out42, memtoreg42, wr_en42, write_reg42[4:0], read_data34, alu_out34,

                  wr_en34, write_reg34[4:0], memtoreg34, clk);
                  
mux_2x1 t19(write_data42,alu_out42,read_data42,memtoreg42);



initial 
begin clk=1'b0;rst=1'b1;
#5 rst=1'b0;
end
always #5 clk=~clk;
endmodule

   
