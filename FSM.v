module FSM(clock, start, reset, entry_count, add, load_matrix, done);

// Inputs
input clock;
input start;
input reset;

// Outputs 
output reg [3:0] entry_count;
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
	current_state <= next_state;

// Next state prediction
always@(posedge clock, posedge reset, posedge start) begin 

	if(reset)
		next_state <= Idle;
	
	else
		case(current_state)
			Idle: begin
				if(start)
					next_state <= Multiply;
				else
					; // latch
			end
		
			Multiply: begin
				if(entry_count == 4'b1000) // 8
					next_state <= Accumulate;
				else
					; // latch
			end
		
			Accumulate: begin
				next_state <= Store;
			end
		
			Store: begin
				if(reset)
					next_state = Idle;
				else
					; // latch
			end
		
			default: begin
				next_state <= Idle;
			end
		endcase
end


// Output driving
always@(posedge clock) begin
	
	case(current_state)
		Idle: begin
			entry_count <= 1'b0;
			load_matrix <= 1'b0;
			add <= 1'b0;
			done <= 1'b0;
		end
		
		Multiply: begin
			entry_count <= entry_count + 1'b1;
			load_matrix <= 1'b1;
			add <= 1'b0;
			done <= 1'b0;
		end
		
		Accumulate: begin
			entry_count <= 1'b0;
			add <= 1'b1;
			load_matrix <= 1'b0;
			done <= 1'b0;
		end
		
		Store: begin
			entry_count <= 1'b0;
			load_matrix <= 1'b0;
			add <= 1'b0;
			done <= 1'b1;
		end
		
		default: begin
			entry_count <= 1'b0;
			load_matrix <= 1'b0;
			add <= 1'b0;
			done <= 1'b0;
		end
		
	endcase

end

endmodule