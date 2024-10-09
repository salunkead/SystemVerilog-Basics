//Randomizing Enum
//Example
class test;
  typedef enum bit[1:0]{a,b,c,d}enum_type;
  randc enum_type e;
  function void post_randomize;
    $display("e=%0d and name : %0s",e,e.name);
  endfunction
endclass

module top;
  test t;
  initial
    begin
      t=new;
      repeat(10)t.randomize;
    end
endmodule
