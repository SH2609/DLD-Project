`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2021 06:59:25 AM
// Design Name: 
// Module Name: segmentDecoder
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


module segmentDecoder(D,S);
  input [3:0] D;
  output [6:0] S;
  
  assign S[0] = (~D[3]&~D[2]&~D[1]&D[0]) | (D[3]&D[2]&~D[1]&D[0]) | (~D[3]&D[2]&~D[1]&~D[0]) | (D[3]&~D[2]&D[1]&D[0]);
  
  assign S[1] = (~D[3]&D[2]&~D[1]&D[0]) | (D[3]&D[1]&D[0]) | (D[3]&D[2]&~D[0]) | (D[2]&D[1]&~D[0]);
  
  assign S[2] = (D[3]&D[2]&~D[0]) | (~D[3]&~D[2]&D[1]&~D[0]) | (D[3]&D[2]&D[1]);
  
  assign S[3] = (~D[3]&~D[2]&~D[1]&D[0]) | (~D[3]&D[2]&~D[1]&~D[0]) | (D[3]&~D[2]&D[1]&~D[0]) | (D[2]&D[1]&D[0]);
  
   assign S[4] = (~D[3]&D[0]) | (~D[2]&~D[1]&D[0]) | (~D[3]&D[2]&~D[1]);
  
  assign S[5] = (~D[3]&~D[2]&D[0]) | (~D[3]&~D[2]&D[1]) | (~D[3]&D[1]&D[0]) | (D[3]&D[2]&~D[1]&D[0]);
  
  assign S[6] = (~D[3]&~D[2]&~D[1]) | (D[3]&D[2]&~D[1]&~D[0]) | (~D[3]&D[2]&D[1]&D[0]);
 
endmodule
