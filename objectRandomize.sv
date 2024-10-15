//Object randomization

//Example
class address;
  rand bit[3:0]addr;
  function void post_randomize;
    $display("addr=%d",addr);
    $display("---------------------------------");
  endfunction
endclass

class data;
  rand bit[4:0]data1;
  rand address adr=new;
  function void post_randomize;
    $display("data1=%d",data1);
  endfunction
endclass

module top;
  data d;
  initial
    begin
      d=new;
      repeat(10)d.randomize;
    end
endmodule
