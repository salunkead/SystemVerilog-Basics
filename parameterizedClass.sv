//pass any datatype to class
//Generic class
class parameter1#(type t=int);
  t a,b,c;
  function new(t a,b);
    this.a=a;
    this.b=b;
  endfunction
  function t add;
    c=a+b;
    return c;
  endfunction
endclass

module test;
  parameter1 #(int) p;
  parameter1 #(real)p1;
  initial
    begin
      p=new(45,68);
      $display("a=%0d b=%0d and c=%0d",p.a,p.b,p.add);
      p1=new(45.23,85.32);
      $display("a=%0f b=%0f and c=%0f",p1.a,p1.b,p1.add);
    end
endmodule
