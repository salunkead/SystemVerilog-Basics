//modport -> 'mod'ule 'port'

//Example - 1
interface intf;
  logic[31:0]a,b,y;
  
  modport adder(input a,b,output y);
endinterface

module design1(intf.adder if1);
  always@(*)
    begin
      if1.y=if1.a+if1.b;
    end
endmodule

module top;
  intf vif();
  design1 dut(vif);
  
  initial
    begin
      repeat(10)
        begin
          vif.a=$urandom_range(1,50);
          vif.b=$urandom_range(20,100);
          #10;
        end
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #500 $finish;
    end
endmodule
