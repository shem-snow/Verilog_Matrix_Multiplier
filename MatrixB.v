/*
	Same functionality as Matrix A but uses a case statement because we 
	realised this is more concise.
*/
module MatrixB(
	input clk,
	input [15:0] matrixB,
	input [2:0] entry_out,
	output reg [3:0] element
);

	always@(negedge clk) begin
		case(entry_out) 
		0,4: begin element <= (matrixB[3:0]); end 
		1,5: begin element <= (matrixB[11:8]); end 
		2,6: begin element <= (matrixB[7:4]); end 
		3,7: begin element <= (matrixB[15:12]); end 
		default: begin  element <= 4'b0; end 
	       endcase
	end
endmodule 