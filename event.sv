//system verilog events are used for synchronization of processes which run parallel
//in this,one process triggers the event and other process waits for the event to be triggered
//events are triggered using -> or ->>(non-blocking events are triggered using this operator)
//wait for an event to be triggered using @ operator or wait() construct

//in below code,as we know all initial block start executing at t=0 time unit and are independent to each other
//here we have synchronized parallel running initial blocks with the help of event
module test;
  event ev;
  initial
    begin:process1
      $display("in process 1 at t=%0t",$time);
      #10;
      ->ev;
    end
  initial
    begin:process2
      wait(ev.triggered);
      #20;
      $display("in process 2 at t=%0t",$time);
      ->ev;
    end
  initial
    begin:process3
      wait(ev.triggered);
      #30;
      $display("in process 3 at t=%0t",$time);
    end
endmodule

//Concept:--->
//the difference between @(event.triggered) and wait(event.triggered)
//If the event triggering and waiting for event trigger with @ operator happens at the same time, @ operator may miss detecting the event trigger.
//Whereas wait(); construct will detect the event triggering.
module test1;
  event ev;
  initial
    begin
      ->ev;
      $display("triggering event at t=%0d",$time);
    end
  initial
    begin
      @(ev.triggered); //comment and uncomment alternatively
      //wait(ev.triggered);
      $display("event triggered at t=%0t",$time);
    end
endmodule
