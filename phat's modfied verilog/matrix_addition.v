module matrix_addition(
	input [63:0] matrix,
	output reg [31:0] matrix_result
);

always @(*) begin
	matrix_result[7:0] <= matrix[7:0] + matrix[15:8];
	matrix_result[15:8] <=  matrix[31:24] + matrix[23:16];
	matrix_result[23:16] <= matrix[39:32] + matrix[47:40];
	matrix_result[31:24] <= matrix[55:48] + matrix[63:56];
end

endmodule