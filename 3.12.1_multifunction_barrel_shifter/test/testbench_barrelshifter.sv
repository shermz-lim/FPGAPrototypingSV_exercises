
module testbench_barrelshifter;
  reg        lr;
  reg [7:0]  a;
  reg [2:0]  amt;
  wire [7:0] y;

  barrelshifter uut (
    .lr,
    .a,
    .amt,
    .y
  );

  initial begin
    lr = 1'b0;
    a = 8'b00010001;
    amt = 3'b000;
    # 200;
    lr = 1'b0;
    a = 8'b00010001;
    amt = 3'b001;
    # 200;
    lr = 1'b0;
    a = 8'b00010001;
    amt = 3'b010;
    # 200;
    lr = 1'b0;
    a = 8'b00010001;
    amt = 3'b011;
    # 200;
    lr = 1'b0;
    a = 8'b00010001;
    amt = 3'b100;
    # 200;
    lr = 1'b0;
    a = 8'b00010001;
    amt = 3'b101;
    # 200;
    lr = 1'b0;
    a = 8'b00010001;
    amt = 3'b111;
    # 200;
    lr = 1'b1;
    a = 8'b00010001;
    amt = 3'b000;
    # 200;
    lr = 1'b1;
    a = 8'b00010001;
    amt = 3'b001;
    # 200;
    lr = 1'b1;
    a = 8'b00010001;
    amt = 3'b010;
    # 200;
    lr = 1'b1;
    a = 8'b00010001;
    amt = 3'b011;
    # 200;
    lr = 1'b1;
    a = 8'b00010001;
    amt = 3'b100;
    # 200;
    lr = 1'b1;
    a = 8'b00010001;
    amt = 3'b101;
    # 200;
    lr = 1'b1;
    a = 8'b00010001;
    amt = 3'b111;
    # 200;
    $stop;
  end
endmodule
