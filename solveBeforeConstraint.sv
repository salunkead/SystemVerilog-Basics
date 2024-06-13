///solve before constraint
/*
1.by default constraint solver gives uniform probability to all possible solution to the constaints
each and every solution has equal probability
2.we can change the probability distribution with the help of solve before
3.variables must be of type int and rand
4.randc is not allowed
*/

///Solve Before
class test1;
  rand int a,b;
  function void post_randomize;
    $display("a=%0d b=%0d",a,b);
  endfunction
  
  constraint a1{a inside {[1:20]};
                b==a*2;
                solve a before b;
               }
endclass

class test2;
  rand int a,b;
  function void post_randomize;
    $display("a=%0d b=%0d",a,b);
  endfunction
  
  constraint a1{a inside {[1:20]};
                b==a*2;
               }
endclass

module top;
  test1 t;
  test2 t1;
  initial
    begin
      t=new;
      t1=new;
      $display("with solve before............!");
      repeat(10)
      t.randomize;
      $display;
      $display("without solve before............!");
      repeat(10)t1.randomize;
    end
endmodule
