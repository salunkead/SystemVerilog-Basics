//randomize method can only randomize class variables but not variables which has local scope
//to randomize variables which has local scope,we can use scope randomization
//syntax: std::randomize(variable/array) with {constraint expression;}; 
class scopeRandomization;
  rand bit[7:0]num; //obj.randomize can randomize this variable only 
  function void post_randomize;
    $display("num=%0d",num);
  endfunction
  function void localScopefun;
    bit[4:0] n;
    bit[7:0] arr[4];
    std::randomize(n) with {n<10;};
    std::randomize(arr) with {unique{arr};};
    $display("n=%0d",n);
    $display("arr=%p",arr);
  endfunction
endclass

module test;
  scopeRandomization sc;
  initial
    begin
      sc=new;
      sc.randomize;
      sc.localScopefun;
    end
  
endmodule
