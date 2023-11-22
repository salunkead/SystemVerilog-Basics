//randomization is the process of assigning random value to the variable
//for randomizing class properties s.v provide rand,randc keywords and randomize() method
//In order to make variables as random variables, Class variables need to be declared using the rand and randc type-modifier keywords.
//Following types can be declared as rand and randc->bit,byte,logic,int,integer,reg,arrays,arrays size,object handle’s

//rand-> provides a uniform distribution i.e probability of selecting number is equal and it can repeat a particular number
class randk;
  rand bit[1:0] a;
  function void post_randomize;
    $display("rand variable: a=%0d",a);
  endfunction
endclass

///randc-> stands for random cycle and is used for generating random nubers in cyclic order.it cycles through all possible value before repeating a number
class randck;
  randc bit[1:0]b;
  function void post_randomize;
    $display("randc variable: b=%0d",b);
  endfunction
endclass

module test;
  randk r1;
  randck r2;
  initial
    begin
      r1=new;
      r2=new;
      $display("behaviour of rand variable..!");
      repeat(5)r1.randomize;
      $display("behaviour of randc variable.......!");
      repeat(5)r2.randomize;
    end
endmodule
