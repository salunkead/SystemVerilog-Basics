//in case of fork-join,fork-join_any fork block will be blocked untill process gets executed but in case of fork-join_none,fork block will be non-blocking.
//Processes inside the fork-join_none block will be started at the same time, fork block will not wait for the completion of the Process inside the fork-join_none
module fork_join_none;
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
      join_none
      $display("outside fork-join at t=%0t",$time);//this statement gets executed at t=0 time unit
    end
endmodule
