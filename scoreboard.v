`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2021 07:06:48 AM
// Design Name: 
// Module Name: scoreboard
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


module scoreboard(
    input clk,
    input reset,
    input [15:0] Hcount,
    input [15:0] Vcount,
    output reg [3:0] s_red,
    output reg [3:0] s_green,
    output reg [3:0] s_blue
    );
    
    
    wire load;
    assign load = 1'b1;
    wire data;
    assign data=4'b0000;
    wire [3:0] count;
    counterB score(clk, reset, load, data, count);
    always @(posedge clk) begin
        if (count==4'b0000) begin
            if(Hcount>=720 && Hcount< 725 && Vcount>=50 && Vcount<65) begin
                s_red<=4'h0;
                s_blue<=4'h0;
                s_green<=4'h0;
            end
            else if(Hcount>=720 && Hcount<725 && Vcount>=65 && Vcount<80) begin
                s_red<=4'h0;
                s_blue<=4'h0;
                s_green<=4'h0;
            end
            else if(Hcount>=725 && Hcount<740 && Vcount>=80 && Vcount<85) begin
                s_red<=4'h0;
                s_blue<=4'h0;
                s_green<=4'h0;
            end
            else if(Hcount>=740 && Hcount<745 && Vcount>=65 && Vcount<80) begin
                s_red<=4'h0;
                s_blue<=4'h0;
                s_green<=4'h0;
            end
            else if(Hcount>=740 && Hcount<745 && Vcount>=50 && Vcount<65) begin
                s_red<=4'h0;
                s_blue<=4'h0;
                s_green<=4'h0;
            end
            else if(Hcount>=725 && Hcount<740 && Vcount>=60 && Vcount<65) begin
                s_red<=4'h0;
                s_blue<=4'h0;
                s_green<=4'h0;
            end
            else if(Hcount>=725 && Hcount<740 && Vcount>=50 && Vcount<65) begin
                s_red<=4'hF;
                s_blue<=4'hF;
                s_green<=4'hF;
            end
        end
    end
endmodule
