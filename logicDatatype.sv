//without logic data type
module test;
  reg a,b;
  reg and1;
  wire or1;
  
  always@(*)
    begin
      or1=a|b; //throws error as left side of this assignment cannot be of net type
    end
  
  assign and1=a&b; //L.H.S of continuous assignment cannot be of reg type 
  
  //////stimulus
  initial
    begin
      repeat(20)
        begin
          {a,b}=$urandom_range(0,3);
          #10;
        end
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule

//with logic datatype
/*
1.the logic data type is sytem verilog is a 4-state data type that can be driven in both procedural block and continous assignment 
2.this makes the logic data type more flexible and convenient to use in different context
3.for example:- you can use logic data type to model combinational logic circuit using assign statement or to model sequential logic circuits using always block
4.you can also use logic datatype to declare ports,variables in module,classes and interface.
*/

module test;
  reg a,b;
  logic and1,or1;
  
  always@(*)
    begin
      or1=a|b; 
    end
  
  assign and1=a&b;  
  
  //////stimulus
  initial
    begin
      repeat(20)
        begin
          {a,b}=$urandom_range(0,3);
          #10;
        end
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule
