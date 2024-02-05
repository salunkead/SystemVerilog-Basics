//Difference between implication and equivalence operator
/*
1.Truth Table of equivalence operator
  a    b   a <-> b
  0    0     1
  0    1     0
  1    0     0
  1    1     1

2.Truth Table of implication operator
  a    b   a -> b
  0    0    1
  0    1    1
  1    0    0
  1    1    1
*/

///////equivalence operator in constraint

class test;
  rand bit we,re;
  function void post_randomize();
    $display("we=%b re=%b",we,re);
  endfunction
  constraint c{we <-> re;}
endclass

module top;
  test t;
  initial
    begin
      t=new;
      repeat(10)t.randomize;
    end
endmodule


///Implication operator in constraint

class test;
  rand bit we,re;
  function void post_randomize();
    $display("we=%b re=%b",we,re);
  endfunction
  constraint c{we -> re;}
endclass

module top;
  test t;
  initial
    begin
      t=new;
      repeat(10)t.randomize;
    end
endmodule
