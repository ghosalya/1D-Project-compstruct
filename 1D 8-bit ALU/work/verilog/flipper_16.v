/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module flipper8_16 (
    input [7:0] a,
    output reg [7:0] out
  );
  
  
  
  always @* begin
    out[0+0-:1] = a[7+0-:1];
    out[1+0-:1] = a[6+0-:1];
    out[2+0-:1] = a[5+0-:1];
    out[3+0-:1] = a[4+0-:1];
    out[4+0-:1] = a[3+0-:1];
    out[5+0-:1] = a[2+0-:1];
    out[6+0-:1] = a[1+0-:1];
    out[7+0-:1] = a[0+0-:1];
  end
endmodule
