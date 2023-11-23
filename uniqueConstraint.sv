//constraint defined with keyword unique is called unique constraint.
//unique value to variables or unique elements to the array can be generated with the help of unique constraint
//syntax: constraint constr_name{unique{variable's/array}}
//Generate unique elements in an array (Fixed Size Array, Dynamic Array, Associative array and Queue)
//Case-1 behaviour without unique keyword
class withOutUnique;
  rand bit[2:0]a,b,c,arr[5];
  function void post_randomize;
    $display("variables: a=%0d b=%0d c=%0d",a,b,c);
    $display("array: arr=%p",arr);
  endfunction
endclass

//Case-2 behaviour with unique keyword
class withUnique;
  rand bit[2:0]a,b,c,arr[5];
  function void post_randomize;
    $display("variables: a=%0d b=%0d c=%0d",a,b,c);
    $display("array: arr=%p",arr);
  endfunction
  constraint un{unique{a,b,c,arr};}
endclass

module test;
  withOutUnique w;
  withUnique wi;
  initial
    begin
      w=new;
      wi=new;
      $display("without unique result......!");
      repeat(5)w.randomize;
      $display("with unique result......!");
      repeat(5)wi.randomize;
    end
endmodule
