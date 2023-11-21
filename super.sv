//the super keyword is used in derived class to refer to the members of parent class
//when members are overridden in the derived class then super keyword must used to refer members of parent class
//members can be method or property
//Example.1 method overriding and refering from child class using super
class parent;
  function void display;
    $display("this is the display function of parent");
  endfunction
endclass
class child extends parent;
  function void display;
    super.display;
    $display("this is the display function of child");
  endfunction
endclass

module test;
  child c;
  initial
    begin
      c=new;
      c.display;
    end
endmodule

//Example.2 accessing methods and properties of the parent class 
class add;
  int a,b;
  function new(int a,b);
    this.a=a;
    this.b=b;
  endfunction
endclass
class multiply extends add;
  int mul,add,a,b;
  function new(int a,b,x,y);
    super.new(a,b);
    this.a=x;
    this.b=y;
  endfunction
  function void display();
    mul=super.a*super.b;
    add=a+b;
    $display("addition : %0d",add);
    $display("multiplication : %0d",mul);
  endfunction
endclass

module test;
  multiply m;
  initial
    begin
      m=new(5,8,18,65);
      m.display;
    end
endmodule
