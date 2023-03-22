`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Manisa Celal Bayar University
// Engineer: Selahattin ABAKAY
// 
// Create Date: 22.03.2023 23:22:03
// Design Name: 
// Module Name: ram1
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


module ram1(
  input [7:0] din,  //8 bit data input
  input [11:0] addr,  // 12 bit address input
                input clk,  //clock input
                input we,  // write enable input 
  output [7:0] dout  // 8 bit data out 
    );
      
  reg [7:0] mem [4095:0];   // 2^12 = 4096  the memory implemented as array from 8 bit to 4096 bit.
  always@(posedge clk)  
    if(we) 
      mem[addr] <= din; 
  assign dout = mem[addr]; 
    
    
    
    
endmodule
