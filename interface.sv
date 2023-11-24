//interface- static component,synthesizable
//an interface is the bundle of signals through which a testbench communicate with the design
//interface construct is used to connect design and testbench
//signals/variables inside the interface can be accessed hierarchically
//interface_name instance; 
//instance.variable_name; this is the way to access variables of interface
interface multiplier_interface;
  logic [2:0]ai,bi;
  logic[5:0]yi;
endinterface

module multiplier_design(input [2:0]a,b,output reg [5:0]y);
  always@(*)
    begin
      y=a*b;
    end
endmodule

module tb;
  multiplier_interface inf();
  multiplier_design dut(.a(inf.ai),.b(inf.bi),.y(inf.yi));
  initial
    begin
      repeat(10)
        begin
          inf.ai=$urandom;
          inf.bi=$urandom;
          $strobe("a=%0d b=%0d y=%0d",inf.ai,inf.bi,inf.yi);
          #19;
        end
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
endmodule
