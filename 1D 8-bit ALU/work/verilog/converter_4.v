/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module converter_4 (
    input [7:0] binaryInput,
    output reg [15:0] decimalOutput
  );
  
  
  
  integer i;
  
  integer j;
  
  integer currentDigit;
  
  integer multiplier;
  
  integer binarySum;
  
  integer hundreds;
  
  integer tens;
  
  integer ones;
  
  reg [7:0] binaryInp;
  
  always @* begin
    binaryInp = binaryInput;
    if (binaryInput[7+0-:1]) begin
      binaryInp = (~binaryInput) + 1'h1;
    end
    binarySum = 1'h0;
    for (i = 1'h0; i < 4'h8; i = i + 1) begin
      currentDigit = binaryInp[(i)*1+0-:1];
      multiplier = 1'h1;
      for (j = 1'h0; j < i; j = j + 1) begin
        multiplier = multiplier * 2'h2;
      end
      if (i == 3'h7) begin
        binarySum = binarySum - multiplier * currentDigit;
      end else begin
        binarySum = binarySum + multiplier * currentDigit;
      end
    end
    if (binarySum < 1'h0) begin
      binarySum = binarySum * $signed(2'h3);
    end
    if (binarySum > 7'h63) begin
      hundreds = binarySum / 7'h64;
      binarySum = binarySum - hundreds * 7'h64;
    end else begin
      hundreds = 1'h0;
    end
    if (binarySum > 4'h9) begin
      tens = binarySum / 4'ha;
      binarySum = binarySum - tens * 4'ha;
    end else begin
      tens = 1'h0;
    end
    ones = binarySum;
    decimalOutput[0+3-:4] = ones;
    decimalOutput[4+3-:4] = tens;
    decimalOutput[8+3-:4] = hundreds;
    decimalOutput[12+3-:4] = binaryInput[7+0-:1] * 4'ha;
  end
endmodule
