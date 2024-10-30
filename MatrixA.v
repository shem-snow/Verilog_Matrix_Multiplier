module MatrixA(
input clk,
input [15:0] matrixA,
input [2:0] entry_out,
output reg [3:0] element
);

	always@(negedge clk) begin
		case(entry_out) 
		0,2: begin element <= (matrixA[3:0]); end 
		1,3: begin element <= (matrixA[7:4]); end 
		4,6: begin element <= (matrixA[11:8]); end 
		5,7: begin element <= (matrixA[15:12]); end 
		default: begin  element <= 4'b0; end 
	       endcase
	end
endmodule 