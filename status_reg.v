/*
* Module: status_reg
* Purpose: To hold an updated value of how many multiplicaton has occured 
* In addition, this module dictates which elements from matrix A and B
* are use to multiply and store in the Regfile
* 
*/
module status_reg(clk,reset,multiply,entry_out);

input clk;
input reset;
input multiply;
output reg [3:0] entry_out;

// update the entry_out via input (reset or clear results entry_out = 0, and multiply increments the count)
always@(posedge clk) begin
	if(reset)
		entry_out <= 4'd0;
	else if(multiply) 
		entry_out <= entry_out + 4'd1;
	else 
		entry_out <= 4'd0;
end

endmodule