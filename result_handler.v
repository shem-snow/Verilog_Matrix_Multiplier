module result_handler(
    input [23:0] D,
    input reset,
    input done,
    output reg [23:0] Q,
    output reg [3:0] address
);

// Reset condition and result handling (both clocked logic)
always @(posedge reset or posedge done) begin
    if (reset) begin
        address <= 4'b0000;  // Reset address to 0
        Q <= 24'b0;  // Reset Q to 0
    end else if (done) begin
        Q <= D;  // Update Q with D when done is asserted
        address <= address + 4'd1;  // Increment address on each done
    end
end

endmodule