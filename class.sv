//class is the extension of strutcure,in structure we cannot write function or task but in class we can.
//class has two things propeties--> variables declared in class and methods-->function or task which operates on the properties(class variables)
class test;
  bit[3:0] a,b;//properties of class
  bit [4:0]y;
  function void add(); //methods of class
    y=a+b;
    $display("y=%0d",y);
  endfunction
endclass

module top;
  test t; //t is of type test(here we have created user defined dataype t)
  //we can create multiple variables of type test.
  initial
    begin
      //properties or methods of class can be accessed by dot(.) operator
      t.a=20;
      t.b=30;
      t.add;
    end
endmodule
