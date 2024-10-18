module matrix_result(
	input clk,
	input [31:0] matrix,
	input start,
	input entry,
	output reg [7:0] element
	output reg write
);

always@(posedge clk) begin
	if(start) begin
	element <= matrix[(7+(8*entry_in)): (8*entry_in)];
	end
end
endmodule 
