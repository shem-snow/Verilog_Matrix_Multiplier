/*
	This is our top-level module
*/
module Matrix_Multiplier(
	input [11:0] matrix_A,
	input [11:0] matrix_B,
	input clock,
	input start,
	input reset,
	output [23:0] matrix_result,
	output [3:0] matrix_count
);


// Internal wires
wire [2:0] element_A;
wire [2:0] element_B;
wire [3:0] AB_entries;
wire write;
wire multiply_matrix;
wire [5:0] multiply_out;
wire update_regfile;
wire [47:0] regfile_contents;
wire start_add;
wire [23:0] adder_result;
wire addition_done;

// Instantiate all the modules
FSM fsm(.clock(clock), .start(start), .reset(reset), .entry_count(AB_entries),.multiply_matrix(multiply_matrix) ,.load_matrix(write), .add(start_add), .done(addition_done));
status_reg statusREG(.clk(clock),.reset(reset),.multiply(multiply_matrix),.entry_out(AB_entries));
MatrixA mata(.clk(clock),.matrixA(matrix_A), .entry_out(AB_entries), .element(element_A));
MatrixB matb(.clk(clock),.matrixB(matrix_B), .entry_out(AB_entries), .element(element_B));
Multiplier multiplier(.elementA(element_A), .elementB(element_B), .multiply_out(multiply_out));
RegFile regfile(.reset(reset),.clk(clock), .product_in(multiply_out), .reg_specifier(AB_entries), .update_reg(write), .contents(regfile_contents)); // TODO:
matrix_addition accumulator(.matrix(regfile_contents), .matrix_result(adder_result));
result_handler result_handler(.D(adder_result), .reset(reset), .done(addition_done), .Q(matrix_result), .address(matrix_count));

endmodule 
