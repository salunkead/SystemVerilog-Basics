//in some cases,constraint cannot be expressed in single line at that time function call can be used to constraint random variable
//constraint logic should be written inside function and function call should placed inside constraint block
class functionInConstr;
  rand bit[7:0]a,b;
  function void post_randomize;
    $display("a=%0d b=%0d",a,b);
  endfunction
  function bit[7:0] variables(bit [7:0]a);
    if(a<10)
      b=2*a;
    else if(a>11 && a<20)
      b=3*a;
    else
      b=4*a;
    return b;
  endfunction
  constraint constr{b==variables(a);}
  constraint c{a inside{[1:30]};
              }
endclass

module test;
  functionInConstr f;
  initial
    begin
      f=new;
      repeat(5)f.randomize;
    end
endmodule
