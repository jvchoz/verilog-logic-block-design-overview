`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2025 10:58:50 PM
// Design Name: 
// Module Name: mux21
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

// Module definition
module mux21(
    input S,
    input D1,
    input D2,
    output Y
);

// Define the MUX 2:1 module behavior
assign Y = (S == 0) ? D1 : D2;          // "If S is 0, give D1; else give D2."

endmodule   // mux21
