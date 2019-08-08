`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2019 04:21:48 PM
// Design Name: 
// Module Name: adders
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
module adders(  clk, rst,
                input_0,input_1,input_2,input_3,input_4,input_5,input_6,input_7,input_8,input_9,
                input_10,input_11,input_12,input_13,input_14,input_15,input_16,input_17,input_18,input_19,
                input_20,input_21,input_22,input_23,input_24,input_25,input_26,input_27,input_28,input_29);
                
input clk, rst;                
input [7:0] input_0,input_1,input_2,input_3,input_4,input_5,input_6,input_7,input_8,input_9,
            input_10,input_11,input_12,input_13,input_14,input_15,input_16,input_17,input_18,input_19,
            input_20,input_21,input_22,input_23,input_24,input_25,input_26,input_27,input_28,input_29;

reg [2:0] state, stateNext;
reg [11:0]  add1_in1, add1_in2,
            add2_in1, add2_in2,
            add3_in1, add3_in2,
            add4_in1, add4_in2,
            add5_in1, add5_in2,
            add6_in1, add6_in2;
reg [12:0]  add1_out, add2_out,
            add3_out, add4_out,
            add5_out, add6_out;

always @(posedge clk)begin
    state <= stateNext;
end

always @(*)begin
    stateNext=state;
    if(!rst)begin        
        case(state)
            0: begin
                    add1_in1=input_0;
                    add1_in2=input_1;
                    add2_in1=input_2;
                    add2_in2=input_3;
                    add3_in1=input_4;
                    add3_in2=input_5;
                    add4_in1=input_6;
                    add4_in2=input_7;
                    add5_in1=input_8;
                    add5_in2=input_9;
                    add6_in1=input_10;
                    add6_in2=input_11;
               end
            1: begin
                    add1_in1=input_12;
                    add1_in2=input_13;
                    add2_in1=input_14;
                    add2_in2=input_15;
                    add3_in1=input_16;
                    add3_in2=input_17;
                    add4_in1=input_18;
                    add4_in2=input_19;
                    add5_in1=input_20;
                    add5_in2=input_21;
                    add6_in1=input_22;
                    add6_in2=input_23;
               end
            2: begin
                    add1_in1=add1_out;      // 0. cycle cevab?d?r.
                    add1_in2=add2_out;      // 0. cycle cevab?d?r.
                    add2_in1=add3_out;      // 0. cycle cevab?d?r.
                    add2_in2=add4_out;      // 0. cycle cevab?d?r.
                    add3_in1=add5_out;      // 0. cycle cevab?d?r.
                    add3_in2=add6_out;      // 0. cycle cevab?d?r.
                    add4_in1=input_24;
                    add4_in2=input_25;
                    add5_in1=input_26;
                    add5_in2=input_27;
                    add6_in1=input_28;
                    add6_in2=input_29;
               end
            3: begin       
                    add1_in1=add1_out;      // 1. cycle cevab?d?r. 
                    add1_in2=add2_out;      // 1. cycle cevab?d?r.
                    add2_in1=add3_out;      // 1. cycle cevab?d?r.
                    add2_in2=add4_out;      // 1. cycle cevab?d?r.
                    add3_in1=add5_out;      // 1. cycle cevab?d?r.
                    add3_in2=add6_out;      // 1. cycle cevab?d?r.
                    add4_in1=input_24;
                    add4_in2=input_25;
                    add5_in1=input_26;
                    add5_in2=input_27;
                    add6_in1=input_28;
                    add6_in2=input_29;
               end
            4: begin
               end
        endcase 
        stateNext=state+1;   
    end else begin
        stateNext=0;    
    end
    
end

FA_13Bit2Cycle FA_13Bit1stAdder(.clk(clk), .rst(rst), .in1(add1_in1), .in2(add1_in2), .out(add1_out));
FA_13Bit2Cycle FA_13Bit2ndAdder(.clk(clk), .rst(rst), .in1(add2_in1), .in2(add2_in2), .out(add2_out));
FA_13Bit2Cycle FA_13Bit3rdAdder(.clk(clk), .rst(rst), .in1(add3_in1), .in2(add3_in2), .out(add3_out));
FA_13Bit2Cycle FA_13Bit4thAdder(.clk(clk), .rst(rst), .in1(add4_in1), .in2(add4_in2), .out(add4_out));
FA_13Bit2Cycle FA_13Bit5thAdder(.clk(clk), .rst(rst), .in1(add5_in1), .in2(add5_in2), .out(add5_out));
FA_13Bit2Cycle FA_13Bit6thAdder(.clk(clk), .rst(rst), .in1(add6_in1), .in2(add6_in2), .out(add6_out));


endmodule




module FA_13Bit2Cycle(input clk, input rst, input [11:0] in1, input [11:0] in2, output reg [12:0] out);
reg [12:0] accumulator, accumulatorNext, outNext;
always @(posedge clk)begin
    accumulator <= accumulatorNext;
    out <= outNext;
end
always @(*)begin
    accumulatorNext=in1+in2;
    outNext=accumulator;    
end
endmodule
