
module eq2 (
  input logic [1:0] a,
  input logic [1:0] b,
  output logic      aeqb
);
  logic e0, e1;

  eq1 eq_bit0 (
    .i0(a[0]),
    .i1(b[0]),
    .eq(e0)
  );
  eq1 eq_bit1 (
    .i0(a[1]),
    .i1(b[1]),
    .eq(e1)
  );
  assign aeqb = e0 & e1;
endmodule
