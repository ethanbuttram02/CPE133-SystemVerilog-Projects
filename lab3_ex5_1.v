`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Buttram
// 
// Create Date: 01/18/2022 08:58:40 AM
// Design Name: lab3
// Module Name: learningVerliog
// Project Name: lab2
// Target Devices: Basys3
// Tool Versions: 
// Description: Introductory lab to verilog and circuit modelling
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//This is an example from the textbook put into verilog (ex 5.1)
module lab3_ex5_1 (
    input [2:0] B,
    output F
    );
    
    //wire is to access the inputs we made using the input [x:y] syntax. s0,s1 are Input or output
    wire s0,s1;
    
    //in data-flow style you must use assign
    assign s0 = B[0]&B[2];
    assign s1 = B[1]&B[2];
    assign F = (s0 | s1);
      
endmodule
