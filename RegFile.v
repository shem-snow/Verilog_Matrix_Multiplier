module RegFile(
	input reset,
	input [7:0] product_in,
	input [2:0] reg_specifier_one,
	input [2:0] reg_specifier_two,
	input update_adder_regs,
	input update_file_reg, // Says to update the currently specified register
	
	output reg [7:0] term_1,
	output reg [7:0] term_2

);

	// Initialize our memory of 8 registers that are each 8 bits.
	reg [7:0] regs [7:0];

	always@(reset, update_adder_regs, update_file_reg) begin
	
		if(reset) begin
			regs[0] <= 8'b0000_0000;
			regs[1] <= 8'b0000_0000;
			regs[2] <= 8'b0000_0000;
			regs[3] <= 8'b0000_0000;
			regs[4] <= 8'b0000_0000;
			regs[5] <= 8'b0000_0000;
			regs[6] <= 8'b0000_0000;
			regs[7] <= 8'b0000_0000;
		end
		
		else begin
		
			if(update_adder_regs) begin
				term_1 <= regs[reg_specifier_one];
				term_2 <= regs[reg_specifier_two];
			end
			
			else if(update_file_reg)
				regs[reg_specifier_one] <= product_in; // TODO: I think it would be more convenient not to have logic at the output and just always output a 64-bit wire so all the additions can be done in parallel.
				
			else
				; // latch: remember current values
		
		end
	end

endmodule