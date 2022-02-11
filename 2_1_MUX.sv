`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2022 04:37:54 PM
// Design Name: 
// Module Name: 2_1_MUX
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


module MUX_2_1(
    input A0,
    input A1,
    input SEL,
    output F
    );
    
    assign #(19, 19.5) F = (~A0 & A1 & SEL) | (A0 & ~A1 & ~SEL) | (A0 & A1 & ~SEL) | (A0 & A1 & SEL);
    
endmodule
