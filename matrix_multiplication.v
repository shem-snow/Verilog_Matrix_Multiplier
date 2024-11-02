/*
*Module: matrix_multiplication
*Purpose: multiply corresponding 2's complement elements 
*/
module matrix_multiplication #(
    parameter DATA_WIDTH = 3
)(
    input wire [DATA_WIDTH-1:0] in_mat1,     
    input wire [DATA_WIDTH-1:0] in_mat2,      
    output reg [DATA_WIDTH*2-1:0] out_mat     
);

    reg  [DATA_WIDTH*2-1:0] in_mat1_ext;
    reg  [DATA_WIDTH*2-1:0] in_mat2_ext;
    reg  [DATA_WIDTH*4-1:0] full_product;

    always @(*) begin
        // Sign-extend in_mat1 and in_mat2 to 6 bits
        in_mat1_ext = { {DATA_WIDTH{in_mat1[DATA_WIDTH-1]}}, in_mat1 };
        in_mat2_ext = { {DATA_WIDTH{in_mat2[DATA_WIDTH-1]}}, in_mat2 };

        // Perform signed multiplication to get a 12-bit result
        full_product = in_mat1_ext * in_mat2_ext;

        // Directly assign the lower 6 bits of `full_product` to `out_mat` for 2's complement
        out_mat = full_product[DATA_WIDTH*2-1:0];
    end

endmodule



/*
 We're unsure if there is a standard cell that can handle multiplication directly. If there is then our current code is good.
 Otherwise we will use the following code to build a multiplier from logic gates. 


module matrix_multiplication #(
    parameter DATA_WIDTH = 4
)
( 
    input wire [DATA_WIDTH-1:0] in_elem1,
    input wire [DATA_WIDTH-1:0] in_elem2,
    output reg [DATA_WIDTH+3:0] out_elem
);
wire [DATA_WIDTH+3:0] mult_result;

// Instantiate the matrix_multiplication_module
matrix_multiplication_module mult_block(
    .A(in_mat1),
    .B(in_mat2),
    .P(mult_result)
);

    // Use an always block to drive the output based on the result
always@(*) begin
    out_mat = mult_result;
end
  
endmodule


*/