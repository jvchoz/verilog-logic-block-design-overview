`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2025 03:13:55 PM
// Design Name: 
// Module Name: fa4_tb
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


module fa4_tb();

// Inputs for the testbench
reg [3:0] A_tb = 0;
reg [3:0] B_tb = 0;
reg Cin_tb = 0;

// Outputs
wire [3:0] Sum_tb;
wire Cout_tb;

// Instantiate the 4-bit full adder module
fa4 uut(
    .A(A_tb),
    .B(B_tb),
    .Cin(Cin_tb),
    .Sum(Sum_tb),
    .Cout(Cout_tb)
);

// Apply the test cases
initial begin
    // Test 1: A = 0110, B = 0100, Cin = 0
    A_tb = 4'b0110;
    B_tb = 4'b0100;
    Cin_tb = 1'b0;
    #20;
    
    // Test 2: A = 1000, B = 1001, Cin = 1
    A_tb = 4'b1000;
    B_tb = 4'b1001;
    Cin_tb = 1'b1;
    #20;
    
    // Test 3: A = 1110, B = 0010, Cin = 0
    A_tb = 4'b1110;
    B_tb = 4'b0010;
    Cin_tb = 1'b0;
    #20;
    
    // Test 4: A = 1010, B = 1011, Cin = 0
    A_tb = 4'b1010;
    B_tb = 4'b1011;
    Cin_tb = 1'b0;
    #20;
    
    // Hold final state
    #20;
end

endmodule   // fa4_tb
