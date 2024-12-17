
module bindec_3to8 (
  input logic [2:0]  a,
  input logic        en,
  output logic [7:0] bcode
);
  logic [3:0] bcode0, bcode1;

  bindec_2to4 msb0_bcode (
    .a    (a[1:0]),
    .en   (en & ~a[2]),
    .bcode(bcode0)
  );
  bindec_2to4 msb1_bcode (
    .a    (a[1:0]),
    .en   (en & a[2]),
    .bcode(bcode1)
  );

  assign bcode = {bcode1, bcode0};
endmodule
