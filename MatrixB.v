module MatrixB(
	input [11:0] matrixB,
	input write,
	input [2:0] entry_out,
	output reg [2:0] element
);

	always@(entry_out) begin
		if(entry_out < 4) begin
		element <= (entry_out[0]) ?  (matrixB[7:4]) : (matrixB[2:0]);
		end else begin
		element <= (entry_out[0]) ? (matrixB[11:9]) : (matrixB[5:3]);
		end
	end
endmodule 