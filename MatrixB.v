module MatrixB(
	input [15:0] matrixB,
	input [2:0] entry_out,
	output reg [3:0] element
);

	always@(entry_out) begin
		if(entry_out < 4) begin
			element <= (entry_out[0]) ?  (matrixB[11:8]) : (matrixB[3:0]);
		end else begin
		element <= (entry_out[0]) ? (matrixB[15:12]) : (matrixB[7:4]);
		end
	end
endmodule 