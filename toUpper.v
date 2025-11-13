`timescale 1ns / 1ps

module toUpper(input [7:0] in, output [7:0] out);

// Bit 0
buf #4 B0(out[0], in[0]);
// Bit 1
buf #4 B1(out[1], in[1]);
// Bit 2
buf #4 B2(out[2], in[2]);
// Bit 3
buf #4 B3(out[3], in[3]);
// Bit 4
buf #4 B4(out[4], in[4]);
// Bit 5 — this bit determines case
// Lowercase letters have bit5=1, uppercase=0
// Clear it: out[5] = in[5] AND 0 → using AND with a constant 0 signal
wire zero;
not #5 N1(zero, 1'b1);      // generate logical 0 using NOT
and #10 A5(out[5], in[5], zero);

// Bit 6
buf #4 B6(out[6], in[6]);
// Bit 7
buf #4 B7(out[7], in[7]);

endmodule
