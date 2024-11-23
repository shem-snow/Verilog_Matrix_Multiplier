module FSM(clock, start, reset, entry_count, multiply_matrix, load_matrix, add, done);

// Inputs
input clock;
input start;
input reset;
input [3:0] entry_count;

// Outputs 
output reg multiply_matrix;
output reg load_matrix;
output reg add;
output reg done;

// Variables (memory)
reg [1:0] current_state, next_state;

// States
parameter Idle = 2'b00;
parameter Multiply = 2'b01;
parameter Accumulate = 2'b10;
parameter Store = 2'b11;

// 1. State Progression
always @(posedge clock or posedge reset) begin
    if (reset)
        current_state <= Idle;
    else
        current_state <= next_state;
end

// 2. Next State Logic
always @(*) begin
    case (current_state)
        Idle: begin
            if (start)
                next_state = Multiply;
            else
                next_state = Idle;
        end
        
        Multiply: begin
            if (entry_count == 4'd7)
                next_state = Accumulate;
            else
                next_state = Multiply;
        end
        
        Accumulate: begin
            next_state = Store;
        end
        
        Store: begin
            next_state = Idle;
        end
        
        default: begin
            next_state = Idle;
        end
    endcase
end

// 3. Output Logic
always @(*) begin
    // Default assignments for all outputs
    multiply_matrix = 1'b0;
    load_matrix = 1'b0;
    add = 1'b0;
    done = 1'b0;

    case (current_state)
        Idle: begin
            // All outputs already set to 0 by default
        end
        
        Multiply: begin
            multiply_matrix = 1'b1;
            load_matrix = 1'b1;
        end
        
        Accumulate: begin
            add = 1'b1;
        end
        
        Store: begin
            done = 1'b1;
        end
        
        default: begin
            // All outputs remain 0 by default
        end
    endcase
end

endmodule
