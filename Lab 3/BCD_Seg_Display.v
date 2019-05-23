`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 06:38:59 PM
// Design Name: 
// Module Name: BCD_Structural
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// i3dditional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//Arman 
//aak2464

module BCD_Seg_Display(
    input i0,
    input i1,
    input i2,
    input i3,    
    output an0,
    output an1,
    output an2,
    output an3,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output dp
    );


    //wires for outputs 
    wire and_m0, and_m1, and_m2, and_m3, and_m4, and_m5, and_m6,
    and_m7, and_m8, and_m9, and_m10, and_m11, and_m12, and_m13, and_m14, and_m15, not_i3, not_i2, not_i1, not_i0;;
    
      assign an0=1'b0;
      assign an1=1'b1;
      assign an2=1'b1;
      assign an3=1'b1;
      assign dp = 1'b1;
        
    //Instantiating Not gates 
    not n0 (not_i3, i3);
    not n1 (not_i2, i2);
    not n2 (not_i1, i1);
    not n3 (not_i0, i0);
    
    //make AND gates
    and m0 (and_m0, i3, i2);
    and m1 (and_m1, i3, i1);
    and m2 (and_m2, i2, not_i1 ,not_i0);
    and m3 (and_m3, not_i3, not_i2, not_i1, i0);
    and m4 (and_m4, i2, not_i1, i0);
    and m5 (and_m5, i2, i1, not_i0);
    and m6 (and_m6, not_i2, i1, not_i0);
    and m7 (and_m7, not_i3, not_i2, not_i1, i0);
    and m8 (and_m8, i2, i1, i0);
    and m9 (and_m9, not_i3, i2, not_i1);
    and m10 (and_m10, not_i3, i0);
    and m11 (and_m11, i1, i0);
    and m12 (and_m12, not_i3, not_i2, i0);
    and m13 (and_m13,not_i3, not_i2, not_i1);
    and m14 (and_m14, not_i2, i1);
    and m15 (and_m15, i3, not_i1, i0);
    
    //set up the OR gates
    or agate (a, and_m0, and_m1, and_m2, and_m3);
    or bgate (b, and_m0, and_m1, and_m4, and_m5);
    or cgate (c, and_m0, and_m1, and_m6);
    or dgate (d, and_m0, and_m1, and_m2, and_m7, and_m8, and_m15);
    or egate (e, and_m0, and_m1, and_m9, and_m10, i0);
    or fgate (f, and_m0, and_m1, and_m11, and_m12, and_m14);
    or ggate (g, and_m0, and_m1, and_m13, and_m8);


endmodule
