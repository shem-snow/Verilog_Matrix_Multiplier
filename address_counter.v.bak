module address_counter(
	input write 
	output wire [5:0] address
);

reg [5:0] temp_address = 0;

always@(posedge clk) begin
	if(write)
	temp_address <= address + 1;
end 

assign address <= temp_address;

endmodule