//constraint block is declared inside the class and defined outside the class
class externConstraint;
  randc bit[3:0] num;
  function void post_randomize;
    $display("num=%0d",num);
  endfunction
  constraint even;
endclass
constraint externConstraint::even{num%2==0;}
module test;
  externConstraint ex;
  initial
    begin
      ex=new;
      repeat(5)ex.randomize;
    end
endmodule
