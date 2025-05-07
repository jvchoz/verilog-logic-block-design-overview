//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2025 02:20:22 PM
// Design Name: 
// Module Name: ha
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
`timescale 1ns / 1ps // time-unit = 1 ns, precision = 1 ps (for simulation)

// Define the module
module ha(
    A, 
    B, 
    Sum, 
    Cout
);

  // Define the input and output signals
  input A;
  input B;
  output Sum; 
  output Cout; 
  
  // Define the modules behavior
  
  assign Cout = A & B;      // bitwise and
  assign Sum = A ^ B;       // bitwise xor
      
endmodule // ha
