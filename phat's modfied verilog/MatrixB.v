module MatrixB(
	input [15:0] matrixB,
	input [2:0] entry_out,
	output reg [3:0] element
);

	always@(entry_out) begin
		case(entry_out) 
		0,4:element <= (matrixB[3:0]);
		1,5:element <= (matrixB[11:8]);
		2,6:element <= (matrixB[7:4]);
		3,7:element <= (matrixB[15:12]);
		default: element <= 4'b0;
	       endcase
	end
endmodule 