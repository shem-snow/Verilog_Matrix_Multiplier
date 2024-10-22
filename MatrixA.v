module MatrixA(
	input [11:0] matrixA,
	input write,
	input [2:0] entry_out,
	output reg [2:0] element
);

	always@(entry_out) begin
		if(entry_out < 4) begin
		element <= (entry_out[0]) ?  (matrixA[5:3]) : (matrixA[2:0]);
		end else begin
		element <= (entry_out[0]) ? (matrixA[11:9]) : (matrixA[7:4]);
		end
	end
endmodule 