module RegFile(
	input reset,
	input [7:0] product_in,
	input [2:0] reg_specifier,
	input update_reg,
	
	output reg [63:0] contents
);

	always@(reset, update_reg) begin
		
		if(reset) begin
			contents[63:56] = 8'b0000_0000;
			contents[55:48] = 8'b0000_0000;
			contents[47:40] = 8'b0000_0000;
			contents[39:32] = 8'b0000_0000;
			contents[31:24] = 8'b0000_0000;
			contents[23:16] = 8'b0000_0000;
			contents[15:8] = 8'b0000_0000;
			contents[7:0] = 8'b0000_0000;
		end
		
		else begin
		
			if(update_reg)
				contents[reg_specifier] = product_in;
	
			else begin
				contents[63:56] = contents[63:56];
				contents[55:48] = contents[55:48];
				contents[47:40] = contents[47:40];
				contents[39:32] = contents[39:32];
				contents[31:24] = contents[31:24];
				contents[23:16] = contents[23:16];
				contents[15:8] = contents[15:8];
				contents[7:0] = contents[7:0];
			end
		end
	end

endmodule