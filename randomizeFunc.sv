//passing arguments to the randomize function
class test;
  bit[7:0]num1,num2;
  function void post_randomize;
    $display("num1=%0d num2=%0d",num1,num2);
  endfunction
endclass

module top;
  test t;
  initial
    begin
      t=new;
      t.randomize(num1,num2) with {num1<50 && (num2>50 && num2<100);};
    end
endmodule
