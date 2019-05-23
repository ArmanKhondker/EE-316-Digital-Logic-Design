module clk_div(

    input clk,
    input reset,
    output slow_clk,
    output faster_clk,
    output tick
    );
    
    reg [19:0] COUNT;  //20 bits for 10ms
    
    assign faster_clk = COUNT[14];
    assign slow_clk = COUNT[19]; //get top bit
     
    always @(posedge clk or posedge reset)  
        begin
            if (reset)
            begin
                COUNT <= 0;
            end
            else
                COUNT <= COUNT + 1;
        end
    
    assign tick = ((COUNT == 1000000)?1'b1:1'b0);
              
endmodule
