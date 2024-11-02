/*
* Module: tb_Matrix_Multiplication
* Purpose: Validate the functionality of the Matrix Multiplication module by simulating various
* test cases
*/
module tb_Matrix_multiplication();
reg [11:0] matrix_A;
reg  [11:0] matrix_B;
reg clock;
reg start;
reg reset;
wire [23:0] matrix_result;
wire [3:0] matrix_count;

//instanstiate the Matrix Multiplication 
Matrix_Multiplier UUT(
.matrix_A(matrix_A),
.matrix_B(matrix_B),
.clock(clock),
.start(start),
.reset(reset),
.matrix_result(matrix_result),
.matrix_count(matrix_count)
);

//instanstiate the clock
initial begin
clock = 0;
forever #5 clock = ~clock;
end

//simulation
initial begin

// reset the top level: matrix multiplicaion module
reset = 1;
start = 0;

// compute two  matrixes with all positive number
matrix_A = 12'b011_010_001_000;
matrix_B = 12'b000_001_010_011;
repeat(1) @(posedge clock);
// start matrix multiplication 
reset = 0;
start = 1;
repeat (1) @(posedge clock);   
start = 0;
// It takes 11 clock cycles to perform one matrix multiply
repeat(11) @(posedge clock);
// self checking testbench: check the resulted matrix from multiplying two positive matrix
if((matrix_result[5:0] != 6'b000001) || (matrix_result[11:6] != 6'b000000) || (matrix_result[17:12] != 6'b001001) || (matrix_result[23:18] != 6'b000100)) begin
	 $display("Failure");
	 $display("element 1:%b, element 2:%b, element 3:%b, element 4:%b",matrix_result[5:0],matrix_result[11:6],matrix_result[17:12],matrix_result[23:18]);
end
	
	
// compute two matrixes with all negative numbers 
matrix_A = 12'b111_101_110_100;
matrix_B = 12'b101_000_101_110;
// start the multiplication process
repeat(2) @(posedge clock);
start = 1;
repeat (2) @(posedge clock);   
start = 0;	
// It takes 11 clock cycles to perform one matrix multiply
repeat(11) @(posedge clock);
// check the resulted matrix from multiplying two matrix with positive and negative numbers
if((matrix_result[5:0] != 6'b001000) || (matrix_result[11:6] != 6'b010010) || (matrix_result[17:12] != 6'b000110) || (matrix_result[23:18] != 6'b001100)) begin
	 $display("Failure");
	 $display("element 1:%b, element 2:%b, element 3:%b, element 4:%b",matrix_result[5:0],matrix_result[11:6],matrix_result[17:12],matrix_result[23:18]);
end


// compute two matrixes (one matrix cotains all positie numbers
// while the other matrix contains all negative number)
matrix_A = 12'b001_011_010_011;
matrix_B = 12'b100_101_100_111;
//start matrix multiplication process
repeat(2) @(posedge clock);
start = 1;
repeat (2) @(posedge clock);   
start = 0;	
// It takes 11 clock cycles to perform one matrix multiply
repeat(11) @(posedge clock);
// check the resulted matrix from multiplying two matrix 
if((matrix_result[5:0] != 6'b110111) || (matrix_result[11:6] != 6'b101100) || (matrix_result[17:12] != 6'b111010) || (matrix_result[23:18] != 6'b110000)) begin
	 $display("Failure");
	 $display("element 1:%b, element 2:%b, element 3:%b, element 4:%b",matrix_result[5:0],matrix_result[11:6],matrix_result[17:12],matrix_result[23:18]);
end


// compute two matrixes with mix positive and negative numbers 
matrix_A = 12'b111_110_011_011;
matrix_B = 12'b001_101_110_100;
//start the matrix multiplication 
repeat(2) @(posedge clock);
start = 1;
repeat (2) @(posedge clock);   
start = 0;
// It takes 11 clock cycles to perform one matrix multiply
repeat(11) @(posedge clock);
// check the resulted matrix from multiplying two matrix 
if((matrix_result[5:0] != 6'b101011) || (matrix_result[11:6] != 6'b111101) || (matrix_result[17:12] != 6'b001011) || (matrix_result[23:18] != 6'b000011)) begin
	 $display("Failure");
	 $display("element 1:%b, element 2:%b, element 3:%b, element 4:%b",matrix_result[5:0],matrix_result[11:6],matrix_result[17:12],matrix_result[23:18]);
end
	
	
//compute two matrixes with larger values 
matrix_A = 12'b001_001_100_100;
matrix_B = 12'b011_101_011_100;
//start the matrix multiplication 
repeat(2) @(posedge clock);
start = 1;
repeat (2) @(posedge clock);   
start = 0;
// It takes 11 clock cycles to perform one matrix multiply
repeat(11) @(posedge clock);
// check the resulted matrix from multiplying two matrix 
if((matrix_result[5:0] != 6'b011100) || (matrix_result[11:6] != 6'b101000) || (matrix_result[17:12] != 6'b111001) || (matrix_result[23:18] != 6'b000110)) begin
	 $display("Failure");
	 $display("element 1:%b, element 2:%b, element 3:%b, element 4:%b",matrix_result[5:0],matrix_result[11:6],matrix_result[17:12],matrix_result[23:18]);
end
end 

endmodule