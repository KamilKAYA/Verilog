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


module PriorityEncoderWithLadnerFischer(input clk, input rst, input [31:0]in, output [31:0]out);

wire orOut1_0, orOut3_2, orOut5_4, orOut7_6, orOut9_8, orOut11_10, orOut13_12,orOut15_14,orOut17_16,orOut19_18,orOut21_20,orOut23_22,orOut25_24,orOut27_26,orOut29_28,orOut31_30;

OR2GATE OR2GATE_IN1_0(.A(in[1]),.B(in[0]), .Q(orOut1_0));
OR2GATE OR2GATE_IN3_2(.A(in[3]),.B(in[2]), .Q(orOut3_2));
OR2GATE OR2GATE_IN5_4(.A(in[5]),.B(in[4]), .Q(orOut5_4));
OR2GATE OR2GATE_IN7_6(.A(in[7]),.B(in[6]), .Q(orOut7_6));
OR2GATE OR2GATE_IN9_8(.A(in[9]),.B(in[8]), .Q(orOut9_8));
OR2GATE OR2GATE_IN11_10(.A(in[11]),.B(in[10]), .Q(orOut11_10));
OR2GATE OR2GATE_IN13_12(.A(in[13]),.B(in[12]), .Q(orOut13_12));
OR2GATE OR2GATE_IN15_14(.A(in[15]),.B(in[14]), .Q(orOut15_14));
OR2GATE OR2GATE_IN17_16(.A(in[17]),.B(in[16]), .Q(orOut17_16));
OR2GATE OR2GATE_IN19_18(.A(in[19]),.B(in[18]), .Q(orOut19_18));
OR2GATE OR2GATE_IN21_20(.A(in[21]),.B(in[20]), .Q(orOut21_20));
OR2GATE OR2GATE_IN23_22(.A(in[23]),.B(in[22]), .Q(orOut23_22));
OR2GATE OR2GATE_IN25_24(.A(in[25]),.B(in[24]), .Q(orOut25_24));
OR2GATE OR2GATE_IN27_26(.A(in[27]),.B(in[26]), .Q(orOut27_26));
OR2GATE OR2GATE_IN29_28(.A(in[29]),.B(in[28]), .Q(orOut29_28));
OR2GATE OR2GATE_IN31_30(.A(in[31]),.B(in[30]), .Q(orOut31_30));

wire orOut2_0_Q1, orOut6_4_Q1, orOut10_8_Q1, orOut14_12_Q1, orOut18_16_Q1, orOut22_20_Q1,orOut26_24_Q1,orOut30_28_Q1,
     orOut2_0_Q2, orOut6_4_Q2, orOut10_8_Q2, orOut14_12_Q2, orOut18_16_Q2, orOut22_20_Q2,orOut26_24_Q2,orOut30_28_Q2;


OR3GATE OR3GATE_IN2_0(.AC(orOut3_2), .B1(in[1]), .B2(orOut1_0), .Q1(orOut2_0_Q1), .Q2(orOut2_0_Q2));
OR3GATE OR3GATE_IN6_4(.AC(orOut7_6), .B1(in[5]), .B2(orOut5_4), .Q1(orOut6_4_Q1), .Q2(orOut6_4_Q2));
OR3GATE OR3GATE_IN10_8(.AC(orOut11_10), .B1(in[9]), .B2(orOut9_8), .Q1(orOut10_8_Q1), .Q2(orOut10_8_Q2));
OR3GATE OR3GATE_IN14_12(.AC(orOut15_14), .B1(in[13]), .B2(orOut13_12), .Q1(orOut14_12_Q1), .Q2(orOut14_12_Q2));
OR3GATE OR3GATE_IN18_16(.AC(orOut19_18), .B1(in[17]), .B2(orOut17_16), .Q1(orOut18_16_Q1), .Q2(orOut18_16_Q2));
OR3GATE OR3GATE_IN22_20(.AC(orOut23_22), .B1(in[21]), .B2(orOut21_20), .Q1(orOut22_20_Q1), .Q2(orOut22_20_Q2));
OR3GATE OR3GATE_IN26_24(.AC(orOut27_26), .B1(in[25]), .B2(orOut25_24), .Q1(orOut26_24_Q1), .Q2(orOut26_24_Q2));
OR3GATE OR3GATE_IN30_28(.AC(orOut31_30), .B1(in[29]), .B2(orOut29_28), .Q1(orOut30_28_Q1), .Q2(orOut30_28_Q2));

wire orOut4_0_Q1,orOut4_0_Q2, orOut4_0_Q3, orOut4_0_Q4, orOut12_8_Q1, orOut12_8_Q2, orOut12_8_Q3, orOut12_8_Q4,
     orOut20_16_Q1, orOut20_16_Q2, orOut20_16_Q3, orOut20_16_Q4, orOut28_24_Q1, orOut28_24_Q2, orOut28_24_Q3, orOut28_24_Q4;

