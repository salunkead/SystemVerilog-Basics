//we can disable any block i.e begin-end,fork-join block by using disable
module namedBlock;
  int i;
  initial
    begin:disableBlock //named block
      i=10;
      $display("i=%0d at t=%0t",i,$time);
      #10;
      i=20;
      $display("i=%0d at t=%0t",i,$time);
      disable disableBlock; //we can disable this block by using disable keyword
      #10;
      i=30;
      $display("i=%0d at t=%0t",i,$time);
      #10;
      i=40;
      $display("i=%0d at t=%0t",i,$time);
    end
endmodule

//disable loop using disable statement
module DisableLoop;
  int i;
  initial
    begin:block
      repeat(10)
        begin
          if(i==5)
            disable block;
          else
            $display("i=%0d",i);
          i++;
        end
    end
endmodule

//example-2
module DisableLoop;
  time t;
  task greet;
    #10;
    $display("Good Morning,GitHub... at t=%0t",$time);
  endtask
  task greet1;
    #12;
    $display("Good Afternoon,GitHub... at t=%0t",$time);
  endtask
  initial
    begin:block
      repeat(4)
        fork
          greet;
          greet1;
          t=$time;
          $display("t=%0t",t);
          if(t==24)
            disable block;
        join
    end
endmodule
