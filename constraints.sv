//we know that randomization will assign random value to the variable
//in some situation,we need to control random value in such case constraint come into picture
//By writing constraints to a random variable, the user can get specific value on randomization,constraints are written inside constraint blocks
//constraint blocks are like class members which has unique name
//expessions are written inside curly brace {}

//Case-1 without constraint,we donnot have any control over random number
class withoutConstraint;
  rand bit[3:0]num;
  function void post_randomize;
    $display("without constraint: num=%0d",num);
  endfunction
endclass
//Case-2 with constraint,we do have control over random number 
class withConstraint;
  rand bit[3:0]num1;
  function void post_randomize;
    $display("with constraint: num1=%0d",num1);
  endfunction
  constraint c{num1>5;}
endclass

module test;
  withoutConstraint c1;
  withConstraint c2;
  initial
    begin
      c1=new;
      repeat(5)c1.randomize;
      $display("--------------------------------------");
      c2=new;
      repeat(5)c2.randomize;
    end
endmodule
