
module testbench_BCD_incrementor3;
  reg [11:0]  bcd;
  wire [11:0] bcd_out;

  BCD_incrementor3 uut(
    .bcd,
    .bcd_out
  );

  initial begin
    bcd = {4'd2, 4'd5, 4'd9};
    # 200;
    bcd = {4'd2, 4'd9, 4'd9};
    # 200;
    bcd = {4'd9, 4'd9, 4'd9};
    # 200;
    bcd = {4'd2, 4'd5, 4'd0};
    # 200;
    bcd = {4'd2, 4'd5, 4'd1};
    # 200;
    $stop;
  end
endmodule
