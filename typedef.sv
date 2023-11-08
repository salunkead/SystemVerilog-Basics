//The user can define a new type using typedef
//typedef is like aliasing--> different name given to existing datatype
//typedef keyword
module test;
  typedef int amol;//here another name given to int datatype is amol
  amol a,b,c;
  initial
    begin
      a=10;
      b=20;
      c=a+b;
      $display("c=%0d",c);
    end
endmodule
