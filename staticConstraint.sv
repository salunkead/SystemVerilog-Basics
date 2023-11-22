//in first case,non-static constraint is used,if we turn off constraint for one object,it is not reflected to other object
//i.e object are independent for constraint_mode(0) method
//but in case second,if we turn off constraint for one object,it reflects in other object i.e constraint will be disable for second object also
//objects are dependent for constraint_mode(0)

//Case-1 Non-static constraint
class normalConstraint;
  randc bit[3:0] num;
  function void post_randomize;
    $display("num=%0d",num);
  endfunction
  constraint odd{num%2!=0;}
endclass
module test;
  normalConstraint n1,n2;
  initial
    begin
      n1=new;
      n2=new;
      repeat(2)n1.randomize;
      n1.constraint_mode(0);
      $display("after turning off constraint");
      repeat(2)n1.randomize;
      ///////
      $display("for second object");
      repeat(2)n2.randomize;
    end
endmodule

//Case-2 static constraint
class staticConstraint;
  randc bit[3:0] num;
  function void post_randomize;
    $display("num=%0d",num);
  endfunction
  static constraint odd{num%2!=0;}
endclass
module test;
  staticConstraint n1,n2;
  initial
    begin
      n1=new;
      n2=new;
      repeat(2)n1.randomize;
      n1.constraint_mode(0);
      $display("after turning off constraint");
      repeat(2)n1.randomize;
      ///////
      $display("for second object");
      repeat(2)n2.randomize;
    end
endmodule
