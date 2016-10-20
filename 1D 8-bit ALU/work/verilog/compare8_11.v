/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module compare8_11 (
    input z,
    input v,
    input n,
    input [1:0] alufn,
    output reg [7:0] out
  );
  
  
  
  wire [1-1:0] M_muxx_out;
  reg [4-1:0] M_muxx_a;
  reg [2-1:0] M_muxx_sel;
  multiplexer4_23 muxx (
    .a(M_muxx_a),
    .sel(M_muxx_sel),
    .out(M_muxx_out)
  );
  
  always @* begin
    out = 1'h0;
    M_muxx_a[0+0-:1] = 1'h0;
    M_muxx_a[1+0-:1] = z;
    M_muxx_a[2+0-:1] = (n ^ v);
    M_muxx_a[3+0-:1] = z | (n ^ v);
    M_muxx_sel = alufn;
    out[0+0-:1] = M_muxx_out;
  end
endmodule