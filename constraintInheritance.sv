//like all the class members,constraints also gets inherited from the parent class
//Constraint blocks can be overridden by writing constraint block with the same name as in parent class
class base;
  rand bit[3:0]num;
  constraint c{num%3==1;}
endclass
class child extends base;
  constraint c{num%4==2;} //constraint overriding
  function void post_randomize;
    $display("num=%0d",num);
  endfunction
endclass

module test;
  child c;
  initial
    begin
      c=new;
      c.randomize;
    end
endmodule
