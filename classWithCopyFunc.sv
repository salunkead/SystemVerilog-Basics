//A simple class with copy function

class class_name;
  int a,b;
  function class_name copy;
    copy=new;
    copy.a=this.a;
    copy.b=this.b;
  endfunction
endclass

module test;
  class_name obj1,obj2;
  initial
    begin
      obj1=new;
      obj1.a=120;
      obj1.b=200;
      $display("properties of obj1 : %p",obj1);
      obj2=obj1.copy;
      $display("properties of obj2 : %p",obj2);
    end
endmodule
