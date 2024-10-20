module matrix_addition_module #(parameter n = 3)(
    input wire [7:0] A[n-1:0][n-1:0],  // Input matrix A (8-bit)
    input wire [7:0] B[n-1:0][n-1:0],  // Input matrix B (8-bit)
    output reg [7:0] C[n-1:0][n-1:0]   // Output matrix C (result)
);
    integer i, j;

    always @(*) begin
        // matrix addition execution
        for (i = 0; i < n; i = i + 1) 
		  begin
            for (j = 0; j < n; j = j + 1) 
				begin
                C[i][j] = A[i][j] + B[i][j]; 
            end
        end
    end
endmodule
