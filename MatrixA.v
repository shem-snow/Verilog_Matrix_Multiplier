/*
* Module: MatrixA
* Purpose: Selects specific 3-bit elements from a 2x2 matrix based on the entry_out control signal.
 The selection will be utilized to perform the correct matrix multiplication pairs.
* 
*/
module MatrixA(
input clk,
input [11:0] matrixA,
input [3:0] entry_out,
output reg [2:0] element
);

// based on the entry_out, it will select the specified element
// to be multiply with Matrix B's element 
always@(negedge clk) begin
	case(entry_out) 
		0,2: begin element <= (matrixA[2:0]); end 
		1,3: begin element <= (matrixA[5:3]); end 
		4,6: begin element <= (matrixA[8:6]); end 
		5,7: begin element <= (matrixA[11:9]); end 
		default: begin  element <= 3'b0; end 
	 endcase
end

endmodule 