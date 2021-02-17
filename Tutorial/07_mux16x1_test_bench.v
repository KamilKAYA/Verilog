`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kamil KAYA
// 
// Create Date: 02/13/2021 12:17:49 AM
// Design Name: 
// Module Name: top_tb
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


module top_tb;
  
reg [7:0] giris0, giris1, giris2, giris3,
          giris4, giris5, giris6, giris7,
          giris8, giris9, giris10, giris11,
          giris12, giris13, giris14, giris15;
reg clk;

reg [3:0] sec;

wire [7:0] cikis;
    

top mux16giristest(.clk(clk), 
                    .in0(giris0), 
                    .in1(giris1), 
                    .in2(giris2), 
                    .in3(giris3), 
                    .in4(giris4),
                    .in5(giris5),
                    .in6(giris6),
                    .in7(giris7),
                    .in8(giris8),
                    .in9(giris9),
                    .in10(giris10),
                    .in11(giris11),
                    .in12(giris12),
                    .in13(giris13),
                    .in14(giris14),
                    .in15(giris15),
                    .select(sec), 
                    .out(cikis));
    
    initial 
    begin
        clk =0;
        giris0=5;
        giris1=10;
        giris2=20;
        giris3=30;
        giris4=40;
        giris5=50;
        giris6=60;
        giris7=70;
        giris8=80;
        giris9=90;
        giris10=100;
        giris11=110;
        giris12=120;
        giris13=130;
        giris14=140;
        giris15=150;
        sec=0;
        #100 assign sec=4'b0000;
        #100 assign sec=4'b0001;
        #100 assign sec=4'b0010;
        #100 assign sec=4'b0011;
        #100 assign sec=4'b0100;
        #100 assign sec=4'b0101;
        #100 assign sec=4'b0110;
        #100 assign sec=4'b0111;
        #100 assign sec=4'b1000;
        #100 assign sec=4'b1001;
        #100 assign sec=4'b1010;
        #100 assign sec=4'b1011;
        #100 assign sec=4'b1100;
        #100 assign sec=4'b1101;
        #100 assign sec=4'b1110;
        #100 assign sec=4'b1111;
        $finish;
    end

    always #10 clk=!clk;
endmodule
