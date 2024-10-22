/*
	This module is just a flip flop
*/
module matrix_result(
	input clk,
	input reset,
	input [31:0] matrix_D,
	output reg [7:0] result_Q
);

always@(posedge clk, posedge reset) begin
	if(reset)
		result_Q = 8'b0000_0000;
	else
		result_Q = matrix_D;
end
endmodule 
