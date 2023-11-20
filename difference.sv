//difference between class assignment and shallow copy
class difference;
  int a;
endclass

module test;
  difference c,c1,c2,c3;
  initial
    begin
      //shallow copy
      c=new;
      c.a=20;
      $display("Shallow Copy");
      c1=new c;//the memory allocated for c1 and c are different in shallow copy
      //threfore changes made in one object will not reflect in other
      $display("c1.a=%0d",c1.a);
      c1.a=30;
      $display("c.a=%0d",c.a);
      //class assignment
      c2=new;
      c2.a=50;
      $display("class assignment");
      c3=c2;//the memory allocated for c3 and c2 is same therefore,changes made in one will reflect in other
      $display("c3.a=%0d",c3.a);
      c2.a=30;
      $display("c3.a=%0d",c3.a);
    end
endmodule
