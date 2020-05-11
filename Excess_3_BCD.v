////////////////////////////////////////////////////////////////////////////////////////////////////////
// Design Name: Binary  to Excess 3 converter
// Engineer: kiran
// Refence : Digital Design 5th Edition by Morrios Mano & MIcheal Ciletti (by constructing Truth Table)
////////////////////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module Excess_3_BCD(in,out);

    input  wire [3:0] in;
    output reg  [3:0] out; // change the output data type to reg to use case statements
                           // change the output data type to wire to use assign statements
    
    always@(*)
        begin
            case(in)
                4'h3 : out <= 4'h0;
                4'h4 : out <= 4'h1;
                4'h5 : out <= 4'h2;
                4'h6 : out <= 4'h3;
                4'h7 : out <= 4'h4;
                4'h8 : out <= 4'h5;
                4'h9 : out <= 4'h6;
                4'hA : out <= 4'h7;
                4'hB : out <= 4'h8;
                4'hC : out <= 4'h9;
                default : out <= 4'h0;
            endcase
        end  

//    assign out[0] = ~in[0];
//    assign out[1] = in[0] ^ in[1];
//    assign out[2] = ~(in[2] ^ (in[1] & in[0]) ); 
//    assign out[3] = in[3] & (in[2] | (in[1] & in[0]));
           
endmodule
