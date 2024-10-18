module matrix_multiplication #(
    parameter DATA_WIDTH = 3
)
(	 
    input wire [DATA_WIDTH-1:0] in_mat1,
    input wire [DATA_WIDTH-1:0] in_mat2,
    output reg [DATA_WIDTH+2:0] out_mat
);
	

    // Do the multiplication blocks
	 always@(*) begin
		out_mat <= in_mat1 * in_mat2; 
	 end
	  
endmodule
