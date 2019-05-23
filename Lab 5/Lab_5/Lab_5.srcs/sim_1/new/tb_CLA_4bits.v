`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2019 05:06:09 PM
// Design Name: 
// Module Name: tb_CLA_4bits
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


module tb_CLA_4bits;
    reg clk;
    reg enable;
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [4:0] Q;
    
    CLA_4bits uut(
        .clk(clk),
        .enable(enable),
        .A(A),
        .B(B),
        .Cin(Cin),
        .Q(Q)
        );
        
    initial begin      
    clk = 0;
    enable = 0;
    A = 4'b0000;
    B = 4'b0000;
    Cin = 0;
    #50;
    
    enable = 1;
    A = 4'b0000;
    B = 4'b0101;
    #50;
    
    A = 4'b0101;
    B = 4'b0111;
    #50;
    
    A = 4'b1000;
    B = 4'b0111;
    Cin = 1;
    #50;
    
    A = 4'b1001;
    B = 4'b0100;
    Cin = 0;
    #50;
    
    A = 4'b1000;
    B = 4'b1000;
    Cin = 1;
    #50;
    
    A = 4'b1101;
    B = 4'b1010;
    #50;
    
    A = 4'b1110;
    B = 4'b1111;
    Cin = 0;
    #50;
    
    end
    
    always
    
    #5 clk = ~clk;
    
    
endmodule


