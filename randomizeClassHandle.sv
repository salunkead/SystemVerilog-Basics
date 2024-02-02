//Randomizing class handle

class class1;
  rand bit[3:0]a,b;
  constraint c{unique{a,b};}
endclass

class class2;
  rand class1 obj;
  function new();
    obj=new;
  endfunction
  function void post_randomize;
    $display("%p",obj);
  endfunction
endclass

module top;
  class2 obj2;
  initial
    begin
      obj2=new;
      repeat(10)obj2.randomize;
    end
endmodule
