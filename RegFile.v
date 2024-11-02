/*
* Module: RegFile
* Purpose: A register file module that updates a specified register(element) based on the control
* signals (reg_specifier), which contains 8 registers - 6 bits each. 
* 
*/
module RegFile(
	input reset,
	input clk,
	input [5:0] product_in,
	input [3:0] reg_specifier,
	input update_reg,
	
	output reg [47:0] contents
);

always@(posedge clk, posedge reset) begin

// Reset all registers to 0 
if(reset) begin
	contents[47:42] = 8'b0000_0000;
	contents[41:36] = 8'b0000_0000;
	contents[35:30] = 8'b0000_0000;
	contents[29:24] = 8'b0000_0000;
	contents[23:18] = 8'b0000_0000;
	contents[17:12] = 8'b0000_0000;
	contents[11:6] = 8'b0000_0000;
	contents[5:0] = 8'b0000_0000;
end	
else begin
	// updates specified register with the product element
	// from the multiplication result
	if(update_reg)begin
		case (reg_specifier)
    		 3'd0: contents[5:0] = product_in;        
    		 3'd1: contents[11:6] = product_in;       
  			 3'd2: contents[17:12] = product_in;     
   		 3'd3: contents[23:18] = product_in;      
    		 3'd4: contents[29:24] = product_in;      
    		 3'd5: contents[35:30] = product_in;      
  			 3'd6: contents[41:36] = product_in;     
    		 3'd7: contents[47:42] = product_in;     
   		 default: contents = contents;           
	 endcase
end else begin
	 // maintain current value if update_reg is not asserted
	 contents[47:42] = contents[47:42];
	 contents[41:36] = contents[41:36];
	 contents[35:30] = contents[35:30];
	 contents[29:24] = contents[29:24];
	 contents[23:18] = contents[23:18];
	 contents[17:12] = contents[17:12];
	 contents[11:6] = contents[11:6];
	 contents[5:0] = contents[5:0];
		end
	end
end

endmodule