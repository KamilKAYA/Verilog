`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kamil KAYA
// 
// Create Date: 11.10.2018 15:18:57
// Design Name: MAX31855 Module Reading
// Module Name: max31855
// Project Name: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module max31855(SYSCLK ,SPI_CLK, SPI_CS, SPI_MISO,STATUS_LED_RUN, STATUS_LED_ERROR, 
                READ, BUSY_FLAG, TEMPERATURE_TC, TEMPERATURE_IC);

input SYSCLK,SPI_MISO,READ;
output reg SPI_CLK, SPI_CS, BUSY_FLAG, STATUS_LED_RUN;
output reg [2:0] STATUS_LED_ERROR;
output reg [13:0] TEMPERATURE_TC, TEMPERATURE_IC;
reg [5:0] dividerReg, dividerRegNext;
reg [31:0] incomingData,incomingDataNext;
reg [9:0] dataCounter,dataCounterNext;
reg readFlag,readFlagNext;
parameter divider=25;

always @(posedge SYSCLK)begin
    dividerReg <= dividerRegNext;
    dataCounter <= dataCounterNext;
    readFlag <= readFlagNext;    
end

always @(*)begin
readFlagNext=readFlag;  
if(readFlag==1  && dataCounter<64)begin 
    STATUS_LED_RUN=1;
    BUSY_FLAG=1;
    SPI_CS=0;
    dividerRegNext=dividerReg+1;
    if(dividerReg<divider)begin 
        SPI_CLK=0;
    end
    else if (dividerReg>=divider)begin
        SPI_CLK=1;
        incomingDataNext[dataCounter/2]=SPI_MISO;
    end    
    if (dividerReg==(divider*2)-1)begin
        dividerRegNext=0;   
        dataCounterNext=dataCounter+1; 
    end
end else begin
    STATUS_LED_RUN=0;
    SPI_CS=1;    
    
    STATUS_LED_ERROR=incomingDataNext[31:29];
    TEMPERATURE_TC=incomingDataNext[13:0];
    if(dataCounter>63)readFlagNext=0;
    dataCounterNext=dataCounter+1;
    if (dataCounter==900)begin
    BUSY_FLAG=0; 
    dataCounterNext=0; 
    end
    if(READ && !BUSY_FLAG)begin
        readFlagNext=1;
        dataCounterNext=0;
    end
end
end

endmodule
