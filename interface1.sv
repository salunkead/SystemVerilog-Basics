//An interface can have parameters, constants, variables, functions, and tasks
interface intf;
  int a,b,y;
  function void add;
    y=a+b;
    $display("add function inside interface : %0d",y);
  endfunction
  task multiply;
    y=a*b;
    $display("multiply task inside interface : %0d",y);
  endtask
endinterface

module test;
  intf f();
  initial
    begin
      f.a=45;
      f.b=3;
      f.add;
      f.multiply;
    end
endmodule
