module matrix_multiplication_module (
    input [3:0] A, // Input 1 (m3, m2, m1, m0)
    input [3:0] B, // Input 2 (q3, q2, q1, q0)
    output [7:0] P // Product (P7 to P0)
);
    wire [3:0] p0, p1, p2, p3; // Partial products
    wire c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11; // Carry wires
    wire [3:0] s1, s2, s3; // Intermediate sum wires
    
    // Generate partial products (AND gates in the image)
    assign p0 = A & {4{B[0]}}; // Row 0: A * B[0]
    assign p1 = A & {4{B[1]}}; // Row 1: A * B[1]
    assign p2 = A & {4{B[2]}}; // Row 2: A * B[2]
    assign p3 = A & {4{B[3]}}; // Row 3: A * B[3]

    // Row 0 
    assign P[0] = p0[0]; // Least significant bit of the product

    // Row 1: First set of full adders
    full_adder fa1(.a(p1[0]), .b(p0[1]), .cin(0), .sum(P[1]), .cout(c1));
    full_adder fa2(.a(p1[1]), .b(p0[2]), .cin(c1), .sum(s1[0]), .cout(c2));
    full_adder fa3(.a(p1[2]), .b(p0[3]), .cin(c2), .sum(s1[1]), .cout(c3));
    full_adder fa4(.a(p1[3]), .b(0), .cin(c3), .sum(s1[2]), .cout(c4));

    // Row 2: Second set of full adders
    full_adder fa5(.a(p2[0]), .b(s1[0]), .cin(0), .sum(P[2]), .cout(c5));
    full_adder fa6(.a(p2[1]), .b(s1[1]), .cin(c5), .sum(s2[0]), .cout(c6));
    full_adder fa7(.a(p2[2]), .b(s1[2]), .cin(c6), .sum(s2[1]), .cout(c7));
    full_adder fa8(.a(p2[3]), .b(0), .cin(c7), .sum(s2[2]), .cout(c8));

    // Row 3: Third set of full adders
    full_adder fa9(.a(p3[0]), .b(s2[0]), .cin(0), .sum(P[3]), .cout(c9));
    full_adder fa10(.a(p3[1]), .b(s2[1]), .cin(c9), .sum(P[4]), .cout(c10));
    full_adder fa11(.a(p3[2]), .b(s2[2]), .cin(c10), .sum(P[5]), .cout(c11));
    full_adder fa12(.a(p3[3]), .b(0), .cin(c11), .sum(P[6]), .cout(P[7])); // Final output bit
    
endmodule