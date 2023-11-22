//when we call in-built method randomize,automatically pre_randomize and post_randomize methods are also called.
//pre_randomize is called before randomize,before getting any random value to the class variable.
//post_randomize is called after randomize,after getting random value to the class variable.
//the pre_randomize function can be used to write randomization control logic.
//the post_randomization function can be used to check and perform post-conditions after the object randomization.

class class2;
  rand bit[1:0] num;
  function void pre_randomize;
    //before randomization,value of num=0 i.e default value
    //therefore,this display statement will print num=0
    $display("In pre-randomize: num=%0d",num);
  endfunction
  function void post_randomize;
    //this will num=any random value between 0 to 3
    $display("In post-randomize: num=%0d",num);
  endfunction
endclass

module test;
  class2 c2;
  initial
    begin
      c2=new;
      c2.randomize;
    end
endmodule
