//virtual method concept is fundamental for polymorphism,allowing objects of different derived class to be treated as objects of the base class
//Case-1 if there is no virtual method,as derived class object is assigned to base class handle,display function of base class will get called
class base;
  function void display;
    $display("I am display function of base class");
  endfunction
endclass
class derived_class extends base;
  function void display;
    $display("I am display function of derived class");
  endfunction
endclass

module test;
  derived_class c;
  base b;
  initial
    begin
      c=new;
      b=c;
      b.display;
    end
endmodule

//Case-2 if display() method in base class is virtual, then derived class display method will get called
class base;
  virtual function void display;
    $display("I am display function of base class");
  endfunction
endclass
class derived_class extends base;
  function void display;
    $display("I am display function of derived class");
  endfunction
endclass

module test;
  derived_class c;
  base b;
  initial
    begin
      c=new;
      b=c;
      b.display;
    end
endmodule
