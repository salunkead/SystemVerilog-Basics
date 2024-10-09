//Randomizing Associative array

//Example
class test;
  rand bit[7:0]ass_arr[int];
  rand int index[],values[];
  
  function void post_randomize;
    foreach(index[i])
      begin
        ass_arr[index[i]]=values[i];
      end
    $display("associative array : %p",ass_arr);
  endfunction
  
  constraint c1{
    index.size() inside{[10:20]} && values.size() inside {[10:20]};
    index.size==values.size;
    foreach(index[i]){
      index[i] inside{[1:100]};
    }
  }
      
endclass

module top;
  test t;
  initial
    begin
      t=new;
      repeat(5)t.randomize;
    end
endmodule
