`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2019 05:42:39 PM
// Design Name: 
// Module Name: Mux_Structural
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


module Multiplexor_Structural(
    input a,
    input b,
    input c,
    input d,
    input s1,
    input s2,
    output y
    );
    
    
    //defining wires for not signals 
    wire s1_not, s2_not, a_out, b_out, c_out, d_out;

   //instantiating not gates as per schematic
    not n1(s1_not, s1);
    not n2(s2_not, s2);
      
      
    //instantiating AND/OR gates as per schematic
    and g0 (a_out, a, s1_not, s2_not);
    and g1 (b_out, b, s1, s2_not);
    and g2 (c_out, c, s1_not, s2);
    and g3 (d_out, d, s1, s2);
    or g4  (y, a_out, b_out, c_out, d_out);

endmodule

