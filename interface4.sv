//as we know classes are dynamic(variables have limited lifespan,cpu memory is created for the variables and once their use is over allocated memory is destroyed/deallocated) in nature 
//and interface is static(all the variables hold the cpu memory till the end of simulation) in nature,
//therefore we cannot use interface instance in class
//here the concept of virtual interface comes into the picture(virtual interface the bridge between static and dynamic world)
//A virtual interface is a pointer to an actual physical interface instance

//Case-1 without virtual interface---Error
//throws error
interface intf;
  int a,b;
endinterface

class dynamic;
  rand int i,j;
  intf f;
  function new(intf f);
    this.f=f;
  endfunction
  function void post_randomize;
    $display("i=%0d j=%0d",i,j);
  endfunction
  constraint c{i inside{[1:100]};
               j inside{[50:100]};}
  function void drive;
    f.a=i;
    f.b=j;
    $display("after assigning value to the interface a=%0d b=%0d",f.a,f.b);
  endfunction
endclass

module test;
  dynamic dy;
  intf f();
  initial
    begin
      dy=new(f);
      dy.randomize;
      dy.drive;
    end
endmodule

//Case-2 with virtual interface
interface intf;
  int a,b;
endinterface

class dynamic;
  rand int i,j;
  virtual intf f;
  function new(virtual intf f);
    this.f=f;
  endfunction
  function void post_randomize;
    $display("i=%0d j=%0d",i,j);
  endfunction
  constraint c{i inside{[1:100]};
               j inside{[50:100]};}
  function void drive;
    f.a=i;
    f.b=j;
    $display("after assigning value to the interface a=%0d b=%0d",f.a,f.b);
  endfunction
endclass

module test;
  dynamic dy;
  intf f();
  initial
    begin
      dy=new(f);
      dy.randomize;
      dy.drive;
    end
endmodule
