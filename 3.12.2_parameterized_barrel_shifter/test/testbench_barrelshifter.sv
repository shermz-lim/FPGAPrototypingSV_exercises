
module testbench_barrelshifter;
  reg [7:0]  a;
  reg [2:0]  amt;
  wire [7:0] y;

  barrelshifter #(3) uut (
    .a,
    .amt,
    .y
  );

  initial begin
    a = 8'b00010001;
    amt = 3'b000;
    # 200;
    a = 8'b00010001;
    amt = 3'b001;
    # 200;
    a = 8'b00010001;
    amt = 3'b010;
    # 200;
    a = 8'b00010001;
    amt = 3'b011;
    # 200;
    a = 8'b00010001;
    amt = 3'b100;
    # 200;
    a = 8'b00010001;
    amt = 3'b101;
    # 200;
    a = 8'b00010001;
    amt = 3'b111;
    # 200;
    $stop;
  end
endmodule
