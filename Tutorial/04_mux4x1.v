`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 	
// Engineer: Kamil KAYA
// 
// Create Date: 02/13/2021 12:17:05 AM
// Design Name: 4x1 multiplexer
// Module Name: mux4x1
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
module mux4x1(input clk, input [7:0]a, input [7:0]b, input [7:0]c, input [7:0]d, input [1:0]select, output reg [7:0]q);

reg [7:0] q_next;

always @(posedge clk)begin
    q<=q_next;
end

always @(*)begin
    q_next=q;
    case(select)
        2'b00:q_next=a;
        2'b01:q_next=b;
        2'b10:q_next=c;
        2'b11:q_next=d;   
    endcase
end

endmodule
