`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2019 03:23:46 PM
// Design Name: 
// Module Name: tb_flight_attendant_call_system
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


module tb_flight_attendant_call_system_dataflow;

reg clk;
reg call_button;
reg cancel_button;

wire light_state;

flight_attendant_call_system_dataflow ul (
    .clk(clk),
    .call_button(call_button),
    .cancel_button(cancel_button),
    .light_state(light_state)
);

initial 
begin

clk =0;
call_button=0;
cancel_button=0;

#10;

call_button=1;
cancel_button=0;

#10

call_button=0;
cancel_button=1;

#10

call_button=1;
cancel_button=1;

#10

call_button=0;
cancel_button=0;

#10

call_button=1;
cancel_button=0;

#10

cancel_button=1;

#20

cancel_button=0;

#20

call_button=0;
cancel_button=1;

#20

call_button=0;
cancel_button=0;

end

always 
#5 clk = ~clk;

endmodule
