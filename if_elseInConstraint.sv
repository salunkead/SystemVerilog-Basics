//if else block allows conditional executions of constraints 
class if_else;
  rand bit[7:0]num;
  rand bit ctrl;
  function void post_randomize;
    $display("ctrl=%b num=%0d",ctrl,num);
  endfunction
  constraint c{
    if(ctrl)
      num%3==0;
    else
      num%4==0;
  }
endclass

module test;
  if_else f;
  initial
    begin
      f=new;
      repeat(10)f.randomize;
    end
endmodule
