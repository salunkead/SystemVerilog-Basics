//synchronizing clock edges of multiple clocks
module test;
  bit clk1,clk2,clk3;
  always #10 clk2=~clk2;
  initial
    begin
      #5;
      forever #5 clk1=~clk1;
    end
  initial
    begin
      #8;
      forever #2 clk3=~clk3;
    end
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars();
      #200 $finish;
    end
endmodule
