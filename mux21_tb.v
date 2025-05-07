`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2025 11:06:30 PM
// Design Name: 
// Module Name: mux21_tb
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


module mux21_tb();

// Inputs
reg S_tb = 0;
reg D1_tb = 0;
reg D2_tb = 0;

// Output
wire Y_tb;

// Instantiate the multiplexer
mux21 uut (
    .S(S_tb),
    .D1(D1_tb),
    .D2(D2_tb),
    .Y(Y_tb)
);

// Run test cases
initial begin
    // Test 1
    D1_tb = 0;
    D2_tb = 1;
    S_tb = 0;
    #20;
    
    // Test 2
    D1_tb = 0;
    D2_tb = 1;
    S_tb = 1;
    #20;
end

endmodule   // mux21_tb
