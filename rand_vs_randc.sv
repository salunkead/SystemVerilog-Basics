//rand vs randc variable
class test;
  rand bit[1:0]num1;
  randc bit[1:0]num2;
  function void post_randomize;
    $display("rand variable: num1=%0d",num1);
    $display("randc variable: num2=%0d",num2);
    $display("-----------------------------");
  endfunction
endclass

module top;
  test t;
  initial
    begin
      t=new;
      repeat(5)
        begin
          t.randomize;
        end
    end
endmodule
