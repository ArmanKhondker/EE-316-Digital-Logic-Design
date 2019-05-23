module stopwatch_main(
    input clk,
    input reset,
    input [7:0] sw,
    input [1:0] mode,
    output [3:0] an,
    output [6:0] sseg,
    output dp,
    input stopStart
    );
    
    localparam [6:0] zero = 7'b0000001;
    
    wire [6:0] in0, in1, in2, in3;
    wire [6:0] iu0, iu1, iu2, iu3;  
    wire [6:0] id0, id1, id2, id3;  
    wire [3:0] su0, su1, su2, su3;
    wire [3:0] sd0, sd1, sd2, sd3;
    wire tick;
    wire slow_clk, faster_clk;   
    
    clk_div cdiv1 (.clk(clk), .reset(reset), .slow_clk(slow_clk), .tick(tick), .faster_clk(faster_clk));    
    up_counter tc1 (.clk(clk), .reset(reset), .tick(tick), .stopStart(stopStart), .mode(mode), .sw(sw), .seg0(su0), .seg1(su1), .seg2(su2), .seg3(su3)); 
    down_counter td1 (.clk(clk), .reset(reset), .tick(tick), .stopStart(stopStart), .mode(mode), .sw(sw), .seg0(sd0), .seg1(sd1), .seg2(sd2), .seg3(sd3)); 
      
    //instantiate hexto7segment decoder
    hexto7seg h1 (.x(su0), .r(id0)); 
    hexto7seg h2 (.x(su1), .r(id1));
    hexto7seg h3 (.x(su2), .r(id2));
    hexto7seg h4 (.x(su3), .r(id3));
   
    hexto7seg h5 (.x(sd0), .r(iu0)); 
    hexto7seg h6 (.x(sd1), .r(iu1));
    hexto7seg h7 (.x(sd2), .r(iu2));
    hexto7seg h8 (.x(sd3), .r(iu3));    
    
    assign in0 = ((mode == 2'b00 || mode == 2'b01)?id0:iu0); 
    assign in1 = ((mode == 2'b00 || mode == 2'b01)?id1:iu1); 
    assign in2 = ((mode == 2'b00 || mode == 2'b01)?id2:iu2); 
    assign in3 = ((mode == 2'b00 || mode == 2'b01)?id3:iu3); 
       
    time_mux tm1 (.clk(faster_clk), .reset(reset), .in0(in0), .in1(in1), .in2(in2), .in3(in3), .an(an), .sseg(sseg), .dp(dp));    
    
endmodule
