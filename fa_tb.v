
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2025 08:44:10 PM
// Design Name: 
// Module Name: fa_tb
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

`timescale 1ns / 1ps // time-unit = 1 ns, precision = 1 ps (simulation)

module fa_tb();

// Define the input signals to be sent into the full adder
reg A_tb = 0;
reg B_tb = 0;
reg Cin_tb = 0;

// Define the output wires to observe the outputs from the full adder
wire Sum_tb;
wire Cout_tb;

// Instantiate the full adder and wire it up to the testbench variables fa uut ("uut" stands for Unit Under Test)
fa uut (
    .A(A_tb),
    .B(B_tb), 
    .Cin(Cin_tb),
    .Sum(Sum_tb),
    .Cout(Cout_tb)
);

// Apply test cases in sequence
initial begin
    A_tb = 0; 
    B_tb = 1; 
    Cin_tb = 0;     // Test 1: A = 0, B = 1, Cin = 0 -> expect Sum = 1, Cout = 0
    #20;
    
    A_tb = 1; 
    B_tb = 1; 
    Cin_tb = 0;     // Test 2: A = 1, B = 1, Cin = 0 -> expect Sum = 0, Cout = 1
    #20;
    
    A_tb = 1; 
    B_tb = 1;
    Cin_tb = 1;
    #20;            // Test 3: A = 1, B = 1, Cin = 1 -> expect Sum = 1, Cout = 1
end

endmodule // fa_tb
