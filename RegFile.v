module RegFile(
	input reset,
	input clk,
	input [7:0] product_in,
	input [2:0] reg_specifier,
	input update_reg,
	
	output reg [63:0] contents
);

	always@(posedge clk, posedge reset) begin
		
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
		
			if(update_reg)begin
			  case (reg_specifier)
    				3'd0: contents[7:0] = product_in;        // Assign to bits 0-7
    				3'd1: contents[15:8] = product_in;       // Assign to bits 8-15
  				3'd2: contents[23:16] = product_in;      // Assign to bits 16-23
   				3'd3: contents[31:24] = product_in;      // Assign to bits 24-31
    				3'd4: contents[39:32] = product_in;      // Assign to bits 32-39
    				3'd5: contents[47:40] = product_in;      // Assign to bits 40-47
  				3'd6: contents[55:48] = product_in;      // Assign to bits 48-55
    				3'd7: contents[63:56] = product_in;      // Assign to bits 56-63
   			 	default: contents = contents;            // Default case if needed
endcase

	
			end else begin
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