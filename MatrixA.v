module MatrixA(
input [15:0] matrixA,
input [2:0] entry_out,
output reg [3:0] element
);

	always@(entry_out) begin
		if(entry_out < 4) begin
			element <= (entry_out[0]) ?  (matrixA[7:4]) : (matrixA[3:0]);
		end else begin
		element <= (entry_out[0]) ? (matrixA[15:12]) : (matrixA[11:8]);
		end
	end
endmodule 