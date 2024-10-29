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
repeat (5) @(posedge clock);   // change the number in this line to fit with the expected time it is done 
end 

endmodule