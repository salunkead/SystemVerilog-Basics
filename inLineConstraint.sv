//inline constraint is used to introduce additional constraint on variable
//randomize() with{constraint_expression} is called as inline constraint
//constraint solver,see both constraint i.e constraint written inside class as well as inline constraint to solve the constraint
//there should not be any conflict between class constraint and inline constraint,otherwise it will lead to randomization failure
//existing constraint cannot be overriden with inline constraint

class inLine;
  rand bit[7:0]a,b,c;
  function void post_randomize;
    $display("c=%0d a=%0d b=%0d",c,a,b);
  endfunction
  constraint c1{c==a+b;}
endclass

module test;
  inLine in;
  initial
    begin
      in=new;
      repeat(10)in.randomize with {a==2*b;};
    end
endmodule
