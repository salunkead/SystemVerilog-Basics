//The wait_order construct is blocking the process until all of the specified events are triggered in the given order (left to right)
//event trigger with out of order will not unblock the process.
//wait(ev,ev1,ev2) Blocks the process until events a, b, and c trigger in the order ev –> ev1 –> ev2. If the events trigger out of order, a run-time error is generated.

module test1;
  event ev,ev1,ev2;
  initial
    begin
      ->ev;
      $display("triggered ev event at t=%0t",$time);
      #2;
      ->ev1;
      $display("triggered ev1 event at t=%0t",$time);
      #5;
      ->ev2;
      $display("triggered ev2 event at t=%0t",$time);
    end
  initial
    begin
      wait_order(ev1,ev,ev2) //as event triggering order is different,therefore else part will get printed on console
      //wait_order(ev,ev1,ev2) //this will become true and event triggered in order will get printed on console
        $display("events triggered in order");
      else
        $display("events triggered out of order");
    end
endmodule
