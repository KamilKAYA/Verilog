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
module adders(  clk, rst,out,
                input_0,input_1,input_2,input_3,input_4,input_5,input_6,input_7,input_8,input_9,
                input_10,input_11,input_12,input_13,input_14,input_15,input_16,input_17,input_18,input_19,
                input_20,input_21,input_22,input_23,input_24,input_25,input_26,input_27,input_28,input_29);
                
input clk, rst;                
input [7:0] input_0,input_1,input_2,input_3,input_4,input_5,input_6,input_7,input_8,input_9,
            input_10,input_11,input_12,input_13,input_14,input_15,input_16,input_17,input_18,input_19,
            input_20,input_21,input_22,input_23,input_24,input_25,input_26,input_27,input_28,input_29;

reg [2:0]   state, stateNext;
reg [1:0]   latency, latencyNext;
reg [7:0]   adder15_reg, adder15_regNext;
reg [8:0]   adder18_reg, adder18_regNext,
            adder19_reg, adder19_regNext,
            adder20_reg, adder20_regNext,
            adder21_reg, adder21_regNext,
            adder22_reg, adder22_regNext;
reg [9:0]   adder23_reg, adder23_regNext,
            adder24_reg, adder24_regNext,
            adder25_reg, adder25_regNext,
            adder26_reg, adder26_regNext;
reg [10:0]   adder27_reg, adder27_regNext,
             adder28_reg, adder28_regNext;
reg [11:0]  add1_in1, add1_in2,
            add2_in1, add2_in2,
            add3_in1, add3_in2,
            add4_in1, add4_in2,
            add5_in1, add5_in2,
            add6_in1, add6_in2;
wire [12:0]  add1_out, add2_out,
            add3_out, add4_out,
            add5_out, add6_out;
output reg [12:0] out;

always @(posedge clk)begin
    state <= stateNext;
    latency <= latencyNext;
    adder15_reg <= adder15_regNext;
    adder18_reg <= adder18_regNext;
    adder19_reg <= adder19_regNext;
    adder20_reg <= adder20_regNext;
    adder21_reg <= adder21_regNext;
    adder22_reg <= adder22_regNext;
    adder23_reg <= adder23_regNext;
    adder24_reg <= adder24_regNext;
    adder25_reg <= adder25_regNext;
    adder26_reg <= adder26_regNext;
    adder27_reg <= adder27_regNext;
    adder28_reg <= adder28_regNext;
end

always @(*)begin
    stateNext=state;
    latencyNext=latency;
    adder15_regNext=adder15_reg;
    adder18_regNext=adder18_reg;
    adder19_regNext=adder19_reg;
    adder20_regNext=adder20_reg;
    adder21_regNext=adder21_reg;
    adder22_regNext=adder22_reg;
    adder23_regNext=adder23_reg;
    adder24_regNext=adder24_reg;
    adder25_regNext=adder25_reg;
    adder26_regNext=adder26_reg;
    adder27_regNext=adder27_reg;
    adder28_regNext=adder28_reg;
    if(!rst)begin        
        case(state)
            0: begin
                    adder19_regNext=add1_out;
                    adder20_regNext=add2_out;
                    adder21_regNext=add3_out;
                    adder24_regNext=add4_out;
                    adder25_regNext=add5_out;
                    adder26_regNext=add6_out;
                    
                    add1_in1=input_0;   // Adder 1 in
                    add1_in2=input_1;
                    add2_in1=input_2;   // Adder 2 in
                    add2_in2=input_3;
                    add3_in1=input_4;   // Adder 3 in
                    add3_in2=input_5;
                    add4_in1=input_6;   // Adder 4 in
                    add4_in2=input_7;
                    add5_in1=input_8;   // Adder 5 in
                    add5_in2=input_9;
                    add6_in1=input_10;  // Adder 6 in
                    add6_in2=input_11;
               end
            1: begin
                    adder22_regNext=add1_out;
                    adder23_regNext=add2_out;
                    adder27_regNext=add3_out;
                    adder28_regNext=add4_out;
                    
                    out=add5_out;
                                
                    add1_in1=input_12;  // Adder 7 in
                    add1_in2=input_13;  
                    add2_in1=input_14;  // Adder 8 in
                    add2_in2=input_15;
                    add3_in1=input_16;  // Adder 9 in
                    add3_in2=input_17;
                    add4_in1=input_18;  // Adder 10 in
                    add4_in2=input_19;
                    add5_in1=input_20;  // Adder 11 in
                    add5_in2=input_21;
                    add6_in1=input_22;  // Adder 12 in
                    add6_in2=input_23;
               end
            2: begin
                    add1_in1=input_24;  // Adder 13 in
                    add1_in2=input_25;
                    add2_in1=input_26;  // Adder 14 in
                    add2_in2=input_27;
                    add3_in1=input_28;  // Adder 15 in
                    add3_in2=input_29;
                    
                    add4_in1=add1_out;  // Adder 16  in
                    add4_in2=add2_out;
                    add5_in1=add3_out;  // Adder 17 in
                    add5_in2=add4_out;
                    add6_in1=add5_out;  // Adder 18 in
                    add6_in2=add6_out;

               end
            3: begin       
                    add1_in1=add1_out;  // Adder 19 in
                    add1_in2=add2_out;
                    add2_in1=add3_out;  // Adder 20 in
                    add2_in2=add4_out;
                    add3_in1=add5_out;  // Adder 21 in
                    add3_in2=add6_out;                    
                    
                    if(latency==1)begin
                        add4_in1=adder18_reg;  // Adder 24 in
                        add4_in2=adder19_reg;
                        add5_in1=adder20_reg;  // Adder 25 in
                        add5_in2=adder21_reg;
                        add6_in1=adder22_reg;  // Adder 26 in
                        add6_in2=adder15_reg;                    
                    end
               end
            4: begin
                    adder15_regNext=add3_out;   //Result of 15. register.
                    adder18_regNext=add6_out;   //Result of 18. register.
                    
                    
                    add1_in1=add1_out;  // Adder 22 in
                    add1_in2=add2_out;
                    add2_in1=add4_out;  // Adder 23 in
                    add2_in2=add5_out;

                    if(latency==2)begin
                        add3_in1=adder23_reg;  // Adder 27 in
                        add3_in2=adder24_reg;
                        add4_in1=adder25_reg;  // Adder 28 in
                        add4_in2=adder26_reg;                    
                    end
                    if(latency==3)begin
                        add5_in1=adder27_reg;  // Adder 29 in
                        add5_in2=adder28_reg;      
                    end
					latencyNext=latency+1;
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
