module time_mux(
    input clk,
    input reset,
    input [6:0] in0,
    input [6:0] in1,
    input [6:0] in2,
    input [6:0] in3,
    output reg [6:0] sseg,    
    output reg [3:0] an,
    output reg dp
    );
    
    reg [1:0] state;
    reg [1:0] next_state;
    
    localparam [6:0] zero = 7'b0000001;
    localparam [6:0] nine = 7'b0001100;
    
    always @(*) begin
        case(state)  //State transition
            2'b00: next_state = 2'b01;
            2'b01: next_state = 2'b10;
            2'b10: next_state = 2'b11;
            2'b11: next_state = 2'b00;
        endcase
    end
    
    always @(*) begin
        case(state) //Multiplexer
            2'b00: sseg = in0; 
            2'b01: sseg = in1;
            2'b10: sseg = in2;
            2'b11: sseg = in3;
        endcase
        
        case(state) //Decoder
            2'b00:
                begin 
                an = 4'b1110;
                dp = 1'b1;
                end
            2'b01:
                begin 
                an = 4'b1101;
                dp = 1'b1;
                end
            2'b10: 
                begin
                an = 4'b1011;
                dp = 1'b0;
                end
            2'b11:
                begin 
                an = 4'b0111;
                dp = 1'b1;
                end
        endcase
    end   
     
    always @(posedge clk or posedge reset) begin
        if(reset)
            begin
                state <= 2'b00;             
            end                
        else 
            state <= next_state;
    end    
    
endmodule
