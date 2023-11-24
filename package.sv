//
package pkg;
   function int sum(int a,b);
      $display("the function is inside package");
      return a+b;
   endfunction
endpackage

module test;
  import pkg::*;
  int s;
  initial
    begin
      s=sum(98,65);
      $display("s=%0d",s);
      s=sum(89,87);
      $display("s=%0d",s);
    end
endmodule
