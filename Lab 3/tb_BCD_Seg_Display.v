`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 06:39:54 PM
// Design Name: 
// Module Name: tb_BCD_Structural
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

//Arman Khondker
//aak2464

module tb_BCD_structural;

 
    reg i3;
    reg i2;
    reg i1;
    reg i0;
  

    wire a,b,c,d,e,f,g, an0, an1, an2, an3, dp;
    
   
    BCD_Seg_Display uut(
        .i3(i3),
        .i2(i2),
        .i1(i1),
        .i0(i0),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .an0 (an0),
        .an1 (an1),
        .an2 (an2),
        .an3 (an3),
        .dp (dp)
    );
    
    initial begin
        

        i3 = 0;
        i2 = 0;
        i1 = 0;
        i0 = 0;
        
        #50

        i3 = 0;
        i2 = 0;
        i1 = 0;
        i0 = 0;
        $display ("TC01");
        if ({a,b,c,d,e,f,g}!= 7'b0000001)$display ("Result is Wrong");
        
        i3 = 0;
        i2 = 0;
        i1 = 0;
        i0 = 1;
        #50
        $display ("TC02");
        if({a,b,c,d,e,f,g}!= 7'b1001111) $display ("Result is Wrong");
        
        i3 = 0;
        i2 = 0;
        i1 = 1;
        i0 = 0;
        #50
        $display ("TC03");
        if( {a,b,c,d,e,f,g}!= 7'b0010010) $display ("Result is Wrong");
        
        i3 = 0;
        i2 = 0;
        i1 = 1;
        i0 = 1;
        #50
        $display ("TC04");
        if( {a,b,c,d,e,f,g}!= 7'b0000110) $display ("Result is Wrong");
        
        i3 = 0;
        i2 = 1;
        i1 = 0;
        i0 = 0;
        #50
        $display ("TC05");
        if({a,b,c,d,e,f,g}!= 7'b1001100) $display ("Result is Wrong");
        
        i3 = 0;
        i2 = 1;
        i1 = 0;
        i0 = 1;
        #50
        $display ("TC06");
        if({a,b,c,d,e,f,g}!= 7'b0100100) $display ("Result is Wrong");
        
        i3 = 0;
        i2 = 1;
        i1 = 1;
        i0 = 0;
        #50
        $display ("TC07");
        if({a,b,c,d,e,f,g}!= 7'b0100000) $display ("Result is Wrong");
        
        i3 = 0;
        i2 = 1;
        i1 = 1;
        i0 = 1;
        #50
        $display ("TC08");
        if({a,b,c,d,e,f,g}!= 7'b0001111) $display ("Result is Wrong");
        
        i3 = 1;
        i2 = 0;
        i1 = 0;
        i0 = 0;
        #50
        $display ("TC09");
        if({a,b,c,d,e,f,g}!= 7'b0000000) $display ("Result is Wrong");
        
        i3 = 1;
        i2 = 0;
        i1 = 0;
        i0 = 1;
        #50
        $display ("TC10");
        if({a,b,c,d,e,f,g}!= 7'b0001100) $display ("Result is Wrong");
        
        i3 = 1;
        i2 = 0;
        i1 = 1;
        i0 = 0;
        #50
        $display ("TC11");
        if({a,b,c,d,e,f,g}!= 7'b1111111) $display ("Result is Wrong");
        
        i3 = 1;
        i2 = 0;
        i1 = 1;
        i0 = 1;
        #50
        $display ("TC12");
        if({a,b,c,d,e,f,g}!= 7'b1111111) $display ("Result is Wrong");
        
        i3 = 1;
        i2 = 1;
        i1 = 0;
        i0 = 0;
        #50
        $display ("TC13");
        if({a,b,c,d,e,f,g}!= 7'b1111111) $display ("Result is Wrong");
        
        i3 = 1;
        i2 = 1;
        i1 = 0;
        i0 = 1;
        #50
        $display ("TC14");
        if({a,b,c,d,e,f,g}!= 7'b1111111) $display ("Result is Wrong");
        
        i3 = 1;
        i2 = 1;
        i1 = 1;
        i0 = 0;
        #50
        $display ("TC15");
        if({a,b,c,d,e,f,g}!= 7'b1111111) $display ("Result is Wrong");
        
        i3 = 1;
        i2= 1;
        i1 = 1;
        i0 = 1;
        #50
        $display ("TC16");
        if({a,b,c,d,e,f,g}!= 7'b1111111) $display ("Result is Wrong");
        
        end
       
endmodule

