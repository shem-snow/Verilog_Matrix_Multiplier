module result_handler(
	input [31:0] D,
	input reset,
	input done,
	output reg [31:0] Q,
	output reg [7:0] address
);
	// Note that this always block requires the reset to activate for the program to start.
	always@(posedge reset, posedge done) begin
		if(reset) begin
			address = 8'b0000_0000;
			Q = 32'bxxxxxxxx;
		end
		else begin
			Q = D;
			address = address + 1;
		end
	end

endmodule