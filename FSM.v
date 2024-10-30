module FSM(clock, start, reset, entry_count,multiply_matrix, load_matrix, add, done);

// Inputs
input clock;
input start;
input reset;
input [3:0] entry_count; // The 4 positions of the 2x2 matrix

// Outputs 
output reg multiply_matrix;
output reg load_matrix;
output reg add;
output reg done;

// Variables (memory)
reg [1:0] current_state, next_state;
reg running; // Means start happened

// States
parameter Idle = 2'b00;
parameter Multiply = 2'b01;
parameter Accumulate = 2'b10;
parameter Store = 2'b11;

// State progression
always@(posedge clock)
	if(reset)
		current_state <= Idle;
	else
	current_state <= next_state;

// Next state prediction
always@(current_state,entry_count,start) begin 

		case(current_state)
			Idle: begin
				if(start)
					next_state <= Multiply;
				else
					 next_state = Idle;// latch
			end
		
			Multiply: begin
				if(entry_count == 4'd7) begin // 8
					next_state <= Accumulate;
				end else begin
					 next_state <= Multiply;// latch
				end
			end
		
			Accumulate: begin
				next_state <= Store;
			end
		
			Store: begin
				next_state <= Idle;
			end
		
			default: begin
				next_state <= Idle;
			end
		endcase
end


// Output driving. See our FSM diagram for a visual explanation
always@(current_state) begin
	
	case(current_state)
		Idle: begin
			multiply_matrix <= 1'b0;
			load_matrix <= 1'b0;
			add <= 1'b0;
			done <= 1'b0;
		end
		
		Multiply: begin
			multiply_matrix <= 1'b1;
			load_matrix <= 1'b1;
			add <= 1'b0;
			done <= 1'b0;
		end
		
		Accumulate: begin
			multiply_matrix <= 1'b0;
			add <= 1'b1;
			load_matrix <= 1'b0;
			done <= 1'b0;
		end
		
		Store: begin
			multiply_matrix <= 1'b0;
			load_matrix <= 1'b0;
			add <= 1'b0;
			done <= 1'b1;
		end
		
		default: begin
			load_matrix <= 1'b0;
			add <= 1'b0;
			done <= 1'b0;
		end
		
	endcase

end

endmodule