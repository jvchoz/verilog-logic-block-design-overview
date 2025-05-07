`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2025 08:35:25 PM
// Design Name: 
// Module Name: fa
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

`timescale 1ns / 1ps    // time-unit = 1 ns, precision = 1 ps (for simulation)

// Define the module
module fa(
    A, 
    B, 
    Cin, 
    Sum, 
    Cout
);

// Define the input and output signals
input A;
input B;
input Cin;
output Sum;
output Cout;

// Define the full adder modules behavior
assign Sum = A ^ B ^ Cin;
assign Cout = (A & B) | (A & Cin) | (B & Cin);
   
endmodule // fa
