`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2022 05:20:32 PM
// Design Name: 
// Module Name: MUX_4_1
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

module MUX_4_1(
    input   [0:3] B,
    input  [0:1] SEL,
    output  [0:2] F     //using [0:a] syntax to develop good coding habits
    );
    
    MUX_2_1 MUX_A (     //instantiating 2x1 MUX in this file to be used to create a 4x1 MUX
        .A0     (B[0]),
        .A1     (B[1]),
        .SEL    (SEL[0]),
        .F      (F[0])        
    );
    
    MUX_2_1 MUX_B (
        .A0     (B[2]),
        .A1     (B[3]),
        .SEL    (SEL[0]),
        .F      (F[1])       //F[0] and F[1] are created to control the final MUX 
    );
    
    MUX_2_1 MUX_C (
        .A0     (F[0]),
        .A1     (F[1]),
        .SEL    (SEL[1]),
        .F      (F[2])      //F[2] is the output of the entire MUX  
    );
    
endmodule