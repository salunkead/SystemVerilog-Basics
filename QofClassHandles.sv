////Queue of class handles

class test;
  rand bit[7:0]a,b,c;
  function void post_randomize;
    $display("value of a=%0d b=%0d c=%0d",a,b,c);
  endfunction
  constraint cons{
    c==a+b;
  }
endclass

module top;
  test t[$];
  test t1,t2;
  initial
    begin
      repeat(5)
        begin
          t1=new();
          t1.randomize;
          t.push_back(t1);
        end
      ///////////////////////////////
      $display("/////////////////////////////////////////////////////////////");
      repeat(5)
        begin
          t2=new;
          t2=t.pop_front;
          $display("t2.a=%0d t2.b=%0d t2.c=%0d",t2.a,t2.b,t2.c);
        end
    end
endmodule
