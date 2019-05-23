module up_counter(
    input clk,
    input reset,
    input tick,
    input stopStart,
    input [1:0] mode,
    input [7:0] sw,
    output reg [3:0] seg0, 
    output reg [3:0] seg1, 
    output reg [3:0] seg2, 
    output reg [3:0] seg3
    );
    
    reg stop = 0; 
    
    always @ (posedge clk or posedge reset)
        begin
        if (reset) 
            begin
            case(mode)
                2'b00:begin     //Mode 1 count up from 0
                seg0 <= 0;
                seg1 <= 0;
                seg2 <= 0;
                seg3 <= 0;
                stop <= 0;
                end
                
                2'b01: begin    //Mode 2 count up from a given value
                seg0 <= 0;
                seg1 <= 0;
                seg2 <= sw[3:0];
                seg3 <= sw[7:4];
                stop <= 0;                
                end
                
                default: stop <= 0;
                
            endcase
            end
            
        else if (stopStart)
            begin
            if(stop == 0)
                stop <= 1;
            else if(stop == 1)
                stop <= 0;
            end
            
        else if (tick && stop) 
            begin
            if(seg0 == 9)
            begin
            if(seg3 == 9 && seg2 == 9 && seg1 == 9)
                seg0 <= 9;
            else
                seg0  <= 0;               
                if(seg1 == 9)
                begin
                if(seg3 == 9 && seg2 == 9)
                    seg1 <= 9;
                else
                    seg1 <= 0;
                    if(seg2 == 9 && seg3 != 9) 
                    begin
                    seg2 <= 0;
                        if(seg3 >= 9)
                        seg3 = 9;
                        else if(seg3 != 9)   
                        seg3 <= seg3 + 1;
                        end
                    else if(seg2 != 9)               
                    seg2 <= seg2 + 1;
                    end                
                else if(seg1 != 9)    
                seg1 <= seg1 + 1;
                end
            else if(seg0 != 9)
                seg0 <= seg0 + 1;                
            
            end
    end     
           
endmodule
