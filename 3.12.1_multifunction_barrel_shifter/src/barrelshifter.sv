
module barrelshifter (
  input logic        lr, // 1 - left, 0 - right
  input logic [7:0]  a,
  input logic [2:0]  amt,
  output logic [7:0] y
);
  logic [7:0] left_y, right_y;

  rotateleft rotateleft_a (
    .a,
    .amt,
    .y(left_y)
  );
  rotateright rotateright_a (
    .a,
    .amt,
    .y(right_y)
  );

  always_comb begin
    if (lr)
      y = left_y;
    else
      y = right_y;
  end
endmodule
