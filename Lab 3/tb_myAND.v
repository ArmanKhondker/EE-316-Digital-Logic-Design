`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2019 04:08:38 PM
// Design Name: 
// Module Name: tb_myAND
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


module tb_myAND(

    );
    
    //inputs defined as registers
    reg a;
    reg b;
    
    //outputs defined as wires
    
    wire out; 
    
    myAND and_gate0 (
    .a(a),
    .b(b),
    .out(out)
    );
    
    initial 
       begin
        
        //Stimulus - all input combinations followed by some wait time to observe the output
        a=1'b0;
        b=1'b0; 
        
        #50;
        
        a=1'b0;
        b=1'b1;
        
        #50;
        
        a=1'b1;
        b=1'b0;
        
        #50;
        
        a=1'b1;
        b=1'b1;
            
  end
        
endmodule
