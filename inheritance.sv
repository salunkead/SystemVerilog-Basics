class parent;
  int a,b;
  function getValues(int a,b);
    this.a=a;
    this.b=b;
  endfunction
endclass
//A derived class(child class) by default inherits the properties and methods of its parent class
//child class has the access of parent class variable a,b and method getValues
//A derived class may add new properties and methods, or modify the inherited properties and methods
class child extends parent;
  int y;
  function int add;
    y=a+b;
    return y;
  endfunction
endclass

module test;
  child c;
  initial
    begin
      c=new; //by using object of child class,we can access a,b and method getValue
      c.getValues(56,98);
      $display("a=%0d b=%0d y=%0d",c.a,c.b,c.add);
    end
endmodule
