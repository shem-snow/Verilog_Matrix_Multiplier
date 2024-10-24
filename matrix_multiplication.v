module matrix_multiplication #(
    parameter DATA_WIDTH = 4
)
(	 
    input wire [DATA_WIDTH-1:0] in_mat1,
    input wire [DATA_WIDTH-1:0] in_mat2,
    output reg [DATA_WIDTH+3:0] out_mat
);
	

    // Do the multiplication blocks
	 always@(*) begin
		out_mat <= in_mat1 * in_mat2; 
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
