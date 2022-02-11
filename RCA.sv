`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2022 05:14:58 PM
// Design Name: 
// Module Name: RCA
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


module RCA_nb(A, B, Carry, Sum, Cout);
    parameter n = 4;
    input A;
    input B;
    output Carry;
    output Sum;
    output Cout;
    
    wire [n-1:0] A;
    wire [n-1:0] B;
    reg [n-1:0] Carry;
    reg [n-1:0] Sum;
    
    genvar i;
    generate
    for (i = 0; i < n; i++)
    begin
    if (i == 0)
        HA HA (
            .A      (A[0]),
            .B      (B[0]),  
            .Sum    (Sum[0]),
            .Cout   (Carry[0])
        );
    else
        FA FA(
            .A      (A[i]),
            .B      (B[i]),
            .Sum    (Sum[i]),
            .Cin    (Carry[i-1]),
            .Cout   (Carry[i])
        );
    end
    
    assign Cout = Carry[n-1];
    endgenerate
endmodule