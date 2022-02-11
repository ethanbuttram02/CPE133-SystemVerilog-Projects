`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CP SLO CPE133 Botros
// Engineer: Ethan Buttram
// 
// Create Date: 01/21/2022 08:45:16 AM
// Design Name: 
// Module Name: HA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: a half adder that will be used in a greater project.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module HA(
    input A,
    input B,
    output Sum,
    output Cout
    );
    
    //using input [a:b] syntax to reduce redundancy and to build good coding habits
    assign Sum = (~A & B) | (A & ~B);
    assign Cout = (A & B);
endmodule
