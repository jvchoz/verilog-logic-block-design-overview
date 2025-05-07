//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2025 02:26:57 PM
// Design Name: 
// Module Name: ha_tb
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

module ha_tb();

    // Define the input and output ports
    reg A_tb = 0;
    reg B_tb = 0;
    wire Sum_tb;
    wire Cout_tb;
    
    // Port Mapping
    ha instant
      (
       .A(A_tb),
       .B(B_tb),
       .Sum(Sum_tb),
       .Cout(Cout_tb)
      );
      
    // Test samples
    initial  // initial block executes only once
      begin
        A_tb = 1'b0;
        B_tb = 1'b0;
        #10;  // 0 ns to 10 ns
        
        A_tb = 1'b0;
        B_tb = 1'b1;
        #10;  // 10 ns to 20 ns
        
        A_tb = 1'b1;
        B_tb = 1'b0;
        #10;  // 20 ns to 30 ns
        
        A_tb = 1'b1;
        B_tb = 1'b1;
        #10;  // 30 ns to 40 ns
        
      end
      
endmodule // ha_tb
