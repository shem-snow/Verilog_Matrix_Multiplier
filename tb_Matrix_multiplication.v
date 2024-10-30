module tb_Matrix_multiplication();
reg [15:0] matrix_A;
reg  [15:0] matrix_B;
reg clock;
reg start;
reg reset;
wire [31:0] matrix_result;
wire [7:0] matrix_count;

Matrix_multiplication UUT(
.matrix_A(matrix_A),
.matrix_B(matrix_B),
.clock(clock),
.start(start),
.reset(reset),
.matrix_result(matrix_result),
.matrix_count(matrix_count)
);

initial begin
clock = 0;
forever #5 clock = ~clock;
end

initial begin
	reset = 1;
	start = 0;
	matrix_A = 16'b0100001100100001;
	matrix_B = 16'b0001001000110100;
	repeat(1) @(posedge clock);
	reset = 0;
	start = 1;
	repeat (1) @(posedge clock);   
	start = 0;
	
	// It takes 11 clock cycles to perform one matrix multiply
	repeat(11) @(posedge clock);
	
	matrix_A = 16'b1001_0110_1000_0000;
	matrix_B = 16'b1111_1111_0001_1010;
	repeat(2) @(posedge clock);
	reset = 0;
	start = 1;
	
	repeat (2) @(posedge clock);   
	start = 0;
	
	// It takes 11 clock cycles to perform one matrix multiply
	repeat(11) @(posedge clock);

	matrix_A = 16'b0110_0101_0100_0011;
	matrix_B = 16'b1010_1001_1000_0111;
	repeat(2) @(posedge clock);
	reset = 0;
	start = 1;
	
	repeat (2) @(posedge clock);   
	start = 0;
	
	// It takes 11 clock cycles to perform one matrix multiply
	repeat(11) @(posedge clock);
	
	
end 

endmodule