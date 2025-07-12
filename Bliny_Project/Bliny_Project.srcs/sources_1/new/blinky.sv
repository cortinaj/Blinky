`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2025 06:21:30 PM
// Design Name: 
// Module Name: blinky
// Project Name: Blinky
// Target Devices: 
// Tool Versions: 
// Description: 
// Blinks and LED on the Zybo Z7-10 board.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module blinky(
    input clk,
    output led
    );
    
    reg [24:0] count = 0;
    assign led = count[24];
    
    always @(posedge clk) begin
        count <= count + 1;
    end
endmodule
