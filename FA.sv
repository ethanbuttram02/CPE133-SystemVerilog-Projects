`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2022 09:00:24 AM
// Design Name: 
// Module Name: FA
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


module FA(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    
    //using [0:1] notation to build better coding habits
    //not simplifying the equations because the computer simplifies it 
    assign Sum = (~A & ~B & Cin) | (~A & B & ~Cin) | (A & ~B & ~Cin) | (A & B & Cin);
    assign Cout = (~A & B & Cin) | (A & ~B & Cin) | (A & B & ~Cin) | (A & B & Cin);
    
endmodule
