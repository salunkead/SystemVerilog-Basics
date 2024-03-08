//Final block in system verilog
/*
1.statement inside the initial block starts executing from time t=0 but statements inside final block executes at the end of simulation time
2.initial block - delays are allowed
  final block - delays are not allowed
3.initial block-blocking tasks are allowed inside initial block
  final block- blocking tasks are not allowed inside final block
*/


/////////
module test;
  bit [4:0]n,a;
  bit clk;
  always #5 clk=~clk;
  initial
    begin
      repeat(20)
        begin
          n=$urandom;
          #5;
        end
    end
  
  final begin
    a=20;
    $display("a=%0d executes at t=%0t",a,$time); //a=20 is exeuted at t=100 time unit
  end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #100 $finish;
    end
endmodule
