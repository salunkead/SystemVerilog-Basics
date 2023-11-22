//foreach loop ease us to constraint array
//foreach loop iterate over the elements of array,therefore constraints with foreach loop is called as iterative constraints
//for dynamic array,size of the array must be defined with the help of constraint
//Q. there is an array the elements at odd index must be double of previous index 
class foreach_inConstraint;
  rand bit[4:0]arr[];
  function void post_randomize;
    $display("arr=%p",arr);
  endfunction
  constraint size{arr.size==6;}
  constraint condition{
    foreach(arr[i]){
      if(i%2!=0)
        arr[i]==2*arr[i-1];
    }
  }
endclass

module test;
  foreach_inConstraint f;
  initial
    begin
      f=new;
      f.randomize;
    end
endmodule
