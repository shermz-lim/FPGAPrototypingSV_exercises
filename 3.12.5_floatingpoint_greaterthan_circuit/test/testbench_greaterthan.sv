
module testbench_greaterthan;
  reg       sign1, sign2;
  reg [3:0] exp1, exp2;
  reg [7:0] frac1, frac2;
  wire      gt;

  greaterthan uut(
    .sign1, .sign2,
    .exp1, .exp2,
    .frac1, .frac2,
    .gt
  );

  initial begin
    sign1 = 0; sign2 = 0; exp1 = 4'b1001; exp2 = 4'b1000; frac1 = 8'b10000000; frac2 = 8'b10000000;
    # 200;
    sign1 = 1; sign2 = 1; exp1 = 4'b0111; exp2 = 4'b1000; frac1 = 8'b10000000; frac2 = 8'b10000000;
    # 200;
    sign1 = 0; sign2 = 0; exp1 = 4'b1010; exp2 = 4'b1010; frac1 = 8'b11000000; frac2 = 8'b10100000;
    # 200;
    sign1 = 0; sign2 = 0; exp1 = 4'b1010; exp2 = 4'b1010; frac1 = 8'b10100000; frac2 = 8'b11000000;
    # 200;
    sign1 = 0; sign2 = 1; exp1 = 4'b1000; exp2 = 4'b1000; frac1 = 8'b10000000; frac2 = 8'b10000000;
    # 200;
    sign1 = 0; sign2 = 0; exp1 = 4'b1100; exp2 = 4'b1100; frac1 = 8'b10000000; frac2 = 8'b10000000;
    # 200;
    sign1 = 1; sign2 = 1; exp1 = 4'b1011; exp2 = 4'b1011; frac1 = 8'b10100000; frac2 = 8'b11000000;
    # 200;
    sign1 = 0; sign2 = 0; exp1 = 4'b0010; exp2 = 4'b1010; frac1 = 8'b10000000; frac2 = 8'b10000000;
    # 200;
    sign1 = 1; sign2 = 1; exp1 = 4'b1010; exp2 = 4'b0010; frac1 = 8'b10000000; frac2 = 8'b10000000;
    # 200;
    $stop;
  end
endmodule
