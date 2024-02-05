//Object Deallocation
/*
1.it is the process of freeing the memory that was allocated for an object when it is no longer needed
*/

///////////
class test;
  int a;
  function void display();
    $display("a: %0d",a);
  endfunction
endclass

module top;
  test t;
  initial
    begin
      t=new;
      t.a=10;
      t.display;
      t=null; //freeing the memory allocated for class members
      t.a=20;
      t.display;
    end
endmodule
