`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2022 08:56:16 AM
// Design Name: 
// Module Name: MT_Ckt
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


module PracticalMidterm(x, carry, sum, cout);
    input x;                    //input
    output carry;               //carry from carry
    output sum;                 //output
    output cout;                //carry out
    
    wire [4:0] x;
    reg [1:0] sum;
    
    FA FA0 (
    .A      (x[1]),
    .B      (x[2]~^x[3]),       //equations for XNOR instide instantiation
    .Cin    (x[3]),
    .Sum    (sum[0]),
    .Cout   (carry)             //output of FA0 is Cin for FA1
    );
    
    FA FA1 (
    .A      (x[4]),       
    .B      (x[0]~^x[3]),       //eq for XNOR inside of instantiation
    .Cin    (carry),            //output for FA0 carried into FA1
    .Sum    (sum[1]),
    .Cout   (cout)              //Carry out for entire circuit
    );
    
endmodule
