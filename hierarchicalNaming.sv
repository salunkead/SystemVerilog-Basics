//The system Verilog supports hierarchical naming
/*
1.Hierarchical naming is the way of referring to identifiers(such as signals,parameters,task,functions etc) in different scopes or levels of module hierarchy.
*/

module A;
  int a=120;
  initial
    begin
      $display("value of a in module A: %0d",a);
    end
endmodule

module B;
  A a1();
endmodule

module C;
  B a2();
endmodule

module D;
  C a3();
  initial
    begin
      $display("value of a in module D: %0d",a3.a2.a1.a);
    end
endmodule
