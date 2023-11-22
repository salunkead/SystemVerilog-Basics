//variables declared without rand or randc keyword will not get random value after randomization.
//if there is one situation where variable is declared with rand or randc keyword but we donot want random value 
//then the concept of rand_mode()  comes into picture,this method is used to disable randomization.
//rand_mode(1)--> means randomization is enabled.
//rand_mode(0)--> means randomizaton is disabled.
//if we disable randomization,we need turn it on if we want randomization
//rand_mode method returns 1=if randomization is enabled..0=if randomization is disabled
class randMode;
  rand bit[2:0]num;
  function void post_randomize;
    $display("num=%0d",num);
  endfunction
endclass

module test;
  randMode r;
  initial
    begin
      r=new;
      //object.rand_mode(0) disables randomization for all class variable
      r.rand_mode(0);
      $display("behaviour after randomization is disabled");
      repeat(5)r.randomize;//all class variable will get their default value as we have not initilized any variable
      $display("------------------------------------------");
      $display("behaviour after randomization is enabled");
      r.rand_mode(1);
      repeat(5)r.randomize;//all the class variable will get random value now
    end
endmodule
