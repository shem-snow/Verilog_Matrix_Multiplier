module matrix_multiplcation_module #(parameter n = 3)(
    input wire [7:0] A[n-1:0][n-1:0],  // Input matrix A (8-bit)
    input wire [7:0] B[n-1:0][n-1:0],  // Input matrix B (8-bit)
    output reg [7:0] C[n+2:0][n+2:0]   // Output matrix C (result)
);
    integer i, j, k;

    always @(*) begin
        // Initialize output matrix (C) to zero
        for (i = 0; i < n; i = i + 1) 
		  begin
            for (j = 0; j < n; j = j + 1) 
				begin
                C[i][j] = 8'b0;  
            end
        end
        
        //matrix multiplication execution
        for (i = 0; i < n; i = i + 1) 
		  begin
            for (j = 0; j < n; j = j + 1) 
				begin
                for (k = 0; k < n; k = k + 1) 
					 begin
                    C[i][j] = C[i][j] + (A[i][k] * B[k][j]); 
                end
            end
        end
    end
endmodule
