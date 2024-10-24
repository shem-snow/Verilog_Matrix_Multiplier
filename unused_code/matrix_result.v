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


/*

module mux2(
	input [5:0] address,
	input reset,
	output reg [5:0] writeAddress
);

always@(*) begin
	if(reset) begin
		writeAddress = 0;
	end else begin
		writeAddress = address;
	end
end

endmodule



module full_adder (
    input a, 
    input b, 
    input cin, 
    output sum, 
    output cout
);
    assign sum = a ^ b ^ cin; // Sum logic (XOR)
    assign cout = (a & b) | (b & cin) | (a & cin); // Carry logic
endmodule



module address_counter(
	input clk,
	input write,
	output wire [5:0] address
);

reg [5:0] temp_address = 0;

always@(posedge clk) begin
	if(write)
	temp_address <= address + 1;
end 

assign address = temp_address;

endmodule


*/