`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2021 12:17:05 AM
// Design Name: 
// Module Name: top
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
module top(input clk, 
            input [7:0]in0, 
            input [7:0]in1, 
            input [7:0]in2, 
            input [7:0]in3, 
            input [7:0]in4,
            input [7:0]in5,
            input [7:0]in6,
            input [7:0]in7,
            input [7:0]in8,
            input [7:0]in9,
            input [7:0]in10,
            input [7:0]in11,
            input [7:0]in12,
            input [7:0]in13,
            input [7:0]in14,
            input [7:0]in15,
            input [3:0]select, 
            output[7:0]out);
wire [7:0] mux1Out, mux2Out, mux3Out, mux4Out;           
            
mux4x1_without_reg mux1(.a(in0), .b(in1), .c(in2), .d(in3), .select(select[1:0]), .q(mux1Out));
mux4x1_without_reg mux2(.a(in4), .b(in5), .c(in6), .d(in7), .select(select[1:0]), .q(mux2Out));
mux4x1_without_reg mux3(.a(in8), .b(in9), .c(in10),.d(in11),.select(select[1:0]), .q(mux3Out));
mux4x1_without_reg mux4(.a(in12),.b(in13),.c(in14),.d(in15),.select(select[1:0]), .q(mux4Out));

mux4x1_without_reg muxOut(.a(mux1Out), .b(mux2Out), .c(mux3Out), .d(mux4Out), .select(select[3:2]), .q(out));

endmodule
