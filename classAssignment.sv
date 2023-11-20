class classAssignment;
  int a;
endclass

module test;
  classAssignment c,c1;//c and c1 are handle of the class(null object)
  initial
    begin
      c=new; //object is created with the help of new method
      c.a=20;
      $display("after class assignment");
      c1=c; //both c and c1 point to the same address,therefore changes made in object will reflect into the other
      $display("c1.a=%0d",c1.a);
      c1.a=30;
      $display("c.a=%0d",c.a);
    end
endmodule
