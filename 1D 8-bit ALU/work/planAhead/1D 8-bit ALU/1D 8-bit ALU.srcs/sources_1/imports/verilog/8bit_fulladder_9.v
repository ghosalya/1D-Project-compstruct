/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_8bitfulladder_9 (
    input [7:0] a,
    input [7:0] b,
    input alufn0,
    output reg [7:0] sum,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  wire [1-1:0] M_adder0_sum;
  wire [1-1:0] M_adder0_carry;
  reg [3-1:0] M_adder0_a;
  mojo_fullAdder_13 adder0 (
    .a(M_adder0_a),
    .sum(M_adder0_sum),
    .carry(M_adder0_carry)
  );
  
  wire [1-1:0] M_adder1_sum;
  wire [1-1:0] M_adder1_carry;
  reg [3-1:0] M_adder1_a;
  mojo_fullAdder_13 adder1 (
    .a(M_adder1_a),
    .sum(M_adder1_sum),
    .carry(M_adder1_carry)
  );
  
  wire [1-1:0] M_adder2_sum;
  wire [1-1:0] M_adder2_carry;
  reg [3-1:0] M_adder2_a;
  mojo_fullAdder_13 adder2 (
    .a(M_adder2_a),
    .sum(M_adder2_sum),
    .carry(M_adder2_carry)
  );
  
  wire [1-1:0] M_adder3_sum;
  wire [1-1:0] M_adder3_carry;
  reg [3-1:0] M_adder3_a;
  mojo_fullAdder_13 adder3 (
    .a(M_adder3_a),
    .sum(M_adder3_sum),
    .carry(M_adder3_carry)
  );
  
  wire [1-1:0] M_adder4_sum;
  wire [1-1:0] M_adder4_carry;
  reg [3-1:0] M_adder4_a;
  mojo_fullAdder_13 adder4 (
    .a(M_adder4_a),
    .sum(M_adder4_sum),
    .carry(M_adder4_carry)
  );
  
  wire [1-1:0] M_adder5_sum;
  wire [1-1:0] M_adder5_carry;
  reg [3-1:0] M_adder5_a;
  mojo_fullAdder_13 adder5 (
    .a(M_adder5_a),
    .sum(M_adder5_sum),
    .carry(M_adder5_carry)
  );
  
  wire [1-1:0] M_adder6_sum;
  wire [1-1:0] M_adder6_carry;
  reg [3-1:0] M_adder6_a;
  mojo_fullAdder_13 adder6 (
    .a(M_adder6_a),
    .sum(M_adder6_sum),
    .carry(M_adder6_carry)
  );
  
  wire [1-1:0] M_adder7_sum;
  wire [1-1:0] M_adder7_carry;
  reg [3-1:0] M_adder7_a;
  mojo_fullAdder_13 adder7 (
    .a(M_adder7_a),
    .sum(M_adder7_sum),
    .carry(M_adder7_carry)
  );
  
  always @* begin
    M_adder0_a[0+0-:1] = a[0+0-:1];
    M_adder1_a[0+0-:1] = a[1+0-:1];
    M_adder2_a[0+0-:1] = a[2+0-:1];
    M_adder3_a[0+0-:1] = a[3+0-:1];
    M_adder4_a[0+0-:1] = a[4+0-:1];
    M_adder5_a[0+0-:1] = a[5+0-:1];
    M_adder6_a[0+0-:1] = a[6+0-:1];
    M_adder7_a[0+0-:1] = a[7+0-:1];
    M_adder0_a[1+0-:1] = alufn0 ^ b[0+0-:1];
    M_adder1_a[1+0-:1] = alufn0 ^ b[1+0-:1];
    M_adder2_a[1+0-:1] = alufn0 ^ b[2+0-:1];
    M_adder3_a[1+0-:1] = alufn0 ^ b[3+0-:1];
    M_adder4_a[1+0-:1] = alufn0 ^ b[4+0-:1];
    M_adder5_a[1+0-:1] = alufn0 ^ b[5+0-:1];
    M_adder6_a[1+0-:1] = alufn0 ^ b[6+0-:1];
    M_adder7_a[1+0-:1] = alufn0 ^ b[7+0-:1];
    M_adder0_a[2+0-:1] = alufn0;
    M_adder1_a[2+0-:1] = M_adder0_carry;
    M_adder2_a[2+0-:1] = M_adder1_carry;
    M_adder3_a[2+0-:1] = M_adder2_carry;
    M_adder4_a[2+0-:1] = M_adder3_carry;
    M_adder5_a[2+0-:1] = M_adder4_carry;
    M_adder6_a[2+0-:1] = M_adder5_carry;
    M_adder7_a[2+0-:1] = M_adder6_carry;
    sum[0+0-:1] = M_adder0_sum;
    sum[1+0-:1] = M_adder1_sum;
    sum[2+0-:1] = M_adder2_sum;
    sum[3+0-:1] = M_adder3_sum;
    sum[4+0-:1] = M_adder4_sum;
    sum[5+0-:1] = M_adder5_sum;
    sum[6+0-:1] = M_adder6_sum;
    sum[7+0-:1] = M_adder7_sum;
    z = ~(M_adder0_sum | M_adder1_sum | M_adder2_sum | M_adder3_sum | M_adder4_sum | M_adder5_sum | M_adder6_sum | M_adder7_sum);
    n = M_adder7_sum;
    v = (a[7+0-:1] & (alufn0 ^ b[7+0-:1]) & ~M_adder7_sum) | (~a[7+0-:1] & ~(alufn0 ^ b[7+0-:1]) & M_adder7_sum);
  end
endmodule
