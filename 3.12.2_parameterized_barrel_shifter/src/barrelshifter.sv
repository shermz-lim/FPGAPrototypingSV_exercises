
module barrelshifter #(
  parameter  int unsigned N     = 3,
  localparam int unsigned Width = 1 << N
) (
  input logic [Width-1:0]  a,
  input logic [N-1:0]      amt,
  output logic [Width-1:0] y
);
  logic [Width-1:0] s [0:N-1];

  assign s[0] = amt[0] ? {a[0], a[Width-1:1]} : a;

  for (genvar i = 1; i < N; i++) begin : shift
    localparam int amt_i = 1 << i;
    assign s[i] = amt[i] ? {s[i-1][amt_i-1:0], s[i-1][Width-1:amt_i]} : s[i-1];
  end

  assign y = s[N-1];
endmodule
