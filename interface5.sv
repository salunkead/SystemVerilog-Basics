////an interface can also contain procedural blocks i.e always and initial
///interface can also contain continous assignment statement

///Example -1
interface intf;
  int a,b,y;
  always@(*)
    begin
      y=a+b;
    end
  
  initial
    begin
      repeat(10)
        begin
          std::randomize(a,b) with {a>0 && a<50;
                                    b inside {[100:500]};
                                   };
          #10;
        end
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #500 $finish;
    end
endinterface

module top;
  intf vif();
endmodule

/////intrface can also contain continous assignment

//Example - 2
interface intf;
  logic[31:0] a,b,y;
  
  assign y=a+b;  //interface can contain continous assignment statement
  
  initial
    begin
      repeat(10)
        begin
          std::randomize(a,b) with {a>0 && a<50;
                                    b inside {[100:500]};
                                   };
          #10;
        end
    end
  
  
endinterface

module top;
  intf vif();
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #500 $finish;
    end
endmodule
