module full_adder (
    input a, 
    input b, 
    input cin, 
    output sum, 
    output cout
);
    assign sum = a ^ b ^ cin; // Sum logic (XOR)
    assign cout = (a & b) | (b & cin) | (a & cin); // Carry logic
endmodule
