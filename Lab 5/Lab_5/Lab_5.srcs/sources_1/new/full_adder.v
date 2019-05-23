`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2019 04:20:06 PM
// Design Name: 
// Module Name: full_adder
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

`timescale 1ns / 1ps

module full_adder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
    
    assign Cout = ((B&Cin) | (B&A) | (A&Cin));
    assign S = (A ^B ^ Cin);
     
endmodule


