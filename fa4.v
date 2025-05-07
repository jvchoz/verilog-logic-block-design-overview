
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2025 02:41:34 PM
// Design Name: 
// Module Name: fa4
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
module fa4(
    A,                // 4 bits
    B,                // 4 bits
    Cin,              // 1 bit
    Sum,              // 4 bits
    Cout              // 1 bit
);
// Define the input and output signals
input [3:0] A;
input [3:0] B;
input Cin;
output [3:0] Sum;
output Cout;
    
// Internal wires
wire c1, c2, c3;
    
// Instantiate 4 1-bit full adders
fa fa0(                 // First bit (least significant)
    .A(A[0]),
    .B(B[0]),
    .Cin(Cin),
    .Sum(Sum[0]),
    .Cout(c1)
);

fa fa1(                 // Second bit
    .A(A[1]),
    .B(B[1]),
    .Cin(c1),
    .Sum(Sum[1]),
    .Cout(c2)
);

fa fa2(                 // Third bit
    .A(A[2]),
    .B(B[2]),
    .Cin(c2),
    .Sum(Sum[2]),
    .Cout(c3)
);

fa fa3(                 // Fourth bit (most significant)
    .A(A[3]),
    .B(B[3]),
    .Cin(c3),
    .Sum(Sum[3]),
    .Cout(Cout)
);

endmodule // fa4
