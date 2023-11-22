//constraints in class can be disabled by method constraint_mode(),all the disabled constraint are not taken into consideration by constraint solver
//obj.constraint_name.constraint_mode(0); disables constraint
//obj.constraint_name.constraint_mode(1); enables constraint
//once the constraint block is disabled, it is required to make constraint_mode(1) enable back the constraint block

class disableConstraint;
  rand bit [3:0]num;
  function void post_randomize;
    $display("num=%0d",num);
  endfunction
  constraint c{num inside{10,45,60};}
endclass

module test;
  disableConstraint dis;
  initial
    begin
      dis=new;
      $display("before disabling constraint");
      repeat(5)dis.randomize;
      $display("-----------------------------------");
      $display("after disabling constraint");
      dis.c.constraint_mode(0);
      repeat(5)dis.randomize;
    end
endmodule
