//associative array
module test;
  int ass[int];
  int i;
  int j;
  initial
    begin
      repeat(10)
        begin
          i=$urandom_range(0,100);
          ass[i]=$urandom_range(110,200);
        end
      $display("%p",ass);
      //size() and num() function returns length of the associative array
      //$display(ass.size);
      //$display(ass.num);
      //if we pass argument to the delete function,it will delete the item present in the index
      //ass.delete(2);
      //$display("%p",ass);
      ///deletes all the entries of an associative array
      //ass.delete();
      //$display("%p",ass);
      //input to the method is index and it checks whether element exist at specified index or not,if it exits it will return 1 otherwise 0
      /*if(ass.exists(1))
        $display("yes element exists in array");
      else
        $display("element doesnot exits in an array");
        */
      //assigns first intex to the actual argument passed in the first function
      if(ass.first(j))
        $display("ass[%0d]=%0d",j,ass[j]);
      //assigns last index to the actual argument passed in the last function
      if(ass.last(j))
        $display("ass[%0d]=%0d",j,ass[j]);
      ///first---returns 1 and assigns first index to the variable which is passed as argument in function
      //next---return 1 and assigns next index to the variable which is passed as argument in function 
      if(ass.first(j))
        begin
          do
            $display("ass[%0d]=%0d",j,ass[j]);
          while(ass.next(j));
        end
      $display("------------------");
  
      if(ass.first(j))
        begin
          $display("ass[%0d]=%0d",j,ass[j]);
          while(ass.next(j))
            $display("ass[%0d]=%0d",j,ass[j]);
        end
      $display("------------------");
      ///last--assign last index to the argument which is passed 
      ///prev--goes back from the last to previous index value and assigns the index value to the variable which is passed
      if(ass.last(j))
        begin
          $display("ass[%0d]=%0d",j,ass[j]);
          while(ass.prev(j))
            $display("ass[%0d]=%0d",j,ass[j]);
        end
    end
endmodule

//example-2
module test;
  int a[*];
  int s;
  initial
    begin
      repeat(10)
        begin
          a[$urandom_range(1,50)]=$urandom_range(1,100);
        end
      $display("a=%p",a);
      s=a.sum with (item-2);
      $display("s=%0d",s);
    end
endmodule 
