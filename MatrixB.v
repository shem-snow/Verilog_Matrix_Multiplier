/*
* Module: MatrixB
* Purpose: Selects specific 3-bit elements from a 2x2 matrix based on the entry_out control signal.
 The selection will be utilized to perform the correct matrix multiplication pairs.
* 
*/
module MatrixB(
	input clk,
	input [11:0] matrixB,
	input [3:0] entry_out,
	output reg [2:0] element
);

// based on the entry_out, it will select the specified element
// to be multiply with Matrix A's element 
always@(negedge clk) begin
	case(entry_out) 
		0,4:element <= (matrixB[2:0]);
		1,5:element <= (matrixB[8:6]);
		2,6:element <= (matrixB[5:3]);
		3,7:element <= (matrixB[11:9]);
		default: element <= 4'b0;
	endcase
end

endmodule 