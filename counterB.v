`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2021 07:17:17 AM
// Design Name: 
// Module Name: counterB
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


module counterB(clk,reset,load,data,count);
  //define input and ouput ports
  input clk,reset,load;
  input [3:0] data;
  output reg [3:0] count;
  //always block will be executed at each and every positive edge of the clock
  always@(posedge clk) 
  begin
    if(reset)    //Set Counter to Zero
      count <= 0;
    else if(load)    //load the counter with data value
      count <= data;
    else       //count up
      count <= count + 1;
  end
endmodule