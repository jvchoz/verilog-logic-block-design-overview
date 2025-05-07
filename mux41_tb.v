`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 03:33:54 PM
// Design Name: 
// Module Name: mux41_tb
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


module mux41_tb();

// Inputs
reg [1:0] S_tb = 2'b00;
reg D1_tb = 0;
reg D2_tb = 1;
reg D3_tb = 0;
reg D4_tb = 1;

// Output
wire Y_tb;

// Instantiate the 4:1 multiplexer
mux41 uut(
    .S(S_tb),
    .D1(D1_tb),
    .D2(D2_tb),
    .D3(D3_tb),
    .D4(D4_tb),
    .Y(Y_tb)
);

// Test sequence
initial begin
    // Test 1
    S_tb = 2'b00;
    #20;
    
    // Test 2
    S_tb = 2'b01; 
    #20;
    
    // Test 3
    S_tb = 2'b10;
    #20;
    
    // Test 4
    S_tb = 2'b11;
    #20;
end

endmodule   // mux41_tb
