/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu8_3 (
    input [7:0] a,
    input [7:0] b,
    input [7:0] alufn,
    output reg [7:0] out
  );
  
  
  
  wire [8-1:0] M_muxx_out;
  reg [32-1:0] M_muxx_a;
  reg [2-1:0] M_muxx_sel;
  mux4_8bit_8 muxx (
    .a(M_muxx_a),
    .sel(M_muxx_sel),
    .out(M_muxx_out)
  );
  
  wire [8-1:0] M_add_sum;
  wire [1-1:0] M_add_z;
  wire [1-1:0] M_add_v;
  wire [1-1:0] M_add_n;
  reg [8-1:0] M_add_a;
  reg [8-1:0] M_add_b;
  reg [1-1:0] M_add_alufn0;
  mojo_8bitfulladder_9 add (
    .a(M_add_a),
    .b(M_add_b),
    .alufn0(M_add_alufn0),
    .sum(M_add_sum),
    .z(M_add_z),
    .v(M_add_v),
    .n(M_add_n)
  );
  
  wire [8-1:0] M_shift_out;
  reg [8-1:0] M_shift_a;
  reg [3-1:0] M_shift_b;
  reg [2-1:0] M_shift_alufn;
  shifter_10 shift (
    .a(M_shift_a),
    .b(M_shift_b),
    .alufn(M_shift_alufn),
    .out(M_shift_out)
  );
  
  wire [8-1:0] M_cpr_out;
  reg [1-1:0] M_cpr_z;
  reg [1-1:0] M_cpr_v;
  reg [1-1:0] M_cpr_n;
  reg [2-1:0] M_cpr_alufn;
  compare8_11 cpr (
    .z(M_cpr_z),
    .v(M_cpr_v),
    .n(M_cpr_n),
    .alufn(M_cpr_alufn),
    .out(M_cpr_out)
  );
  
  wire [8-1:0] M_boll_out;
  reg [4-1:0] M_boll_alufn;
  reg [8-1:0] M_boll_a;
  reg [8-1:0] M_boll_b;
  boole8_12 boll (
    .alufn(M_boll_alufn),
    .a(M_boll_a),
    .b(M_boll_b),
    .out(M_boll_out)
  );
  
  always @* begin
    M_add_a = a;
    M_add_b = b;
    M_add_alufn0 = alufn[0+0-:1];
    M_shift_a = a;
    M_shift_b = b;
    M_shift_alufn = alufn[0+1-:2];
    M_cpr_v = M_add_v;
    M_cpr_z = M_add_z;
    M_cpr_n = M_add_n;
    M_cpr_alufn = alufn[1+1-:2];
    M_boll_a = a;
    M_boll_b = b;
    M_boll_alufn = alufn[0+3-:4];
    M_muxx_a[0+7-:8] = M_add_sum;
    M_muxx_a[8+7-:8] = M_boll_out;
    M_muxx_a[16+7-:8] = M_shift_out;
    M_muxx_a[24+7-:8] = M_cpr_out;
    M_muxx_sel = alufn[4+1-:2];
    out = M_muxx_out;
  end
endmodule
