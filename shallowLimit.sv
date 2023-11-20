//limitation of shallow copy
//in shallow copy,only class variables are copied but internal objects are not copied,object share same memory location
class main;
  int a;
endclass
class sub_class;
  int b;
  main m;
  function new;
    m=new;
  endfunction
endclass

module test;
  sub_class s1,s2;
  initial
    begin
      s1=new;
      s1.b=120;
      s1.m.a=100;
      s2=new s1;
      $display("main class variable:: a=%0d",s2.m.a);
      $display("sub_class variable:: b=%0d",s2.b);
      ////main class variable a shares common memory location,threfore changes made in one reflect in other.
      s2.m.a=220;
      s2.b=200;
      $display("main class variable:: a=%0d",s1.m.a);
      $display("sub_class variable:: b=%0d",s1.b);
    end
endmodule
