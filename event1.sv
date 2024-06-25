//The wait_order construct is blocking the process until all of the specified events are triggered in the given order (left to right)
//event trigger with out of order will not unblock the process.
//wait(ev,ev1,ev2) Blocks the process until events a, b, and c trigger in the order ev –> ev1 –> ev2. If the events trigger out of order, a run-time error is generated.

module test1;
  event ev,ev1,ev2;
  task p1;
    #1;
    ->ev;
    $display("triggered ev event at t=%0t",$time);
  endtask
  
  task p2;
    #5;
    ->ev1;
    $display("triggered ev1 event at t=%0t",$time);
  endtask
  
  task p3;
    #10;
    ->ev2;
    $display("triggered ev2 event at t=%0t",$time);
  endtask
  
  task order_wait;
    wait_order(ev,ev1,ev2) 
      $display("events triggered in order at t=%0t",$time);
    else
      $display("events triggered out of order");
  endtask
  
  initial
    begin
     fork
       p1;
       p2;
       p3;
       order_wait;
     join
    end
endmodule

///events are not triggered in order
module test1;
  event ev,ev1,ev2;
  task p1;
    #1;
    ->ev;
      $display("triggered ev event at t=%0t",$time);
  endtask
  
  task p2;
    #50;
    ->ev1;
      $display("triggered ev1 event at t=%0t",$time);
  endtask
  
  task p3;
    #10;
    ->ev2;
    $display("triggered ev2 event at t=%0t",$time);
  endtask
  
  task order_wait;
    wait_order(ev,ev1,ev2) 
      $display("events triggered in order at t=%0t",$time);
    else
      $display("events triggered out of order");
  endtask

  initial
    begin
     fork
       p1;
       p2;
       p3;
       order_wait;
     join
    end
endmodule