OR5GATE OR5GATE_IN4_0(.AC(orOut6_4_Q2), .B1(in[3]), .B2(orOut3_2), .B3(orOut2_0_Q1), .B4(orOut2_0_Q2), .Q1(orOut4_0_Q1), .Q2(orOut4_0_Q2), .Q3(orOut4_0_Q3), .Q4(orOut4_0_Q4));
OR5GATE OR5GATE_IN12_8(.AC(orOut14_12_Q2), .B1(in[11]), .B2(orOut11_10), .B3(orOut10_8_Q1), .B4(orOut10_8_Q2), .Q1(orOut12_8_Q1), .Q2(orOut12_8_Q2), .Q3(orOut12_8_Q3), .Q4(orOut12_8_Q4));
OR5GATE OR5GATE_IN20_16(.AC(orOut22_20_Q2), .B1(in[19]), .B2(orOut19_18), .B3(orOut18_16_Q1), .B4(orOut18_16_Q2), .Q1(orOut20_16_Q1), .Q2(orOut20_16_Q2), .Q3(orOut20_16_Q3), .Q4(orOut20_16_Q4));
OR5GATE OR5GATE_IN28_24(.AC(orOut30_28_Q2), .B1(in[27]), .B2(orOut27_26), .B3(orOut26_24_Q1), .B4(orOut26_24_Q2), .Q1(orOut28_24_Q1), .Q2(orOut28_24_Q2), .Q3(orOut28_24_Q3), .Q4(orOut28_24_Q4));

wire orOut8_0_Q1, orOut8_0_Q2, orOut8_0_Q3, orOut8_0_Q4, orOut8_0_Q5, orOut8_0_Q6, orOut8_0_Q7, orOut8_0_Q8,
     orOut24_16_Q1, orOut24_16_Q2, orOut24_16_Q3, orOut24_16_Q4, orOut24_16_Q5, orOut24_16_Q6, orOut24_16_Q7, orOut24_16_Q8;

OR9GATE OR9GATE_IN8_0(.AC(orOut12_8_Q4), .B1(in[7]), .B2(orOut7_6), .B3(orOut6_4_Q1), .B4(orOut6_4_Q2), .B5(orOut4_0_Q1), .B6(orOut4_0_Q2), .B7(orOut4_0_Q3), .B8(orOut4_0_Q4), .Q1(orOut8_0_Q1), .Q2(orOut8_0_Q2), .Q3(orOut8_0_Q3), .Q4(orOut8_0_Q4), .Q5(orOut8_0_Q5), .Q6(orOut8_0_Q6), .Q7(orOut8_0_Q7), .Q8(orOut8_0_Q8));
OR9GATE OR9GATE_IN24_16(.AC(orOut28_24_Q4), .B1(in[23]), .B2(orOut23_22), .B3(orOut22_20_Q1), .B4(orOut22_20_Q2), .B5(orOut20_16_Q1), .B6(orOut20_16_Q2), .B7(orOut20_16_Q3), .B8(orOut20_16_Q4), .Q1(orOut24_16_Q1), .Q2(orOut24_16_Q2), .Q3(orOut24_16_Q3), .Q4(orOut24_16_Q4), .Q5(orOut24_16_Q5), .Q6(orOut24_16_Q6), .Q7(orOut24_16_Q7), .Q8(orOut24_16_Q8));

wire orOut16_0_Q1, orOut16_0_Q2, orOut16_0_Q3, orOut16_0_Q4, orOut16_0_Q5, orOut16_0_Q6, orOut16_0_Q7, orOut16_0_Q8, 
     orOut16_0_Q9, orOut16_0_Q10, orOut16_0_Q11, orOut16_0_Q12, orOut16_0_Q13, orOut16_0_Q14, orOut16_0_Q15, orOut16_0_Q16;

OR17GATE OR17GATE_IN16_0(.AC(orOut24_16_Q8), .B1(in[15]), .B2(orOut15_14), .B3(orOut14_12_Q1), .B4(orOut14_12_Q2), .B5(orOut12_8_Q1), .B6(orOut12_8_Q2), .B7(orOut12_8_Q3), .B8(orOut12_8_Q4), .B9(orOut8_0_Q1), .B10(orOut8_0_Q2), .B11(orOut8_0_Q3), .B12(orOut8_0_Q4), .B13(orOut8_0_Q5), .B14(orOut8_0_Q6), .B15(orOut8_0_Q7), .B16(orOut8_0_Q8), 
                     .Q1(orOut16_0_Q1), .Q2(orOut16_0_Q2), .Q3(orOut16_0_Q3), .Q4(orOut16_0_Q4), .Q5(orOut16_0_Q5), .Q6(orOut16_0_Q6), .Q7(orOut16_0_Q7), .Q8(orOut16_0_Q8), .Q9(orOut16_0_Q9), .Q10(orOut16_0_Q10), .Q11(orOut16_0_Q11), .Q12(orOut16_0_Q12), .Q13(orOut16_0_Q13), .Q14(orOut16_0_Q14), .Q15(orOut16_0_Q15), .Q16(orOut16_0_Q16));

