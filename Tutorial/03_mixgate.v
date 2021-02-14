`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 	
// Engineer: Kamil KAYA
// 
// Create Date: 02/13/2021 12:17:05 AM
// Design Name: Mix Gate Test
// Module Name: mixgate
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
module mixgate(input atopm, input btopm, input ctopm, output qtopm);

wire out_andgate;	// İki ayrı modülü birbirine bağlamak için wire kullanıyoruz.

andgate	a_and_b(.a(atopm), .b(btopm), .q(out_andgate));	// atopm (a top modül) girişi ile btopm (b top modül) girişini and işlemine tabi tutuyoruz.

orgate	ab_or_c(.a(out_andgate), .b(ctopm), .q(qtopm));	// a*b den  çıkan sonuç ile ctopm'i veya işlemine tabi tutuyoruz ve sonucu çıkaşa yani qtopm e gönderiyoruz.

endmodule
