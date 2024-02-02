//randomizing class properties without using rand or randc keyword 
class test;
  bit[7:0]num1,num2;
  function void post_randomize;
    $display("num1=%0d num2=%0d",num1,num2);
  endfunction
endclass

module top;
  test t;
  initial
    begin
      t=new;
      t.randomize(num1) with {num1<50;}; //this will randomize only num1 variable with the specified inline constraints
    end
endmodule
