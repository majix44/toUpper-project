`timescale 1ns / 1ps

module test_toUpper;

reg [7:0] in;
wire [7:0] out;

// Instantiate your toUpper gate-level module
toUpper DUT (.in(in), .out(out));

initial begin
  $display(" time | dec |     in (bin)     |     out (bin)    | in_char | out_char ");
  $display("----------------------------------------------------------------------");
  $monitor("%4dns | %3d | %b | %b |  %s  |  %s",
           $time, in, in, out, in, out);

  // ---- Full ASCII test cases from assignment ----
  in = 8'd40;   #20;   // '('
  in = 8'd72;   #20;   // 'H'
  in = 8'd183;  #20;   // '·'
  in = 8'd131;  #20;   // 'ƒ'
  in = 8'd124;  #20;   // '|'
  in = 8'd20;   #20;   // DC4 (non-printable control)
  in = 8'd235;  #20;   // 'ë'
  in = 8'd97;   #20;   // 'a'
  in = 8'd65;   #20;   // 'A'
  in = 8'd122;  #20;   // 'z'
  in = 8'd71;   #20;   // 'G'
  in = 8'd109;  #20;   // 'm'
  in = 8'd146;  #20;   // '’'
  in = 8'd48;   #20;   // '0'
  in = 8'd207;  #20;   // 'Ï'
  in = 8'd58;   #20;   // ':'
  in = 8'd123;  #20;   // '{'
  in = 8'd148;  #20;   // '”'
  in = 8'd127;  #20;   // DEL (non-printable)

  #20 $finish;
end

endmodule
