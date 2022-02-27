`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2021 07:01:31 AM
// Design Name: 
// Module Name: scoremodule
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


module scoremodule(
    input clk,
    input reset,
    input [15:0] Hcount,
    input [15:0] Vcount,
    output reg [3:0] r_red,
    output reg [3:0] r_blue,
    output reg [3:0] r_green
    );
    
    
    wire [3:0] counter;
    
    counter score(clk, reset, counter);
    
    always @(posedge clk) begin
        if(counter==4'd0) begin
            if(Hcount>=470 && Hcount<495 && Vcount>=110 && Vcount<235) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=495 && Hcount<570 && Vcount>=110 && Vcount<135) begin
                r_red<=4'hF;
                r_blue<=4'hF;
                r_green<=4'hF;
            end
            else if(Hcount>=520 && Hcount<545 && Vcount>=135 && Vcount<185) begin
                r_red<=4'hF;
                r_blue<=4'hF;
                r_green<=4'hF;
            end
            else if(Hcount>=570 && Hcount<595 && Vcount>=110 && Vcount<235) begin
                r_red<=4'hF;
                r_blue<=4'hF;
                r_green<=4'hF;
            end
        end
        else if(counter==4'd1) begin
            if(Hcount>=620 && Hcount<645 && Vcount>=110 && Vcount<235) begin
                r_red<=4'h0;
                r_blue<=4'h0;
                r_green<=4'h0;
            end
            else if(Hcount>=645 && Hcount<720 && Vcount>=110 && Vcount<135) begin
                r_red<=4'hF;
                r_blue<=4'hF;
                r_green<=4'hF;
            end
            else if(Hcount>=645 && Hcount<720 && Vcount>=160 && Vcount<185) begin
                r_red<=4'hF;
                r_blue<=4'hF;
                r_green<=4'hF;
            end
            else if(Hcount>=645 && Hcount<720 && Vcount>=210 && Vcount<235) begin
                r_red<=4'hF;
                r_blue<=4'hF;
                r_green<=4'hF;
            end
        end
    end
    
endmodule
