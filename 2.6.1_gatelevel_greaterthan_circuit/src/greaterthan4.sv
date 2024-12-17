
module greaterthan4 (
  input logic [3:0] a,
  input logic [3:0] b,
  output logic      agtb
);
  logic msb_agtb, lsb_agtb, msb_aeqb;

  greaterthan2 gt_msb (
    .a(a[3:2]),
    .b(b[3:2]),
    .agtb(msb_agtb)
  );
  greaterthan2 gt_lsb (
    .a(a[1:0]),
    .b(b[1:0]),
    .agtb(lsb_agtb)
  );
  eq2 eq_msb (
    .a(a[3:2]),
    .b(b[3:2]),
    .aeqb(msb_aeqb)
  );

  assign agtb = msb_agtb | (msb_aeqb & lsb_agtb);
endmodule
