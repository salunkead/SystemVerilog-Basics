module test;
  int a[];//syntax to declare dynamic array
  int d[][];//syntax for multi-dimensional array
  initial
    begin
      a=new[5];//new method allocates memory to dynamic array
      a='{10,20,45,95,100};
      $display("%p",a);
      $display("array size: %0d",a.size());//array.size returns the size of array
      //this how you can increase size of array dynamically
      a=new[10](a); //now the size of array is 10.()-this bracket specifies that all the previous values are copied into new array size
      $display("array new size: %0d",a.size());
      $display("%p",a);
      a.delete(); //deletes the dynamic array
      $display("array size after deletion: %0d",a.size());
      $display("%p",a);
      
      //how to specify size of multidimensional array
      //3X4 array
      d=new[3];//no. of rows in the array
      foreach(d[j])
        d[j]=new[4]; //in each row,i want 4 columns

      foreach(d[i,j])
        d[i][j]=$urandom_range(1,100);
      $display("%p",d);
    end
endmodule
