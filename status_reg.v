module status_reg(clk,reset,multiply,entry_out);

input clk;
input reset;
input multiply;
output reg [3:0] entry_out;

//This module dictates which registers to use in multiplication
//after they are stored in the reg file

always@(posedge clk) begin
	if(reset)
		entry_out <= 4'd0;
	else if(multiply) 
		entry_out <= entry_out + 4'd1;
	else 
		entry_out <= 4'd0;
end

endmodule