///Virtual class (abstract class)
/*
1.virtual class can contain normal function,virtual function and pure virtual function
*/

virtual class base;
  virtual function void display;
    $display("virtual function display in base class");
  endfunction
  function void display1;
    $display("Normal function display 1 in base class");
  endfunction
  pure virtual function void display2;
endclass

class child extends base;
  function void display2;
    $display("pure virtual function defined in child class");
  endfunction
endclass

module top;
  child c;
  initial
    begin
      c=new;
      c.display;
      c.display1;
      c.display2;
    end
endmodule
