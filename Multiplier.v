/*
*Module: matrix_multiplication
*Purpose: multiply corresponding 2's complement elements 
*/
module Multiplier #(
    parameter DATA_WIDTH = 3
)
//This does our necessary multiplication, turning the matrices to just be
//the final number
(	 
   input wire [DATA_WIDTH-1:0] elementA,
   input wire [DATA_WIDTH-1:0] elementB,
   output reg [DATA_WIDTH+3:0] multiply_out
);
	
    reg [DATA_WIDTH*2-1:0] in_mat1_ext;
    reg [DATA_WIDTH*2-1:0] in_mat2_ext;
    reg [DATA_WIDTH*4-1:0] full_product;

    always @(*) begin
        // Sign-extend `in_mat1` and `in_mat2` to 8 bits
        in_mat1_ext = { {DATA_WIDTH{elementA[DATA_WIDTH-1]}}, elementA };  // Extend in_mat1
        in_mat2_ext = { {DATA_WIDTH{elementB[DATA_WIDTH-1]}}, elementB };  // Extend in_mat2

        // Perform the 8-bit by 8-bit multiplication to get a 16-bit result
        full_product = in_mat1_ext * in_mat2_ext;

        // Truncate to the lower 8 bits of the 16-bit result for the final product
        multiply_out = full_product[DATA_WIDTH*2-1:0];
    end

endmodule


