//what is the output of below
union {int a;int b;}un;
module test;
  initial
    begin
      un.a=20;
      un.b=30;
      $display(un.a);
    end
endmodule

/*
each iteration of the loop will create a new process,and the join ensures that the parent process waits for all the child process to finish 
in the below case,all the iterations will complete before moving on and you will see values from 1 to 10
*/

//fork-join
module test;
  initial
    begin
      for(int i=1;i<=10;i++)
        fork
          $display("i=%0d",i);
        join
    end
endmodule

//fork join_any
module test2;
  initial
    begin
      for(int j=1;j<=10;j++)
        fork
          $display("j=%0d",j);
        join_any
    end
endmodule

/*
all the iterations are started almost simultaneously,and the loop completes very quickly.the variable k will often reach 11 before the display statements executes,leading to all 
process prints k=11
*/
//fork join_none
module test3;
  initial
    begin
      for(int k=1;k<=10;k++)
        fork
          $display("k=%0d",k);
        join_none
    end
endmodule
