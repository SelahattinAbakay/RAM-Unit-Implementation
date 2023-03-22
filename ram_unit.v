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
                input [7:0] din,
                input [11:0] addr,
                input clk,
                input we,
                output [7:0] dout
    );
      
   reg [7:0] mem [4095:0];
                always@(posedge clk)
                    if(we)
                       mem[addr] <= din;
                    assign dout = mem[addr];
    
    
    
    
endmodule
