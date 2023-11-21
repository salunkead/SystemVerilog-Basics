//if the definition of the method is defined outside class then that method is called external method
//external methods are defined using extern keyword
class complexAdd;
  real real1,imaginary;
  extern function new(real a,b);
  extern function void add(complexAdd obj1,obj2);
endclass
function void complexAdd::add(complexAdd obj1,obj2);
      real r_part,i_part;
      r_part=obj1.real1+obj2.real1;
      i_part=obj1.imaginary+obj2.imaginary;
      $display("complex addition is :: %0f",r_part,"+j%0f",i_part);
endfunction
function complexAdd:: new(real a,b);
      this.real1=a;
      this.imaginary=b;
endfunction
module test;
  complexAdd obj1,obj2;
  initial
    begin
      obj1=new(12.2,24.56);
      obj2=new(25.32,78.36);
      obj2.add(obj1,obj2);
    end
endmodule
