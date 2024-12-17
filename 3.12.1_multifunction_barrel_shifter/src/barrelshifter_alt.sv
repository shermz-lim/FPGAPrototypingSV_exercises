
module barrelshifter_alt (
  input logic        lr, // 1 - left, 0 - right
  input logic [7:0]  a,
  input logic [2:0]  amt,
  output logic [7:0] y
);
  logic [7:0] a_rev, a_in;

  for (genvar i = 0; i < 8; i++) begin : reverse_a
    assign a_rev[i] = a[7-i];
  end

  always_comb begin
    if (lr)
      a_in = a_rev;
    else
      a_in = a;
  end

  logic [7:0] y_out, y_out_rev;

  rotateright rotateright_a_in (
    .a  (a_in),
    .amt,
    .y  (y_out)
  );

  for (genvar i = 0; i < 8; i++) begin : reverse_y_out
    assign y_out_rev[i] = y_out[7-i];
  end

  always_comb begin
    if (lr)
      y = y_out_rev;
    else
      y = y_out;
  end
endmodule
