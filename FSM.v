module FSM(clock, start, reset, count, entry, load_matrix, done);

// Inputs
input clock;
input start;
input reset;

// Outputs 
output reg [3:0] count;
output reg load_matrix;
output reg [2:0] entry;
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
				if(count == 4'b1000) // 8
					next_state <= Accumulate;
				else
					; // latch
			end
		
			Accumulate: begin
				if(entry == 3'b100) // 4
					next_state <= Store;
				else
					; // latch
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
			count <= 1'b0;
			load_matrix <= 1'b0;
			entry <= 1'b0;
			done <= 1'b0;
		end
		
		Multiply: begin
			count <= count + 1'b1;
			load_matrix <= 1'b1;
			entry <= 1'b0;
			done <= 1'b0;
		end
		
		Accumulate: begin
			count <= 1'b0;
			entry <= entry + 1'b1;
			load_matrix <= 1'b0;
			done <= 1'b0;
		end
		
		Store: begin
			count <= 1'b0;
			load_matrix <= 1'b0;
			entry <= 1'b0;
			done <= 1'b1;
		end
		
		default: begin
			count <= 1'b0;
			load_matrix <= 1'b0;
			entry <= 1'b0;
			done <= 1'b0;
		end
		
	endcase

end

endmodule