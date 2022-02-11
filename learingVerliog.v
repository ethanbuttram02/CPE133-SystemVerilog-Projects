`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Buttram
// 
// Create Date: 01/10/2022 08:58:40 AM
// Design Name: lab2
// Module Name: learingVerliog
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


module lab2_ANDGate (
    input A,
    input B,
    output F
    ); //this is the separator from the hardware definitions and the actual code
    
    //Commenting, this is called flow-data, means the boolean expresssion can be written
    assign F = A*B; //* is the AND operator
endmodule