wire [31:0] outWire;
AND_A_NOT_GATE  AND_A_NOT_GATE(.A1N(orOut16_0_Q15), .B1(orOut16_0_Q16), .A2N(orOut16_0_Q14), .B2(orOut16_0_Q15), .A3N(orOut16_0_Q13), .B3(orOut16_0_Q14), .A4N(orOut16_0_Q12), .B4(orOut16_0_Q13),
                               .A5N(orOut16_0_Q11), .B5(orOut16_0_Q12), .A6N(orOut16_0_Q10), .B6(orOut16_0_Q11), .A7N(orOut16_0_Q9), .B7(orOut16_0_Q10), .A8N(orOut16_0_Q8), .B8(orOut16_0_Q9),
                               .A9N(orOut16_0_Q7), .B9(orOut16_0_Q8), .A10N(orOut16_0_Q6), .B10(orOut16_0_Q7), .A11N(orOut16_0_Q5), .B11(orOut16_0_Q6), .A12N(orOut16_0_Q4), .B12(orOut16_0_Q5),
                               .A13N(orOut16_0_Q3), .B13(orOut16_0_Q4), .A14N(orOut16_0_Q2), .B14(orOut16_0_Q3), .A15N(orOut16_0_Q1), .B15(orOut16_0_Q2), .A16N(orOut24_16_Q8), .B16(orOut16_0_Q1),
                   .A17N(orOut24_16_Q7), .B17(orOut24_16_Q8), .A18N(orOut24_16_Q6), .B18(orOut24_16_Q7), .A19N(orOut24_16_Q5), .B19(orOut24_16_Q6), .A20N(orOut24_16_Q4), .B20(orOut24_16_Q5),
                   .A21N(orOut24_16_Q3), .B21(orOut24_16_Q4), .A22N(orOut24_16_Q2), .B22(orOut24_16_Q3), .A23N(orOut24_16_Q1), .B23(orOut24_16_Q2), .A24N(orOut28_24_Q4), .B24(orOut24_16_Q1),
                   .A25N(orOut28_24_Q3), .B25(orOut28_24_Q4), .A26N(orOut28_24_Q2), .B26(orOut28_24_Q3), .A27N(orOut28_24_Q1), .B27(orOut28_24_Q2), .A28N(orOut30_28_Q2), .B28(orOut28_24_Q1),
                   .A29N(orOut30_28_Q1), .B29(orOut30_28_Q2), .A30N(orOut31_30), .B30(orOut30_28_Q1), .A31N(in[31]), .B31(orOut31_30), .B32(in[31]),
                   .Q(outWire));
                   
assign out=outWire;

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



module AND_A_NOT_GATE(input A1N, input B1, input A2N, input B2, input A3N, input B3, input A4N, input B4,
                   input A5N, input B5, input A6N, input B6, input A7N, input B7, input A8N, input B8,
                   input A9N, input B9, input A10N, input B10,input A11N, input B11, input A12N, input B12,
                   input A13N, input B13, input A14N, input B14,input A15N, input B15, input A16N, input B16,
                   input A17N, input B17, input A18N, input B18, input A19N, input B19, input A20N, input B20,
                   input A21N, input B21, input A22N, input B22, input A23N, input B23, input A24N, input B24,
                   input A25N, input B25, input A26N, input B26,input A27N, input B27, input A28N, input B28,
                   input A29N, input B29, input A30N, input B30,input A31N, input B31, input A32N, input B32,
                   output [31:0] Q);
assign Q[0]=~A1N&B1;
assign Q[1]=~A2N&B2;
assign Q[2]=~A3N&B3;
assign Q[3]=~A4N&B4;
assign Q[4]=~A5N&B5;
assign Q[5]=~A6N&B6;
assign Q[6]=~A7N&B7;
assign Q[7]=~A8N&B8;
assign Q[8]=~A9N&B9;
assign Q[9]=~A10N&B10;
assign Q[10]=~A11N&B11;
assign Q[11]=~A12N&B12;
assign Q[12]=~A13N&B13;
assign Q[13]=~A14N&B14;
assign Q[14]=~A15N&B15;
assign Q[15]=~A16N&B16;
assign Q[16]=~A17N&B17;
assign Q[17]=~A18N&B18;
assign Q[18]=~A19N&B19;
assign Q[19]=~A20N&B20;
assign Q[20]=~A21N&B21;
assign Q[21]=~A22N&B22;
assign Q[22]=~A23N&B23;
assign Q[23]=~A24N&B24;
assign Q[24]=~A25N&B25;
assign Q[25]=~A26N&B26;
assign Q[26]=~A27N&B27;
assign Q[27]=~A28N&B28;
assign Q[28]=~A29N&B29;
assign Q[29]=~A30N&B30;
assign Q[30]=~A31N&B31;
assign Q[31]=~A32N&B32;
endmodule