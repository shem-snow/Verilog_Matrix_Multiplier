module RegFile(
	input reset,
	input [7:0] product_in,
	input [2:0] reg_specifier,
	input update_adder_regs,
	
	output reg [63:0] contents
	/*
		63:56 - R7
		55:48 - R6
		47:40 - R5
		39:32 - R4
		31:24 - R3
		23:16 - R2
		15:8 - R1
		7:0 - R0
	*/
);

	// Initialize our memory of 8 registers that are each 8 bits.
	reg [7:0] regs [7:0];

	always@(reset, update_adder_regs) begin
		
		if(reset) begin
			regs[0] = 8'b0000_0000;
			regs[1] = 8'b0000_0000;
			regs[2] = 8'b0000_0000;
			regs[3] = 8'b0000_0000;
			regs[4] = 8'b0000_0000;
			regs[5] = 8'b0000_0000;
			regs[6] = 8'b0000_0000;
			regs[7] = 8'b0000_0000;
		end
		
		else begin
		
			if(update_adder_regs)
				regs[reg_specifier] = product_in;

			else
				; // latch: remember current values
		
		end
		
		contents[63:56] = regs[7];
		contents[55:48] = regs[6];
		contents[47:40] = regs[5];
		contents[39:32] = regs[4];
		contents[31:24] = regs[3];
		contents[23:16] = regs[2];
		contents[15:8] = regs[1];
		contents[7:0] = regs[0];
		
	end

endmodule