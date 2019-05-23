`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2019 06:17:06 PM
// Design Name: 
// Module Name: Mux_Behavioral
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


module Mux_Behavioral(
    input a,
    input b,
    input c,
    input d,
    input s1,
    input s2,
    output reg y
    );
    
    always@(s1,s2,a,b,c,d)
    begin
    
    y=1'b0;
        case({s2,s1})
        2'b00:y = a;
        2'b01:y = b;
        2'b10:y = c;
        2'b11:y = d;
        default: begin
                 y=1'b0;
                 end
        endcase
    end
    
endmodule
