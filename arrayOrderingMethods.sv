//array methods:------------------>

//1. Array ordering methods:these methods are usefull in ordering array.
//it can be used for fixed array,dynamic array,queue
////1.reverse method:-reverses all the elements of array packe or unpacked
///2. sort method:- sorts elements of an array in ascending order
///3. shuffle:- changes the elements positions randomly
///4. rsort:- sorts  the elements of an array in descending order
//NOTE: array ordering methods are NOT ALLOWED for ASSOCIATIVE ARRAY
/////////ON FIXED SIZE ARRAY 
class arr;
  rand bit[7:0] a[5];
  function void reverse;
    $display("before reversing");
    $display("arr=%p",a);
    a.reverse();
    $display("after reversing");
    $display("arr=%p",a);
    $display("------------------------------------------");
  endfunction
  function void sort;
    $display("before sort");
    $display("arr=%p",a);
    a.sort();
    $display("after sort");
    $display("arr=%p",a);
    $display("------------------------------------------");
  endfunction
  function void shuffle;
    $display("before shuffle");
    $display("arr=%p",a);
    a.shuffle();
    $display("after shuffle");
    $display("arr=%p",a);
    $display("------------------------------------------");
  endfunction
  function void rsort;
    $display("before rsort");
    $display("arr=%p",a);
    a.rsort();
    $display("after rsort");
    $display("arr=%p",a);
    $display("------------------------------------------");
  endfunction
endclass
module test;
  arr t;
  initial
    begin
      t=new;
      t.randomize;
      t.reverse;
      t.sort;
      repeat(2)t.shuffle;
      t.rsort;
    end
endmodule

