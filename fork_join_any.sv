//fork-join_any will be unblocked when any of the process complete it's execution(process which consumes less time)
//process1 and process2 execute in parallel
//in below example,when process 1 which consumes less time complete it's execution then fork-join_any will be unblocked
module fork_join_any;
  task process1;
    #5;
    $display("I'm in process1...at t=%0t",$time);
  endtask
  task process2;
    #10;
    $display("I'm in process2...at t=%0t",$time);
  endtask
  initial
    begin
      fork
        process1;
        process2;
      join_any
      $display("outside fork-join at t=%0t",$time); // this statement executes at t=5 time unit
    end
endmodule

