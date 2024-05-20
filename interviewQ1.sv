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
