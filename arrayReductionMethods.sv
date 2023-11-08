//Array reduction methods
////these methods reduces array to single value(only for the unpacked array)
//there are two types of array 1) packed array--> []variable_name 2)unpacked array--> variable_name[].here,look at the square bracket[],the square bracket differentiate packed and unpacked array
//1. sum:- sum 
//2. product:-
//3. and:-
//4. or:-
///5. xor:-

////NOTE:---> result of these methods is equal to width of the datatype
//NOTE--> (in case of sum and product)if it cannot represent the value using specified datatype then the result would be the garbage value
module test;
  bit[7:0] a[10];
  initial
    begin
      foreach(a[i])
        begin
          a[i]=$urandom_range(1,15);
        end
      $display("a=%p",a);
      $display(a.sum());
      $display(a.product());
      $displayb(a.and());
      $displayb(a.or);
      $displayb(a.xor);
    end
endmodule

///array reduction method with "with" clause
  int a[10];
  int s;
  initial
    begin
      a='{1,2,12,41,32,41,2,5,4,4};
      $display("a=%p",a);
      s=a.sum() with (item/2);
      $display(s);
    end
endmodule

