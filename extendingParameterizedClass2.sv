//Extending parameterized class

//Example
class base #(type T=int);
  function T return_int_sum(T a,b);
    return a+b;
  endfunction
endclass

class child #(type Ty=real) extends base #(real); //now type of base class is overrided with real type
  function Ty return_real_sum(Ty c,d);
    return c+d;
  endfunction
endclass

module n;
  base b;
  child c;
  
  initial
    begin
      c=new;
      $display("child class method : %0.4f",c.return_int_sum(16.123,65.245));
      $display("base class method : %0.4f",c.return_real_sum(16.35,89.25));
      $display("-------------------------------------------------------------");
     
    end
endmodule
