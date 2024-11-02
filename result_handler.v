/*
* Module: result_handler
* Purpose: handles where the resulted matrix is stored via address
* Basically just counts through memory addresses and goes back to 0 on reset
* 
*/
module result_handler(
	input [23:0] D,
	input reset,
	input done,
	output reg [23:0] Q,
	output reg [3:0] address
);

// update the value with resulted matrix when 
// the done signal is asserted otherwise reset 
// current value and address to 0 when reset is asserted
always@(posedge reset, posedge done) begin
	if(reset) begin
		address = 4'b0000;
		Q = 24'bxxxxxxxx;
	end
	else begin
		Q = D;
		address = address + 4'd1;
	end
end

endmodule