//The implication operator can be used to declaring conditional relations between two variables
//expression -> constraint
//if L.H.S expression is true then only R.H.S contraint will be considered
class implicationCons;
  rand bit[7:0]num;
  bit control;
  function void post_randomize;
    $display("num=%0d",num);
  endfunction
  constraint c{
    (control==1'b0)->(num%2==0); //when control=0,even numbers are generated
    (control==1'b1)->(num%2!=0); //when control=1,odd numbers are generated
            }
endclass

module test;
  implicationCons imp;
  initial
    begin
      imp=new;
      imp.control=1'b1;
      repeat(5)imp.randomize;
      $display("------------------------");
      imp.control=1'b0;
      repeat(5)imp.randomize;
    end
endmodule
