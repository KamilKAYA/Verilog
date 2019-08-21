`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Ozyegin University
// Engineer: Kamil KAYA
// 
// Create Date: 08/21/2019 02:10:28 PM
// Design Name: 
// Module Name: PriorityEncoderWithLadnerFischer
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


module PriorityEncoderWithLadnerFischer(input clk, input rst, input [31:0]in, output reg [31:0]out);

OR2GATE OR2GATE_IN0_1(.A(in[0]),.B(in[1]), .Q());
OR2GATE OR2GATE_IN2_3(.A(in[2]),.B(in[3]), .Q());
OR2GATE OR2GATE_IN4_5(.A(in[4]),.B(in[5]), .Q());
OR2GATE OR2GATE_IN6_7(.A(in[6]),.B(in[7]), .Q());
OR2GATE OR2GATE_IN8_9(.A(in[8]),.B(in[9]), .Q());
OR2GATE OR2GATE_IN10_11(.A(in[10]),.B(in[11]), .Q());
OR2GATE OR2GATE_IN11_12(.A(in[12]),.B(in[13]), .Q());
OR2GATE OR2GATE_IN13_14(.A(in[14]),.B(in[15]), .Q());
OR2GATE OR2GATE_IN15_16(.A(in[16]),.B(in[17]), .Q());
OR2GATE OR2GATE_IN17_18(.A(in[18]),.B(in[19]), .Q());
OR2GATE OR2GATE_IN19_20(.A(in[20]),.B(in[21]), .Q());
OR2GATE OR2GATE_IN21_22(.A(in[22]),.B(in[23]), .Q());
OR2GATE OR2GATE_IN23_24(.A(in[24]),.B(in[25]), .Q());
OR2GATE OR2GATE_IN25_26(.A(in[26]),.B(in[27]), .Q());
OR2GATE OR2GATE_IN26_28(.A(in[28]),.B(in[29]), .Q());
OR2GATE OR2GATE_IN29_30(.A(in[30]),.B(in[31]), .Q());

OR3GATE OR3GATE_IN0_2(.AC(), .B1(), .B2(), .Q1(), .Q2());
OR3GATE OR3GATE_IN4_6(.AC(), .B1(), .B2(), .Q1(), .Q2());
OR3GATE OR3GATE_IN8_10(.AC(), .B1(), .B2(), .Q1(), .Q2());
OR3GATE OR3GATE_IN12_14(.AC(), .B1(), .B2(), .Q1(), .Q2());
OR3GATE OR3GATE_IN16_18(.AC(), .B1(), .B2(), .Q1(), .Q2());
OR3GATE OR3GATE_IN20_22(.AC(), .B1(), .B2(), .Q1(), .Q2());
OR3GATE OR3GATE_IN24_26(.AC(), .B1(), .B2(), .Q1(), .Q2());
OR3GATE OR3GATE_IN28_30(.AC(), .B1(), .B2(), .Q1(), .Q2());

OR5GATE OR5GATE_IN0_4(.AC(), .B1(), .B2(), .B3(), .B4(), .Q1(), .Q2(), .Q3(), .Q4());
OR5GATE OR5GATE_IN8_12(.AC(), .B1(), .B2(), .B3(), .B4(), .Q1(), .Q2(), .Q3(), .Q4());
OR5GATE OR5GATE_IN16_20(.AC(), .B1(), .B2(), .B3(), .B4(), .Q1(), .Q2(), .Q3(), .Q4());
OR5GATE OR5GATE_IN24_28(.AC(), .B1(), .B2(), .B3(), .B4(), .Q1(), .Q2(), .Q3(), .Q4());

OR9GATE OR9GATE_IN0_8(.AC(), .B1(), .B2(), .B3(), .B4(), .B5(), .B6(), .B7(), .B8(), .Q1(), .Q2(), .Q3(), .Q4(), .Q5(), .Q6(), .Q7(), .Q8());
OR9GATE OR9GATE_IN16_24(.AC(), .B1(), .B2(), .B3(), .B4(), .B5(), .B6(), .B7(), .B8(), .Q1(), .Q2(), .Q3(), .Q4(), .Q5(), .Q6(), .Q7(), .Q8());

OR17GATE OR17GATE_IN(.AC(), .B1(), .B2(), .B3(), .B4(), .B5(), .B6(), .B7(), .B8(), .B9(), .B10(), .B11(), .B12(), .B13(), .B14(), .B15(), .B16(), .Q1(), .Q2(), .Q3(), .Q4(), .Q5(), .Q6(), .Q7(), .Q8(), .Q9(), .Q10(), .Q11(), .Q12(), .Q13(), .Q14(), .Q15(), .Q16());

AND_A_NOT_GATE  AND_A_NOT_GATE(.A1(), .B1(), .A2(), .B2(), .A3(), .B3(), .A4(), .B4(),
                   .A5(), .B5(), .A6(), .B6(), .A7(), .B7(), .A8(), .B8(),
                   .A9(), .B9(), .A10(), .B10(), .A11(), .B11(), .A12(), .B12(),
                   .A13(), .B13(), .A14(), .B14(), .A15(), .B15(), .A16(), .B16(),
                   .A17(), .B17(), .A18(), .B18(), .A19(), .B19(), .A20(), .B20(),
                   .A21(), .B21(), .A22(), .B22(), .A23(), .B23(), .A24(), .B24(),
                   .A25(), .B25(), .A26(), .B26(), .A27(), .B27(), .A28(), .B28(),
                   .A29(), .B29(), .A30(), .B30(), .A31(), .B31(), .A32(), .B32(),
                   .Q());

endmodule


module OR2GATE(input A, input B, output Q);
assign Q=A|B;
endmodule

module OR3GATE( input AC,
                input B1, input B2, 
                output Q1, output Q2);
assign Q1=AC|B1;
assign Q2=AC|B2;
endmodule

module OR5GATE( input AC, 
                input B1, input B2, input B3, input B4, 
                output Q1, output Q2, output Q3, output Q4);
assign Q1=AC|B1;
assign Q2=AC|B2;
assign Q3=AC|B3;
assign Q4=AC|B4;
endmodule

module OR9GATE( input AC, 
                input B1, input B2, input B3, input B4, 
                input B5, input B6, input B7, input B8,
                output Q1, output Q2, output Q3, output Q4,
                output Q5, output Q6, output Q7, output Q8);
assign Q1=AC|B1;
assign Q2=AC|B2;
assign Q3=AC|B3;
assign Q4=AC|B4;
assign Q5=AC|B5;
assign Q6=AC|B6;
assign Q7=AC|B7;
assign Q8=AC|B8;
endmodule

module OR17GATE(input AC, 
                input B1, input B2, input B3, input B4, 
                input B5, input B6, input B7, input B8,
                input B9, input B10, input B11, input B12, 
                input B13, input B14, input B15, input B16,
                output Q1, output Q2, output Q3, output Q4,
                output Q5, output Q6, output Q7, output Q8,
                output Q9, output Q10, output Q11, output Q12,
                output Q13, output Q14, output Q15, output Q16);
assign Q1=AC|B1;
assign Q2=AC|B2;
assign Q3=AC|B3;
assign Q4=AC|B4;
assign Q5=AC|B5;
assign Q6=AC|B6;
assign Q7=AC|B7;
assign Q8=AC|B8;
assign Q9=AC|B9;
assign Q10=AC|B10;
assign Q11=AC|B11;
assign Q12=AC|B12;
assign Q13=AC|B13;
assign Q14=AC|B14;
assign Q15=AC|B15;
assign Q16=AC|B16;
endmodule



module AND_A_NOT_GATE(input A1, input B1, input A2, input B2, input A3, input B3, input A4, input B4,
                   input A5, input B5, input A6, input B6, input A7, input B7, input A8, input B8,
                   input A9, input B9, input A10, input B10,input A11, input B11, input A12, input B12,
                   input A13, input B13, input A14, input B14,input A15, input B15, input A16, input B16,
                   input A17, input B17, input A18, input B18, input A19, input B19, input A20, input B20,
                   input A21, input B21, input A22, input B22, input A23, input B23, input A24, input B24,
                   input A25, input B25, input A26, input B26,input A27, input B27, input A28, input B28,
                   input A29, input B29, input A30, input B30,input A31, input B31, input A32, input B32,
                   output [31:0] Q);
assign Q[0]=~A1&B1;
assign Q[1]=~A2&B2;
assign Q[2]=~A3&B3;
assign Q[3]=~A4&B4;
assign Q[4]=~A5&B5;
assign Q[5]=~A6&B6;
assign Q[6]=~A7&B7;
assign Q[7]=~A8&B8;
assign Q[8]=~A9&B9;
assign Q[9]=~A10&B10;
assign Q[10]=~A11&B11;
assign Q[11]=~A12&B12;
assign Q[12]=~A13&B13;
assign Q[13]=~A14&B14;
assign Q[14]=~A15&B15;
assign Q[15]=~A16&B16;
assign Q[16]=~A17&B17;
assign Q[17]=~A18&B18;
assign Q[18]=~A19&B19;
assign Q[19]=~A20&B20;
assign Q[20]=~A21&B21;
assign Q[21]=~A22&B22;
assign Q[22]=~A23&B23;
assign Q[23]=~A24&B24;
assign Q[24]=~A25&B25;
assign Q[25]=~A26&B26;
assign Q[26]=~A27&B27;
assign Q[27]=~A28&B28;
assign Q[28]=~A29&B29;
assign Q[29]=~A30&B30;
assign Q[30]=~A31&B31;
assign Q[31]=~A32&B32;
endmodule