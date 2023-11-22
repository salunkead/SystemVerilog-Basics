//object.rand_mode(0)--> disables randomization for all class variable 
//what if we want to disable randomization for particular variable
//this can be done by object.variable.rand_mode(0)
class randMode;
  rand bit[2:0]num,num1;
  function void post_randomize;
    $display("num=%0d num1=%0d",num,num1);
  endfunction
endclass

module test;
  randMode r;
  initial
    begin
      r=new;
      //object.variable_name.rand_mode(0) disables randomization for that variable 
      //disabling randomization for all class variables
      //by doing this,all class variables will get their default value i.e 0
      r.rand_mode(0);
      repeat(5)r.randomize;
      $display("--------------------------");
      r.rand_mode(1);
      //disabling randomization for num variable
      r.num.rand_mode(0);
      repeat(5)r.randomize;
      $display("--------------------------");
      r.num.rand_mode(1);
      //disabling randomization for num1 variable
      r.num1.rand_mode(0);
      repeat(5)r.randomize;
    end
endmodule
