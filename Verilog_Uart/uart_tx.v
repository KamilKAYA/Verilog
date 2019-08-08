`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Hextio Inc.
// Engineer: Kamil KAYA
// 
// Create Date:    14:37:28 10/22/2018 
// Design Name: 	 UART HARDWARE DESIGN
// Module Name:    UART Transmit Module
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//--------------------------------------------------------------------------------
module UART_TX(input SYSCLK, output reg TX_PIN,
				input [7:0] DATA,
				input SEND,
				output reg BUSY_FLAG,
				output reg COMPLATE_FLAG,
				output reg ERROR_FLAG);

parameter sysfreq=50000000;				
parameter baudrate=115200;
parameter counterLimit=sysfreq/baudrate;

reg [9:0]counter, counterNext;
reg [8:0]buffer, bufferNext,TX_PINNEXT;
reg COMPLATE_FLAGNEXT, BUSY_FLAGNEXT;
reg [3:0] shiftCounter,shiftCounterNext;

initial shiftCounter=0;
initial TX_PINNEXT=1;
initial BUSY_FLAG=0;
initial ERROR_FLAG=0;

always @(posedge SYSCLK)begin
	counter<=counterNext;	
	buffer<=bufferNext;
	shiftCounter<=shiftCounterNext;
	BUSY_FLAG<=BUSY_FLAGNEXT;
	COMPLATE_FLAG<=COMPLATE_FLAGNEXT;
	TX_PIN<=TX_PINNEXT;
end

always @(*)begin
	TX_PINNEXT=TX_PIN;
	BUSY_FLAGNEXT=BUSY_FLAG;
	COMPLATE_FLAGNEXT=COMPLATE_FLAG;
	counterNext=counter;
	bufferNext=buffer;
	shiftCounterNext=shiftCounter;
	
	if(!BUSY_FLAG	&&	SEND)begin
		BUSY_FLAGNEXT=1;
		COMPLATE_FLAGNEXT=0;
		bufferNext[8:1]=DATA;
		bufferNext[0]=0;
		counterNext=0;
	end
		
	if(BUSY_FLAG	&&	!COMPLATE_FLAG)begin
		counterNext=counter+1;		
			if(counterLimit==counter)begin
				counterNext=0;
				if(shiftCounter<9)begin
					TX_PINNEXT=buffer[0];
					bufferNext=buffer>>1;
				end
				else if(shiftCounter==9)TX_PINNEXT=1;
				else if(shiftCounter==15)begin
					shiftCounterNext=0;
					COMPLATE_FLAGNEXT=1;
					BUSY_FLAGNEXT=0;
				end
				shiftCounterNext=shiftCounter+1;
			end
	end
end
endmodule
