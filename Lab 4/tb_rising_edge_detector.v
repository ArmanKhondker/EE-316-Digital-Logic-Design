`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2019 06:27:12 PM
// Design Name: 
// Module Name: tb_rising_edge_detector
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


module tb_rising_edge_detector;

    reg clk;
    reg signal;
    reg reset;
    wire outedge;
    
    rising_edge_detector ul (
        .clk(clk),
        .signal(signal),
        .reset(reset),
        .outedge(outedge)
        );
        
        
initial
begin
        
        clk = 0;
        signal = 0;
        reset = 0;
        
        
        #100;
        
        signal = 1;
        reset = 0;
        
        #100;
        
        
        signal = 0;
        reset = 0;
        
        #100;
        
        
        signal = 1;
        reset = 1;
        
        #100; 
        signal = 1;
        reset = 1;
        
        #100;
        
        signal = 1;
        reset = 0;
         
        #100; 
        
        reset = 1;
        
        #100;
        
        reset = 0;
        
        #20;
        
        signal = 0;
        reset = 1;
        
        #100 
        
        
        signal = 0;
        reset =0;

end

    always
    #5 clk = ~clk;

endmodule



