//Deep copy
class main;
  int a;
  function main copy;
    copy=new;
    copy.a=this.a;
    return copy;
  endfunction
endclass
class sub_class;
  int b;
  main m;
  function new;
    m=new;
  endfunction
  function sub_class copy;
    copy=new;
    copy.b=this.b;
    copy.m=m.copy;
    return copy;
  endfunction
endclass

module test;
  sub_class s1,s2;
  initial
    begin
      s1=new;
      s1.b=120;
      s1.m.a=100;
      s2=s1.copy;
      $display("main class variable:: a=%0d",s2.m.a);
      $display("sub_class variable:: b=%0d",s2.b);
      ////on calling copy method,new memory will be allocated to the variables and variables will be copied to new object
      s2.m.a=220;
      s2.b=200;
      $display("main class variable:: a=%0d",s1.m.a);
      $display("sub_class variable:: b=%0d",s1.b);
    end
endmodule
