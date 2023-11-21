//randomization is the process of assigning random value to the variable
//for randomizing class properties s.v provide rand,randc keywords and randomize() method
//In order to make variables as random variables, Class variables need to be declared using the rand and randc type-modifier keywords.
//Following types can be declared as rand and randc->bit,byte,logic,int,integer,reg,arrays,arrays size,object handle’s
class randomize1;
  rand bit[1:0] a;
  randc bit[1:0] b;
  function void post_randomize;
    $display("rand variable value: %0d",a);
    $display("randc variable value: %0d",b);
  endfunction
endclass

module test;
  randomize1 r;
  initial
    begin
      r=new;
      repeat(4)
        begin
          r.randomize;
        end
    end
endmodule
