`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Ozyegin University
// Engineer: Kamil KAYA
// 
// Create Date: 20.08.2019 16:16:24
// Design Name: 
// Module Name: PriorityEncoderWithCaseStatement
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
module PriorityEncoderWithCaseStatement(input clk, input rst, input [31:0]in, output reg [31:0]out);

reg [5:0] counter, counterNext;
reg [31:0] outNext;

initial counter=32;
initial counterNext=32;

always @(posedge clk)begin
    counter<=counterNext;
    out<=outNext;
end

always @(*)begin
    counterNext=counter-1;
if(!rst)begin
    if(in[counter]==1)begin
        outNext=0;    
        case(counter)
            31:outNext[31]=1;
            30:outNext[30]=1;
            29:outNext[29]=1;
            28:outNext[28]=1;
            27:outNext[27]=1;
            26:outNext[26]=1;
            25:outNext[25]=1;
            24:outNext[24]=1;
            23:outNext[23]=1;
            22:outNext[22]=1;
            21:outNext[21]=1;
            20:outNext[20]=1;
            19:outNext[19]=1;
            18:outNext[18]=1;
            17:outNext[17]=1;
            16:outNext[16]=1;
            15:outNext[15]=1;
            14:outNext[14]=1;
            13:outNext[13]=1;
            12:outNext[12]=1;
            11:outNext[11]=1;
            10:outNext[10]=1;
            9:outNext[9]=1;
            8:outNext[8]=1;
            7:outNext[7]=1;
            6:outNext[6]=1;
            5:outNext[5]=1;
            4:outNext[4]=1;
            3:outNext[3]=1;
            2:outNext[2]=1;
            1:outNext[1]=1;
            0:outNext[0]=1;
        endcase
        counterNext=32;
    end
end else begin
    outNext=0;
    counterNext=32;
end
end

endmodule
