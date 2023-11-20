//Polymorphism means many forms. Polymorphism provides an ability to an object to take on many forms.
class parent;
  virtual function void display;
    $display("Hi,I am parent class's display");
  endfunction
endclass

class child extends parent;
  function void display;
    $display("Hi,I am child class's display");
  endfunction
endclass

class child1 extends parent;
  function void display;
    $display("Hi,I am child1 class's display");
  endfunction
endclass

module test;
  child c;
  child1 c1;
  parent p[2];
  initial
    begin
      c=new;
      c1=new;
      //here object of child class is assigned to the handle of parent class,this allows to take many forms of the same method i.e polymorphism
      p[0]=c;
      p[1]=c1;
      p[0].display;
      p[1].display;
      /*In the above method calls,
Though all the methods are called using child class handle, different methods are getting called. this shows the many forms of the same method, this is called polymorphism*/
    end
endmodule
