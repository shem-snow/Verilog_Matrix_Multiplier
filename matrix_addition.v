/*
*Moudle: Matrix Addition
*Purpose: Adds the corresponding elements 
* to compute the correct elements for the final 2x2 matrix
*/
module matrix_addition(
	input [47:0] matrix, // 48 bit input unrolled 2x2 matrix (where each element is 6 bits)
	output reg [23:0] matrix_result // 24 bit 2x2 matrix (where each sum element is 6 bits)
);

// Adds corresponding elements in pairs to produce the final summed 2x2 matrix
always @(*) begin
	matrix_result[5:0] <=  matrix[11:6] + matrix[5:0];
	matrix_result[11:6] <=  matrix[23:18] + matrix[17:12];
	matrix_result[17:12] <= matrix[35:30] + matrix[29:24];
	matrix_result[23:18] <= matrix[47:42] + matrix[41:36];
end

endmodule