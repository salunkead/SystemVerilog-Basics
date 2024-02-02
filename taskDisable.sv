///Disabling task using disable keyword
/*
1.the disable keyword can be used to terminate task and named blocks
*/

module test;
  task automatic run;
    int i=0;
    repeat(10)
      begin
        i++;
        if(i==8)
          disable run;
        else
          $display("i=%0d",i);
      end
  endtask
  
  initial
    begin
      run;
    end
endmodule
