///Extending parameterized class

//Example
class base #(type T=int);
  function T return_int_sum(T a,b);
    return a+b;
  endfunction
endclass

class child #(type Ty=real) extends base;
  function Ty return_real_sum(Ty c,d);
    return c+d;
  endfunction
endclass

module n;
  base b;
  child c;
  base #(real) b1;
  child #(int) c1;
  initial
    begin
      c=new;
      $display("child class method : %0d",c.return_int_sum(16,65));
      $display("base class method : %0.4f",c.return_real_sum(16.35,89.25));
      $display("-------------------------------------------------------------");
      c1=new;
      b1=new;
      $display("child class method : %0.4f",b1.return_int_sum(16.52,65.12));
      $display("base class method : %0d",c1.return_real_sum(16,89));
    end
endmodule
