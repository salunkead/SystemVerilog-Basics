//Using this.randomize to randomize the variables 

class test;
  randc bit[3:0]num;
  function new();
    repeat(16)
      begin
        this.randomize;
      end
  endfunction
  function void post_randomize;
    $display("num=%0d",num);
  endfunction
endclass

module top;
  test t;
  initial
    t=new;
endmodule
