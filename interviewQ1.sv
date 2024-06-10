///Removing an element of queue without using delete method
 module test;
  int q[$];
  initial
    begin
      q={10,20,30,40,60};
      //remove element at 30 from the queue without using delete method
      q=q.find with (item!=30);
      $display("%p",q);
    end
endmodule

//deleting an element from the dynamic array
//example - deleting 2nd element from dynamic array a
module top;
  int a[];
  initial
    begin
      a=new[5];
      a='{20,50,30,40,70};
      a={a[0:1],a[3:4]};
      $display("arr=%p and size=%0d",a,$size(a));
    end
endmodule
