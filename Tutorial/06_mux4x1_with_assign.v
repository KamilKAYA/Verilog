`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kamil KAYA
// 
// Create Date: 02/16/2021 01:50:50 PM
// Design Name: 
// Module Name: mux4x1_without_reg
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


module mux4x1_without_reg(input [7:0]a, input [7:0]b, input [7:0]c, input [7:0]d, input [1:0]select, output [7:0]q);
assign q= (select==2'b00) ? a: (select=='b01) ? b: (select==2'b10) ? c: (select==2'b11) ? d: 0;
endmodule
