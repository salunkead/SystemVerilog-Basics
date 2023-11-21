//class declared with virtual is called abstract class
//abstract class cannot be instantiated,it can only be derived
//abstract class sets the templet for the sub-class
virtual class abstractClass;
  int a;
endclass

module test;
  abstractClass ab;
  initial
    begin
      ab=new;// it will throw an error,because abstract class cannot be instantiated
    end
endmodule


// a class with pure virtual function/task is called abstract class
//the derived class from the abtract class has to implement pure virtual function,otherwise the compiler will throw an error
virtual class abstractClass;
  int a;
  pure virtual function void display();//only function declaration,the derived class has to define this function
endclass

class child extends abstractClass;
  function void display;
    $display("Hello,Good Afternoon......!");
  endfunction
endclass

module test;
  child ab;
  initial
    begin
      ab=new;
      ab.display;
    end
endmodule
